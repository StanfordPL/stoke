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

#ifndef STOKE_TOOLS_GADGETS_SEARCH_STATE_H
#define STOKE_TOOLS_GADGETS_SEARCH_STATE_H

#include <vector>

#include "src/search/search_state.h"
#include "src/tunit/tunit.h"
#include "tools/args/search_state.h"
#include "tools/gadgets/cfg.h"

namespace stoke {

class SearchStateGadget : public SearchState {
public:
  SearchStateGadget(const std::vector<TUnit>& aux_fxns) {
    current = CfgGadget(current_arg.value().code, aux_fxns);
    best_yet = CfgGadget(best_yet_arg.value().code, aux_fxns);
    best_correct = CfgGadget(best_correct_arg.value().code, aux_fxns);
  }
};

} // namespace stoke

#endif

