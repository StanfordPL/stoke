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
#include "src/validator/data_collector.h"
#include "src/validator/discharge_state.h"
#include "src/validator/flow_invariant_learner.h"
#include "src/validator/invariant.h"
#include "src/validator/invariants/conjunction.h"
#include "src/validator/learner.h"
#include "src/validator/obligation_checker.h"
#include "src/validator/validator.h"

namespace stoke {

class DdecValidator : public ObligationChecker {

public:

  DdecValidator(SMTSolver& solver, Sandbox& sandbox, InvariantLearner& inv) :
    ObligationChecker(solver, sandbox),
    target_({}), rewrite_({}),
          data_collector_(sandbox),
          invariant_learner_(inv),
          flow_invariant_learner_(data_collector_, invariant_learner_),
          control_learner_(NULL)
  {
    set_thread_count(1);
  }

  DdecValidator(const DdecValidator& rhs) :
    ObligationChecker(rhs),
    target_(rhs.target_),
    rewrite_(rhs.rewrite_),
    data_collector_(sandbox_),
    invariant_learner_(rhs.invariant_learner_),
    flow_invariant_learner_(data_collector_, invariant_learner_),
    control_learner_(NULL) {

    target_bound_ = rhs.target_bound_;
    rewrite_bound_ = rhs.rewrite_bound_;
    thread_count_ = rhs.thread_count_;
    std::cout << "[CCDEBUG] Calling DdecValidator's copy constructor: ";
    std::cout << " this=" << this << " solver=" << &solver_ << std::endl;
  }

  /** Set the bound for bounded validator */
  DdecValidator& set_bound(size_t target_bound, size_t rewrite_bound) {
    target_bound_ = target_bound;
    rewrite_bound_ = rewrite_bound;
    return *this;
  }

  /** Set the number of threads. */
  DdecValidator& set_thread_count(size_t n) {
    thread_count_ = n;
    return *this;
  }

  /** Verify if target and rewrite are equivalent. */
  bool verify(const Cfg& target, const Cfg& rewrite);

private:

  Cfg target_;
  Cfg rewrite_;

  DataCollector data_collector_;
  InvariantLearner invariant_learner_;
  FlowInvariantLearner flow_invariant_learner_;
  ControlLearner* control_learner_;

  /** Generate a warning for the user about a possible failure reason. */
  void warn(std::string s);

  /** Learn inductive paths and invariants and make a dual autoamta template (without edges). */
  DualAutomata learn_inductive_paths();
  /** Learn inductive paths for block (helper).  Returns number of paths found. */
  size_t learn_inductive_paths_at_block(
    std::vector<CfgPath>& target_inductive_paths,
    std::vector<CfgPath>& rewrite_inductive_paths,
    Cfg::id_type target_block,
    Cfg::id_type rewrite_block);
  /** Learn inductive invariants */
  ConjunctionInvariant* learn_inductive_invariant_at_block(
    const std::vector<CfgPath>& target_inductive_paths,
    const std::vector<CfgPath>& rewrite_inductive_paths,
    Cfg::id_type target_block,
    Cfg::id_type rewrite_block);

  /** Verify that a dual automata is correct */
  bool verify_dual(DualAutomata& dual);

  /** Try and prove all the invariants we can, starting from the initial one. */
  void discharge_invariants(DualAutomata&);
  /** Helper for discharge invariants that works on just one edge. */
  bool discharge_edge(const DualAutomata& d, const DualAutomata::Edge& edge); 
  /** Helper that works on one conjunct. */
  bool discharge_edge(const DualAutomata& d, const DualAutomata::Edge& edge, size_t conjunct, std::stringstream& ss);  
  /** For running discharge_edge in a thread. */
  static void discharge_thread(DdecValidator&, DualAutomata&, DischargeState&, size_t);
  /** Start threads to discharge edges. */
  void discharge_thread_run(DualAutomata&, DischargeState&);

  /** Check a POD to see if it's obviously wrong. */
  bool sanity_check(DualAutomata& dual);

  /** Compute the initial invariant */
  ConjunctionInvariant* get_initial_invariant() const;
  ConjunctionInvariant* get_final_invariant() const;
  ConjunctionInvariant* get_fail_invariant() const;

  /** Is the invariant at a pair of basic blocks useful? */
  double invariant_quality(
    ConjunctionInvariant* conj,
    Cfg::id_type target_block,
    Cfg::id_type rewrite_block);

  /** Add a loop to a node in a POD. */
  void add_loop_to_node(
    DualAutomata& pod,
    const std::vector<CfgPath>& target_inductive_paths,
    const std::vector<CfgPath>& rewrite_inductive_paths,
    Cfg::id_type target_block,
    Cfg::id_type rewrite_block,
    ConjunctionInvariant* invariant
  );


  /** Bound */
  size_t target_bound_;
  size_t rewrite_bound_;

  /** Try to sign extend values? */
  bool try_sign_extend_;

  /** How many threads to use? */
  size_t thread_count_;

  /** Per-thread copies of this class. */
  std::vector<DdecValidator> thread_copies_;

};

} // namespace stoke

#endif
