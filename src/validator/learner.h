// Copyright 2013-2016 Stanford University
//
// Licensed under the Apache License, Version 2.0 (the License);
// you may not use this file except in compliance with the License.
// You may obtain a copy of the License at
//
//     http://www.apache.org/licenses/LICENSE-2.0
//
// Unless required by applicable law or agreed to in writing, software
// distributed under the License is distributed on an AS IS BASIS,
// WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
// See the License for the specific language governing permissions and
// limitations under the License.

#ifndef STOKE_SRC_VALIDATOR_LEARNING_H
#define STOKE_SRC_VALIDATOR_LEARNING_H

#include "src/validator/cutpoints.h"
#include "src/validator/invariant.h"
#include "src/validator/invariants/conjunction.h"
#include "src/validator/invariants/inequality.h"
#include "src/validator/obligation_checker.h"
#include "src/validator/validator.h"

namespace stoke {

class InvariantLearner {

public:

  InvariantLearner& add_ghost(Variable v) {
    ghosts_.push_back(v);
    return *this;
  }

  ConjunctionInvariant* learn(
    const Cfg& target,
    const Cfg& rewrite,
    x64asm::RegSet target_regs,
    x64asm::RegSet rewrite_regs,
    const std::vector<CpuState>& states,
    const std::vector<CpuState>& states2);

private:


  /** Overapproximate set of possible inequality invariants. */
  std::vector<InequalityInvariant*> build_inequality_invariants 
    (x64asm::RegSet target_regs, x64asm::RegSet rewrite_regs) const;

  /** Set of ghost variables we should do learning over. */
  std::vector<Variable> ghosts_;

};

} // namespace stoke

#endif
