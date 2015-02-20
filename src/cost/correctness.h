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

#ifndef STOKE_SRC_COST_CORRECTNESS_H
#define STOKE_SRC_COST_CORRECTNESS_H

#include <cassert>
#include <stdint.h>

#include <vector>

#include "src/ext/cpputil/include/bits/bit_manip.h"
#include "src/ext/x64asm/include/x64asm.h"

#include "src/cfg/cfg.h"
#include "src/cost/cost.h"
#include "src/cost/cost_function.h"
#include "src/cost/distance.h"
#include "src/cost/reduction.h"
#include "src/sandbox/sandbox.h"
#include "src/state/cpu_state.h"
#include "src/state/memory.h"
#include "src/state/regs.h"

namespace stoke {

class CorrectnessCost : public CostFunction {
public:
  /** The maximum cost that evaluating correctness should produce. */
  static constexpr auto max_correctness_cost = (Cost)(0x1ull << 61);
  /** The maximum cost that a single testcase should produce. */
  static constexpr auto max_testcase_cost = (Cost)(0x1ull << 42);
  /** The maximum cost that a single error calculation should produce. */
  static constexpr auto max_error_cost = (Cost)(0x1ull << 32);

  /** Create a new cost function with default values for extended features. */
  CorrectnessCost(Sandbox* sb) : sandbox_(sb) {
    const x64asm::Code code {
      {x64asm::LABEL_DEFN, {x64asm::Label{".main"}}},
      {x64asm::RET}
    };
    set_target({code, x64asm::RegSet::empty(), x64asm::RegSet::empty()}, false, false);
    set_distance(Distance::HAMMING);
    set_sse(1, 1);
    set_relax(false, false, false);
    set_penalty(0, 0);
    set_min_ulp(0);
    set_reduction(Reduction::SUM);

  }

  /** Reset target function; evaluates testcases and caches the results. */
  CorrectnessCost& set_target(const Cfg& target, bool stack_out, bool heap_out);
  /** Set metric for measuring distance between 64-bit values. */
  CorrectnessCost& set_distance(Distance d) {
    distance_ = d;
    return *this;
  }
  /** Set the bit-width and number of values to expect in sse registers. */
  CorrectnessCost& set_sse(size_t width, size_t count) {
    sse_width_ = width;
    sse_count_ = count;
    return *this;
  }
  /** Toggles whether to relax the requirement that results must appear in the correct locations. */
  CorrectnessCost& set_relax(bool reg, bool mem, bool block_heap) {
    relax_reg_ = reg;
    relax_mem_ = mem;
    block_heap_ = block_heap;
    return *this;
  }
  /** Set penalty values. */
  CorrectnessCost& set_penalty(Cost misalign, Cost sig) {
    misalign_penalty_ = misalign;
    sig_penalty_ = sig;
    return *this;
  }
  /** Set the minimum unacceptable ULP error for floating-point comparisons. */
  CorrectnessCost& set_min_ulp(Cost mu) {
    min_ulp_ = mu;
    return *this;
  }
  /** Set the reduction method to use when aggregating testcase costs. */
  CorrectnessCost& set_reduction(Reduction r) {
    reduction_ = r;
    return *this;
  }

  /** Evaluate a rewrite. This method may shortcircuit and return max as soon as its
    result would equal or exceed that value. */
  virtual result_type operator()(const Cfg& cfg, const Cost max = max_cost);

  /** Returns the number of testcases used in this function's correctness term. */
  size_t num_testcases() const {
    return sandbox_->size();
  }
  /** Returns the ith testcase used in this function's correctness term. */
  const CpuState& get_testcase(size_t i) const {
    assert(i < num_testcases());
    return *(sandbox_->get_input(i));
  }

  /** We need the sandbox! */
  bool need_sandbox() {
    return true;
  }

  /** Just make sure our sandbox is the same as theirs...
      The constructor shouldn't ever be given a different sandbox than the one
      passed here.  That could cause our reference outputs to differ (but no
      other ill effects, I think). */
  CorrectnessCost& setup_sandbox(Sandbox* sb) {
    assert(sandbox_ == sb);
    sandbox_ = sb;
    return *this;
  }

private:
  /** A sandbox for evaluating target and rewrites. */
  Sandbox* sandbox_;

  /** Method for measuring the distance between two 64-bit values. */
  Distance distance_;
  /** The set of registers that are live-out in the target. */
  x64asm::RegSet live_out_;
  /** Is the stack live out in the target? */
  bool stack_out_;
  /** Is the heap live out in the target? */
  bool heap_out_;
  /** The bit-width of values in sse registers. */
  size_t sse_width_;
  /** The number of values in sse registers. */
  size_t sse_count_;
  /** Allow correct values in incorrect register locations? */
  bool relax_reg_;
  /** Allow correct values in incorrect memory locations? */
  bool relax_mem_;
  /** Use optimized relax_mem computation that requires a blocked heap? */
  bool block_heap_;
  /** Cost to add to correct values that appear in incorrect locations. */
  Cost misalign_penalty_;
  /** Cost to return for rewrites that do not agree with target on exit code. */
  Cost sig_penalty_;
  /** Multiplier to apply to instructions that appear in loops. */
  Cost nesting_penalty_;
  /** Penalty for codes that mix avx and sse instructions. */
  Cost sse_avx_penalty_;
  /** Minimum unacceptable ULP error for floating-point comparisons. */
  Cost min_ulp_;
  /** Reduction method. */
  Reduction reduction_;

  /** The results produced by executing the target on testcases. */
  std::vector<CpuState> reference_out_;

  /** The set of general purpose registers live out for the target. */
  std::vector<x64asm::R64> target_gp_out_;
  /** The set of rflags that are live out for the target. */
  std::vector<x64asm::Eflags> target_rf_out_;
  /** The set of sse registers live out for the target. */
  std::vector<x64asm::Ymm> target_sse_out_;

  /** Recompute the set of registers that are live out in the target. */
  void recompute_target_defs(const x64asm::RegSet& rs);

  /** Evaluate the correctness term for a rewrite. */
  Cost evaluate_correctness(const Cfg& cfg, const Cost max);
  /** Evaluate correctness by returning the max cost over testcases. */
  Cost max_correctness(const Cfg& cfg, const Cost max);
  /** Evaluate correctness by summing cost over testcases. */
  Cost sum_correctness(const Cfg& cfg, const Cost max);

  /** Evaluate error between states. */
  Cost evaluate_error(const CpuState& t, const CpuState& r, const x64asm::RegSet& defs) const;
  /** Evaluate error between general purpose registers. */
  Cost gp_error(const Regs& t, const Regs& r, const x64asm::RegSet& defs) const;
  /** Evaluate error between sse registers. */
  Cost sse_error(const Regs& t, const Regs& r, const x64asm::RegSet& defs) const;
  /** Evaluate error between memories. */
  Cost mem_error(const Memory& t, const Memory& r) const;
  /** Evaluate error between memories that are written in 128-bit blocks. */
  Cost block_mem_error(const Memory& t, const Memory& rmem, const Regs& rsse, const x64asm::RegSet& defs) const;
  /** Evaluate error between rflags. */
  Cost rflags_error(const RFlags& t, const RFlags& r, const x64asm::RegSet& defs) const;

  /** Assess an undefined register penalty. */
  Cost undef_default(size_t num_bytes) const;

  /** Evaluate the distance between two 64-bit values. */
  Cost evaluate_distance(uint64_t t, uint64_t r) const;
  /** Counts the number of bits that two values disagree on. */
  Cost hamming_distance(uint64_t t, uint64_t r) const {
    return cpputil::BitManip<uint64_t>::pop_count(t ^ r);
  }
  /** Returns the ULP error between two values. */
  Cost ulp_distance(uint64_t t, uint64_t r) const;

};

} // namespace stoke

#endif
