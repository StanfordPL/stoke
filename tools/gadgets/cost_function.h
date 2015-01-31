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

#ifndef STOKE_TOOLS_GADGETS_COST_FUNCTION_H
#define STOKE_TOOLS_GADGETS_COST_FUNCTION_H

#include "src/cfg/cfg.h"
#include "src/cost/cost_function.h"
#include "src/sandbox/sandbox.h"
#include "tools/args/correctness.h"
#include "tools/args/in_out.h"
#include "tools/args/performance.h"
#include "tools/args/cost.h"

namespace stoke {

class CostFunctionGadget : public CostFunction {
public:
  CostFunctionGadget(const Cfg& target, Sandbox* sb) : CostFunction(sb) {
    set_target(target, stack_out_arg, heap_out_arg);

    set_distance(distance_arg);
    set_sse(sse_width_arg, sse_count_arg);
    set_relax(!no_relax_reg_arg, relax_mem_arg, blocked_heap_opt_arg);
    set_penalty(misalign_penalty_arg, sig_penalty_arg, nesting_penalty_arg, sse_avx_penalty_arg);
    set_min_ulp(min_ulp_arg);
    set_k(k_arg);
    set_reduction(reduction_arg);
    set_performance_term(perf_arg);
    set_max_size_penalty(max_size_bytes, max_size_base_penalty, max_size_linear_penalty);
  }
};

} // namespace stoke

#endif
