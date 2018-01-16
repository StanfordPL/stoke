
#ifndef STOKE_SRC_VALIDATOR_DUAL_BUILDER_H
#define STOKE_SRC_VALIDATOR_DUAL_BUILDER_H

#include <map>
#include <vector>
#include <ostream>

#include "src/validator/data_collector.h"
#include "src/validator/dual.h"
#include "src/validator/invariant.h"

namespace stoke {

class DualBuilder {

public:
  /** Create a new builder.  Requires:
        - data from test cases
        - inductive paths for each node
        - linear equalities for equivalence classes  */
  DualBuilder(DataCollector& collector, const DualAutomata& templ) : 
    data_collector_(collector), template_(templ)
  {
    
  }

  /** Set the bound. */
  DualBuilder& set_bound(size_t n) {
    bound_ = n;
    return *this;
  }

  /** Is there a next automata or are we out for this bound? */
  bool has_next() const;

  /** Build the next possible automata. */
  DualAutomata next();

private: 

  /** Data Structures */
  struct EquivalenceClass {
    /** for each node, for each invariant, what's its constant? */
    std::vector<std::vector<uint64_t>> invariant_values;

    /** what are the edges in this class? */
    std::vector<DualAutomata::Edge> edges;
  };

  struct Frontier {
    std::vector<DualAutomata::State> nodes;
    std::vector<EquivalenceClass> all_classes;
    size_t current_class_index;
  };

  /** Does the current frontier have another equivalence class to try? */
  bool frontier_has_next_class() const {
    return false;
  }

  /** Go to the next equivalence class in the current frontier. */
  void next_class() {
    assert(frontier_has_next_class());

  }

  /** Find the next frontier and all the possible equivalence classes. */
  void next_fontier() {

  }

  /** Remove the last frontier -- nothing left to try. */
  void remove_frontier() {

  }

  /** 'current' state */
  std::vector<Frontier> frontiers_;

  /** bound */
  size_t bound_;

  /** Dependencies */
  DataCollector& data_collector_;
  const DualAutomata& template_;

};

}


#endif
