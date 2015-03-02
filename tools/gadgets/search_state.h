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

#ifndef STOKE_TOOLS_GADGETS_SEARCH_STATE_H
#define STOKE_TOOLS_GADGETS_SEARCH_STATE_H

#include <vector>

#include "src/search/search_state.h"
#include "src/tunit/tunit.h"
#include "tools/args/search.inc"
#include "tools/args/search_state.inc"
#include "tools/gadgets/cfg.h"
#include "tools/gadgets/target.h"

namespace stoke {

class SearchStateGadget : public SearchState {
public:
  SearchStateGadget(const Cfg& target, const std::vector<TUnit>& aux_fxns) :
    SearchState(target,
                CfgGadget(current_arg.value(), aux_fxns),
                CfgGadget(best_yet_arg.value(), aux_fxns),
                CfgGadget(best_correct_arg.value(), aux_fxns),
                init_arg.value(),
                max_instrs_arg.value()) {

    if (!invariant_boundary_conditions(target)) {
      cpputil::Console::error(1) << "Search state and target disagree on def_in/live_out!" << std::endl;
    } else if (!invariant_functions()) {
      cpputil::Console::error(1) << "Search state contains a poorly formed function!" << std::endl;
    }
  }
};

} // namespace stoke

#endif

