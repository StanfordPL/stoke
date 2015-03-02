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

#ifndef STOKE_TOOLS_GADGETS_COST_FUNCTION_H
#define STOKE_TOOLS_GADGETS_COST_FUNCTION_H

#include "src/ext/cpputil/include/io/console.h"

#include "src/cost/cost_parser.h"
#include "src/cost/binsize.h"
#include "src/cost/measured.h"
#include "src/cost/size.h"
#include "src/cost/sseavx.h"
#include "tools/args/cost.inc"
#include "tools/gadgets/correctness_cost.h"
#include "tools/gadgets/latency_cost.h"

namespace stoke {

class CostFunctionGadget : public CostFunction {
public:
  CostFunctionGadget(const Cfg& target, Sandbox* sb) : CostFunction(), fxn_(build_fxn(target, sb)) {
  }

  result_type operator()(const Cfg& cfg, Cost max) {
    return (*fxn_)(cfg, max);
  }

  result_type operator()(const Cfg& cfg) {
    return (*fxn_)(cfg);
  }

private:

  CostFunction* fxn_;

  static CostFunction* build_fxn(const Cfg& target, Sandbox* sb) {

    CostParser::SymbolTable st;
    st["binsize"] =      new BinSizeCost();
    st["correctness"] =  new CorrectnessCostGadget(target, sb);
    st["latency"] =      new LatencyCostGadget();
    st["measured"] =     new MeasuredCost();
    st["size"] =         new SizeCost();
    st["sseavx"] =       new SseAvxCost();

    CostParser cost_p(cost_function_arg.value(), st);
    auto cost_fxn = cost_p.run();
    if(cost_p.get_error().size()) {
			cpputil::Console::error(1) << "Error parsing cost function: " << cost_p.get_error() << std::endl;
    }
    if(cost_fxn == NULL) {
			cpputil::Console::error(1) << "Unknown error parsing cost function." << std::endl;
    }

    CostParser correct_p(correctness_arg.value(), st);
    auto correctness_fxn = correct_p.run();
    if(correct_p.get_error().size()) {
			cpputil::Console::error(1) << "Error parsing correctness function: " << correct_p.get_error()
                        << std::endl;
    }
    if(correctness_fxn == NULL) {
			cpputil::Console::error(1) << "Unknown error parsing correctness function." << std::endl;
    }

    (*cost_fxn).set_correctness(correctness_fxn)
    .setup_sandbox(sb);
    return cost_fxn;
  }

};

} // namespace stoke

#endif
