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

#include "src/cost/cost_parser.h"
#include "src/cost/size.h"

#include "tools/args/cost.h"
#include "tools/gadgets/correctness_cost.h"
#include "tools/gadgets/latency_cost.h"
#include "tools/ui/console.h"


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
    st["correctness"] =  new CorrectnessCostGadget(target, sb);
    st["latency"] =      new LatencyCostGadget();
    st["size"] =         new SizeCost();

    CostParser cp(cost_function_arg.value(), st);
    auto res = cp.run();
    if(cp.get_error().size()) {
      Console::error(1) << "Error parsing cost function: " << cp.get_error() << std::endl;
    }
    if(res == NULL) {
      Console::error(1) << "Unknown error parsing cost function." << std::endl;
    }
    return res;
  }

};

} // namespace stoke

#endif
