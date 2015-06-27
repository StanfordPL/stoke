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

#ifndef STOKE_TOOLS_GADGETS_NONGOAL_COST_H
#define STOKE_TOOLS_GADGETS_NONGOAL_COST_H

#include "src/cost/nongoal.h"
#include "tools/args/nongoal.inc"

namespace stoke {

class NonGoalCostGadget : public NonGoalCost {
public:
  NonGoalCostGadget() : NonGoalCost() {
    set_nongoals(nongoal_arg.value());
  }
};

} // namespace stoke

#endif
