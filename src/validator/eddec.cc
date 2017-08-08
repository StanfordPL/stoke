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
#include "src/validator/invariants/disjunction.h"
#include "src/validator/invariants/equality.h"
#include "src/validator/invariants/inequality.h"
#include "src/validator/invariants/memory_equality.h"
#include "src/validator/invariants/no_signals.h"
#include "src/validator/invariants/pointer_null.h"
#include "src/validator/dual.h"
#include "src/validator/eddec.h"
#include "src/validator/variable.h"

#include <istream>
#include <fstream>
#include <iostream>
#include <set>

#define DEBUG_EDDEC(X) { X }

using namespace std;
using namespace stoke;
using namespace x64asm;

string string_ghost_start(x64asm::R64 r) {
  stringstream ss;
  ss << r << "_start";
  return ss.str();
}

string string_ghost_end(x64asm::R64 r) {
  stringstream ss;
  ss << r << "_end";
  return ss.str();
}

ConjunctionInvariant* EDdecValidator::get_fixed_invariant() const {

  auto result = new ConjunctionInvariant();

  if (no_string_overlap_) {
    for (auto r : string_params_) {

      Variable r_start(string_ghost_start(r), false, 8);
      Variable r_end(string_ghost_end(r), false, 8);

      result->add_invariant(new InequalityInvariant(r_start, r_end, false, false));
      result->add_invariant(new StateEqualityInvariant(x64asm::RegSet::empty(), {r_start, r_end}));

      for (auto s : string_params_) {
        if ((int)r <= (int)s)
          continue;

        Variable s_start(string_ghost_start(s), false, 8);
        Variable s_end(string_ghost_end(s), false, 8);

        // r_end < s_start OR s_end < r_start
        auto disj = new DisjunctionInvariant();
        disj->add_invariant(new InequalityInvariant(s_end, r_start, true, false));
        disj->add_invariant(new InequalityInvariant(r_end, s_start, true, false));

        result->add_invariant(disj);
      }
    }
  }

  return result;
}

ConjunctionInvariant* EDdecValidator::get_initial_invariant(const Cfg& target) const {

  auto initial_invariant = new ConjunctionInvariant();
  auto sei = new StateEqualityInvariant(target.def_ins());
  initial_invariant->add_invariant(sei);
  initial_invariant->add_invariant(new MemoryEqualityInvariant());
  initial_invariant->add_invariant(new NoSignalsInvariant());

  for (auto r : string_params_) {
    /** rsi_start = rsi (for example) */
    Variable start_var(string_ghost_start(r), false);
    Variable string_reg(r, false);
    string_reg.coefficient = -1;
    auto equiv = new EqualityInvariant({start_var, string_reg}, 0);
    initial_invariant->add_invariant(equiv);

    /** *rsi_end = 0 (for example) */
    Variable end_var(string_ghost_end(r), false);
    auto end_mem = new PointerNullInvariant(end_var, 1);
    initial_invariant->add_invariant(end_mem);
  }

  initial_invariant->add_invariant(get_fixed_invariant());

  return initial_invariant;
}



void EDdecValidator::transform_testcase(CpuState& tc) const {

  /** For each string argument, we need to insert a ghost value representing
   * the start and the end of each string. */
  for (auto r : string_params_) {

    stringstream start;
    start << r << "_start";
    stringstream end;
    end << r << "_end";

    tc.shadow[start.str()] = tc[r];

    // now we need to find the end of the string.
    CpuState copy = tc;
    M8 ptr(r);

    while (copy.is_valid(ptr) && copy[ptr].get_fixed_byte(0) != 0) {
      copy.update(r, copy[r]+1);
    }

    if (!copy.is_valid(ptr)) {
      cout << "Register " << r << endl;
      cout << tc << endl;
      cout << copy << endl;
      cout << "Address: " << hex << copy.get_addr(ptr) << endl;
      cout << "Size: " << ptr.size() << endl;
      cout << "Range? " << copy.in_range(copy.get_addr(ptr), 1) << endl;
      cout << "Valid? " << copy.is_valid(ptr) << endl;
      for (size_t i = 0; i < copy.segments.size(); ++i) {
        cout << "in range @ " << i << ": " << copy.segments[i].in_range(copy.get_addr(ptr)) << endl;
      }
      cout << "Memory value: " << copy[ptr].get_fixed_byte(0) << endl;
      throw VALIDATOR_ERROR("String doesn't have null terminator in test case.");
    }

    tc.shadow[end.str()] = copy[r];
  }

}

/** Returns a list of all the test cases from the Sandbox transformed by
  'transform_testcase'.  Replaces all the sandbox test cases with these new ones. */
vector<CpuState> EDdecValidator::transform_inputs() {

  vector<CpuState> transformed_inputs;
  for (size_t i = 0; i < sandbox_->size(); ++i) {
    CpuState input = *sandbox_->get_input(i);
    transform_testcase(input);
    transformed_inputs.push_back(input);
  }
  sandbox_->clear_inputs();
  for (auto tc : transformed_inputs)
    sandbox_->insert_input(tc);

  return transformed_inputs;
}

/** Take the dual and prove the invariants that have been previously
  guessed (and stored in the dual's data structure). */
void EDdecValidator::prove_invariants(DualAutomata& dual, const Cfg& init_target, const Cfg& init_rewrite) {

  // Now we run a fixedpoint algorithm to get the provable invariants
  auto all_states = dual.get_reachable_states();
  set<DualAutomata::State> worklist;
  worklist = all_states;

  // TODO: we can make this faster if the worklist contains *edges* rather than
  //   states.
  while (worklist.size()) {
    // Pick a state
    auto current = worklist.begin();

    bool ok = true;
    for (auto edge : dual.next_edges(*current)) {
      // check this edge
      auto start_inv = dual.get_invariant(edge.from);
      auto end_inv = static_cast<ConjunctionInvariant*>(dual.get_invariant(edge.to));

      cout << "_____________________________" << endl;
      cout << "Edge: " << edge.from << " -> " << edge.to << endl;
      cout << "target: ";
      for (auto it : edge.te) {
        cout << it << " ";
      }
      cout << endl;
      cout << "rewrite: ";
      for (auto it : edge.re) {
        cout << it << " ";
      }
      cout << endl;
      cout << "Assuming: " << *start_inv << endl << endl;

      // check the invariants in the conjunction one at a time
      for (size_t i = 0; i < end_inv->size(); ++i) {
        auto partial_inv = (*end_inv)[i];
        cout << "  Proving " << *partial_inv << endl;
        bool valid = false;
        try {
          valid = check(init_target, init_rewrite, edge.from.ts, edge.from.rs, edge.te, edge.re, *start_inv, *partial_inv);
        } catch (validator_error e) {
          valid = false;
          cout << "   * encountered " << e.what() << "; assuming false.";
        }
        //bool valid = true;
        cout << "    " << (valid ? "true" : "false") << endl;
        if (!valid) {
          ok = false;
          end_inv->remove(i);
          i--;
        }
      }
    }

    if (!ok) {
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
}

bool EDdecValidator::verify_exhaustive(DualAutomata& dual, const Cfg& target, const Cfg& rewrite) {

  DEBUG_EDDEC(cout << "[verify_exhaustive]" << endl;)

  /** Algorithm:
    *
    * Loop through each state of the dual automata.
    * For each state, prove that one of the outbound edges must be taken.
    *
    * We have an outer loop over reachable states, and then for each one we do a check.
    */

  auto reachable_states = dual.get_reachable_states();
  auto exit_states = dual.exit_states();

  for (auto state : reachable_states) {

    if (exit_states.count(state))
      continue;

    DEBUG_EDDEC(cout << "[verify_exhaustive] state " << state << endl;)

    auto edges = dual.next_edges(state);
    vector<CfgPath> Ps;
    vector<CfgPath> Qs;

    for (auto edge : edges) {
      Ps.push_back(edge.te);
      Qs.push_back(edge.re);
      DEBUG_EDDEC(cout << "   P: " << edge.te << "   Q: " << edge.re << endl;)
    }

    auto invariant = dual.get_invariant(state);
    DEBUG_EDDEC(cout << "   invariant: " << *invariant << endl;)

    bool this_case_good = check_exhaustive(target, rewrite, state.ts, state.rs, Ps, Qs, *invariant);
    DEBUG_EDDEC(cout << "   this state exhaustive: " << this_case_good << endl;)

    if (!this_case_good)
      return false;
  }

  return true;

}


bool EDdecValidator::verify_final_invariants(DualAutomata& dual, Invariant* final_invariant, const Cfg& init_target, const Cfg& init_rewrite) {
  bool all_correct = true;

  auto exit_states = dual.exit_states();
  for (auto exit : exit_states) {
    auto return_inv = static_cast<ConjunctionInvariant*>(dual.get_invariant(exit));
    cout << endl << " XXXXXXX PROVEN RELATIONSHIPS at " << exit << " XXXXXXX " << endl << endl;
    for (size_t i = 0; i < return_inv->size(); ++i) {
      cout << *(*return_inv)[i] << endl;
    }

    // Now make sure that the invariants imply what we want them to imply,
    // i.e. live-outs and memory are equal
    bool valid = false;
    try {
      valid = check(init_target, init_rewrite, init_target.get_entry(), init_rewrite.get_entry(), {}, {}, *return_inv, *final_invariant);
    } catch (validator_error e) {
      valid = false;
      cout << "   * encountered " << e.what() << "; assuming false.";
    }

    if (valid) {
      cout << "Paths ending here are verified!" << endl;
    } else {
      cout << "Couldn't verify paths ending here." << endl;
      all_correct = false;
    }
  }

  return all_correct;
}

bool EDdecValidator::guess_dual_invariants(DualAutomata& dual, const Cfg& init_target, const Cfg& init_rewrite) {

  // Learn invariants at each of the reachable states.
  std::cout << "LEARNING INVARIANTS " << std::endl;
  InvariantLearner learner(init_target, init_rewrite);
  for (auto p : string_params_) {
    Variable a(string_ghost_start(p), false, 8);
    Variable b(string_ghost_end(p), false, 8);
    learner.add_ghost(a);
    learner.add_ghost(b);
  }
  bool learn_success = dual.learn_invariants(*sandbox_, learner);
  if (!learn_success) {
    cout << "Fatal error: the dual automata doesn't look correct" << endl;
    return false;
  }

  // At the initial state, we say what invariant goes.
  auto start_state = dual.start_state();
  auto initial_invariant = get_initial_invariant(init_target);
  dual.set_invariant(start_state, initial_invariant);

  // At other states, we conjoin invariants we know we need to handle different data types
  for (auto state : dual.get_reachable_states()) {
    if (state == start_state)
      continue;

    auto learned_invariant = dual.get_invariant(state);
    auto fixed_invariant = get_fixed_invariant();
    for (size_t i = 0; i < fixed_invariant->size(); ++i) {
      learned_invariant->add_invariant((*fixed_invariant)[i]);
    }
    dual.set_invariant(state, learned_invariant);
  }

  return true;
}

bool EDdecValidator::verify(const Cfg& target, const Cfg& rewrite) {

  init_mm();

  auto transformed_inputs = transform_inputs();

  Abstraction* target_automata = new BlockAbstraction(target, *sandbox_);
  Abstraction* rewrite_automata = new BlockAbstraction(rewrite, *sandbox_);

  InvariantLearner learner(target, rewrite);
  DualBuilder db(learner, *this);

  auto initial_invariant = get_initial_invariant(target);

  auto dual = db.build_dual(target_automata, rewrite_automata, transformed_inputs, initial_invariant);
  std::cout << "BUILT DUAL AUTOMATA" << std::endl;
  dual.print_all();

  // guess invariants from test data for each state of dual automata
  if (!guess_dual_invariants(dual, target, rewrite)) {
    reset_mm();
    return false;
  }

  // Here's where we do the important work of finding provably correct
  // invariants at each node using a worklist algorithm.
  prove_invariants(dual, target, rewrite);

  // Compute the final invariant we want to prove at all exits
  auto final_invariant = new ConjunctionInvariant();
  final_invariant->add_invariant(new MemoryEqualityInvariant());
  final_invariant->add_invariant(new StateEqualityInvariant(target.live_outs()));

  // Verify the final invariant
  bool all_correct = verify_final_invariants(dual, final_invariant, target, rewrite);
  // Ensure that the dual has all the possible paths
  bool all_exhausted = verify_exhaustive(dual, target, rewrite);

  bool verified = all_correct && all_exhausted;

  // Cleanup and report
  reset_mm();
  cout << endl;

  if (verified) {
    cout << "VERIFIED." << endl << endl;
    return true;
  } else {
    cout << endl << endl;
    return false;
  }
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
