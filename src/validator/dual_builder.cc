
#include "src/validator/dual_builder.h"

using namespace stoke;
using namespace std;

/** Is there a next POD available? */
bool DualBuilder::has_next() const {
  return false;
}

/** Build the next possible automata. */
DualAutomata DualBuilder::next() {

  if (frontier_has_next_class()) {

  }


  return template_;
}

/** Build the first frontier during class initialization. */
void DualBuilder::init_frontier() {

  auto start_state = template_.start_state();
  auto start_inv = template_.get_invariant(start_state);

  /** Frontier has one node, the start state. */
  Frontier f;
  f.head = start_state;
  f.nodes.push_back(start_state);
  f.current_class_index = 0;

  /** There's one class, corresponding to linear invariants with no constant term. */
  EquivalenceClass c;
  for (size_t i = 0; i < start_inv->size(); ++i) {
    c.invariant_values[start_state].push_back(0);
  }
  f.all_classes.push_back(c);

  /** Add frontier. */
  frontiers_.push_back(f);
}

/** Find the next frontier and all the possible equivalence classes. */
void DualBuilder::next_fontier() {
  assert(frontiers.size() > 0);
  assert(!frontiers_complete());

  const auto& topo_sort = template_.get_topological_sort();
  size_t frontier_count = topo_sort.size();
  size_t frontier_index = frontiers_.size();
  auto previous = frontiers_.back();

  Frontier f;

  /** Get the next node in the topological sort. */
  f.head = topo_sort[frontier_index];

  /** Copy the equivalence class from the previous frontier. */
  f.all_classes = previous.all_classes;

  /** Find all paths up to bound from current node to all others. */
  for (size_t i = frontier_index; i < frontier_count; ++i) {
    auto tps = CfgPaths::enumerate_paths(target_, bound_, f.head.ts, topo_sort[i].ts);
    auto rps = CfgPaths::enumerate_paths(rewrite_, bound_, f.head.rs, topo_sort[i].rs);

    for (auto tp : tps) {
      for (auto rp : rps) {
        /** Classify each path into an equivalence class to the destination node. */
        /** If a path disagrees with an already established equivalence class for
          a node, then we throw it out. */

        /** If a path goes to a new node without any equvialence class, then we
          have to treat that as a new equivalence class for this frontier. */


      }
    }
  }

  frontiers_.push_back(f);
}

/** Remove the last frontier -- nothing left to try. */
void DualBuilder::remove_frontier() {

}

/** Does the current frontier have another equivalence class to try? */
bool DualBuilder::frontier_has_next_class() const {
  auto current = frontiers_.back();
  if (current.current_class_index < current.all_classes.size())
    return true;
  return false;
}

/** Go to the next equivalence class in the current frontier. */
void DualBuilder::next_class() {
  assert(frontier_has_next_class());
  auto& current = frontiers_.back();
  current.current_class_index++;
}

/** Are the frontiers complete? */
bool DualBuilder::frontiers_complete() {
  return frontiers_.size() < template_.get_topological_sort().size();
}



