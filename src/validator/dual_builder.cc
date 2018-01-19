
#include "src/validator/dual_builder.h"

using namespace stoke;
using namespace std;

/** Is there a next POD available? */
bool DualBuilder::has_next() const {
  return !frontiers_complete();
}

/** Build the next possible automata. */
DualAutomata DualBuilder::next() {

  while(!frontiers_complete()) {
    next_frontier();
  }

  return template_;
}

uint64_t DualBuilder::get_invariant_class(EqualityInvariant* equ, DualAutomata::Edge& e) {
  map<size_t, size_t> target_counts;
  map<size_t, size_t> rewrite_counts;
  set<size_t> target_bad_blocks;
  set<size_t> rewrite_bad_blocks;

  // loop through past frontiers
      // add any blocks that appear in loops to bad blocks
      // (in the future, we can do something more sophisticated here with linear algebra)

      // add any edges taken so far into counts

  // figure out the linear quantity at the end

  return 0;
}

std::vector<uint64_t> DualBuilder::get_invariant_class(ConjunctionInvariant* conj, DualAutomata::Edge& e) {
  std::vector<uint64_t> equiv_class;
  for(size_t i = 0; i < conj->size(); ++i) {
    auto equ = static_cast<EqualityInvariant*>((*conj)[i]);
    auto value = get_invariant_class(equ, e);
    equiv_class.push_back(value);
  }
  return equiv_class;
}

std::vector<uint64_t> DualBuilder::get_invariant_class(DualAutomata::State& s, DualAutomata::Edge& e) {
  auto conj = template_.get_invariant(s);
  return get_invariant_class(conj, e);
}


/** Find the next frontier and all the possible equivalence classes. */
void DualBuilder::next_frontier() {
  assert(!frontiers_complete());

  cout << "==== Next Frontier ====" << endl;

  const auto& topo_sort = template_.get_topological_sort();
  size_t frontier_count = topo_sort.size();
  size_t frontier_index = frontiers_.size();

  Frontier f;

  /** Get the next node in the topological sort. */
  f.head = topo_sort[frontier_index];

  /** Copy the equivalence class from the previous frontier. */
  if(frontiers_.size()) {
    auto previous = frontiers_.back();
    f.all_classes.push_back(previous.all_classes[previous.current_class_index]);
    f.all_classes[0].edges.clear();
  } else {
    // for start node
    EquivalenceClass c;
    f.all_classes.push_back(c);
  }
  f.current_class_index = 0;

  map<DualAutomata::State, 
    map<vector<uint64_t>, vector<DualAutomata::Edge>>> possible_classes;
  // state -> classification -> possible edges

  /** Find all paths up to bound from current node to all others. */
  for (size_t i = frontier_index+1; i < frontier_count; ++i) {
    cout << "Looking for paths from " << f.head << " to " << topo_sort[i] << endl;
    auto target_dest = topo_sort[i].ts;
    auto rewrite_dest = topo_sort[i].rs;
    auto tps = CfgPaths::enumerate_paths(target_, bound_, f.head.ts, target_dest);
    auto rps = CfgPaths::enumerate_paths(rewrite_, bound_, f.head.rs, rewrite_dest);

    for (auto tp : tps) {
      for (auto rp : rps) {
        DualAutomata::Edge e(f.head, tp, rp);

        cout << "Processing pair " << tp << " / " << rp << endl;

        /** Classify each path into an equivalence class to the destination node. */
        /** If a path disagrees with an already established equivalence class for
          a node, then we throw it out. */

        /** If a path goes to a new node without any equvialence class, then we
          have to treat that as a new equivalence class for this frontier. */
        auto classification = get_invariant_class(f.head, e);
        if(f.all_classes[0].invariant_values.count(f.head)) {
          if(f.all_classes[0].invariant_values[f.head] == classification) {
            // OK, add this edge in
            cout << "   - this edge looks okay" << endl;
            f.all_classes[0].edges.push_back(e);
          }  else {
            cout << "   - this edge won't work; skipping" << endl;
            // we skip this edge
            continue;
          }
        } else {
          // add this option to a new map used for classes
          cout << "   - this edge goes to a new state" << endl;
          possible_classes[f.head][classification].push_back(e);
        }
      }
    }
  }

  /** Add classes into proper data-structure. */
  size_t total_choices = 1;
  for(auto state_classdata : possible_classes) {
    total_choices *= state_classdata.second.size();
  }

  cout << "TOTAL CHOICES = " << total_choices << endl;
  for(size_t i = 0; i < total_choices; ++i) {
    cout << "  choice " << i << endl;
    // create new equivalance class, except when i = 0 (already exists)
    if(i != 0) {
      f.all_classes.push_back(f.all_classes[0]);
    }
    
    // for this choice, which class for each state are we picking?
    map<DualAutomata::State, size_t> state_choice_map;
    uint64_t current_divisor = 1;
    for(auto state_classdata : possible_classes) {
      auto state = state_classdata.first;
      uint64_t current_choice = (total_choices/current_divisor) % state_classdata.second.size();
      current_divisor *= state_classdata.second.size();
      state_choice_map[state] = current_choice;
      cout << "     " << state << " -> " << current_choice << endl;
    }

    auto& curr_class = f.all_classes[i];
    /*
    for(auto state_classdata : possible_classes) {
      auto state = state_classdata.first;
      auto classdata = state_classdata.second;
      for(auto class_edges : classdata) {
        auto classification = class_edges.first;
        auto edges = class_edges.second;


      }
    }
    */
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
bool DualBuilder::frontiers_complete() const {
  cout << "frontiers? " << frontiers_.size() << " and " << template_.get_topological_sort().size() << endl;
  return template_.get_topological_sort().size() < frontiers_.size();
}



