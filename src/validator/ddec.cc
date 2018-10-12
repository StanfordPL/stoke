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

#include "src/cfg/dominators.h"
#include "src/cfg/paths.h"
#include "src/cfg/sccs.h"
#include "src/serialize/serialize.h"
#include "src/validator/bounded.h"
#include "src/validator/data_collector.h"
#include "src/validator/dual.h"
#include "src/validator/ddec.h"
#include "src/validator/flow_invariant_learner.h"
#include "src/validator/indexer.h"
#include "src/validator/null.h"
#include "src/validator/invariants.h"
#include "src/validator/local_class_checker.h"

#include <chrono>
#include <algorithm>
#include <set>

// this is configurable via build system
#ifdef STOKE_DEBUG_DDEC
#define DDEC_DEBUG(X) { X }
#else
#define DDEC_DEBUG(X) { }
#endif

#ifdef STOKE_DEBUG_CEG
#define CEG_DEBUG(X) { X }
#else
#define CEG_DEBUG(X) { }
#endif



#define DDEC_TC_DEBUG(X) { }

using namespace std;
using namespace std::chrono;
using namespace stoke;
using namespace x64asm;

void DdecValidator::warn(string s) {
  for (size_t i = 0; i < 8; ++i)
    cout << "  **************** WARNING **************** " << endl;
  cout << s << endl;
  for (size_t i = 0; i < 2; ++i)
    cout << "  ***************************************** " << endl;

  for (size_t i = 0; i < 8; ++i)
    cerr << "  **************** WARNING **************** " << endl;
  cerr << s << endl;
  for (size_t i = 0; i < 2; ++i)
    cerr << "  ***************************************** " << endl;


}


/** Returns the number of inductive paths we've learned here. */
size_t DdecValidator::learn_inductive_paths_at_block(
  vector<CfgPath>& target_inductive_paths,
  vector<CfgPath>& rewrite_inductive_paths,
  Cfg::id_type target_block,
  Cfg::id_type rewrite_block
) {

  cout << "LEARNING PATHS AT BLOCKS " << target_block << " / " << rewrite_block << endl;

  size_t found_pair = 0;

  for (size_t k = 0; k < 7; ++k) {
    size_t bound = (1 << k);
    auto target_paths = CfgPaths::enumerate_paths(target_, bound, target_block, target_block);
    auto rewrite_paths = CfgPaths::enumerate_paths(rewrite_, bound, rewrite_block, rewrite_block);

    cout << "Target paths for " << target_block << " bound=" << bound << endl;
    for (auto it : target_paths) {
      cout << "    " << it << endl;
    }
    cout << "Rewrite paths for " << rewrite_block << " bound=" << bound << endl;
    for (auto it : rewrite_paths) {
      cout << "    " << it << endl;
    }

    for (auto tp : target_paths) {
      for (auto rp : rewrite_paths) {

        auto tp_copy = tp;
        auto rp_copy = rp;

        /** if we have a loop with another block, the last node on the end is redundant. */
        if (tp_copy.size() > 1 && tp_copy[1] != tp_copy[0]) {
          tp_copy.erase(tp_copy.end()-1);
        }
        if (rp_copy.size() > 1 && rp_copy[1] != rp_copy[0]) {
          rp_copy.erase(rp_copy.end()-1);
        }

        if (control_learner_->pair_feasible(tp_copy, rp_copy, true)) {
          cout << "Found inductive pair " << tp_copy << " and " << rp_copy << endl;
          target_inductive_paths.push_back(tp_copy);
          rewrite_inductive_paths.push_back(rp_copy);
          found_pair++;
        }
      }
    }

    if (found_pair)
      return found_pair;
  }

  return 0;
}

void DdecValidator::add_loop_to_node(
  DualAutomata& pod,
  const vector<CfgPath>& target_inductive_paths,
  const vector<CfgPath>& rewrite_inductive_paths,
  Cfg::id_type target_block,
  Cfg::id_type rewrite_block,
  ConjunctionInvariant* invariant
) {

  // add node to dual automata
  DualAutomata::State node(target_block, rewrite_block);
  for (size_t k = 0; k < target_inductive_paths.size(); ++k) {
    /** move the first block in the path to the end. */
    auto tp = target_inductive_paths[k];
    auto rp = rewrite_inductive_paths[k];
    tp.push_back(tp[0]);
    tp.erase(tp.begin());
    rp.push_back(rp[0]);
    rp.erase(rp.begin());

    DualAutomata::Edge e(node, tp, rp);
    pod.add_edge(e);
  }

  // print stuff for the user
  cout << "--------- FOUND A GOOD NODE -----------" << endl;
  cout << "PATHS" << endl;
  for (size_t k = 0; k < target_inductive_paths.size(); ++k) {
    cout << "  " << target_inductive_paths[k] << " / ";
    cout << rewrite_inductive_paths[k] << endl;
  }
  cout << "INVARIANTS" << endl;
  invariant->write_pretty(cout);

  // get relevant invariants only
  ConjunctionInvariant* copy = new ConjunctionInvariant();
  for(size_t i = 0; i < invariant->size(); ++i) {
    auto conj = static_cast<EqualityInvariant*>((*invariant)[i]);
    auto variables = conj->get_variables();
    size_t ghost_count = 0;
    size_t non_ghost_count = 0;
    for (size_t j = 0; j < variables.size(); ++j) {
      auto term = variables[j];
      cout << "         " << term << endl;
      if (term.is_ghost == false)
        non_ghost_count++;
      else 
        ghost_count++;
    }

    if(non_ghost_count > 0 && ghost_count > 1)  {
      copy->add_invariant(conj);
    }
  }

  pod.set_invariant(node, copy);


}

DualAutomata DdecValidator::learn_inductive_paths() {
  cout << "============================================================" << endl;
  cout << "Learning inductive paths and invariants" << endl;

  DualAutomata pod(target_, rewrite_);

  // Learn relations over basic blocks
  CfgSccs target_sccs(target_);
  CfgSccs rewrite_sccs(rewrite_);

  // Figure out possible inductive program paths and corresponding invariants
  size_t target_num_scc = target_sccs.count();
  size_t rewrite_num_scc = rewrite_sccs.count();
  cout << "Target SCCs: " << target_sccs.count() << endl;
  cout << "Rewrite SCCs: " << rewrite_sccs.count() << endl;
  for (size_t i = 0; i < target_num_scc; ++i) {
    auto target_blocks = target_sccs.get_blocks(i);
    bool found_something_for_target_scc = false;

    for (size_t j = 0; j < rewrite_num_scc; ++j) {
      auto rewrite_blocks = rewrite_sccs.get_blocks(j);

      bool next_scc = false;
      cout << "TRYING SCCS " << i << " / " << j << endl;

      float best_quality = 0;
      vector<CfgPath> best_target_inductive_paths;
      vector<CfgPath> best_rewrite_inductive_paths;
      Cfg::id_type best_target_block = 0;
      Cfg::id_type best_rewrite_block = 0;
      ConjunctionInvariant* best_invariant = NULL;

      for (auto& target_block : target_blocks) {
        for (auto& rewrite_block : rewrite_blocks) {
          vector<CfgPath> target_inductive_paths;
          vector<CfgPath> rewrite_inductive_paths;
          size_t num_paths = learn_inductive_paths_at_block(
                               target_inductive_paths,
                               rewrite_inductive_paths,
                               target_block,
                               rewrite_block);

          if (!num_paths)
            continue;

          auto invariant = learn_inductive_invariant_at_block(
                             target_inductive_paths,
                             rewrite_inductive_paths,
                             target_block,
                             rewrite_block
                           );

          auto quality = invariant_quality(invariant, target_block, rewrite_block);
          cout << " quality = " << quality << endl;

          if(quality > best_quality) {
            cout << "   (best yet)" << endl;
            best_quality = quality;
            best_target_inductive_paths = target_inductive_paths;
            best_rewrite_inductive_paths = rewrite_inductive_paths;
            best_target_block = target_block;
            best_rewrite_block = rewrite_block;
            best_invariant = invariant;
          }

          if (quality == 1) {
            next_scc = true;
            break;
          }
        }
        if (next_scc)
          break;
      }

      if (best_quality > 0) {
        // we found a good pair of blocks for this SCC!
        cout << "FOUND SOMETHING FOR THIS SCC!" << endl;
        add_loop_to_node(pod,
                         best_target_inductive_paths,
                         best_rewrite_inductive_paths,
                         best_target_block,
                         best_rewrite_block,
                         best_invariant);
        found_something_for_target_scc = true;
      }

    }

    if (!found_something_for_target_scc) {
      stringstream ss;
      ss << "For strongly connected component in target CFG with nodes: ";
      for (auto it : target_blocks)
        ss << ", " << it;
      ss << " we cannot find any loop with a corresponding loop in the rewrite.  " << endl;
      ss << "If this code executes in lock-step with a loop in the rewrite, then we ";
      ss << "have a problem!  If it's dead code then worry not." << endl;
      warn(ss.str());
    }
  }

  /** Get a topolical sort for the new POD */
  pod.compute_topological_sort(target_sccs, rewrite_sccs);

  return pod;
}

/** For a given pair of basic blocks, what proportion of
  live-out variables are constrained?  We want to constrain as
  many live-out variables as possible, ideally. */
double DdecValidator::invariant_quality(
  ConjunctionInvariant* conj,
  Cfg::id_type target_block,
  Cfg::id_type rewrite_block) {

  auto target_outs = target_.live_outs(target_block);
  auto rewrite_outs = rewrite_.live_outs(rewrite_block);

  size_t constrained = 0;
  size_t total = 0;
  for (size_t is_rewrite = 0; is_rewrite <= 1; is_rewrite++) {

    auto& output_regs = is_rewrite ? rewrite_outs : target_outs;

    if (is_rewrite)
      cout << "REWRITE REGS: " << output_regs << endl;
    else
      cout << "TARGET REGS: " << output_regs << endl;

    for (auto it = output_regs.gp_begin(); it != output_regs.gp_end(); ++it) {
      total++;
      auto reg = *it;
      bool found = false;
      for (size_t i = 0; i < conj->size(); ++i) {
        auto inv = static_cast<EqualityInvariant*>((*conj)[i]);
        auto vars = inv->get_variables();
        for (auto var : vars) {
          if (var.is_rewrite == is_rewrite &&
              var.operand == reg &&
              var.is_ghost == false) {
            cout << "   Found " << reg << " in " << *inv << " via " << var << endl;
            found = true;
            constrained++;
            break;
          }
        }

        if (found)
          break;
      }
    }
  }
  cout << "CONSTRAINED: " << constrained << " TOTAL: " << total << endl;

  return (double)constrained/(double)total;
}


ConjunctionInvariant* DdecValidator::learn_inductive_invariant_at_block(
  const std::vector<CfgPath>& target_inductive_paths,
  const std::vector<CfgPath>& rewrite_inductive_paths,
  Cfg::id_type target_block,
  Cfg::id_type rewrite_block
) {

  auto& fil = *flow_invariant_learner_;
  cout << "===== INVARIANT AFTER BLOCKS " << target_block << " / " << rewrite_block << " =====" << endl;
  auto inv = fil.get_invariant(target_block,rewrite_block);
  inv->write_pretty(cout);
  cout << "  == performing transform " << target_block << "  " << rewrite_block << " == " << endl;
  std::vector<CfgPath> target_paths;
  std::vector<CfgPath> rewrite_paths;
  for (size_t k = 0; k < target_inductive_paths.size(); ++k) {
    assert(target_inductive_paths[k].size() > 0);
    assert(rewrite_inductive_paths[k].size() > 0);

    if (target_inductive_paths[k][0] == target_block &&
        rewrite_inductive_paths[k][0] == rewrite_block) {
      target_paths.push_back(target_inductive_paths[k]);
      rewrite_paths.push_back(rewrite_inductive_paths[k]);
      cout << "    with paths " << target_inductive_paths[k] << " / " << rewrite_inductive_paths[k] << endl;
    }
  }
  auto inv_trans = fil.transform_invariant(inv, target_paths, rewrite_paths);
  inv_trans->write_pretty(cout);
  return inv_trans;
}

bool DdecValidator::class_checker_callback(const ClassChecker::Result& result, void* optional) {
  JobInfo* ji = static_cast<JobInfo*>(optional);
  cout << "[class_checker_callback] number=" << ji->number << endl 
       << "  verified=" << result.verified << endl
       << "  error=" << result.has_error << endl
       << "  message=" << result.error_message << endl;
  cout << "Equivalence class: " << endl;
  stoke::serialize<DualBuilder::EquivalenceClassMap>(cout, ji->m);
  cout << endl;
   
  if(result.verified) {
    verified_++;
    return true;
  }
  delete ji;
  return false;
}

void DdecValidator::get_states_at_cutpoint(size_t i, size_t target_point, size_t rewrite_point, vector<DataCollector::TracePoint>& target_states, vector<DataCollector::TracePoint>& rewrite_states, bool boundit) const {
  //cout << "      - Collecting state data" << endl;
  for(size_t k = 0; k < 2; ++k) {

    auto& traces = k ? rewrite_traces_[i] : target_traces_[i];
    auto& states = k ? rewrite_states : target_states;
    auto cutpoint = k ? rewrite_point : target_point;
    size_t bound = k ? rewrite_bound_ : target_bound_;
    size_t j = 0;
    for(auto point : traces) {
      if(point.block_id == cutpoint) {
        states.push_back(point);
        j++;
        if(boundit && j > bound)
          break;
      } 
    }
  }
}


vector<uint64_t> DdecValidator::find_discriminator_constants(size_t target_point, size_t rewrite_point, EqualityInvariant inv) {
  cout << "Searching for disciminator constants at " << target_point << " / " << rewrite_point << " with " << inv << endl;
  vector<uint64_t> constants;

  assert(target_traces_.size() == rewrite_traces_.size());

  bool first_trace = true;
  size_t last_size = 0;
  size_t last_size_run = 0;
  for(size_t i = 0; i < target_traces_.size(); ++i) {
    //cout << "  * Processing trace " << i << endl;
    set<uint64_t> my_constants;

    vector<DataCollector::TracePoint> target_states;
    vector<DataCollector::TracePoint> rewrite_states;

    get_states_at_cutpoint(i, target_point, rewrite_point, target_states, rewrite_states, true);

    cout << "Got " << target_states.size() << " target states, " << rewrite_states.size() << " rewrite states." << endl;
    if(target_states.size() > 2 && rewrite_states.size() > 2) {
      for(auto ts : target_states) {
        for(auto rs : rewrite_states) {
          auto value = inv.calculate_lhs(ts.cs, rs.cs);
          my_constants.insert(value);
        }
      }

      vector<uint64_t> my_constants_vector;
      my_constants_vector.insert(my_constants_vector.begin(), my_constants.begin(), my_constants.end());


      if(first_trace) {
        constants = my_constants_vector;
        first_trace = false;
      } else {
        vector<uint64_t> intersection;
        set_intersection(constants.begin(), constants.end(), my_constants_vector.begin(), my_constants_vector.end(), back_inserter(intersection));
        constants = intersection;
      }

      if(constants.size() == 0)
        break;

      if(constants.size() == last_size) {
        last_size_run++;
        if(last_size_run == 10)
          break;
      } else {
        last_size_run = 0;
      }
      last_size = constants.size();

      //cout << "constants.size() = " << constants.size() << endl;
    }


    /*
    cout << "   on trace " << i << " got ";
    for(auto i : constants) {
      cout << i << "  ";
    }
    cout << endl;
    */
  }

  return constants;
}

bool DdecValidator::build_dual_for_discriminator(Invariant* inv, DualAutomata& dual) {
  cout << "[build_dual_for_discriminator] expression " << inv << endl;

  bool found_loop = false;
  for(size_t i = 0; i < target_traces_.size(); ++i) {
    cout << "TRACE " << i << endl;
    if(i > 20)
      break;

    auto& target_trace = target_traces_[i];
    auto& rewrite_trace = rewrite_traces_[i];

    if(target_trace.size() < 2 || rewrite_trace.size() < 2)
      continue;

    auto target_trace_path = DataCollector::project_states(target_trace);
    auto rewrite_trace_path = DataCollector::project_states(rewrite_trace);

    set<pair<DataCollector::TracePoint, DataCollector::TracePoint>> matching_pairs;
    matching_pairs.insert(pair<DataCollector::TracePoint,DataCollector::TracePoint>(target_trace[0], rewrite_trace[0]));
    matching_pairs.insert(pair<DataCollector::TracePoint,DataCollector::TracePoint>(target_trace.back(), rewrite_trace.back()));

    // edges from entry to first iteration
    bool found_false = false;
    for(auto ts : target_trace) {
      for(auto rs : rewrite_trace) {
        if(inv->check(ts.cs,rs.cs)) {
          cout << " - ADDING PAIR at blocks " << ts.block_id << " / " << rs.block_id
               << "  trace indexes " << ts.index << " / " << rs.index << endl;
          //cout << "STATES" << endl;
          //cout << ts.cs << endl;
          //cout << rs.cs << endl;
          matching_pairs.insert(pair<DataCollector::TracePoint, DataCollector::TracePoint>(ts, rs));
        } else {
          found_false = true;
        }
      }
    }

    if(!found_false) {
      cout << "  found_false: " << found_false;
      return false;
    }

    // edges from first iteration to second
    for(auto first_pair : matching_pairs) {
      for(auto second_pair : matching_pairs) {
        auto& first_target = first_pair.first;
        auto& first_rewrite = first_pair.second;
        auto& second_target = second_pair.first;
        auto& second_rewrite = second_pair.second;

        cout << " - Considering pairs:" << endl;
        cout << "     First.  Basic blocks " << first_target.block_id << " / " << first_rewrite.block_id
             << "  Trace indexes " << first_target.index << " / " << first_rewrite.index << endl;
        cout << "     Second.  Basic blocks " << second_target.block_id << " / " << second_rewrite.block_id
             << "  Trace indexes " << second_target.index << " / " << second_rewrite.index << endl; 

        if(second_target.index == first_target.index && second_rewrite.index == first_rewrite.index)
          continue;
        if(second_target.index < first_target.index)
          continue;
        if(second_target.index - first_target.index > target_bound_)
          continue;
        if(second_rewrite.index < first_rewrite.index)
          continue;
        if(second_rewrite.index - first_rewrite.index > rewrite_bound_)
          continue;

        //cout << "NOT SKIPPING THESE" << endl;

        CfgPath target_path;
        CfgPath rewrite_path;

        target_path.insert(target_path.begin(), target_trace_path.begin()+first_target.index+1, target_trace_path.begin() + second_target.index+1);
        rewrite_path.insert(rewrite_path.begin(), rewrite_trace_path.begin()+first_rewrite.index+1, rewrite_trace_path.begin() + second_rewrite.index+1);

        cout << "    **** FOUND CORRESPONDING PATHS " << target_path << " / " << rewrite_path << endl;
        DualAutomata::Edge e(DualAutomata::State(first_target.block_id, first_rewrite.block_id), target_path, rewrite_path);
        dual.add_edge(e);
      }
    }
  }

  return true;
}

bool DdecValidator::verify_dual(DualAutomata& dual) {

  dual.remove_prefixes();
  dual.print_all();

  bool learning_successful = dual.learn_invariants(data_collector_, invariant_learner_);
  if (!learning_successful) {
    cout << "[verify_dual] Learning invariants failed!" << endl;
    return false;
  }

  auto edge_reachable = dual.get_edge_reachable_states();
  for (auto state : edge_reachable) {
    if (state == dual.start_state() || state == dual.exit_state() || state == dual.fail_state())
      continue;
    auto inv = dual.get_invariant(state);
    if (inv->size() < 2) {
      cout << "[verify_dual] Could not learn invariant at state " << state << endl;
      cout << "[verify_dual] Aboring." << endl;
      return false;
    }
  }

  cout << "[verify_dual] Compute Failure Edges" << endl;
  auto failure_edges = dual.compute_failure_edges(target_, rewrite_);
  for(auto it : failure_edges) {
    dual.add_edge(it);
  } 

  /** Configure invariants. */
  auto start_state = dual.start_state();
  auto end_state = dual.exit_state();
  auto fail_state = dual.fail_state();
  dual.set_invariant(start_state, get_initial_invariant(dual));
  dual.set_invariant(end_state, get_final_invariant(dual));
  dual.set_invariant(fail_state, get_fail_invariant());

  /** Add NoSignals invariant everywhere */
  auto ns_invariant = new NoSignalsInvariant();
  auto reachable = dual.get_edge_reachable_states();
  for (auto rs : reachable) {
    auto orig_inv = dual.get_invariant(rs);
    orig_inv->add_invariant(ns_invariant);
    dual.set_invariant(rs, orig_inv);
  }

  /** Do the heavy lifting of the proof. */
  map<DualAutomata::State, bool> state_needs_update;
  state_needs_update[start_state] = true;
  bool fixpoint = false;
  while(!fixpoint) {
    fixpoint = true;
    for(auto state_updateneeded_pair : state_needs_update) {
      if(state_updateneeded_pair.second == true) {

        auto state = state_updateneeded_pair.first;

        cout << "[verify_dual] working on state " << state << endl;

        state_needs_update[state] = false;
        auto edges = dual.next_edges(state);
        auto source_inv = dual.get_invariant(state);

        for(auto e : edges) {
          cout << "[verify_dual] working from " << state << " edge=" << e << endl;
          auto target = e.to;
          ConjunctionInvariant* target_inv = dual.get_invariant(target);
          auto target_testcases = dual.get_target_data(e);
          auto rewrite_testcases = dual.get_rewrite_data(e);
          vector<pair<CpuState,CpuState>> testcases;
          if(target_testcases.size() && rewrite_testcases.size())
            testcases.push_back(pair<CpuState,CpuState>(target_testcases[0], rewrite_testcases[0]));
          set<size_t> conjuncts_to_delete;
          for(size_t i = 0; i < target_inv->size(); ++i) {
            if(conjuncts_to_delete.count(i))
              continue;

            auto conjunct = (*target_inv)[i];
            cout << "[verify_dual] testing conjunct " << i << " : " << *conjunct << endl;
            auto result = checker_.check_wait(
                                    target_, rewrite_, 
                                    state.ts, state.rs,
                                    e.te, e.re, 
                                    *source_inv, *conjunct,
                                    testcases, true);

            cout << "   verified=" << result.verified << endl;
            if(!result.verified) {

              conjuncts_to_delete.insert(i);

              if(target == fail_state) {
                //we're done here.
                cout << "[verify_dual] Path to fail state is feasible: " << e << endl;
                return false;
              }
              if(target == end_state) {
                //we're done here.
                cout << "[verify_dual] Conjunct in final state failed. " << endl;
                cout << "e=" << e << endl;
                cout << "invariant=" << *conjunct << endl;
                return false;
              }

              // See if we can use counterexample to throw out any others
              if(result.has_ceg) {
                cout << "[verify_dual] Using counterexample to remove other conjuncts." << endl;
                CpuState target_out = result.target_final_ceg;
                CpuState rewrite_out = result.rewrite_final_ceg;
                cout << "TARGET TC" << endl << target_out << endl;
                cout << "REWRITE TC" << endl << rewrite_out << endl;

                for(size_t j = 0; j < target_inv->size(); ++j) {
                  auto alt_conjunct = (*target_inv)[j];
                  if(!alt_conjunct->check(target_out, rewrite_out)) {
                    cout << "[verify_dual] * Woohoo removing conjunct " << j << " : " << *alt_conjunct << endl;
                    conjuncts_to_delete.insert(j);
                  }
                }
              }
            }
          }

          // remove the conjuncts that we know are bad.
          if(conjuncts_to_delete.size()) {
            state_needs_update[target] = true;
            fixpoint = false;
            for(auto i = conjuncts_to_delete.rbegin(); i != conjuncts_to_delete.rend(); ++i) {
              target_inv->remove(*i);
            }
          }

          cout << "[verify_dual] UPDATING EDGES FOR STATE " << state;
          fixpoint = false;
        }

        break; // find another state that needs an update
      }
    }
  }

  /** Perform the final check. */
  auto actual_final = dual.get_invariant(end_state);
  auto expected_final = get_final_invariant(dual);
  bool last_check = actual_final->size() == expected_final->size();
  if(!last_check) {
    cout << "Final invariant insufficient" << endl;
    return false;
  }

  /** All done :) */
  cout << " ===== PROOF COMPLETE ===== " << endl;
  dual.print_all();
  return true;
}

bool DdecValidator::verify(const Cfg& init_target, const Cfg& init_rewrite) {

  target_ = init_target;
  rewrite_ = init_rewrite;

  target_traces_ = data_collector_.get_traces(target_);
  rewrite_traces_ = data_collector_.get_traces(rewrite_);

  CfgSccs target_sccs(target_);
  CfgSccs rewrite_sccs(rewrite_);

  MemoryEqualityInvariant memequ;

  for(size_t target_cutpoint = target_.get_entry(); target_cutpoint < target_.get_exit(); ++target_cutpoint) {
    if(!target_sccs.in_scc(target_cutpoint))
      continue;

    for(size_t rewrite_cutpoint = rewrite_.get_entry(); rewrite_cutpoint < rewrite_.get_exit(); ++rewrite_cutpoint) {
      if(!rewrite_sccs.in_scc(rewrite_cutpoint))
        continue;

      auto target_defined_registers = target_.def_outs(target_cutpoint);
      auto rewrite_defined_registers = rewrite_.def_outs(rewrite_cutpoint);

      for(auto target_reg = target_defined_registers.gp_begin();
               target_reg != target_defined_registers.gp_end();
               ++target_reg) {

        for(auto rewrite_reg = rewrite_defined_registers.gp_begin();
                 rewrite_reg != rewrite_defined_registers.gp_end();
                 ++rewrite_reg) {

          size_t power2bound = 5;
          for(size_t i = 0; i < power2bound*2-1; ++i) {
            Variable v1(*target_reg, false);
            Variable v2(*rewrite_reg, true);
            if(i < power2bound) {
              v1.coefficient = (1 << i);
              v2.coefficient = -1;
            } else {
              v1.coefficient = 1;
              v2.coefficient = -(1 << (i-power2bound+1));
            }
            EqualityInvariant inv({v1, v2}, 0);

            //auto constants = find_discriminator_constants(target_cutpoint, rewrite_cutpoint, inv);
            vector<uint64_t> constants;
            constants.push_back(0);

            for(auto constant : constants) {
              EqualityInvariant specific(inv.get_terms(), constant);
              ConjunctionInvariant conj;
              conj.add_invariant(&specific);
              conj.add_invariant(&memequ);

              DualAutomata dual(target_, rewrite_);
              bool success = build_dual_for_discriminator(&conj, dual);
              if(success) {
                dual.print_all();
                dual.simplify();
                cout << "SIMPLIFIED!!" << endl;
                dual.print_all();
                bool b = verify_dual(dual);
                if(b) {
                  cout << "PROOF SUCCEEDED!" << endl;
                  return true;
                }
              }
              else
                cout << "Making graph failed" << endl;
            }
          }
        }
      }
    }
  }



  /*
  cout << "[DdecValidator::verify()] debugging equivalence classes to try" << endl;
  auto states = template_pod.get_inductive_states();
  for(auto state : states) {
    if(state == template_pod.start_state())
      continue;

    cout << "STATE " << state << endl;
    auto classes = get_classes_for_state(template_pod, state);
    for(auto cls : classes) {
      cout << "   ";
      for(auto it : cls) {
        if(it.has_value())
          cout << setw(3) << *it << " ";
        else
          cout << "  * ";
      }
      cout << endl;
    }
  }
  */

  /*
  bool have_classes = init_class_enumeration(template_pod);
  if(!have_classes)
    return false;
  */

  /** Setup class checker */
  ClassChecker::Callback callback = [&] (const ClassChecker::Result& r, void* optional) {
    return class_checker_callback(r, optional);
  };
  
  /*
  ClassChecker* checker = NULL;
  checker = new LocalClassChecker(data_collector_, *control_learner_, 
                    target_bound_, rewrite_bound_,
                    checker_, invariant_learner_); */

  for(auto it : pointer_ranges_)
    class_checker_.add_pointer_range(it.first, it.second);
  for(auto it : extra_assumptions_)
    class_checker_.assume(it);
  cout << "DDEC tells class checker to assume" << endl;
  for(auto it : assume_always_) {
    class_checker_.assume_always(it);
    cout << "    " << *it << endl;
  }

  //class_checker_.check(template_pod, handhold_class, callback, !stack_out_, (void*)ji);

  /** Finish it off. */
  class_checker_.block_until_complete();

  if(verified_ > 0)
    return true;

  return false;
}

set<DualBuilder::EquivalenceClass> DdecValidator::make_wildcard_classes(const set<DualBuilder::EquivalenceClass>& done, const vector<uint64_t>& remaining) {
  set<DualBuilder::EquivalenceClass> new_done;

  if(remaining.size() == 0) {
    if(done.size() == 0) {
      cout << "Adding empty class" << endl;
      DualBuilder::EquivalenceClass ec;
      new_done.insert(ec);    
      cout << "new_done.size() = " << new_done.size() << endl;
      return new_done;
    } else {
      cout << "done.size() = " << done.size() << endl;
      return done;
    }
  }

  auto elem = remaining[0];
  auto new_remaining = remaining;
  new_remaining.erase(new_remaining.begin());

  if(done.size() == 0) {
    new_done.insert({optional<uint64_t>()});
    new_done.insert({optional<uint64_t>(elem)});
  } else {
    for(auto old_class : done) {
      DualBuilder::EquivalenceClass new_class1 = old_class;
      DualBuilder::EquivalenceClass new_class2 = old_class;
      new_class1.push_back(optional<uint64_t>());
      new_class2.push_back(optional<uint64_t>(elem));
      new_done.insert(new_class1);
      new_done.insert(new_class2);
    }
  }

  /*cout << "[make_wildcard_classes] "
       << "elem=" << elem 
       << " done=" << done.size() 
       << " new_done=" << new_done.size() 
       << " remaining=" << remaining.size() 
       << " new_remaining=" << new_remaining.size() << endl;*/

  return make_wildcard_classes(new_done, new_remaining);
}

vector<DualBuilder::EquivalenceClass> DdecValidator::get_classes_for_state(DualAutomata& templ, DualAutomata::State state) {
  
  set<DualBuilder::EquivalenceClass> classes;
  auto start = templ.start_state();
  auto tps = CfgPaths::enumerate_paths(target_, target_bound_, start.ts, state.ts);
  auto rps = CfgPaths::enumerate_paths(rewrite_, rewrite_bound_, start.rs, state.rs);

  for(auto tp : tps) {
    tp.erase(tp.begin());

    for(auto rp : rps) {
      rp.erase(rp.begin());
      DualAutomata::Edge e(start, tp, rp);
      cout << "[get_class_for_state] pair " << tp << " / " << rp << endl;
      auto classification = get_invariant_class(templ, state, e);
      cout << "classification = ";
      for(auto it : classification)
        cout << it << "  ";
      cout << endl;

      // each classification turns into 2^N equivalence classes where N is the length of the vector
      set<DualBuilder::EquivalenceClass> starting_set;
      auto wildcards = make_wildcard_classes(starting_set, classification);
      cout << "Made " << wildcards.size() << " wildcard classes" << endl;
      classes.insert(wildcards.begin(), wildcards.end());
    }
  }

  vector<DualBuilder::EquivalenceClass> result;
  result.insert(result.begin(), classes.begin(), classes.end());
  return result;

}

uint64_t DdecValidator::get_invariant_class(EqualityInvariant* equ, DualAutomata::Edge& e) {
  /** get counts from frontier. */
  map<size_t, size_t> target_block_counts;
  map<size_t, size_t> rewrite_block_counts;

  /** add counts for this edge. */
  for (auto blk : e.te) {
    target_block_counts[blk]++;
  }
  for (auto blk : e.re) {
    rewrite_block_counts[blk]++;
  }

  /** add up all the relevant variables. */
  uint64_t sum = 0;

  auto variables = equ->get_variables();
  for (auto var : variables) {
    if (var.is_ghost) {
      auto name = var.name.c_str();
      if (name[0] != 'n')
        continue;
      name++;
      size_t number = strtoul(name, NULL, 10);
      size_t count = var.is_rewrite ? rewrite_block_counts[number] : target_block_counts[number];
      sum += count*var.coefficient;
    }
  }

  return sum;
}

std::vector<uint64_t> DdecValidator::get_invariant_class(ConjunctionInvariant* conj, DualAutomata::Edge& e) {
  std::vector<uint64_t> equiv_class;
  for (size_t i = 0; i < conj->size(); ++i) {
    auto equ = static_cast<EqualityInvariant*>((*conj)[i]);
    auto value = get_invariant_class(equ, e);
    equiv_class.push_back(value);
  }
  return equiv_class;
}

std::vector<uint64_t> DdecValidator::get_invariant_class(DualAutomata& templ, DualAutomata::State& s, DualAutomata::Edge& e) {
  auto conj = templ.get_invariant(s);
  return get_invariant_class(conj, e);
}

bool DdecValidator::init_class_enumeration(DualAutomata& dual) {

  // populate the state-class table
  auto states = dual.get_inductive_states();
  for(auto state : states) {
    auto classes = get_classes_for_state(dual, state);
    if(classes.size() == 0) {
      cout << "State " << state << " has no classes based on reachable edges." << endl;
      has_next_class_ = false;
      return false;
    }  
    state_class_table_[state] = classes; 
  }

  has_next_class_ = true;
  return true;
}

bool DdecValidator::has_next_class() {
  return has_next_class_;
}

DualBuilder::EquivalenceClassMap DdecValidator::next_class(DualAutomata& pod) {
  
  has_next_class_ = false;

  // first state
  if(current_class_descriptor_.size() == 0) {
    auto states = pod.get_inductive_states();
    for(auto& state : states) {
      current_class_descriptor_[state] = 0;
      if(state_class_table_[state].size() > 1)
        has_next_class_ = true;
    }
    return build_classmap_from_descriptor();
  }

  // subsequent states
  bool made_change = false;
  for(auto& pair : current_class_descriptor_) {
    auto& state = pair.first;  
    auto& options = state_class_table_[state];
    if(options.size() > pair.second + 1) {
      if(!made_change) {
        pair.second++;
        made_change = true;
        // go through and zero out the previous entries in the class descriptor
        for(auto& pair2 : current_class_descriptor_) {
          if(pair2.first == pair.first)
            break;
          if(pair2.second != 0)
            has_next_class_ = true;
          pair2.second = 0;
        }
        if(options.size() > pair.second+1) { //still!
          has_next_class_ = true;
          break;
        }
      } else {
        has_next_class_ = true;
      }
    }
  }
  return build_classmap_from_descriptor();

}

DualBuilder::EquivalenceClassMap DdecValidator::build_classmap_from_descriptor() {
  DualBuilder::EquivalenceClassMap output;
  for(auto& pair : current_class_descriptor_) {
    auto state = pair.first;
    auto& options = state_class_table_[state];
    auto& classification = options[pair.second];
    output[state] = classification;
  }
  return output;
}

ConjunctionInvariant* DdecValidator::get_initial_invariant(DualAutomata& dual) const {
  auto initial_invariant = new ConjunctionInvariant();

  /** set all shadow block variables to 0 */
  auto target = dual.get_target();
  auto rewrite = dual.get_rewrite();
  auto shadow_target = FlowInvariantLearner::get_shadow_vars(target, false);
  auto shadow_rewrite = FlowInvariantLearner::get_shadow_vars(rewrite, true);
  auto shadows = shadow_target;
  shadows.insert(shadows.begin(), shadow_rewrite.begin(), shadow_rewrite.end());
  for(auto it : shadows) {
    it.coefficient = 1;
    auto init_zero = new EqualityInvariant({ it }, 0);
    initial_invariant->add_invariant(init_zero);
  }

  auto sei = new StateEqualityInvariant(target.def_ins());
  initial_invariant->add_invariant(sei);
  initial_invariant->add_invariant(new MemoryEqualityInvariant());
  initial_invariant->add_invariant(new NoSignalsInvariant());

  for(auto span : pointer_ranges_) {
    auto begin = span.first;
    auto end = span.second;
    auto pri = new PointerRangeInvariant(begin, end);
    initial_invariant->add_invariant(pri);
  }

  for(auto assumption : extra_assumptions_) {
    initial_invariant->add_invariant(assumption);
  }

  /*
    for (auto r : string_params_) {
      // rsi_start = rsi (for example)
      Variable start_var(string_ghost_start(r), false);
      Variable string_reg(r, false);
      string_reg.coefficient = -1;
      auto equiv = new EqualityInvariant({start_var, string_reg}, 0);
      initial_invariant->add_invariant(equiv);

      // rsi_end = 0 (for example)
      Variable end_var(string_ghost_end(r), false);
      auto end_mem = new PointerNullInvariant(end_var, 1);
      initial_invariant->add_invariant(end_mem);
    }
  */

  //initial_invariant->add_invariant(get_fixed_invariant());

  return initial_invariant;
}

ConjunctionInvariant* DdecValidator::get_final_invariant(DualAutomata& dual) const {
  auto target = dual.get_target();
  auto final_invariant = new ConjunctionInvariant();
  auto sei = new StateEqualityInvariant(target.live_outs());
  final_invariant->add_invariant(sei);
  final_invariant->add_invariant(new MemoryEqualityInvariant());

  //final_invariant->add_invariant(get_fixed_invariant());

  return final_invariant;
}

ConjunctionInvariant* DdecValidator::get_fail_invariant() const {
  auto fail_invariant = new ConjunctionInvariant();
  fail_invariant->add_invariant(new FalseInvariant());

  return fail_invariant;
}
