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

#ifndef STOKE_SRC_VALIDATOR_LOCAL_CLASS_CHECKER_H
#define STOKE_SRC_VALIDATOR_LOCAL_CLASS_CHECKER_H

#include "src/validator/class_checker.h"
#include "src/validator/discharge_state.h"

namespace stoke {

/** Uses an obligation checker to discharge all of the obligations associated with a POD.
  The POD is derived from a template, along with an equivalene class. */
class LocalClassChecker : public ClassChecker {

public:

  LocalClassChecker(DataCollector& data_collector,
                    ControlLearner& control_learner,
                    size_t target_bound,
                    size_t rewrite_bound,
                    ObligationChecker& obligation_checker,
                    InvariantLearner& invariant_learner) :
    ClassChecker(data_collector, control_learner, target_bound, rewrite_bound),
    obligation_checker_(obligation_checker),
    invariant_learner_(invariant_learner)
  {
  }

  /** Check this template with equivalence class. */
  virtual void check(const DualAutomata& template_pod,
                     const DualBuilder::EquivalenceClassMap& equivalence_class,
                     Callback& callback,
                     void* optional = NULL);

  /** Blocks until all the checking has done and the callbacks have been called. */
  virtual void block_until_complete();

private:

  ObligationChecker& obligation_checker_;
  InvariantLearner& invariant_learner_;

  void obligation_checker_callback(ObligationChecker::Result& result, void* reference);

  struct ObligationCheckerCallbackInfo {
    DischargeState& state; 
    DualAutomata::Edge edge;
    size_t conjunct;
    std::stringstream* ss;

    ObligationCheckerCallbackInfo(DischargeState& ds, 
                                  const DualAutomata::Edge& e, 
                                  size_t num, 
                                  std::stringstream* strs) : 
      state(ds), edge(e), conjunct(num), ss(strs) {
    }
  };

  /** Check a POD to see if it's obviously wrong. */
  bool sanity_check(DualAutomata& dual);

  /** Compute the initial invariant */
  ConjunctionInvariant* get_initial_invariant(DualAutomata&) const;
  ConjunctionInvariant* get_final_invariant(DualAutomata&) const;
  ConjunctionInvariant* get_fail_invariant() const;

  /** Try and prove all the invariants we can, starting from the initial one. */
  void discharge_invariants(DualAutomata&);
  /** Helper for discharge invariants that works on just one edge. */
  void discharge_edge(const DualAutomata& dual, DischargeState& ds, const DualAutomata::Edge& edge, size_t conjunct, std::stringstream* ss);
  /** For running discharge_edge in a thread. */
  void discharge_thread(DualAutomata&, DischargeState&, size_t);
  /** Start threads to discharge edges. */
  void discharge_thread_run(DualAutomata&, DischargeState&);

  /** Verify that a dual automata is correct */
  bool verify_dual(DualAutomata& dual);


  ObligationChecker::Callback callback_;

  uint64_t callbacks_expected_;
  uint64_t callbacks_count_;

};

} //namespace stoke


#endif
