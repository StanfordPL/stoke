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

#include <set>

namespace stoke {

class EDdecValidator : public ObligationChecker {

public:

  EDdecValidator(SMTSolver& solver) : ObligationChecker(solver) {
    /** For testing only */
    set_string(x64asm::rsi);
    set_string(x64asm::rdi);
    set_no_string_overlap();
  }

  ~EDdecValidator() {
  }

  /** Mark a parameter as a null-terminated string argument. */
  EDdecValidator& set_string(x64asm::R64 param) {
    string_params_.insert(param);
    return *this;
  }

  /** Mark two parameters as non-overlapping. */
  EDdecValidator& set_no_string_overlap() {
    no_string_overlap_ = true;
    return *this;
  }


  /** Verify if target and rewrite are equivalent. */
  bool verify(const Cfg& target, const Cfg& rewrite);

private:

  InvariantLearner learner_;

  /** The set of R64s that we assume point to strings. */
  std::set<x64asm::R64> string_params_;
  /** Whether we can assume the strings don't overlap. */
  bool no_string_overlap_;

  /** The transform to add shadow values into testcases. */
  void transform_testcase(CpuState& tc) const;
  /** The initial invariant. */
  ConjunctionInvariant* get_initial_invariant(const Cfg& cfg) const;
  /** An invariant that needs to be conjoined at each state. */
  ConjunctionInvariant* get_fixed_invariant() const;



};

} // namespace stoke

#endif
