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

#ifndef STOKE_TOOLS_GADGETS_TARGET_H
#define STOKE_TOOLS_GADGETS_TARGET_H

#include <vector>

#include "src/tunit/tunit.h"
#include "tools/args/target.inc"
#include "tools/gadgets/cfg.h"

namespace stoke {

class TargetGadget : public CfgGadget {
public:
  TargetGadget(const std::vector<TUnit>& aux_fxns, bool is_zero_init) : CfgGadget(target_arg.value(), aux_fxns, is_zero_init) {
    // All invariants checked in Cfg::Cfg()
  }
};

} // namespace stoke

#endif
