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

#ifndef STOKE_SRC_VALIDATOR_EDDEC_H
#define STOKE_SRC_VALIDATOR_EDDEC_H

#include "src/validator/cutpoints.h"
#include "src/validator/dual.h"
#include "src/validator/invariant.h"
#include "src/validator/invariants/conjunction.h"
#include "src/validator/learner.h"
#include "src/validator/obligation_checker.h"
#include "src/validator/validator.h"

#include "src/validator/abstraction.h"
#include "src/validator/abstractions/block.h"

namespace stoke {

class EDdecValidator : public ObligationChecker {

public:

  EDdecValidator(SMTSolver& solver) : ObligationChecker(solver) {
  }

  ~EDdecValidator() {
  }

  /** Verify if target and rewrite are equivalent. */
  bool verify(const Cfg& target, const Cfg& rewrite);

private:

};

} // namespace stoke

#endif
