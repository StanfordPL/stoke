// Copyright 2013-2016 Stanford University
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

#include "src/ext/cpputil/include/io/console.h"

#include "src/cost/cost_parser.h"
#include "src/cost/binsize.h"
#include "src/cost/measured.h"
#include "src/cost/nacl.h"
#include "src/cost/nacl2.h"
#include "src/cost/size.h"
#include "src/cost/sseavx.h"
#include "src/cost/nongoal.h"
#include "tools/args/cost.inc"
#include "tools/gadgets/correctness_cost.h"
#include "tools/gadgets/nacl2_cost.h"
#include "tools/gadgets/latency_cost.h"
#include "tools/gadgets/nongoal_cost.h"
#include "tools/gadgets/preserve_control_cost.h"

namespace stoke {

class CostFunctionGadget : public CostFunction {
public:
  CostFunctionGadget(const Cfg& target, Sandbox* test_sb, Sandbox* perf_sb) : CostFunction(), correctness_(NULL), fxn_(build_fxn(target, test_sb, perf_sb, &correctness_)) {
  }

  // This is a hack for Berkeley's NaCl experiments to get a handle on the correctness function directly.
  CorrectnessCost* get_correctness_term() {
    return correctness_;
  }


  result_type operator()(const Cfg& cfg, Cost max) {
    return (*fxn_)(cfg, max);
  }

  result_type operator()(const Cfg& cfg) {
    return (*fxn_)(cfg);
  }

private:

  CorrectnessCost* correctness_;

  CostFunction* fxn_;

  static CostFunction* build_fxn(const Cfg& target, Sandbox* test_sb, Sandbox* perf_sb, 
                                 CorrectnessCost** correctness_ptr) {

    *correctness_ptr = new CorrectnessCostGadget(target, test_sb);

    CostParser::SymbolTable st;
    st["correctness"] =  *correctness_ptr;
    st["binsize"] =      new BinSizeCost();
    st["correctness"] =  new CorrectnessCostGadget(target, test_sb);
    st["latency"] =      new LatencyCostGadget();
    st["measured"] =     new MeasuredCost();
    st["nacl"] =         new NaClCost();
    st["nacl2"] =        new NaCl2CostGadget<false>();
    st["nacl2debug"] =   new NaCl2CostGadget<true>();
    st["preserveflow"] = new PreserveControlCostGadget(target, test_sb);
    st["size"] =         new SizeCost();
    st["sseavx"] =       new SseAvxCost();
    st["nongoal"] =      new NonGoalCostGadget(target);


    CostParser cost_p(cost_function_arg.value(), st);
    auto cost_fxn = cost_p.run();
    if (cost_p.get_error().size()) {
      cpputil::Console::error(1) << "Error parsing cost function: " << cost_p.get_error() << std::endl;
    }
    if (cost_fxn == NULL) {
      cpputil::Console::error(1) << "Unknown error parsing cost function." << std::endl;
    }

    CostParser correct_p(correctness_arg.value(), st);
    auto correctness_fxn = correct_p.run();
    if (correct_p.get_error().size()) {
      cpputil::Console::error(1) << "Error parsing correctness function: " << correct_p.get_error()
                                 << std::endl;
    }
    if (correctness_fxn == NULL) {
      cpputil::Console::error(1) << "Unknown error parsing correctness function." << std::endl;
    }

    (*cost_fxn).set_correctness(correctness_fxn)
    .setup_test_sandbox(test_sb)
    .setup_perf_sandbox(perf_sb);
    return cost_fxn;
  }

};

} // namespace stoke

#endif
