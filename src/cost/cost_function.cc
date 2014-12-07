// Copyright 2013-2015 Eric Schkufza, Rahul Sharma, Berkeley Churchill, Stefan Heule
//
// Licensed under the Apache License, Version 2.0 (the "License");
// you may not use this file except in compliance with the License.
// You may obtain a copy of the License at
//
//     http://www.apache.org/licenses/LICENSE-2.0
//
// Unless required by applicable law or agreed to in writing, software
// distributed under the License is distributed on an "AS IS" BASIS,
// WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
// See the License for the specific language governing permissions and
// limitations under the License.

#include <cmath>

#include <algorithm>
#include <array>
#include <limits>

#include "src/cost/cost_function.h"
#include "src/ext/x64asm/include/x64asm.h"

using namespace cpputil;
using namespace std;
using namespace x64asm;

namespace {

array<stoke::Cost, 3976> latencies_ {{
#include "src/cost/tables/haswell_latency.h"
  }
};

} // namespace

namespace stoke {

CostFunction& CostFunction::set_target(const Cfg& target, bool stack_out, bool heap_out) {
  assert(sandbox_ != nullptr);

  live_out_ = target.live_outs();
  stack_out_ = stack_out;
  heap_out_ = heap_out;

  reference_out_.clear();
  recompute_defs(target.live_outs(), target_gp_out_, target_sse_out_);

  sandbox_->run(target);
  for (auto i = sandbox_->result_begin(), ie = sandbox_->result_end(); i != ie; ++i) {
    reference_out_.push_back(*i);
  }
  return *this;
}

void CostFunction::recompute_defs(const RegSet& rs, vector<R64>& gps, vector<Xmm>& sses) {
  gps.clear();
  for (const auto& r : rls) {
    if (rs.contains(r)) {
      gps.push_back(r64s[r]);
    }
  }
  for (const auto& r : rbs) {
    if (rs.contains(r)) {
      gps.push_back(r64s[r]);
    }
  }

  sses.clear();
  for (const auto& s : xmms) {
    if (rs.contains(s)) {
      sses.push_back(s);
    }
  }
}

/** Evaluate a rewrite. This method may shortcircuit and return max as soon as its
  result would equal or exceed that value. */
CostFunction::result_type CostFunction::operator()(const Cfg& cfg, const Cost max) {

  auto cost = k_ * evaluate_correctness(cfg, (max + k_ - 1) / k_);
  assert(cost <= max_cost);

  const auto correct = cost == 0;
  if (cost < max && pterm_ != PerformanceTerm::NONE) {
    cost += evaluate_performance(cfg, max);
  }
  assert(cost <= max_cost);

  return result_type(correct, cost);
}





Cost CostFunction::evaluate_correctness(const Cfg& cfg, const Cost max) {

  // Apply the size penalty if needed
  Cost penalty = 0;
  if (size_starting_penalty_ > 0 || size_incr_penalty_ > 0) {
    penalty = assembled_size_cost(cfg);
    if (penalty >= max) {
      return max;
    }
  }

  switch (reduction_) {
  case Reduction::MAX:
    return penalty + max_correctness(cfg, max - penalty);
  case Reduction::SUM:
    return penalty + sum_correctness(cfg, max - penalty);
  case Reduction::EXTENSION:
    return penalty + extension_correctness(cfg, max - penalty);
  default:
    assert(false);
    return 0;
  }
}

Cost CostFunction::max_correctness(const Cfg& cfg, const Cost max) {
  Cost res = 0;

  sandbox_->compile(cfg);
  recompute_defs(cfg.def_outs(), rewrite_gp_out_, rewrite_sse_out_);

  size_t i = 0;
  for (size_t ie = sandbox_->size(); res < max && i < ie; ++i) {
    sandbox_->run_one(i);
    res = std::max(res, evaluate_error(reference_out_[i], *(sandbox_->get_result(i))));
    assert(res <= max_testcase_cost);
  }

  assert(res <= max_correctness_cost);
  return res;
}

Cost CostFunction::sum_correctness(const Cfg& cfg, const Cost max) {
  Cost res = 0;

  sandbox_->compile(cfg);
  recompute_defs(cfg.def_outs(), rewrite_gp_out_, rewrite_sse_out_);

  size_t i = 0;
  for (size_t ie = sandbox_->size(); res < max && i < ie; ++i) {
    sandbox_->run_one(i);
    const auto err = evaluate_error(reference_out_[i], *(sandbox_->get_result(i)));
    assert(err <= max_testcase_cost);

    res += err;
  }

  assert(res <= max_correctness_cost);
  return res;
}

Cost CostFunction::extension_correctness(const Cfg& cfg, const Cost max) {
  Cost res = 0;

  // Add user-defined implementation here ...

  // This method is not required to examine all testcases. Implementations
  // that compute res iteratively may stop executing and return max once res
  // equals or exceeds that value.

  // Invariant 1: Return value should not exceed max_correctness_cost
  assert(res <= max_correctness_cost);

  return res;
}

Cost CostFunction::evaluate_error(const CpuState& t, const CpuState& r) const {
  if (t.code != r.code) {
    return sig_penalty_;
  }

  Cost cost = 0;
  cost += gp_error(t.gp, r.gp);
  cost += sse_error(t.sse, r.sse);
  cost += rflags_error(t.rf, r.rf);
  if (stack_out_) {
    cost += mem_error(t.stack, r.stack);
  }
  if (heap_out_) {
    cost += mem_error(t.heap, r.heap);
  }

  return cost;
}

Cost CostFunction::gp_error(const Regs& t, const Regs& r) const {
  Cost cost = 0;

  for (const auto& r_t : target_gp_out_) {
    auto delta = max_error_cost;
    const auto val_t = t[r_t].get_fixed_quad(0);

    for (const auto& r_r : rewrite_gp_out_) {
      if (r_t != r_r && !relax_reg_) {
        continue;
      }

      const auto val_r = r[r_r].get_fixed_quad(0);
      const auto eval = evaluate_distance(val_t, val_r) + ((r_t == r_r) ? 0 : misalign_penalty_);

      delta = min(delta, eval);
    }
    cost += delta;
  }

  return cost;
}

Cost CostFunction::sse_error(const Regs& t, const Regs& r) const {
  Cost cost = 0;

  for (size_t i = 0; i < sse_count_; ++i) {
    for (const auto& s_t : target_sse_out_) {
      auto delta = max_error_cost;
      uint64_t val_t = 0;
      switch (sse_width_) {
      case 1:
        val_t = t[s_t].get_fixed_byte(i);
        break;
      case 2:
        val_t = t[s_t].get_fixed_word(i);
        break;
      case 4:
        val_t = t[s_t].get_fixed_double(i);
        break;
      case 8:
        val_t = t[s_t].get_fixed_quad(i);
        break;
      default:
        assert(false);
        break;
      }

      for (const auto& s_r : rewrite_sse_out_) {
        if (s_t != s_r && !relax_reg_) {
          continue;
        }

        uint64_t val_r = 0;
        switch (sse_width_) {
        case 1:
          val_r = r[s_r].get_fixed_byte(i);
          break;
        case 2:
          val_r = r[s_r].get_fixed_word(i);
          break;
        case 4:
          val_r = r[s_r].get_fixed_double(i);
          break;
        case 8:
          val_r = r[s_r].get_fixed_quad(i);
          break;
        default:
          assert(false);
          break;
        }

        const auto eval = evaluate_distance(val_t, val_r) + ((s_t == s_r) ? 0 : misalign_penalty_);
        delta = min(delta, eval);
      }
      cost += delta;
    }
  }

  return cost;
}

Cost CostFunction::mem_error(const Memory& t, const Memory& r) const {
  Cost cost = 0;

  for (auto i = t.defined_begin(), ie = t.defined_end(); i != ie; ++i) {
    if (relax_mem_) {
      Cost delta = max_error_cost;
      for (auto j = r.defined_begin(), je = r.defined_end(); j != je; ++j) {
        const auto eval = evaluate_distance(t[*i], r[*j]) + (*i == *j ? 0 : misalign_penalty_);
        delta = min(delta, eval);
      }
      cost += delta;
    } else {
      cost += r.is_defined(*i) ? evaluate_distance(t[*i], r[*i]) : max_error_cost;
    }
  }

  return cost;
}

Cost CostFunction::rflags_error(const RFlags& t, const RFlags& r) const {
  Cost cost = 0;

  auto flags = vector<Eflags> { eflags_cf, eflags_pf, eflags_af, eflags_zf, eflags_of, eflags_sf };

  for (auto flag : flags) {
    if (live_out_.contains(flag)) {
      size_t i = flag.index();
      cost += (t.is_set(i) ^ r.is_set(i));
    }
  }

  return cost;
}


Cost CostFunction::assembled_size_cost(const Cfg& cfg) const {

  x64asm::Assembler assm;
  x64asm::Function fxn;

  const auto& code = cfg.get_code();

  assm.start(fxn);

  for (auto b = ++cfg.reachable_begin(), be = cfg.reachable_end(); b != be; ++b) {

    if (cfg.is_exit(*b)) {
      continue;
    }

    const auto begin = cfg.get_index(Cfg::loc_type(*b, 0));
    for (size_t i = 0, ie = begin + cfg.num_instrs(*b); i < ie; ++i) {
      const auto& instr = code[i];
      if (!instr.is_nop() && !instr.is_ret()) {
        assm.assemble(instr);
      }
    }
  }

  assm.finish();

  uint64_t size = fxn.size();
  if (size <= max_size_) {
    return 0;
  } else {
    return (Cost)((size - max_size_) * size_incr_penalty_ + size_starting_penalty_);
  }

}


Cost CostFunction::evaluate_distance(uint64_t x, uint64_t y) const {
  switch (distance_) {
  case Distance::HAMMING:
    return hamming_distance(x, y);
  case Distance::ULP:
    return ulp_distance(x, y);
  case Distance::EXTENSION:
    return extension_distance(x, y);
  default:
    assert(false);
    return 0;
  }
}

Cost CostFunction::ulp_distance(uint64_t x, uint64_t y) const {
  auto t = *((int64_t*)&x);
  t = t < 0 ? numeric_limits<int64_t>::min() - t : t;

  auto r = *((int64_t*)&y);
  r = r < 0 ? numeric_limits<int64_t>::min() - r : r;

  uint64_t ulp = t >= r ? t - r : r - t;
  ulp = ulp < min_ulp_ ? 0 : ulp - min_ulp_;

  return ulp > max_error_cost ? max_error_cost : ulp;
}

Cost CostFunction::extension_distance(uint64_t x, uint64_t y) const {
  Cost res = 0;

  // Add user-defined implementation here ...

  // Invariant 1: Return value should not exceed max_error_cost

  return res;
}

Cost CostFunction::evaluate_performance(const Cfg& cfg, const Cost max) const {
  switch (pterm_) {
  case PerformanceTerm::SIZE:
    return size_performance(cfg);
  case PerformanceTerm::LATENCY:
    return latency_performance(cfg);
  case PerformanceTerm::EXTENSION:
    return extension_performance(cfg);
  default:
    assert(false);
    return 0;
  }
}

Cost CostFunction::size_performance(const Cfg& cfg) const {
  Cost size = 0;

  const auto& code = cfg.get_code();
  for (auto b = ++cfg.reachable_begin(), be = cfg.reachable_end(); b != be; ++b) {
    if (cfg.is_exit(*b)) {
      continue;
    }

    const auto first = cfg.get_index(Cfg::loc_type(*b, 0));
    for (size_t i = first, ie = first + cfg.num_instrs(*b); i < ie; ++i) {
      if (!code[i].is_nop()) {
        size++;
      }
    }
  }

  return size;
}

Cost CostFunction::latency_performance(const Cfg& cfg) const {
  Cost latency = 0;

  const auto& code = cfg.get_code();
  for (auto b = ++cfg.reachable_begin(), be = cfg.reachable_end(); b != be; ++b) {
    if (cfg.is_exit(*b)) {
      continue;
    }

    Cost block_latency = 0;
    const auto first = cfg.get_index(Cfg::loc_type(*b, 0));
    for (size_t i = first, ie = first + cfg.num_instrs(*b); i < ie; ++i) {
      if (!code[i].is_nop()) {
        block_latency += latencies_[code[i].get_opcode()];
      }
    }

    latency += block_latency * pow(nesting_penalty_, cfg.nesting_depth(*b));
  }

  return latency;
}

Cost CostFunction::extension_performance(const Cfg& cfg) const {
  Cost res = 0;

  // Add user-defined implementation here ...

  // Invariant: Return value should not exceed max_performance_cost
  assert(res <= max_performance_cost);

  return res;
}

} // namespace stoke
