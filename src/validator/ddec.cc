// Copyright 2013-2015 Stanford University
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

#include "src/cfg/paths.h"
#include "src/validator/bounded.h"
#include "src/validator/ddec.h"
#include "src/validator/invariants/conjunction.h"
#include "src/validator/invariants/disjunction.h"
#include "src/validator/invariants/equality.h"
#include "src/validator/invariants/false.h"
#include "src/validator/invariants/flag.h"
#include "src/validator/invariants/memory_equality.h"
#include "src/validator/invariants/nonzero.h"
#include "src/validator/invariants/no_signals.h"
#include "src/validator/invariants/state_equality.h"
#include "src/validator/invariants/top_zero.h"

#include "gmp.h"
#include "iml.h"

using namespace std;
using namespace stoke;
using namespace x64asm;

void DdecValidator::print_summary(const vector<ConjunctionInvariant*>& invariants) {
  cout << endl;
  cout << endl << "*********************************************************************";
  cout << endl << "****************************   SUMMARY   ****************************";
  cout << endl << "*********************************************************************";
  cout << endl;

  auto target_cuts = cutpoints_->target_cutpoint_locations();
  auto rewrite_cuts = cutpoints_->rewrite_cutpoint_locations();

  for (size_t i = 0; i < invariants.size(); ++i) {
    cout << "Cutpoint " << i << " at blocks " << target_cuts[i] << " / " << rewrite_cuts[i] << endl;
    auto invs = invariants[i];
    for (size_t j = 0; j < invs->size(); ++j) {
      cout << "    " << *(*invs)[j] << endl;
    }
  }
}

Instruction get_last_instr(const Cfg& cfg, Cfg::id_type block) {
  auto start_bs = cfg.num_instrs(block);
  return cfg.get_code()[cfg.get_index(Cfg::loc_type(block, start_bs - 1))];
}

/** Returns an invariant representing the fact that the first state transition in the path is taken. */
Invariant* get_jump_inv(const Cfg& cfg, const CfgPath& p, bool is_rewrite) {
  auto jump_type = BoundedValidator::is_jump(cfg, p, 0);
  auto start_block = p[0];
  auto start_bs = cfg.num_instrs(start_block);
  assert(start_bs > 0);
  auto jump_instr = cfg.get_code()[cfg.get_index(Cfg::loc_type(start_block, start_bs - 1))];
  bool is_fallthrough = jump_type == BoundedValidator::JumpType::FALL_THROUGH ||
                        jump_type == BoundedValidator::JumpType::NONE;
  auto jump_inv = new FlagInvariant(jump_instr, is_rewrite, is_fallthrough);
  return jump_inv;
}

/** Go through the invariants and see that we can verify them using the bounded verifier. */
vector<CpuState> DdecValidator::check_invariants(const Cfg& target, const Cfg& rewrite, vector<ConjunctionInvariant*> invariants) {

  vector<CpuState> results;

  BoundedValidator bv(solver_);
  bv.set_alias_strategy(BoundedValidator::AliasStrategy::STRING_NO_ALIAS);
  bv.set_nacl(true);
  bv.set_heap_out(true);

  auto target_cuts = cutpoints_->target_cutpoint_locations();
  auto rewrite_cuts = cutpoints_->rewrite_cutpoint_locations();

  // For each non-entry cutpoint, check that it actually holds
  for (size_t i = 1; i < target_cuts.size(); ++i) {
    auto target_paths = CfgPaths::enumerate_paths(target, 1, target.get_entry(), target_cuts[i]);
    auto rewrite_paths = CfgPaths::enumerate_paths(rewrite, 1, rewrite.get_entry(), rewrite_cuts[i]);

    cout << "cutpoint " << i << ": " << target_paths.size()*rewrite_paths.size() << " cases" << endl;

    for (auto p : target_paths) {
      for (auto q : rewrite_paths) {
        bool success = bv.verify_pair(target, rewrite, p, q, *invariants[0], *invariants[i]);
        if (!success && bv.counter_examples_available()) {
          auto cegs = bv.get_counter_examples();
          results.insert(results.begin(), cegs.begin(), cegs.end());
          return results;
        }
      }
    }
  }

  return results;
}

vector<CpuState> DdecValidator::check_cutpoints(const Cfg& target, const Cfg& rewrite, vector<Cfg::id_type>& target_cuts, vector<Cfg::id_type>& rewrite_cuts) {

  // We want to check the simulation relation.
  // Choose a path through target cutpoints,
  //   and a different path through rewrite cutpoints,
  // Check that this isn't feasible in practice.
  // If it is, generate a counterexample

  vector<CpuState> results;
  return results;
}

/** This combines learning and checking invariants with a CEGAR-style search.
  We learn using what testcases we have.  Then, we check that they actually
  hold using a bounded validation approach.  If we don't, we take the testcases
  produced by the bounded validator and feed it into the next search iteration.*/
vector<ConjunctionInvariant*> DdecValidator::find_invariants(const Cfg& target, const Cfg& rewrite) {

  NoSignalsInvariant* no_sigs = new NoSignalsInvariant();
  MemoryEqualityInvariant* mem_equ = new MemoryEqualityInvariant();
  vector<ConjunctionInvariant*> invariants;

  while (true) {

    // Recompute the cutpoints
    if(cutpoints_)
      delete cutpoints_;
    init_mm();
    cutpoints_ = new Cutpoints(target, rewrite, *sandbox_);
    stop_mm();

    if (cutpoints_->has_error()) {
      cout << "Cutpoint system encountered: " << cutpoints_->get_error() << endl;
      return vector<ConjunctionInvariant*>();
    }

    auto target_cuts = cutpoints_->target_cutpoint_locations();
    auto rewrite_cuts = cutpoints_->rewrite_cutpoint_locations();

    // Check cutpoints
    auto new_cutpoint_tcs = check_cutpoints(target, rewrite, target_cuts, rewrite_cuts);
    if(new_cutpoint_tcs.size()) {
      for(auto it : new_cutpoint_tcs) {
        for(size_t i = 0; i < sandbox_->size(); ++i) {
          if(*sandbox_->get_input(i) == it) {
            cout << "CEGAR fixedpoint @ cutpoint" << endl;
            return vector<ConjunctionInvariant*>();
          }
        }
        sandbox_->insert_input(it);
      }
      continue;
    }

    // Learn invariants based on the data we have
    invariants.clear();
    for (size_t i = 0; i < target_cuts.size(); ++i) {

      if (target_cuts[i] == target.get_entry()) {
        // Entry
        assert(rewrite_cuts[i] == rewrite.get_entry());

        auto begin = new ConjunctionInvariant();
        auto inv = new StateEqualityInvariant(target.def_ins());
        begin->add_invariant(inv);
        begin->add_invariant(no_sigs);
        begin->add_invariant(mem_equ);
        invariants.push_back(begin);
      } else if (target_cuts[i] == target.get_exit()) {
        // Exit
        assert(rewrite_cuts[i] == rewrite.get_exit());

        auto end = new ConjunctionInvariant();
        auto inv = new StateEqualityInvariant(target.live_outs());
        end->add_invariant(inv);
        end->add_invariant(no_sigs);
        end->add_invariant(mem_equ);
        invariants.push_back(end);
      } else {
        auto target_regs = target.def_outs(target_cuts[i]);
        auto rewrite_regs = rewrite.def_outs(rewrite_cuts[i]);
        auto inv = learn_disjunction_invariant(target_regs, rewrite_regs, cutpoints_->data_at(i, false), cutpoints_->data_at(i, true), get_last_instr(target, target_cuts[i]), get_last_instr(rewrite, rewrite_cuts[i]));
        invariants.push_back(inv);
        cout << "Learned invariant @ i=" << i << endl;
        cout << *inv << endl;
      }
    }

    // See if said invariants are correct
    cout << endl << "CHECKING INVARIANTS WITH BOUNDED VALIDATOR" << endl << endl;
    auto new_tests = check_invariants(target, rewrite, invariants);
    if (new_tests.size() == 0)
      return invariants;

    // Get the testcases and try again
    for (auto tc : new_tests) {
      for(size_t i = 0; i < sandbox_->size(); ++i) {
        if(*sandbox_->get_input(i) == tc) {
          cout << "CEGAR fixedpoint @ invariants" << endl;
          return vector<ConjunctionInvariant*>();
        }
      }
      sandbox_->insert_input(tc);
    }

    delete cutpoints_;
    cutpoints_ = new Cutpoints(target, rewrite, *sandbox_);
    if (cutpoints_->has_error()) {
      return vector<ConjunctionInvariant*>();
    }
  }

}


void DdecValidator::make_tcs(const Cfg& target, const Cfg& rewrite) {
  auto target_paths = CfgPaths::enumerate_paths(target, 1);
  auto rewrite_paths = CfgPaths::enumerate_paths(rewrite, 1);

  StateEqualityInvariant assume(target.def_ins());
  FalseInvariant _false;

  for(auto p : target_paths) {
    for(auto q : rewrite_paths) {
      cout << "Trying pair " << p << " ; " << q << endl;
      bv_.verify_pair(target, rewrite, p, q, assume, _false);
      for(auto it : bv_.get_counter_examples()) {
        sandbox_->insert_input(it); 
      }
    }
  }
}


bool DdecValidator::verify(const Cfg& init_target, const Cfg& init_rewrite) {

  auto target = inline_functions(init_target);
  auto rewrite = inline_functions(init_rewrite);

  try {

    sanity_checks(target, rewrite);

  } catch (validator_error e) {
    has_error_ = true;
    error_ = e.get_message();
    error_file_ = e.get_file();
    error_line_ = e.get_line();
  }

  bv_.set_alias_strategy(BoundedValidator::AliasStrategy::STRING_NO_ALIAS);
  bv_.set_nacl(true);
  bv_.set_heap_out(true);

  make_tcs(target, rewrite);

  auto invariants = find_invariants(target, rewrite);
  cout << "Got initial invariants " << invariants.size() << endl;
  if (!invariants.size()) {
    cout << "Could not find cutpoints/invariants" << endl;
    return false;
  }

  map<size_t, vector<size_t>> failed_invariants;
  while(true) {

    failed_invariants.clear();
    bool success = check_proof(target, rewrite, invariants, failed_invariants);
    if(success)
      return true;

    // otherwise, remove invariants that failed to validate and try again...
    // we want to be sure not to change the start/end invariants
    cout << "Validation failed; attempting to remove failed invariants" << endl;
    bool made_a_change = false;
    for(size_t i = 1; i < invariants.size() - 1; ++i) {
      auto to_remove = failed_invariants[i]; 
      for(auto it = to_remove.rbegin(); it != to_remove.rend(); ++it) {
        cout << "Removing " << *(*invariants[i])[*it] << endl;
        invariants[i]->remove(*it);
        made_a_change = true;
      }
    }

    if(!made_a_change) {
      cout << "Could not remove failed invariants.  Programs not proven equivalent." << endl;
      // got a fixed point, we really can't validate this
      return false;
    }
  }
}

bool DdecValidator::check_proof(const Cfg& target, const Cfg& rewrite, const vector<ConjunctionInvariant*>& invariants, map<size_t, vector<size_t>>& failed_invariants) {

  auto target_cuts = cutpoints_->target_cutpoint_locations();
  auto rewrite_cuts = cutpoints_->rewrite_cutpoint_locations();

  for (size_t i = 0; i < target_cuts.size(); ++i) {
    for (size_t j = 0; j < rewrite_cuts.size(); ++j) {
      // For each pair of cutpoints i, j, we need to do the following three checks:
      // 1. Paths_T(i, j) finite, Paths_R(i,j) finite
      // 2. P \in Paths_T(i, j), Q \in Paths_R(i, j) =>
      //    inv(i) { P ; Q } inv(j)
      // 3. P \in Paths_T(i, j), Q \in Paths_R(i, k) =>
      //    inv(i) { P ; Q } false

      auto target_paths_ij =
        CfgPaths::enumerate_paths(target, 1, target_cuts[i], target_cuts[j], &target_cuts);
      auto rewrite_paths_ij =
        CfgPaths::enumerate_paths(rewrite, 1, rewrite_cuts[i], rewrite_cuts[j], &rewrite_cuts);

      // 1. Paths_T(i, j) finite, Paths_R(i,j) finite
      auto target_paths_ij_more =
        CfgPaths::enumerate_paths(target, 2, target_cuts[i], target_cuts[j], &target_cuts);
      auto rewrite_paths_ij_more =
        CfgPaths::enumerate_paths(rewrite, 2, rewrite_cuts[i], rewrite_cuts[j], &rewrite_cuts);

      cout << "i=" << i << ", j=" << j
           << " " << target_paths_ij.size() << " / " << target_paths_ij_more.size() << endl;
      if (target_paths_ij.size() != target_paths_ij_more.size()) {
        cout << "Infinitely many paths found between target cutpoints " << i << " and " << j << endl;
        return false;
      }
      cout << "i=" << i << ", j=" << j
           << " " << rewrite_paths_ij.size() << " / " << rewrite_paths_ij_more.size() << endl;
      if (rewrite_paths_ij.size() != rewrite_paths_ij_more.size()) {
        cout << "Infinitely many paths found between rewrite cutpoints " << i << " and " << j << endl;
        return false;
      }

      cout << "cutpoint blocks: " << target_cuts[i] << "  (and)  " << rewrite_cuts[j] << endl;

      // 2. P in Paths_T(i, j), Q in Paths_R(i, j) => inv(i) { P; Q } inv(j)
      bool success = true;
      for (auto p : target_paths_ij) {
        auto target_jump_inv = get_jump_inv(target, p, false);
        if (target.num_instrs(target_cuts[i]))
          p.erase(p.begin());

        for (auto q : rewrite_paths_ij) {
          auto rewrite_jump_inv = get_jump_inv(rewrite, q, true);
          if (rewrite.num_instrs(rewrite_cuts[i]))
            q.erase(q.begin());
          auto copy = *static_cast<ConjunctionInvariant*>(invariants[i]);
          copy.add_invariant(target_jump_inv);
          copy.add_invariant(rewrite_jump_inv);

          auto end_inv = static_cast<ConjunctionInvariant*>(invariants[j]);
          /*
          for(size_t k = 0; k < end_inv->size(); ++k) {
            auto my_inv = (*end_inv)[k];
            cout << endl << endl << "WORKING ON " << *my_inv << endl << endl;
            bool ok = bv.verify_pair(target, rewrite, p, q, *invariants[i], *my_inv);
            if(!ok)
              return false;
          }
          */

          for(size_t m = 0; m < end_inv->size(); ++m) {

            cout << "Checking " << copy << " { " << BoundedValidator::print(p)
                 << " ; " << BoundedValidator::print(q) << " } " << *(*end_inv)[m] << endl;

            bool ok = bv_.verify_pair(target, rewrite, p, q, copy, *(*end_inv)[m]);
            if (!ok) {
              failed_invariants[j].push_back(m);
              success = false;
            }
          }

        }
      }
      if(!success) {
        print_summary(invariants);
        return false;
      }

      // 3. P \in Paths_T(i, j), Q \in Paths_R(i, k) => inv(i) { P ; Q } false
      for (size_t k = 0; k < rewrite_cuts.size(); ++k) {
        if (j == k)
          continue;

        auto rewrite_paths_ik =
          CfgPaths::enumerate_paths(rewrite, 1, rewrite_cuts[i], rewrite_cuts[k], &rewrite_cuts);

        for (auto p : target_paths_ij) {
          auto target_jump_inv = get_jump_inv(target, p, false);
          if (target.num_instrs(target_cuts[i]))
            p.erase(p.begin());


          for (auto q : rewrite_paths_ik) {
            auto rewrite_jump_inv = get_jump_inv(rewrite, q, true);
            if (rewrite.num_instrs(rewrite_cuts[i]))
              q.erase(q.begin());

            auto copy = *static_cast<ConjunctionInvariant*>(invariants[i]);
            copy.add_invariant(target_jump_inv);
            copy.add_invariant(rewrite_jump_inv);

            cout << "Checking " << copy << " { " << BoundedValidator::print(p)
                 << " ; " << BoundedValidator::print(q) << " } false " << endl;
            FalseInvariant fi;
            bool ok = bv_.verify_pair(target, rewrite, p, q, copy, fi);
            if (!ok) {
              print_summary(invariants);
              return false;
            }
          }
        }
      }
    }
  }


  print_summary(invariants);

  return true;

}



long mpz_to_long(mpz_t z)
{
  long result = 0;
  mpz_export(&result, 0, -1, sizeof result, 0, 0, z);
  return result;
}

/** Assumption: given a disjunction of conjuncts.
    Returns a conjunction which *may* include disjuncts. */
ConjunctionInvariant* simplify_disjunction(DisjunctionInvariant& disjs) {

  cout << "SIMPLIFYING DISJUNCTS" << endl;
  cout << disjs << endl << endl;

  FalseInvariant _false;
    
  // Go through disjunctions and throw out any that have a conjunction involving false...
  for(size_t i = 0; i < disjs.size(); ++i) {
    auto& conj = *static_cast<ConjunctionInvariant*>(disjs[i]);
    for(size_t j = 0; j < conj.size(); ++j) {
      if (*conj[j] == _false) {
        cout << "Removing disjunct " << i << " due to index " << j << endl;
        disjs.remove(i);
        i--;
        break;
      }
    }
  }

  cout << "Finished removing dumb disjuncts" << endl;

  // Take the conjunctions in the first disjunct.
  // If they're in the rest, then of the disjuncts, we remove it from all of them
  auto common_conjunctions = new ConjunctionInvariant();

  auto& first_conjunct = *static_cast<ConjunctionInvariant*>(disjs[0]);
  for(size_t i = 0; i < first_conjunct.size(); ++i) {
    auto leaf = first_conjunct[i];
    cout << "Looking for " << *leaf << " in all disjuncts" << endl;

    bool contained_in_all = true;
    for(size_t j = 1; j < disjs.size(); j++) {
      auto& other_conjunct = *static_cast<ConjunctionInvariant*>(disjs[j]);
      bool contained = false;
      for(size_t k = 0; k < other_conjunct.size(); ++k) {
        if(*other_conjunct[k] == *leaf) {
          contained = true;
          break;
        }
      }
      contained_in_all &= contained;
    }

    // remove the leaf from the conjunction
    if(contained_in_all) {
      cout << "  found in all :)" << endl;
      common_conjunctions->add_invariant(leaf);
      for(size_t j = 0; j < disjs.size(); j++) {
        auto& other_conjunct = *static_cast<ConjunctionInvariant*>(disjs[j]);
        bool contained = false;
        for(size_t k = 0; k < other_conjunct.size(); ++k) {
          if(*other_conjunct[k] == *leaf) {
            if(contained && j == 0) {
              //we're in trouble
              cout << "OOPS!  Simplified and found same thing twice!  WARNING" << endl;
            }
            other_conjunct.remove(k);
            contained = true;
            k--;
          }
        }
      }
      i--;
    } else {
      cout << "  not found" << endl;
    }
  }

  common_conjunctions->add_invariant(&disjs);

  cout << "ALL DONE W/ SIMPLIFY" << endl;

  return common_conjunctions;

}

ConjunctionInvariant* DdecValidator::learn_disjunction_invariant(x64asm::RegSet target_regs, x64asm::RegSet rewrite_regs, vector<CpuState> target_states, vector<CpuState> rewrite_states, const Instruction& last_target_instr, const Instruction& last_rewrite_instr) {

  bool target_has_jcc = last_target_instr.is_jcc();
  string target_opcode = Handler::get_opcode(last_target_instr);
  string target_cc = target_opcode.substr(1, target_opcode.size() - 1);

  bool rewrite_has_jcc = last_target_instr.is_jcc();
  string rewrite_opcode = Handler::get_opcode(last_rewrite_instr);
  string rewrite_cc = rewrite_opcode.substr(1, rewrite_opcode.size() - 1);

  /** Case 1: there's no conditional jump */
  if (!target_has_jcc && !rewrite_has_jcc) {
    return learn_simple_invariant(target_regs, rewrite_regs, target_states, rewrite_states);
  } else if (target_has_jcc && !rewrite_has_jcc) {

    vector<CpuState> jump_states;
    vector<CpuState> fall_states;
    for (auto it : target_states) {
      if (ConditionalHandler::condition_satisfied(target_cc, it))
        jump_states.push_back(it);
      else
        fall_states.push_back(it);
    }

    auto jump_simple = learn_simple_invariant(target_regs, rewrite_regs, jump_states, rewrite_states);
    jump_simple->add_invariant(jump_simple);

    auto fall_simple = learn_simple_invariant(target_regs, rewrite_regs, fall_states, rewrite_states);
    fall_simple->add_invariant(new FlagInvariant(last_target_instr, false, true));

    auto disj = new DisjunctionInvariant();
    disj->add_invariant(jump_simple);
    disj->add_invariant(fall_simple);

    return simplify_disjunction(*disj);
  } else if (!target_has_jcc && rewrite_has_jcc) {

    vector<CpuState> jump_states;
    vector<CpuState> fall_states;
    for (auto it : rewrite_states) {
      if (ConditionalHandler::condition_satisfied(rewrite_cc, it))
        jump_states.push_back(it);
      else
        fall_states.push_back(it);
    }

    auto jump_simple = learn_simple_invariant(target_regs, rewrite_regs, target_states, jump_states);
    jump_simple->add_invariant(new FlagInvariant(last_rewrite_instr, true, false));

    auto fall_simple = learn_simple_invariant(target_regs, rewrite_regs, target_states, fall_states);
    fall_simple->add_invariant(new FlagInvariant(last_rewrite_instr, true, true));

    auto disj = new DisjunctionInvariant();
    disj->add_invariant(jump_simple);
    disj->add_invariant(fall_simple);

    return simplify_disjunction(*disj);
  } else {
    // Both have jumps!
    vector<CpuState> jump_jump_states_target;
    vector<CpuState> jump_fall_states_target;
    vector<CpuState> fall_jump_states_target;
    vector<CpuState> fall_fall_states_target;

    vector<CpuState> jump_jump_states_rewrite;
    vector<CpuState> jump_fall_states_rewrite;
    vector<CpuState> fall_jump_states_rewrite;
    vector<CpuState> fall_fall_states_rewrite;

    for (size_t i = 0; i < target_states.size(); ++i) {
      if ( ConditionalHandler::condition_satisfied( target_cc, target_states[i])) {
        if ( ConditionalHandler::condition_satisfied( rewrite_cc, rewrite_states[i])) {
          jump_jump_states_target.push_back(target_states[i]);
          jump_jump_states_rewrite.push_back(rewrite_states[i]);
        } else {
          jump_fall_states_target.push_back(target_states[i]);
          jump_fall_states_rewrite.push_back(rewrite_states[i]);
        }
      } else {
        if ( ConditionalHandler::condition_satisfied( rewrite_cc, rewrite_states[i])) {
          fall_jump_states_target.push_back(target_states[i]);
          fall_jump_states_rewrite.push_back(rewrite_states[i]);
        } else {
          fall_fall_states_target.push_back(target_states[i]);
          fall_fall_states_rewrite.push_back(rewrite_states[i]);
        }
      }
    }

    auto S1 = learn_simple_invariant(target_regs, rewrite_regs, jump_jump_states_target, jump_jump_states_rewrite);
    auto S1_target_path = new FlagInvariant(last_target_instr, false, false);
    auto S1_rewrite_path = new FlagInvariant(last_rewrite_instr, true, false);
    S1->add_invariant(S1_target_path);
    S1->add_invariant(S1_rewrite_path);

    auto S2 = learn_simple_invariant(target_regs, rewrite_regs, jump_fall_states_target, jump_fall_states_rewrite);
    auto S2_target_path = new FlagInvariant(last_target_instr, false, false);
    auto S2_rewrite_path = new FlagInvariant(last_rewrite_instr, true, true);
    S2->add_invariant(S2_target_path);
    S2->add_invariant(S2_rewrite_path);

    auto S3 = learn_simple_invariant(target_regs, rewrite_regs, fall_jump_states_target, fall_jump_states_rewrite);
    auto S3_target_path = new FlagInvariant(last_target_instr, false, true);
    auto S3_rewrite_path = new FlagInvariant(last_rewrite_instr, true, false);
    S3->add_invariant(S3_target_path);
    S3->add_invariant(S3_rewrite_path);

    auto S4 = learn_simple_invariant(target_regs, rewrite_regs, fall_fall_states_target, fall_fall_states_rewrite);
    auto S4_target_path = new FlagInvariant(last_target_instr, false, true);
    auto S4_rewrite_path = new FlagInvariant(last_rewrite_instr, true, true);
    S4->add_invariant(S4_target_path);
    S4->add_invariant(S4_rewrite_path);

    auto disj = new DisjunctionInvariant();
    disj->add_invariant(S1);
    disj->add_invariant(S2);
    disj->add_invariant(S3);
    disj->add_invariant(S4);

    return simplify_disjunction(*disj);
  }

  assert(false);
  return NULL;

}

ConjunctionInvariant* DdecValidator::learn_simple_invariant(x64asm::RegSet target_regs, x64asm::RegSet rewrite_regs, vector<CpuState> target_states, vector<CpuState> rewrite_states) {

  //TODO leaks memory

  MemoryEqualityInvariant* mem_equ = new MemoryEqualityInvariant();

  NoSignalsInvariant* no_sigs = new NoSignalsInvariant();
  ConjunctionInvariant* conj = new ConjunctionInvariant();
  conj->add_invariant(no_sigs);
  conj->add_invariant(mem_equ);

  if (target_states.size() == 0 || rewrite_states.size() == 0) {
    conj->add_invariant(new FalseInvariant());
    return conj;
  }

  RegSet r64_exclude = RegSet::empty();

  // TopZero and NonZero invariants
  for (size_t k = 0; k < 2; ++k) {
    auto& states = k ? rewrite_states : target_states;

    for (size_t i = 0; i < r64s.size(); ++i) {
      bool all_topzero = true;
      bool all_nonzero = true;
      bool found_one = false;

      for (auto state : states) {
        if (state.gp[i].get_fixed_double(1) != 0) {
          all_topzero = false;
        } 
        if (state.gp[i].get_fixed_quad(0) == 0) {
          all_nonzero = false;
        }
        if (state.gp[i].get_fixed_quad(0) == 1) {
          found_one = true;
        }
      }

      if (all_topzero) {
        auto tzi = new TopZeroInvariant(r64s[i], k);
        if (tzi->check(target_states, rewrite_states)) {
          conj->add_invariant(tzi);
          r64_exclude = r64_exclude + r64s[i];
        } else {
          cout << "GOT BAD INVARIANT " << *tzi << endl;
          delete tzi;
        }
      }

      if(all_nonzero && found_one) {
        auto nz = new NonzeroInvariant(r64s[i], k);
        if (nz->check(target_states, rewrite_states)) {
          conj->add_invariant(nz);
        } else {
          cout << "GOT BAD INVARIANT " << *nz << endl;
          delete nz;
        }
      }
    }
  }

  struct Column {
    R reg;
    bool is_rewrite;
    bool zero_extend;

    Column() : reg(rax), is_rewrite(false), zero_extend(false) { }
  };

  // For each live register, we need columns for:
  //   its 64-bit value (if not guaranteed zero)
  //   its zero-extended 32-bit value
  //   its sign-extended 32-bit value
  //
  // We need a 'constant' column with the value '1'.
  vector<Column> columns;

  cout << "try sign extend: " << try_sign_extend_ << endl;

  for (size_t k = 0; k < 2; ++k) {
    auto def_ins = k ? rewrite_regs : target_regs;
    for (auto r = def_ins.gp_begin(); r != def_ins.gp_end(); ++r) {
      Column c;
      c.reg = *r;
      c.is_rewrite = k;
      c.zero_extend = true;

      R reg = *r;

      if(reg.size() == 64) {
        if(!r64_exclude.contains(*static_cast<R64*>(&reg))) {
          columns.push_back(c);
        }
      }

      c.reg = r32s[reg];
      columns.push_back(c);

      if(try_sign_extend_) {
        c.zero_extend = false;
        columns.push_back(c);
      }

    }
  }

  size_t num_columns = columns.size() + 1;
  size_t tc_count = target_states.size();

  // Build the nullspace matrix
  cout << "allocating the matrix of size " << tc_count << " x " << num_columns << endl;
  long* matrix = new long[tc_count*num_columns];
  for (size_t i = 0; i < tc_count; ++i) {
    auto target_state = target_states[i];
    auto rewrite_state = rewrite_states[i];
    for (size_t j = 0; j < columns.size(); ++j) {
      auto column = columns[j];
      auto reg = column.reg;
      auto is_rewrite = column.is_rewrite;
      long value;
      if (is_rewrite) {
        value = rewrite_state[reg];
      } else {
        value = target_state[reg];
      }

      if(reg.size() == 32 && !column.zero_extend) {
        if((uint64_t)value & 0x80000000) {
          value = value | 0xffffffff00000000;
        }
      }

      matrix[i*num_columns + j] = value;
    }
    matrix[i*num_columns + num_columns - 1] = 1;
  }

  /*
  for(size_t i = 0; i < tc_count; ++i) {
    for(size_t j = 0; j < num_columns; ++j) {
      cout << dec << matrix[i*num_columns + j] << " ";
    }
    cout << endl;
  }
  */

  mpz_t *mp_result;
  cout << "computing the nullspace" << endl;
  size_t dim = nullspaceLong(tc_count, num_columns, matrix, &mp_result);
  cout << "nullspace computation complete" << endl;

  delete matrix;

  // For each row of the nullspace, find the gcd and divide by it.
  for (size_t i = 0; i < dim; ++i) {
    mpz_t gcd;
    mpz_init_set(gcd, mp_result[0*dim+i]);
    for (size_t j = 1; j < num_columns; ++j) {
      mpz_gcd(gcd, gcd, mp_result[j*dim+i]);
    }

    mpz_t val;
    mpz_init(val);
    for (size_t j = 0; j < num_columns; ++j) {
      mpz_divexact(val, mp_result[j*dim+i], gcd);
      mpz_set(mp_result[j*dim+i], val);
    }
  }

  // Extract the data from the nullspace
  for (size_t i = 0; i < dim; ++i) {
    bool ok = true;
    EqualityInvariant::CoefficientMap target_map;
    EqualityInvariant::CoefficientMap rewrite_map;
    for (size_t j = 0; j < num_columns - 1; ++j) {
      auto column = columns[j];
      if (!mpz_fits_slong_p(mp_result[j*dim + i])) {
        ok = false;
      }

      auto p = pair<R,bool>(column.reg, !column.zero_extend);

      if (column.is_rewrite) {
        //cout << "rewrite " << column.first << endl;
        rewrite_map[p] = mpz_get_si(mp_result[j*dim + i]);
        //cout << "  " << rewrite_map[column.first] << endl;
      } else {
        //cout << "target " << column.first << endl;
        //target_map[column.first] = mpz_to_long(mp_result[j*dim + i]);
        target_map[p] = mpz_get_si(mp_result[j*dim + i]);
        //cout << "  " << target_map[column.first] << endl;
      }
      //gmp_fprintf(stdout, "  %Zd\n", mp_result[j*dim + i]);
    }
    //cout << "Constant" << endl;
    //gmp_fprintf(stdout , "  %Zd\n", mp_result[(num_columns-1)*dim + i]);
    //cout << endl;

    if(!ok)
      cout << "(reduced 2^64) ";
    auto ei = new EqualityInvariant(target_map, rewrite_map, -mpz_get_si(mp_result[(num_columns-1)*dim + i]));
    if (ei->check(target_states, rewrite_states)) {
      conj->add_invariant(ei);
      cout << *ei << endl;
    } else {
      cout << "GOT BAD INVARIANT " << *ei << endl;
    }
  }

  free(mp_result);

  cout << "Nullspace dimension:" << dec << dim << endl;
  cout << "Column count: " << dec << num_columns << endl;

  return conj;
}
