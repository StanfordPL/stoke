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
  DualAutomata::Edge edge_a(start_state, {1,3}, {1,2,3,4});

  // b : 23 / 34
  DualAutomata::Edge edge_b(edge_a.to, {2,3}, {3,4});

  cout << "Edge a: " << edge_a.from << " --> " << edge_a.to << endl;
  cout << "Edge b: " << edge_b.from << " --> " << edge_b.to << endl;

  // Learn invariants at each of the reachable states.
  dual.learn_invariants(*sandbox_);

  // Now prove some stuff.

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
