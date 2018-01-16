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

#include "src/validator/control_learner.h"
#include "src/validator/dual.h"
#include "src/validator/dual_builder.h"
#include "src/validator/invariant.h"
#include "src/validator/invariants/conjunction.h"
#include "src/validator/learner.h"
#include "src/validator/obligation_checker.h"
#include "src/validator/validator.h"

namespace stoke {

class DdecValidator : public ObligationChecker {

public:

  DdecValidator(SMTSolver& solver, InvariantLearner& inv) : ObligationChecker(solver), target_({}), rewrite_({}), invariant_learner_(inv) {
    set_no_bv(false);
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
  /** Set invariant learner. */
  DdecValidator& set_invariant_learner(InvariantLearner& iv) {
    invariant_learner_ = iv;
    return *this;
  }

  /** Verify if target and rewrite are equivalent. */
  bool verify(const Cfg& target, const Cfg& rewrite);

private:

  Cfg target_;
  Cfg rewrite_;

  InvariantLearner& invariant_learner_;
  ControlLearner* control_learner_;
  DataCollector* data_collector_;

  /** Generate some extra testcases, for funsies. */
  void make_tcs(const Cfg& target, const Cfg& rewrite);
  /** Learn inductive paths */
  void learn_inductive_paths(std::vector<CfgPath>& target_inductive_paths,
                             std::vector<CfgPath>& rewrite_inductive_paths);
  /** Learn inductive paths for block (helper) */
  void learn_inductive_paths_at_block(
    std::vector<CfgPath>& target_inductive_paths,
    std::vector<CfgPath>& rewrite_inductive_paths,
    Cfg::id_type target_block,
    Cfg::id_type rewrite_block);
  /** Learn inductive invariants */
  DualAutomata learn_inductive_invariants(
    const std::vector<CfgPath>& target_inductive_paths,
    const std::vector<CfgPath>& rewrite_inductive_paths);

  /** Verify that a dual automata is correct */
  bool verify_dual(DualAutomata& dual);

  /** Try and prove all the invariants we can, starting from the initial one. */
  void discharge_invariants(DualAutomata&);
  /** Discharge exhaustive for all states.  Ensures that the dual automata has all the
   paths it needs to be complete. Also updates the automata with extra edges from counterexamples
   if it fails (and can do so). */
  bool discharge_exhaustive(DualAutomata& dual);
  /** Discharge exhaustive for a particular state */
  bool discharge_exhaustive(DualAutomata& dual, DualAutomata::State);

  /** Compute the initial invariant */
  ConjunctionInvariant* get_initial_invariant() const;
  ConjunctionInvariant* get_final_invariant() const;

  /** Bound */
  size_t bound_;

  /** Try to sign extend values? */
  bool try_sign_extend_;
  /** Skip the bounded validator? */
  bool no_bv_;

};

} // namespace stoke

#endif
