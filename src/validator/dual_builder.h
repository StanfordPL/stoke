
#ifndef STOKE_SRC_VALIDATOR_DUAL_BUILDER_H
#define STOKE_SRC_VALIDATOR_DUAL_BUILDER_H

#include <map>
#include <vector>
#include <ostream>

#include "src/validator/data_collector.h"
#include "src/validator/dual.h"
#include "src/validator/invariant.h"
#include "src/validator/invariants/equality.h"

namespace stoke {

class DualBuilder {

public:
  /** Create a new builder.  Requires:
        - data from test cases
        - inductive paths for each node
        - linear equalities for equivalence classes  */
  DualBuilder(DataCollector& collector, const DualAutomata& templ) :
    data_collector_(collector),
    template_(templ),
    target_(template_.get_target()),
    rewrite_(template_.get_rewrite())
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
    std::map<DualAutomata::State, std::vector<uint64_t>> invariant_values;
    /** what are the edges in this class? */
    std::vector<DualAutomata::Edge> edges;
  };

  struct Frontier {
    DualAutomata::State head;
    std::vector<DualAutomata::State> nodes;
    std::vector<EquivalenceClass> all_classes;
    size_t current_class_index;
  };

  /** Get class of invariant from current frontier and paths. */
  uint64_t get_invariant_class(EqualityInvariant*, DualAutomata::Edge&);
  std::vector<uint64_t> get_invariant_class(ConjunctionInvariant*, DualAutomata::Edge&);
  std::vector<uint64_t> get_invariant_class(DualAutomata::State&, DualAutomata::Edge&);

  /** Find the next frontier and all the possible equivalence classes. */
  void next_frontier();
  /** Remove the last frontier -- nothing left to try. */
  void remove_frontier();

  /** Does the current frontier have another equivalence class to try? */
  bool frontier_has_next_class() const;
  /** Go to the next equivalence class in the current frontier. */
  void next_class();
  /** Are we at the end of a frontier? */
  bool frontiers_complete() const;

  /** 'current' state */
  std::vector<Frontier> frontiers_;

  /** bound */
  size_t bound_;

  /** Dependencies */
  DataCollector& data_collector_;
  const DualAutomata& template_;
  Cfg& target_;
  Cfg& rewrite_;

};

}


#endif
