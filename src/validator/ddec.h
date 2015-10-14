// Copyright 2013-2015 Stanford University
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

#ifndef STOKE_SRC_VALIDATOR_DDEC_H
#define STOKE_SRC_VALIDATOR_DDEC_H

#include "src/validator/cutpoints.h"
#include "src/validator/invariant.h"
#include "src/validator/validator.h"

namespace stoke {

class DdecValidator : public Validator {

public:

  DdecValidator(SMTSolver& solver) : Validator(solver) {
    cutpoints_ = NULL;
  }

  ~DdecValidator() {
    if (cutpoints_)
      delete cutpoints_;
  }


  /** Verify if target and rewrite are equivalent. */
  bool verify(const Cfg& target, const Cfg& rewrite);

private:

  /** Find all invariants with CEGAR-style search. */
  std::vector<Invariant*> find_invariants(const Cfg& target, const Cfg& rewrite);
  /** Learn invariants from CpuStates */
  Invariant* learn_invariant(std::vector<CpuState> states, std::vector<CpuState> states2);
  /** Use bounded validator to check the invariants. */
  std::vector<CpuState> check_invariants(const Cfg& target, const Cfg& rewrite, std::vector<Invariant*> invariants);




  /** Whatever cutpoints we've generated. */
  Cutpoints* cutpoints_;

};

} // namespace stoke

#endif
