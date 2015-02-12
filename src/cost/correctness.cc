// Copyright 2013-2015 Stanford University
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

#include "src/cost/correctness.h"
#include "src/ext/x64asm/include/x64asm.h"

using namespace cpputil;
using namespace std;
using namespace x64asm;


namespace stoke {

CorrectnessCost& CorrectnessCost::set_target(const Cfg& target, bool stack_out, bool heap_out) {
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

void CorrectnessCost::recompute_defs(const RegSet& rs, vector<R64>& gps, vector<Xmm>& sses) {
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
CorrectnessCost::result_type CorrectnessCost::operator()(const Cfg& cfg, const Cost max) {

  auto cost = evaluate_correctness(cfg, max);
  bool correct = cost == 0;
  return result_type(correct, cost);
  /*
  // we need to configure the sandbox differently if we're measuring its performance
  if(pterm_ == PerformanceTerm::MEASURED) {
    sandbox_->set_count_instructions(true);
  } else {
    sandbox_->set_count_instructions(false);
  }

  auto cost = k_ * evaluate_correctness(cfg, (max + k_ - 1) / k_);
  assert(cost <= max_cost);

  const auto correct = cost == 0;
  if (cost < max && pterm_ != PerformanceTerm::NONE) {
    cost += evaluate_performance(cfg, max);
  }
  assert(cost <= max_cost);

  return result_type(correct, cost);
  */
}

Cost CorrectnessCost::evaluate_correctness(const Cfg& cfg, const Cost max) {

  switch (reduction_) {
  case Reduction::MAX:
    return max_correctness(cfg, max);
  case Reduction::SUM:
    return sum_correctness(cfg, max);
  default:
    assert(false);
    return 0;
  }
}

Cost CorrectnessCost::max_correctness(const Cfg& cfg, const Cost max) {
  Cost res = 0;

  sandbox_->expert_mode();
  sandbox_->expert_use_disposable_labels();
  sandbox_->expert_recompile(cfg);
  sandbox_->expert_recycle_labels();

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

Cost CorrectnessCost::sum_correctness(const Cfg& cfg, const Cost max) {
  Cost res = 0;

  sandbox_->expert_mode();
  sandbox_->expert_use_disposable_labels();
  sandbox_->expert_recompile(cfg);
  sandbox_->expert_recycle_labels();

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

Cost CorrectnessCost::evaluate_error(const CpuState& t, const CpuState& r) const {
  // Only assess a signal penalty if target and rewrite disagree
  if (t.code != r.code) {
    return sig_penalty_;
  }
  // If this testcase has signalled, we can't guarantee register state --
  // and technically we can do whatever we want with signalling code -- so
  // just return zero cost
  if (t.code != ErrorCode::NORMAL) {
    return 0;
  }

  // Otherwise, we can do the usual thing and check results register by register
  Cost cost = 0;
  cost += gp_error(t.gp, r.gp);
  cost += sse_error(t.sse, r.sse);
  cost += rflags_error(t.rf, r.rf);
  if (stack_out_) {
    cost += mem_error(t.stack, r.stack);
  }
  if (heap_out_) {
    cost += block_heap_ ? block_mem_error(t.heap, r.heap, r.sse) : mem_error(t.heap, r.heap);
  }

  return cost;
}

Cost CorrectnessCost::gp_error(const Regs& t, const Regs& r) const {
  Cost cost = 0;

  for (const auto& r_t : target_gp_out_) {
    auto delta = undef_default(8);
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

Cost CorrectnessCost::sse_error(const Regs& t, const Regs& r) const {
  Cost cost = 0;

  for (size_t i = 0; i < sse_count_; ++i) {
    for (const auto& s_t : target_sse_out_) {
      auto delta = undef_default(sse_width_);
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

Cost CorrectnessCost::mem_error(const Memory& t, const Memory& r) const {
  Cost cost = 0;

  for (auto i = t.valid_begin(), ie = t.valid_end(); i != ie; ++i) {
    if (relax_mem_) {
      Cost delta = undef_default(1);
      for (auto j = r.valid_begin(), je = r.valid_end(); j != je; ++j) {
        const auto eval = evaluate_distance(t[*i], r[*j]) + (*i == *j ? 0 : misalign_penalty_);
        delta = min(delta, eval);
      }
      cost += delta;
    } else {
      cost += evaluate_distance(t[*i], r[*i]);
    }
  }

  return cost;
}

Cost CorrectnessCost::block_mem_error(const Memory& t, const Memory& rmem, const Regs& rsse) const {
  Cost cost = 0;

  for (size_t i = *t.valid_begin(), ie = t.upper_bound(); i < ie; i += 16) {
    // Skip invalid blocks
    if (!t.is_valid(i)) {
      assert(!t.is_valid_quad(i));
      assert(!t.is_valid_quad(i+8));
      continue;
    }
    // Make sure that this block is valid in the target and rewrite
    assert(t.is_valid_quad(i) && rmem.is_valid_quad(i));
    assert(t.is_valid_quad(i+8) && rmem.is_valid_quad(i+8));

    // Start off with vanilla memory to memory comparison
    Cost delta = evaluate_distance(t.get_quad(i), rmem.get_quad(i)) +
                 evaluate_distance(t.get_quad(i+8), rmem.get_quad(i+8));

    // If we've relaxed mem, we can also look in sse registers
    if (relax_mem_) {
      for (const auto& s_r : rewrite_sse_out_) {
        Cost eval = evaluate_distance(t.get_quad(i), rsse[s_r].get_fixed_quad(0)) +
                    evaluate_distance(t.get_quad(i+8), rsse[s_r].get_fixed_quad(1)) +
                    misalign_penalty_;
        delta = min(delta, eval);
      }
    }

    // Now accrue the lowest cost we were able to find
    cost += delta;
  }

  return cost;
}

Cost CorrectnessCost::rflags_error(const RFlags& t, const RFlags& r) const {
  Cost cost = 0;

  auto flags = {eflags_cf, eflags_pf, eflags_af, eflags_zf, eflags_of, eflags_sf};
  for (auto flag : flags) {
    if (live_out_.contains(flag)) {
      size_t i = flag.index();
      cost += (t.is_set(i) ^ r.is_set(i));
    }
  }

  return cost;
}

Cost CorrectnessCost::undef_default(size_t num_bytes) const {
  Cost res = 0;
  switch (distance_) {
  case Distance::HAMMING:
    res = 8*num_bytes;
    break;
  case Distance::ULP:
    res = max_error_cost;
    break;
  case Distance::EXTENSION:
    // Add user-defined implementation here ...
    res = 0;
    break;

  default:
    assert(false);
    res = 0;
  }

  // Invariant 1: Penalty should not exceed max_error_cost
  assert(res <= max_error_cost);
  return res;
}

Cost CorrectnessCost::evaluate_distance(uint64_t x, uint64_t y) const {
  switch (distance_) {
  case Distance::HAMMING:
    return hamming_distance(x, y);
  case Distance::ULP:
    return ulp_distance(x, y);
  default:
    assert(false);
    return 0;
  }
}

Cost CorrectnessCost::ulp_distance(uint64_t x, uint64_t y) const {
  auto t = *((int64_t*)&x);
  t = t < 0 ? numeric_limits<int64_t>::min() - t : t;

  auto r = *((int64_t*)&y);
  r = r < 0 ? numeric_limits<int64_t>::min() - r : r;

  uint64_t ulp = t >= r ? t - r : r - t;
  ulp = ulp < min_ulp_ ? 0 : ulp - min_ulp_;

  return ulp > max_error_cost ? max_error_cost : ulp;
}

} // namespace stoke
