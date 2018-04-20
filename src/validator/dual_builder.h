
#ifndef STOKE_SRC_VALIDATOR_DUAL_BUILDER_H
#define STOKE_SRC_VALIDATOR_DUAL_BUILDER_H

#include <map>
#include <vector>
#include <ostream>

#include "src/validator/control_learner.h"
#include "src/validator/data_collector.h"
#include "src/validator/dual.h"
#include "src/validator/invariant.h"
#include "src/validator/invariants/equality.h"
#include "src/validator/optional.h"

namespace stoke {

class DualBuilder {

public:
  /** Create a new builder.  Requires:
        - data from test cases
        - inductive paths for each node
        - linear equalities for equivalence classes  */
  DualBuilder(DataCollector& collector, const DualAutomata& templ, ControlLearner& control_learner) :
    first_(true),
    data_collector_(collector),
    control_learner_(control_learner),
    template_(templ),
    target_(template_.get_target()),
    rewrite_(template_.get_rewrite())
  {
    init();
  }

  /** Set the bound. */
  DualBuilder& set_bound(size_t n, size_t m) {
    target_bound_ = n;
    rewrite_bound_ = m;
    return *this;
  }

  /** Type of equivalence class of a node. */
  typedef std::vector<optional<uint64_t>> EquivalenceClass;
  typedef std::map<DualAutomata::State, EquivalenceClass> EquivalenceClassMap;

  /** Get handhold equivalence class (from a file) */
  EquivalenceClassMap get_handhold_class();

  /** Get POD from equivalence class */
  DualAutomata generate_pod(EquivalenceClassMap& mp);


private:

  typedef std::vector<uint64_t> NodeClass;
  typedef std::map<DualAutomata::State, NodeClass> NodeClassMap;

  /** Data Structures */
  struct ClassData {
    /** for each node, for each invariant, what's its constant? */
    NodeClassMap invariant_values;
    /** what are the edges in this class? */
    std::vector<DualAutomata::Edge> edges;

    void debug() {
      std::cout << "  ## Class" << std::endl;
      for (auto pair : invariant_values) {
        std::cout << "    " << pair.first << " --> ";
        for (auto it : pair.second) {
          std::cout << it << "  ";
        }
        std::cout << std::endl;
      }
      for (auto e : edges) {
        std::cout << "    " << e << std::endl;
      }
    }
  };

  struct Frontier {
    DualAutomata::State head;
    std::vector<DualAutomata::State> nodes;
    std::vector<ClassData> all_classes;
    size_t current_class_index;
    size_t frontier_index;
    DualBuilder* parent;

    std::map<size_t, size_t> get_block_counts(bool is_rewrite = false);

    void debug() {
      std::cout << "###### FRONTIER" << std::endl;

      std::cout << "head = " << head << std::endl;
      for (auto it : nodes)
        std::cout << it;
      std::cout << std::endl;
      for (auto cls : all_classes)
        cls.debug();
    }
  };

  /** Get class of invariant from current frontier and paths. */
  uint64_t get_invariant_class(EqualityInvariant*, DualAutomata::Edge&);
  std::vector<uint64_t> get_invariant_class(ConjunctionInvariant*, DualAutomata::Edge&);
  std::vector<uint64_t> get_invariant_class(DualAutomata::State&, DualAutomata::Edge&);

  /** Does this edge from the current frontier to the exit work? */
  /** for exit, there's essentially two classes: good and bad. */
  bool exit_works(DualAutomata::Edge& e, const std::set<IntVector>& start_vectors);

  /** Run after constructor; find first POD. */
  void init();
  /** Find the next frontier and all the possible equivalence classes. */
  void next_frontier(const EquivalenceClassMap&);
  /** Remove the last frontier -- nothing left to try. */
  void remove_frontier();

  /** Does the current frontier have another equivalence class to try? */
  bool frontier_has_next_class() const;
  /** Go to the next equivalence class in the current frontier. */
  void next_class();
  /** Are we at the end of a frontier? */
  bool frontiers_complete() const;

  /** Generate a dual automata from the edges currently in the frontiers. */
  DualAutomata generate_current_pod();

  /** 'current' state */
  std::vector<Frontier> frontiers_;
  /** The set of 'state'(?) vectors that correspond to a given state
    for the purposes of figuring out which paths are exits. */
  std::map<DualAutomata::State, std::set<IntVector>> state_exit_data_map_;

  /** bound */
  size_t target_bound_;
  size_t rewrite_bound_;

  /** have we generated any PODs yet? */
  bool first_;

  /** Dependencies */
  DataCollector& data_collector_;
  ControlLearner& control_learner_;
  const DualAutomata& template_;
  Cfg& target_;
  Cfg& rewrite_;

};

}


#endif
