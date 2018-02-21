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

#ifndef STOKE_TOOLS_GADGETS_LEARNER_H
#define STOKE_TOOLS_GADGETS_LEARNER_H

#include <vector>

#include "src/ext/x64asm/include/x64asm.h"

#include "src/cfg/cfg.h"
#include "src/validator/learner.h"

#include "tools/args/learner.inc"

#include "tools/gadgets/seed.h"


namespace stoke {

class InvariantLearnerGadget : public InvariantLearner {
public:
  InvariantLearnerGadget(SeedGadget& seed, const Cfg& target, const Cfg& rewrite) : 
    InvariantLearner(target, rewrite) {
    set_seed(seed);
    set_enable_nonlinear(!only_linear_arg.value());
    set_enable_memory(!no_learn_memory_arg.value());
  }
};

} // namespace stoke

#endif
