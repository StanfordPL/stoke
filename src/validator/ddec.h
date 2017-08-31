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

#ifndef STOKE_SRC_VALIDATOR_DDEC_H
#define STOKE_SRC_VALIDATOR_DDEC_H

#include "src/validator/abstraction.h"
#include "src/validator/control_learner.h"
#include "src/validator/cutpoints.h"
#include "src/validator/dual.h"
#include "src/validator/invariant.h"
#include "src/validator/invariants/conjunction.h"
#include "src/validator/learner.h"
#include "src/validator/obligation_checker.h"
#include "src/validator/validator.h"

namespace stoke {

class DdecValidator : public ObligationChecker {

public:

  DdecValidator(SMTSolver& solver) : ObligationChecker(solver), target_({}), rewrite_({}) {
    cutpoints_ = NULL;
    set_no_bv(false);
  }

  ~DdecValidator() {
    if (cutpoints_)
      delete cutpoints_;
  }

  /** Turn off the bounded validator.  This is a terribly silly thing to do, except
    to demonstrate that most benchmarks don't work without it. --no_ddec_bv */
  DdecValidator& set_no_bv(bool b) {
    no_bv_ = b;
    return *this;
  }
  /** Set the bound for bounded validator */
  DdecValidator& set_bound(size_t bound) {
    bound_ = bound;
    return *this;
  }

  /** Verify if target and rewrite are equivalent. */
  bool verify(const Cfg& target, const Cfg& rewrite);

private:

  Abstraction* target_automata_;
  Abstraction* rewrite_automata_;
  ControlLearner* control_learner_;

  /** Generate some extra testcases, for funsies. */
  void make_tcs(const Cfg& target, const Cfg& rewrite);
  /** Learn inductive paths */
  bool learn_inductive_paths(std::vector<CfgPath>& target_inductive_paths,
                             std::vector<CfgPath>& rewrite_inductive_paths,
                             std::function<bool (std::vector<CfgPath>&, std::vector<CfgPath>&)>& callback
                             );


  DualAutomata build_dual(std::vector<CfgPath>&, std::vector<CfgPath>&);

  /** Try and prove all the invariants we can, starting from the initial one. */
  void discharge_invariants(DualAutomata&);

  /** Compute the initial invariant */
  ConjunctionInvariant* get_initial_invariant() const;
  ConjunctionInvariant* get_final_invariant() const;

  /** Bound */
  size_t bound_;

  /** Whatever cutpoints we've generated. */
  Cutpoints* cutpoints_;

  /** Try to sign extend values? */
  bool try_sign_extend_;
  /** Skip the bounded validator? */
  bool no_bv_;

  Cfg target_;
  Cfg rewrite_;
};

} // namespace stoke

#endif
