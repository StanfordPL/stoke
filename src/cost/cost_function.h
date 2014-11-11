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
  /** Result type; cost and whether correctness term equals zero. */
  typedef std::pair<bool, Cost> result_type;

  /** The maximum cost that any rewrite should produce. */
  static constexpr auto max_cost = (Cost)(0x1ull << 62);
  /** The maximum cost that evaluating correctness should produce. */
  static constexpr auto max_correctness_cost = (Cost)(0x1ull << 61);
  /** The maximum cost that evaluating performance should produce. */
  static constexpr auto max_performance_cost = (Cost)(0x1ull << 61);
  /** The maximum cost that a single testcase should produce. */
  static constexpr auto max_testcase_cost = (Cost)(0x1ull << 42);
  /** The maximum cost that a single error calculation should produce. */
  static constexpr auto max_error_cost = (Cost)(0x1ull << 32);

  /** Create a new cost function with default values for extended features. */
  CostFunction(Sandbox* sb) : sandbox_(sb) {
    set_target({{{x64asm::RET}}, x64asm::RegSet::empty(), x64asm::RegSet::empty()}, false, false);
    set_distance(Distance::HAMMING);
    set_sse(1, 1);
    set_relax(false, false);
    set_penalty(0, 0, 0);
    set_min_ulp(0);
    set_k(1);
    set_reduction(Reduction::SUM);
    set_max_size_penalty(0, 0, 0);
    set_statistics(NULL, 0);

    set_performance_term(PerformanceTerm::NONE);
  }

  /** Reset target function; evaluates testcases and caches the results. */
  CostFunction& set_target(const Cfg& target, bool stack_out, bool heap_out);
  /** Set metric for measuring distance between 64-bit values. */
  CostFunction& set_distance(Distance d) {
    distance_ = d;
    return *this;
  }
  /** Set the bit-width and number of values to expect in sse registers. */
  CostFunction& set_sse(size_t width, size_t count) {
    sse_width_ = width;
    sse_count_ = count;
    return *this;
  }
  /** Toggles whether to relax the requirement that results must appear in the correct locations. */
  CostFunction& set_relax(bool reg, bool mem) {
    relax_reg_ = reg;
    relax_mem_ = mem;
    return *this;
  }
  /** Set penalty values. */
  CostFunction& set_penalty(Cost misalign, Cost sig, Cost nesting) {
    misalign_penalty_ = misalign;
    sig_penalty_ = sig;
    nesting_penalty_ = nesting;
    return *this;
  }
  /** Incur a penalty of start_penalty + incr_penalty(size - max_size) for having an assembled size
    of more than max_size bytes. */
  CostFunction& set_max_size_penalty(size_t max_size, Cost start_penalty, Cost incr_penalty) {
    max_size_ = max_size;
    size_starting_penalty_ = start_penalty;
    size_incr_penalty_ = incr_penalty;
  }
  /** Set the minimum unacceptable ULP error for floating-point comparisons. */
  CostFunction& set_min_ulp(Cost mu) {
    min_ulp_ = mu;
    return *this;
  }
  /** Set the value of k, the multiplier on the correctness term */
  CostFunction& set_k(uint32_t k) {
    k_ = k;
    return *this;
  }
  /** Set the reduction method to use when aggregating testcase costs. */
  CostFunction& set_reduction(Reduction r) {
    reduction_ = r;
    return *this;
  }
  /** Set performance term type. */
  CostFunction& set_performance_term(PerformanceTerm t) {
    pterm_ = t;
    return *this;
  }

  /* Setup cost statistic gathering.  Returns false if there's no support. */
  CostFunction& set_statistics(uint32_t** cost_statistics, uint32_t dimensions) {
    cost_statistics_dim_ = dimensions;
    cost_statistics_ = cost_statistics;
    return *this;
  }

  /** Evaluate a rewrite. This method may shortcircuit and return max as soon as its
    result would equal or exceed that value. */
  result_type operator()(const Cfg& cfg, const Cost max = max_cost);

  /** Returns the number of testcases used in this function's correctness term. */
  size_t num_testcases() const {
    return sandbox_->size();
  }
  /** Returns the ith testcase used in this function's correctness term. */
  const CpuState& get_testcase(size_t i) const {
    assert(i < num_testcases());
    return sandbox_->get_input(i);
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
  /** Cost to add to correct values that appear in incorrect locations. */
  Cost misalign_penalty_;
  /** Cost to return for rewrites that do not agree with target on exit code. */
  Cost sig_penalty_;
  /** Multiplier to apply to instructions that appear in loops. */
  Cost nesting_penalty_;
  /** Minimum unacceptable ULP error for floating-point comparisons. */
  Cost min_ulp_;
  /** Multiplier for the correctness term */
  uint32_t k_;
  /** Reduction method. */
  Reduction reduction_;
  /** Performance term type. */
  PerformanceTerm pterm_;

  /** Cost for have any instructions in excess of the maximum size. */
  Cost size_starting_penalty_;
  /** Additional cost per instruction in excess of the maximum size. */
  Cost size_incr_penalty_;
  /** Maximum size for rewrite without encurring a penalty. */
  size_t max_size_;

  /** Pointer to table with statistics on the costs seen */
  uint32_t** cost_statistics_;
  /** The dimension of the above table (it's square) */
  uint32_t cost_statistics_dim_;


  /** The results produced by executing the target on testcases. */
  std::vector<CpuState> reference_out_;

  // These are stored as vectors to speed up iteration.

  /** The set of general purpose registers live out for the target. */
  std::vector<x64asm::R64> target_gp_out_;
  /** The set of sse registers live out for the target. */
  std::vector<x64asm::Xmm> target_sse_out_;
  /** The set of general purpose registers live out for a rewrite. */
  std::vector<x64asm::R64> rewrite_gp_out_;
  /** The set of sse registers live out for a rewrite. */
  std::vector<x64asm::Xmm> rewrite_sse_out_;

  /** Convert a RegSet into a vector of registers. */
  void recompute_defs(const x64asm::RegSet& rs, std::vector<x64asm::R64>& gps,
                      std::vector<x64asm::Xmm>& sses);

  /** Evaluate the correctness term for a rewrite. */
  Cost evaluate_correctness(const Cfg& cfg, const Cost max);
  /** Evaluate correctness by returning the max cost over testcases. */
  Cost max_correctness(const Cfg& cfg, const Cost max);
  /** Evaluate correctness by summing cost over testcases. */
  Cost sum_correctness(const Cfg& cfg, const Cost max);
  /** Add user-defined correctness implementations here ... */
  Cost extension_correctness(const Cfg& cfg, const Cost max);

  /** Evaluate error between states. */
  Cost evaluate_error(const CpuState& t, const CpuState& r) const;
  /** Evaluate error between general purpose registers. */
  Cost gp_error(const Regs& t, const Regs& r) const;
  /** Evaluate error between sse registers. */
  Cost sse_error(const Regs& t, const Regs& r) const;
  /** Evaluate error between memories. */
  Cost mem_error(const Memory& t, const Memory& r) const;
  /** Evaluate error between rflags. */
  Cost rflags_error(const RFlags& t, const RFlags& r) const;

  /** Evaluate size of assembed program. */
  Cost assembled_size_cost(const Cfg& cfg) const;

  /** Evaluate the distance between two 64-bit values. */
  Cost evaluate_distance(uint64_t t, uint64_t r) const;
  /** Counts the number of bits that two values disagree on. */
  Cost hamming_distance(uint64_t t, uint64_t r) const {
    return cpputil::BitManip<uint64_t>::pop_count(t ^ r);
  }
  /** Returns the ULP error between two values. */
  Cost ulp_distance(uint64_t t, uint64_t r) const;
  /** Add user-defined distance implementation here ... */
  Cost extension_distance(uint64_t t, uint64_t r) const;

  /** Evaluate performance term. */
  Cost evaluate_performance(const Cfg& cfg, Cost max) const;
  /** Evaluate performance by counting instructions. */
  Cost size_performance(const Cfg& cfg) const;
  /** Evaluate performance by summing expected latencies. */
  Cost latency_performance(const Cfg& cfg) const;
  /** Add user-defined performance implementation here ... */
  Cost extension_performance(const Cfg& cfg) const;
};

} // namespace stoke

#endif
