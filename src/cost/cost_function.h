// Copyright 2014 eric schkufza
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

#ifndef STOKE_SRC_COST_COST_FUNCTION_H
#define STOKE_SRC_COST_COST_FUNCTION_H

#include <cassert>
#include <stdint.h>

#include <vector>

#include "src/ext/cpputil/include/bits/bit_manip.h"
#include "src/ext/x64asm/include/x64asm.h"

#include "src/cfg/cfg.h"
#include "src/cost/cost.h"
#include "src/cost/distance.h"
#include "src/cost/performance_term.h"
#include "src/cost/reduction.h"
#include "src/sandbox/sandbox.h"
#include "src/state/cpu_state.h"
#include "src/state/memory.h"
#include "src/state/regs.h"

namespace stoke {

class CostFunction {
 public:
  typedef std::pair<bool, Cost> result_type;

  /** The maximum cost that any rewrite should produce. */
  static constexpr auto max_cost = (Cost)(0x1ull << 62);
  /** The maximum cost that a single testcase should produce. */
  static constexpr auto max_testcase_cost = (Cost)(0x1ull << 42);
  /** The maximum cost that a single error calculation should produce. */
  static constexpr auto max_error_cost = (Cost)(0x1ull << 32);

  CostFunction(Sandbox* sb) : sandbox_(sb) {
    set_target({{{x64asm::RET}}, x64asm::RegSet::empty(), x64asm::RegSet::empty()}, false, false);
    set_distance(Distance::HAMMING);
    set_sse(1, 1);
    set_relax(false, false);
    set_penalty(0, 0, 0);
    set_min_ulp(0);
    set_reduction(Reduction::SUM);

    set_performance_term(PerformanceTerm::NONE);
  }

  CostFunction& set_target(const Cfg& target, bool stack_out, bool heap_out);

  CostFunction& set_distance(Distance d) {
    distance_ = d;
    return *this;
  }

  CostFunction& set_sse(size_t width, size_t count) {
    sse_width_ = width;
    sse_count_ = count;
    return *this;
  }

  CostFunction& set_relax(bool reg, bool mem) {
    relax_reg_ = reg;
    relax_mem_ = mem;
    return *this;
  }

  CostFunction& set_penalty(Cost misalign, Cost sig, Cost nesting) {
    misalign_penalty_ = misalign;
    sig_penalty_ = sig;
    nesting_penalty_ = nesting;
    return *this;
  }

  CostFunction& set_min_ulp(Cost mu) {
    min_ulp_ = mu;
    return *this;
  }

  CostFunction& set_reduction(Reduction r) {
    reduction_ = r;
    return *this;
  }

  CostFunction& set_performance_term(PerformanceTerm t) {
    pterm_ = t;
    return *this;
  }

  result_type operator()(const Cfg& cfg, Cost max = max_cost) {
    auto cost = evaluate_correctness(cfg, max);
    assert(cost <= max_cost);

    const auto correct = cost == 0;
    if (cost < max && pterm_ != PerformanceTerm::NONE) {
      cost += evaluate_performance(cfg, max);
    }
    assert(cost <= max_cost);

    return result_type(correct, cost);
  }

	size_t testcases_evaluated() const {
		return testcases_evaluated_;
	}

	const CpuState& last_testcase_evaluated() const {
		assert(testcases_evaluated() < sandbox_->size());
		return sandbox_->get_input(testcases_evaluated()-1);
	}

 private:
  Sandbox* sandbox_;

  Distance distance_;
  x64asm::RegSet live_out_;
  bool stack_out_;
  bool heap_out_;
  size_t sse_width_;
  size_t sse_count_;
  bool relax_reg_;
  bool relax_mem_;
  Cost misalign_penalty_;
  Cost sig_penalty_;
  Cost nesting_penalty_;
  Cost min_ulp_;
  Reduction reduction_;
  PerformanceTerm pterm_;

	size_t testcases_evaluated_;

  std::vector<CpuState> reference_out_;

  std::vector<x64asm::R64> target_gp_out_;
  std::vector<x64asm::Xmm> target_sse_out_;

  std::vector<x64asm::R64> rewrite_gp_out_;
  std::vector<x64asm::Xmm> rewrite_sse_out_;

  void recompute_defs(const x64asm::RegSet& rs, std::vector<x64asm::R64>& gps, 
			std::vector<x64asm::Xmm>& sses);

  Cost evaluate_correctness(const Cfg& cfg, Cost max);
  Cost max_correctness(const Cfg& cfg, Cost max);
  Cost sum_correctness(const Cfg& cfg, Cost max);
  Cost extension_correctness(const Cfg& cfg, Cost max);

  Cost error(const CpuState& t, const CpuState& r) const;
  Cost gp_error(const Regs& t, const Regs& r) const;
  Cost sse_error(const Regs& t, const Regs& r) const;
  Cost mem_error(const Memory& t, const Memory& r) const;

  Cost evaluate_distance(uint64_t t, uint64_t r) const;
	Cost hamming_distance(uint64_t t, uint64_t r) const {
		return cpputil::BitManip<uint64_t>::pop_count(t ^ r);
	}
	Cost ulp_distance(uint64_t t, uint64_t r) const;
	Cost extension_distance(uint64_t t, uint64_t r) const;

  Cost evaluate_performance(const Cfg& cfg, Cost max) const;
  Cost size_performance(const Cfg& cfg) const;
  Cost latency_performance(const Cfg& cfg) const;
	Cost extension_performance(const Cfg& cfg) const;
};

} // namespace stoke

#endif
