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

#include "src/validator/class_checker.h"
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
#include "src/validator/optional.h"
#include "src/validator/validator.h"


namespace stoke {

class DdecValidator : public Validator {

public:

  DdecValidator(ObligationChecker& checker, Sandbox& sandbox, InvariantLearner& inv) :
    Validator(checker),
    target_({}), rewrite_({}),
          sandbox_(sandbox),
          data_collector_(sandbox),
          invariant_learner_(inv),
          flow_invariant_learner_(NULL),
          control_learner_(NULL)
  {
    set_thread_count(1);
  }

  DdecValidator(const DdecValidator& rhs) :
    Validator(rhs),
    target_(rhs.target_),
    rewrite_(rhs.rewrite_),
    sandbox_(rhs.sandbox_),
    data_collector_(sandbox_),
    invariant_learner_(rhs.invariant_learner_),
    flow_invariant_learner_(NULL),
    control_learner_(NULL) {

    target_bound_ = rhs.target_bound_;
    rewrite_bound_ = rhs.rewrite_bound_;
  }

  /** Set the bound for bounded validator */
  DdecValidator& set_bound(size_t target_bound, size_t rewrite_bound) {
    target_bound_ = target_bound;
    rewrite_bound_ = rewrite_bound;
    return *this;
  }

  DdecValidator& set_thread_count(size_t n) {
    return *this;
  }

  /** Verify if target and rewrite are equivalent. */
  bool verify(const Cfg& target, const Cfg& rewrite);


private:

  void class_checker_callback(const ClassChecker::Result& result, void* optional);

  // Enumerating equivalence classes
  bool init_class_enumeration(DualAutomata& pod);
  bool has_next_class();
  DualBuilder::EquivalenceClassMap next_class(DualAutomata& pod);
  DualBuilder::EquivalenceClassMap build_classmap_from_descriptor();

  std::map<DualAutomata::State, size_t> current_class_descriptor_;
  std::map<DualAutomata::State, std::vector<DualBuilder::EquivalenceClass>> state_class_table_;
  bool has_next_class_;
  
  std::vector<DualBuilder::EquivalenceClass> get_classes_for_state(DualAutomata& templ, DualAutomata::State state);
  uint64_t get_invariant_class(EqualityInvariant*, DualAutomata::Edge&);
  std::vector<uint64_t> get_invariant_class(ConjunctionInvariant*, DualAutomata::Edge&);
  std::vector<uint64_t> get_invariant_class(DualAutomata&, DualAutomata::State&, DualAutomata::Edge&);
  std::set<DualBuilder::EquivalenceClass> make_wildcard_classes(const std::set<DualBuilder::EquivalenceClass>&, const std::vector<uint64_t>&);

  // Dependencies
  Cfg target_;
  Cfg rewrite_;

  Sandbox& sandbox_;
  DataCollector data_collector_;
  InvariantLearner invariant_learner_;
  FlowInvariantLearner* flow_invariant_learner_;
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

  /** Is the invariant at a pair of basic blocks useful? */
  double invariant_quality(
    ConjunctionInvariant* conj,
    Cfg::id_type target_block,
    Cfg::id_type rewrite_block);

  /** Add loop(s) to a node in a POD corresponding to inductive paths. */
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

  size_t callbacks_expected_;
  size_t callbacks_count_;
  size_t verified_;


};

} // namespace stoke

#endif
