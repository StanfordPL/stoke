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

#ifndef STOKE_TOOLS_GADGETS_PRESERVE_CONTROL_COST_H
#define STOKE_TOOLS_GADGETS_PRESERVE_CONTROL_COST_H

#include "src/cfg/cfg.h"
#include "src/cost/preserve_control.h"
#include "src/cost/cost_function.h"
#include "src/sandbox/sandbox.h"

namespace stoke {

class PreserveControlCostGadget : public PreserveControlCost {
public:
  PreserveControlCostGadget(const Cfg& target, Sandbox* sb) : PreserveControlCost(sb) {
    set_target(target);
  }
};

} // namespace stoke

#endif
