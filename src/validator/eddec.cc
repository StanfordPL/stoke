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

#include "src/validator/abstraction.h"
#include "src/validator/abstractions/block.h"
#include "src/validator/invariants/state_equality.h"
#include "src/validator/invariants/conjunction.h"
#include "src/validator/invariants/memory_equality.h"
#include "src/validator/invariants/no_signals.h"
#include "src/validator/dual.h"
#include "src/validator/eddec.h"


#include <set>

using namespace std;
using namespace stoke;
using namespace x64asm;

bool EDdecValidator::verify(const Cfg& init_target, const Cfg& init_rewrite) {

  init_mm();

  Abstraction* target_automata = new BlockAbstraction(init_target, *sandbox_);
  Abstraction* rewrite_automata = new BlockAbstraction(init_rewrite, *sandbox_);

  DualAutomata dual(target_automata, rewrite_automata);

  // Manually program in some correspondences
  // a : 13 / 1234
  auto start_state = dual.start_state();
  DualAutomata::Edge edge_a(start_state, {1,4}, {1,2,3,4});

  // b : 23 / 34
  DualAutomata::Edge edge_b(edge_a.to, {3,4}, {3,4});

  dual.add_edge(edge_a);
  dual.add_edge(edge_b);
  cout << "Edge a: " << edge_a.from << " --> " << edge_a.to << endl;
  cout << "Edge b: " << edge_b.from << " --> " << edge_b.to << endl;

  // Learn invariants at each of the reachable states.
  dual.learn_invariants(*sandbox_);

  // At the initial state, we say what invariant goes.
  auto initial_invariant = new ConjunctionInvariant();
  auto sei = new StateEqualityInvariant(init_target.def_ins());
  initial_invariant->add_invariant(sei);
  initial_invariant->add_invariant(new MemoryEqualityInvariant());
  initial_invariant->add_invariant(new NoSignalsInvariant());
  dual.set_invariant(start_state, static_cast<Invariant*>(initial_invariant));

  // Now we run a fixedpoint algorithm to get the provable invariants
  auto all_states = dual.get_reachable_states();
  set<DualAutomata::State> worklist;
  worklist = all_states;

  while(worklist.size()) {
    // Pick a state
    auto current = worklist.begin();

    bool ok = true;
    for(auto edge : dual.next_edges(*current)) {
      // check this edge
      auto start_inv = dual.get_invariant(edge.from);
      auto end_inv = static_cast<ConjunctionInvariant*>(dual.get_invariant(edge.to));

      cout << "_____________________________" << endl;
      cout << "Edge: " << edge.from << " -> " << edge.to << endl;

      // check the invariants in the conjunction one at a time
      for(size_t i = 0; i < end_inv->size(); ++i) {
        auto partial_inv = (*end_inv)[i];
        cout << "  Proving " << *partial_inv << endl;
        bool valid = check(init_target, init_rewrite, edge.te, edge.re, *start_inv, *partial_inv);
        cout << "    " << (valid ? "true" : "false") << endl;
        if(!valid) {
          ok = false;
          end_inv->remove(i);
          i--;
        }
      }
    }

    if(!ok) {
      // add all successors of 'current' to the worklist
      // remove 'current' from the worklist
      auto tmp = *current;
      worklist.erase(current);
      auto to_add = dual.next_states(tmp);
      worklist.insert(to_add.begin(), to_add.end());
    } else {
      // remove 'current' from the worklist
      worklist.erase(current);
    }
  }

  reset_mm();
  return false;
}

/*
// For debugging
set<Abstraction::State> states_visited;
set<Abstraction::State> current_set;
set<Abstraction::State> next_set;

next_set.insert(rewrite_automata->start_state());
while(next_set.size()) {
  current_set = next_set;
  next_set.clear();
  for(auto s : current_set) {
    for(auto t : rewrite_automata->next_states(s)) {
      if(!states_visited.count(t)) {
        cout << t << endl;
        states_visited.insert(t);
        next_set.insert(t);
      }
    }
  }
}*/
