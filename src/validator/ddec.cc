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

#include "src/cfg/paths.h"
#include "src/cfg/sccs.h"
#include "src/serialize/serialize.h"
#include "src/validator/bounded.h"
#include "src/validator/data_collector.h"
#include "src/validator/dual.h"
#include "src/validator/ddec.h"
#include "src/validator/null.h"
#include "src/validator/invariants.h"

#include "tools/io/state_diff.h"

#include <chrono>
#include <ctime>
#include <iomanip>
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
#define DEBUG_ALIGN_PRED_CONSTANTS(X) { if(0) { X } }
#define DEBUG_PAA_CONSTRUCTION(X) { if(0) { X } }

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


vector<uint64_t> DdecValidator::find_alignment_predicate_constants(size_t target_point, size_t rewrite_point, EqualityInvariant inv) {
  DEBUG_ALIGN_PRED_CONSTANTS(cout << "Searching for alignment predicate constants at " << target_point << " / " << rewrite_point << " with " << inv << endl;)
  vector<uint64_t> constants;

  assert(target_traces_.size() == rewrite_traces_.size());

  bool first_trace = true;
  size_t last_size = 0;
  size_t last_size_run = 0;
  for(size_t i = 0; i < target_traces_.size(); ++i) {
    DEBUG_ALIGN_PRED_CONSTANTS(cout << "  * Processing trace " << i << endl;)
    set<uint64_t> my_constants;

    vector<DataCollector::TracePoint> target_states;
    vector<DataCollector::TracePoint> rewrite_states;

    get_states_at_cutpoint(i, target_point, rewrite_point, target_states, rewrite_states, true);

    DEBUG_ALIGN_PRED_CONSTANTS(cout << dec << "Got " << target_states.size() << " target states, " << rewrite_states.size() << " rewrite states." << endl;)
    if(target_states.size() > 2 && rewrite_states.size() > 2) {
      for(auto ts : target_states) {
        for(auto rs : rewrite_states) {
          auto value = inv.calculate_lhs(ts.cs, rs.cs);
          my_constants.insert(value);
          DEBUG_ALIGN_PRED_CONSTANTS(cout << hex << "     Found constant " << value << endl;)
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

      DEBUG_ALIGN_PRED_CONSTANTS(cout << "-- intersection --" << endl;
      for(auto it : constants)
        cout << it << endl;)

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

  DEBUG_ALIGN_PRED_CONSTANTS(cout << dec;)

  return constants;
}



bool pair_below(pair<DataCollector::TracePoint, DataCollector::TracePoint>& pair1, 
                pair<DataCollector::TracePoint, DataCollector::TracePoint>& pair2) {
  auto& first_target = pair1.first.index;
  auto& first_rewrite = pair1.second.index;
  auto& second_target = pair2.first.index;
  auto& second_rewrite = pair2.second.index;

  if(first_target == second_target && first_rewrite == second_rewrite)
    return false;

  if(second_target < first_target)
    return false;

  if(second_rewrite < first_rewrite)
    return false;

  return true;
}


bool DdecValidator::build_dual_for_alignment_predicate(std::shared_ptr<Invariant> inv, DualAutomata& dual) {
  cout << "[build_dual_for_alignment_predicate] expression " << *inv << endl;

  bool found_loop = false;
  for(size_t i = 0; i < target_traces_.size(); ++i) {
    DEBUG_PAA_CONSTRUCTION(cout << "TRACE " << i << endl;)
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
          DEBUG_PAA_CONSTRUCTION(
          cout << " - ADDING PAIR at blocks " << ts.block_id << " / " << rs.block_id
               << "  trace indexes " << ts.index << " / " << rs.index << endl;
          /*cout << "STATES" << endl;
          cout << ts.cs << endl;
          cout << rs.cs << endl;*/)
          matching_pairs.insert(pair<DataCollector::TracePoint, DataCollector::TracePoint>(ts, rs));
        } else {
          /*
          cout << " - FAILS FOR blocks " << ts.block_id << " / " << rs.block_id
               << " trace indexes " << ts.index << " / " << rs.index << endl;
          cout << "STATES" << endl;
          cout << ts.cs << endl;
          cout << rs.cs << endl; */

          found_false = true;
        }
      }
    }

    bool dupes = false;
    for(size_t k = 0; k < 2; ++k) {
      auto& trace = k ? rewrite_trace : target_trace;
      for(size_t i = 0; i < trace.size(); ++i) {
        for(size_t j = i+1; j < trace.size(); ++j) {
          if(trace[i].block_id == trace[j].block_id) {
            dupes = true;
            break;
          }
        }
        if(dupes)
          break;
      }
      if(dupes)
        break;
    }
    DEBUG_PAA_CONSTRUCTION(cout << "trace " << i << " found dupes: " << dupes << " found false: " << found_false << endl;)

    if(!found_false && dupes) {
      // no way this is going to work
      // there will necessarily be a cycle with an empty path in it
      cout << "[build_dual_for_alignment_predicate] predicate holds everywhere on loopy trace " << i << endl;
      return false;
    }

    // edges from first iteration to second
    for(auto first_pair : matching_pairs) {
      for(auto second_pair : matching_pairs) {
        auto& first_target = first_pair.first;
        auto& first_rewrite = first_pair.second;
        auto& second_target = second_pair.first;
        auto& second_rewrite = second_pair.second;

        /*
        cout << " - Considering pairs:" << endl;
        cout << "     First.  Basic blocks " << first_target.block_id << " / " << first_rewrite.block_id
             << "  Trace indexes " << first_target.index << " / " << first_rewrite.index << endl;
        cout << "     Second.  Basic blocks " << second_target.block_id << " / " << second_rewrite.block_id
             << "  Trace indexes " << second_target.index << " / " << second_rewrite.index << endl; 
             */

        if(!pair_below(first_pair, second_pair)) {
          //cout << "          === SKIPPING DUE TO ORDER" << endl;
          continue;
        }

        if(second_target.index - first_target.index > target_bound_) {
          //cout << "          === SKIPPING DUE TO TARGET BOUND" << endl;
          continue;
        }
        if(second_rewrite.index - first_rewrite.index > rewrite_bound_) {
          //cout << "          === SKIPPING DUE TO REWRITE BOUND" << endl;
          continue;
        }



        bool found_bad_pair = false;
        for(auto third_pair : matching_pairs) {
          if(third_pair == first_pair)
            continue;
          if(third_pair == second_pair)
            continue;
          if(pair_below(first_pair, third_pair) &&
              pair_below(third_pair, second_pair)) {
            found_bad_pair = true;
            //cout << "          === SKIPPING DUE TO BAD TRIPPLE " << endl;
            //cout << "          " << third_pair.first.index << " , " << third_pair.second.index << endl;
            break;
          }
        }
        if(found_bad_pair) {
          continue;
        }


        DEBUG_PAA_CONSTRUCTION(
        cout << " - Considering pairs:" << endl;
        cout << "     First.  Basic blocks " << first_target.block_id << " / " << first_rewrite.block_id
             << "  Trace indexes " << first_target.index << " / " << first_rewrite.index << endl;
        cout << "     Second.  Basic blocks " << second_target.block_id << " / " << second_rewrite.block_id
             << "  Trace indexes " << second_target.index << " / " << second_rewrite.index << endl; )
        DEBUG_PAA_CONSTRUCTION(cout << "NOT SKIPPING THESE" << endl;)

        CfgPath target_path;
        CfgPath rewrite_path;

        target_path.insert(target_path.begin(), target_trace_path.begin()+first_target.index, target_trace_path.begin() + second_target.index);
        rewrite_path.insert(rewrite_path.begin(), rewrite_trace_path.begin()+first_rewrite.index, rewrite_trace_path.begin() + second_rewrite.index);

        DEBUG_PAA_CONSTRUCTION(cout << "    **** FOUND CORRESPONDING PATHS " << target_path << " / " << rewrite_path << endl;)
        DualAutomata::Edge e(DualAutomata::State(second_target.block_id, second_rewrite.block_id), target_path, rewrite_path);
        dual.add_edge(e);
      }
    }

    // check if there are any cycles with only edges in target / only edges in rewrite
    auto edge_reachable = dual.get_edge_reachable_states();
    for(auto s : edge_reachable) {
      if(dual.one_program_cycle(s, true) || dual.one_program_cycle(s, false)) {
        cout << "   Aborting.  State " << s << " in cycle which doesn't make progress. " << endl;
        return false;
      }
    }

  }

  return true;
}

bool DdecValidator::verify_dual(DualAutomata& dual) {

  // check if there are any cycles with only edges in target / only edges in rewrite
  auto edge_reachable = dual.get_edge_reachable_states();
  cout << "Checking for cycle in dual" << endl;
  for(auto s : edge_reachable) {
    if(dual.one_program_cycle(s, true) || dual.one_program_cycle(s, false)) {
      cout << "[verify_dual] Failure.  State " << s << " in cycle which doesn't make progress. " << endl;
      return false;
    }
  }

  // check if this dual makes sense
  bool ap_failed_ever = false;
  bool dual_ok = dual.test_dual(data_collector_);
  if(!dual_ok) {
    cout << "[verify_dual] Dual does not check out!" << endl;
    return false;
  } 

  if(benchmark_proof_succeeded_) {
    cout << "[benchmark] No need to check further... see ya." << endl;
    return false;
  } else {
    cout << "[benchmark] Looks like we found something!  Recording search time." << endl; 
    auto now = system_clock::now();
    auto diff = duration_cast<microseconds>(now - benchmark_searchstart_).count();
    benchmark_total_search_time_ += diff;
    cout << "[benchmark] SEARCH TOOK " << diff << endl;
  }

  // learn invariants
  ImplicationGraph graph(target_, rewrite_);
  bool learn_success = dual.learn_invariants(invariant_learner_, graph);
  if(!learn_success) {
    cout << "[verify_dual] Learning invariants failed." << endl;
    return false;
  }

  cout << "FINAL IMPLICATION GRAPH" << endl;
  graph.print();
  cout << endl << endl;

  // create proof obligations for infeasible paths
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

  /** Add NoSignals invariant everywhere.  This is to handle exceptions. */
  auto ns_invariant = std::make_shared<NoSignalsInvariant>();
  for (auto rs : edge_reachable) {
    if(rs == start_state || rs == end_state || rs == fail_state)
      continue;
    auto orig_inv = dual.get_invariant(rs);
    orig_inv->add_invariant(ns_invariant);
    dual.set_invariant(rs, orig_inv);
  }

  struct CallbackParam {
    DualAutomata::Edge edge;
    size_t conjunct;
    bool ignore_errors;
  };

  cout << "Dual with invariants" << endl;
  dual.print_all();
  cout << endl;

  /** Start the fixpoint computation.  There are two rounds.  In the first round, we ignore
    timeouts/errors, and focus on getting counterexamples that can remove clauses.  In the
    second round, we pay attention to errors/timeouts again and remove these clauses too, so
    that everything is verified. */
  vector<CallbackParam*> pointers_to_delete;
  map<DualAutomata::State, vector<pair<CpuState, CpuState>>> reachable_examples_for_state;
  map<DualAutomata::State, set<size_t>> conjuncts_to_delete;
  map<DualAutomata::State, bool> update_needed;
  bool fixpoint = false;
  bool failure = false;


  /** Whenever the SMT solver gives us back an answer (there could be multiple problems in-flight at a given time, the following callback
    is invoked.  When we find out that a conjunct failed, mark it as such, and also mark other conjuncts if invalidated by the
    counterexample. */
  ObligationChecker::Callback callback = [&](ObligationChecker::Result r, void* param) {
    CallbackParam data = *static_cast<CallbackParam*>(param);
    auto target_state = data.edge.to;
    auto target_invariant = dual.get_invariant(target_state);


    cout << "[verify_dual] received callback edge=" << data.edge << endl;
    cout << "              conjunct " << data.conjunct << ": " << *(*target_invariant)[data.conjunct] << endl;
    cout << "              verified= " << r.verified << " error=" << r.has_error << " ceg=" << r.has_ceg << endl;
    if(r.has_error)
      cout << "              message=" << r.error_message << endl;

    // we mark this clause is bad in any of the three following situations
    // (i)   we've found a counterexample
    bool found_ceg = r.has_ceg;
    // (ii)  in the first round, there's no counterexample and no error, but couldn't be verified
    bool round1_noerror = !r.verified && !r.has_error;
    // (iii) in the second round it's not verified
    bool round2_unverified = !data.ignore_errors && !r.verified;

    if(found_ceg || round1_noerror || round2_unverified) {
      cout << "              invalidating this conjunct" << endl;
      conjuncts_to_delete[data.edge.to].insert(data.conjunct);

      fixpoint = false;

      // check if we've found something terrible
      auto conjunct = (*target_invariant)[data.conjunct];
      if(conjunct->is_critical()) {
        //we're done here.
        cout << "[verify_dual] Failure. Critical invariant failed. " << endl;
        failure = true;
        return;
      }
      if(target_state == fail_state) {
        //we're done here.
        cout << "[verify_dual] Failure. Path to fail state is feasible: " << data.edge << endl;
        failure = true;
        return;
      }
      if(target_state == end_state) {
        //we're done here.
        cout << "[verify_dual] Failure. Conjunct in final state failed. " << endl;
        cout << "e=" << data.edge << endl;
        cout << "invariant=" << *conjunct << endl;
        failure = true;
        return;
      }

      // we want to *right away* identify any conjuncts that don't need to be processed
      if(r.has_ceg) {
        reachable_examples_for_state[data.edge.to].push_back(pair<CpuState,CpuState>(r.target_final_ceg, r.rewrite_final_ceg));

        cout << "[verify_dual]      counterexample details" << endl;
        cout << "[verify_dual]      TARGET START STATE" << endl << endl << r.target_ceg << endl;
        cout << "[verify_dual]      REWRITE START STATE" << endl << endl << r.rewrite_ceg << endl;
        cout << "[verify_dual]      TARGET END STATE" << endl << endl << r.target_final_ceg << endl;
        cout << "[verify_dual]      REWRITE END STATE" << endl << endl << r.rewrite_final_ceg << endl;
        cout << "[verify_dual]      TARGET/REWRITE start state differences..." << endl;
        cout << diff_states(r.target_ceg, r.rewrite_ceg, false, true, RegSet::universe()) << endl;
        cout << "[verify_dual]      TARGET/REWRITE end state differences..." << endl;
        cout << diff_states(r.target_final_ceg, r.rewrite_final_ceg, false, true, RegSet::universe()) << endl;
        cout << "[verify_dual]      Target START/END state differences..." << endl;
        cout << diff_states(r.target_ceg, r.target_final_ceg, false, true, RegSet::universe()) << endl;
        cout << "[verify_dual]      Rewrite START/END state differences..." << endl;
        cout << diff_states(r.rewrite_ceg, r.rewrite_final_ceg, false, true, RegSet::universe()) << endl;


        cout << "[verify_dual]      looking for conjuncts to discard..." << endl;
        auto& state_delete_list = conjuncts_to_delete[target_state];
        for(size_t i = 0; i < target_invariant->size(); ++i) {
          if(state_delete_list.count(i))
            continue;

          auto conjunct = (*target_invariant)[i];
          if(!conjunct->check(r.target_final_ceg, r.rewrite_final_ceg)) {
            cout << "[verify_dual] discarding conjunct " << i << ": " << *conjunct << endl;
            state_delete_list.insert(i);

            if(conjunct->is_critical()) {
              //we're done here.
              cout << "[verify_dual] Failure. Critical invariant failed. " << endl;
              failure = true;
            }
          }
        }

        cout << "[verify_dual]      callback done." << endl;
      }
    } 
  };
  

  // We do the fixpoint iteration twice.  The first time we only care when we find counterexamples
  // where we can guarantee the conjuncts must be smaller.  The second round

  CfgSccs target_sccs(target_);
  CfgSccs rewrite_sccs(rewrite_);
  dual.compute_topological_sort(target_sccs, rewrite_sccs);
  auto states = dual.get_topological_sort();
  update_needed[start_state] = true;

  for(size_t round = 0; round < 2; round++) {

    fixpoint = false;

    while(!fixpoint) {
      cout << "[verify_dual] starting fixpoint iteration; round=" << round << endl;

      // reset state
      checker_.delete_all(); //just-in-case
      pointers_to_delete.clear();
      conjuncts_to_delete.clear();
      fixpoint = true;

      vector<DualAutomata::State> states_to_update;
      cout << "[verify_dual] states that need updating are: ";
      for(auto state : states)
        if(update_needed[state]) {
          cout << state << "   ";
          states_to_update.push_back(state);
        }
      cout << endl;
      update_needed.clear();



      // check every hoare triple for entire graph, and throw out conjuncts that we're
      // sure won't hold.
      for(auto state : states_to_update) {

        cout << "[verify_dual] dispatching hoare triples for state " << state << endl;
        auto edges = dual.next_edges(state);
        auto source_inv = dual.get_invariant(state);

        for(auto e : edges) {
          cout << "[verify_dual] dispatching hoare triples for edge " << e << endl;
          auto target = e.to;
          std::shared_ptr<ConjunctionInvariant> target_inv = dual.get_invariant(target);
          auto target_testcases = dual.get_target_data(e);
          auto rewrite_testcases = dual.get_rewrite_data(e);
          assert(target_testcases.size() == rewrite_testcases.size());
          vector<pair<CpuState,CpuState>> testcases;
          for(size_t i = 0; i < target_testcases.size(); ++i) {
            testcases.push_back(make_pair(target_testcases[i], rewrite_testcases[i])); 
          }

          for(size_t i = 0; i < target_inv->size(); ++i) {
            if(conjuncts_to_delete[target].count(i))
              continue;

            // create callback parameter
            CallbackParam* cbp = new CallbackParam();
            cbp->edge = e;
            cbp->conjunct = i;
            cbp->ignore_errors = (round == 0);  // in only the first round do we ignore errors
            pointers_to_delete.push_back(cbp);
            auto conjunct = (*target_inv)[i];

            // construct source invariant
            shared_ptr<ConjunctionInvariant> new_source_invariant = 
              dynamic_pointer_cast<ConjunctionInvariant>(source_inv->clone());

            // we don't want to just remove these conjuncts because they may imply others which do hold
            // (we can however, remove them, if we add in the others also)
            //const auto& conjuncts_to_ignore = conjuncts_to_delete[state];
            //for(size_t i = 0; i < source_inv->size(); ++i) {
              //if(!conjuncts_to_ignore.count(i))
            //  new_source_invariant.add_invariant((*source_inv)[i]);
            //}
            for(auto inv : assume_always_) {
              new_source_invariant->add_invariant(inv);
            }

            // dispatch the check
            cout << "[verify_dual]      dispatching conjunct " << i << ": " << *conjunct << endl;
            checker_.check(target_, rewrite_, e.to.ts, e.to.rs, e.te, e.re, 
                           new_source_invariant, conjunct, testcases, callback, true, (void*)cbp);

            // see if we've received any callbacks that end it all
            if(failure) {
              checker_.delete_all();
              for(auto it : pointers_to_delete)
                delete it;
              return false;
            }
          }

          // invoke callback for any jobs that are already finished
          checker_.check_for_callbacks();
          if(failure) {
            checker_.delete_all();
            for(auto it : pointers_to_delete)
              delete it;
            return false;
          }
        }
      }

      checker_.block_until_complete();
      if(failure) {
        checker_.delete_all();
        for(auto it : pointers_to_delete)
          delete it;
        return false;
      }

      // iterate through conjuncts that need to be removed
      cout << "[verify_dual] removing conjuncts from this round." << endl;
      for(auto state_set : conjuncts_to_delete) {
        auto& to_delete = state_set.second;
        update_needed[state_set.first] = true;
        std::shared_ptr<ConjunctionInvariant> inv = dual.get_invariant(state_set.first);

        cout << "[verify_dual] removing conjuncts from state " << state_set.first << endl;
        for(auto i = to_delete.rbegin(); i != to_delete.rend(); ++i) {

          auto conjunct = (*inv)[*i];
          cout << "[verify_dual] removing conjunct " << *i << ": " << *conjunct << endl;

          if(graph.has_replacements(conjunct)) {

            // consider each replacement
            for(auto replacement : graph.get_replacements(conjunct)) {
              bool works = true;
              // (i) if it doesn't pass test cases, discard
              for(auto example_pair : reachable_examples_for_state[state_set.first]) {
                auto target_tc = example_pair.first;
                auto rewrite_tc = example_pair.second;
                if(!replacement->check(target_tc, rewrite_tc)) {
                  // we definitely can't prove this is true -- ignore it.
                  cout << "[verify_dual]     NOT replacing with " << *replacement << " (fails tests)" << endl;
                  works = false;
                  break;
                }
              }
              if(!works)
                continue;
              // (ii) if it is already present in conjunction, discard
              // otherwise add to end of conjunction
              for(size_t i = 0; i < inv->size(); ++i) {
                auto it = (*inv)[i];
                if(it == replacement) {
                  cout << "[verify_dual]     NOT replacing with " << *replacement << " (already present)" << endl;
                  works = false;
                  break;
                }
              }
              if(!works)
                continue;
              cout << "[verify_dual]     replacing with " << *replacement << endl;
              inv->add_invariant(replacement);
            }
          }

          inv->remove(*i); 
        }
      }
      dual.print_all();

      // clean up memory
      for(auto it : pointers_to_delete)
        delete it;
      pointers_to_delete.clear();
    }
  }

  cout << "[verify_dual] Finished discharging obligations." << endl;
  dual.print_all();

  /** Perform the final check. */
  auto actual_final = dual.get_invariant(end_state);
  auto expected_final = get_final_invariant(dual);
  bool last_check = actual_final->size() == expected_final->size();
  if(!last_check) {
    cout << "Failure. Final invariant insufficient" << endl;
    cout << "Actual final invariant: " << *actual_final << endl;
    cout << "Expected final invariant: " << *expected_final << endl;
    return false;
  }

  /** All done :) */
  cout << " ===== PROOF COMPLETE ===== " << endl;
  dual.print_all();
  return true;
}

vector<Variable> DdecValidator::get_stack_locations(bool is_rewrite) {
  const Cfg& cfg = is_rewrite ? rewrite_ : target_;
  set<Variable> stack_locations;
  auto code = cfg.get_code();
  for(auto instr : code) {
    if(instr.is_explicit_memory_dereference()) {
      auto index = instr.mem_index();
      auto operand = instr.get_operand<Mem>(index);
      if(operand.get_base() == rbp || operand.get_base() == rsp) {
        Variable v(operand, is_rewrite);
        stack_locations.insert(v);
      }
    }
  }

  vector<Variable> output;
  output.insert(output.begin(), stack_locations.begin(), stack_locations.end());
  return output;
}

bool DdecValidator::test_alignment_predicate(shared_ptr<Invariant> invariant) {
  DualAutomata dual(target_, rewrite_);
  bool success = build_dual_for_alignment_predicate(invariant, dual);
  if(!success)
    return false;

  DualAutomata unsimplified = dual;
  cout << "BEFORE SIMPLIFY PAA!" << endl;
  dual.print_all();

  bool simplify_ok = dual.simplify();
  if(!simplify_ok) {
    cout << "[test_alignment_predicate] Aborting. Simplify returned false" << endl;
    return false;
  }

  cout << "TRYING THIS PAA!" << endl;
  dual.print_all();
  bool works = verify_dual(dual);
  return works;
}

bool DdecValidator::verify(const Cfg& init_target, const Cfg& init_rewrite) {

  benchmark_proof_succeeded_ = false;
  benchmark_starttime_ = system_clock::now();
  benchmark_searchstart_ = benchmark_starttime_;
  benchmark_total_search_time_ = 0;
  auto start_time = system_clock::to_time_t(benchmark_starttime_);
  cout << "[benchmark] STARTTIME=" << ctime(&start_time) << endl;

  target_ = init_target;
  rewrite_ = init_rewrite;

  target_traces_ = data_collector_.get_traces(target_);
  rewrite_traces_ = data_collector_.get_traces(rewrite_);

  if(alignment_predicate_) {
    cout << "Attempting to use " << *alignment_predicate_ << endl;
    return test_alignment_predicate(alignment_predicate_);
  }

  CfgSccs target_sccs(target_);
  CfgSccs rewrite_sccs(rewrite_);

  auto memequ = make_shared<MemoryEqualityInvariant>();
  set<EqualityInvariant> tried_invariants;
  vector<shared_ptr<EqualityInvariant>> try_again_predicates;

  for(size_t target_cutpoint = target_.get_entry(); target_cutpoint < target_.get_exit(); ++target_cutpoint) {
    if(!target_sccs.in_scc(target_cutpoint))
      continue;

    for(size_t rewrite_cutpoint = rewrite_.get_entry(); rewrite_cutpoint < rewrite_.get_exit(); ++rewrite_cutpoint) {
      if(!rewrite_sccs.in_scc(rewrite_cutpoint))
        continue;

      auto target_defined_registers = target_.def_outs(target_cutpoint);
      auto rewrite_defined_registers = rewrite_.def_outs(rewrite_cutpoint);

      vector<Variable> target_variables;
      vector<Variable> rewrite_variables;


      for(auto target_reg = target_defined_registers.gp_begin();
               target_reg != target_defined_registers.gp_end();
               ++target_reg) {
        target_variables.push_back(Variable(*target_reg, false));
      }

      for(auto rewrite_reg = rewrite_defined_registers.gp_begin();
               rewrite_reg != rewrite_defined_registers.gp_end();
               ++rewrite_reg) {
        rewrite_variables.push_back(Variable(*rewrite_reg, true));
      }

      auto target_stack_locations = get_stack_locations(false);
      auto rewrite_stack_locations = get_stack_locations(true);

      target_variables.insert(target_variables.begin(), target_stack_locations.begin(), target_stack_locations.end());
      rewrite_variables.insert(rewrite_variables.begin(), rewrite_stack_locations.begin(), rewrite_stack_locations.end());

      for(auto v1 : target_variables) {
        //cout << "TARGET VARIABLE " << v1 << endl;

        for(auto v2 : rewrite_variables) {
          //cout << "REWRITE VARIABLE " << v2 << endl;

          size_t power2bound = 5;
          for(size_t i = 0; i < power2bound*2-1; ++i) {
            if(i < power2bound) {
              v1.coefficient = (1 << i);
              v2.coefficient = -1;
            } else {
              v1.coefficient = 1;
              v2.coefficient = -(1 << (i-power2bound+1));
            }
            EqualityInvariant inv({v1, v2}, 0);

            vector<uint64_t> constants;
            constants = find_alignment_predicate_constants(target_cutpoint, rewrite_cutpoint, inv);

            for(auto constant : constants) {
              auto specific = make_shared<EqualityInvariant>(inv.get_terms(), constant);
              if(tried_invariants.count(*specific))
                continue;
              tried_invariants.insert(*specific);
              try_again_predicates.push_back(specific);

              auto conj = make_shared<ConjunctionInvariant>();
              conj->add_invariant(specific);
              conj->add_invariant(memequ);

              bool success = test_alignment_predicate(conj);
              if(success)
                return true;
              /*
              DualAutomata dual(target_, rewrite_);
              bool success = build_dual_for_alignment_predicate(conj, dual);
              if(success) {
                dual.print_all();
                dual.simplify();
                cout << "SIMPLIFIED!!" << endl;
                dual.print_all();
                bool b = verify_dual(dual, conj);
                if(b) {
                  cout << "PROOF SUCCEEDED!" << endl;
                  benchmark_proof_succeeded_ = true;
                  benchmark_searchstart_ = system_clock::now();
                  return true;
                } else {
                  cout << "Dual failed to verify... trying something else." << endl;
                }
              }
              else
                cout << "Making graph failed" << endl;
              */
            }
          }
        }
      }
    }
  }

  for(auto inv : try_again_predicates) {
    bool success = test_alignment_predicate(inv);
    if(success)
      return true;
    /*
    DualAutomata dual(target_, rewrite_);
    cout << "Trying alignment predicate without heap: " << *inv << endl;
    bool success = build_dual_for_alignment_predicate(inv, dual);
    if(success) {
      dual.print_all();
      dual.simplify();
      cout << "SIMPLIFIED!!" << endl;
      dual.print_all();
      bool b = verify_dual(dual, inv);
      if(b) {
        cout << "PROOF SUCCEEDED!" << endl;
        benchmark_proof_succeeded_ = true;
        benchmark_searchstart_ = system_clock::now();
        return true;
      } else {
        cout << "Dual failed to verify... trying something else." << endl;
      }
    }
    else
      cout << "Making graph failed" << endl;
      */
  }

  auto now = system_clock::now();
  auto diff = duration_cast<microseconds>(now - benchmark_searchstart_).count();
  benchmark_total_search_time_ += diff;
  cout << "[benchmark] BAD SEARCH TOOK " << diff << endl;
  cout << "[benchmark] TOTAL SEARCH TIME " << benchmark_total_search_time_ << endl;


  //return benchmark_proof_succeeded_;
  return false;
}


std::shared_ptr<ConjunctionInvariant> DdecValidator::get_initial_invariant(DualAutomata& dual) const {
  auto initial_invariant = std::make_shared<ConjunctionInvariant>();

  /** set all shadow block variables to 0 */
  auto target = dual.get_target();
  auto rewrite = dual.get_rewrite();

  auto sei = std::make_shared<StateEqualityInvariant>(target.def_ins());
  initial_invariant->add_invariant(sei);
  initial_invariant->add_invariant(std::make_shared<MemoryEqualityInvariant>());
  initial_invariant->add_invariant(std::make_shared<NoSignalsInvariant>());

  for(auto span : pointer_ranges_) {
    auto begin = span.first;
    auto end = span.second;
    auto pri = std::make_shared<PointerRangeInvariant>(begin, end);
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
      auto equiv = std::make_shared<EqualityInvariant>({start_var, string_reg}, 0);
      initial_invariant->add_invariant(equiv);

      // rsi_end = 0 (for example)
      Variable end_var(string_ghost_end(r), false);
      auto end_mem = std::make_shared<PointerNullInvariant>(end_var, 1);
      initial_invariant->add_invariant(end_mem);
    }
  */

  //initial_invariant->add_invariant(get_fixed_invariant());

  return initial_invariant;
}

std::shared_ptr<ConjunctionInvariant> DdecValidator::get_final_invariant(DualAutomata& dual) const {
  auto target = dual.get_target();
  auto final_invariant = std::make_shared<ConjunctionInvariant>();
  auto sei = std::make_shared<StateEqualityInvariant>(target.live_outs());
  final_invariant->add_invariant(sei);
  final_invariant->add_invariant(std::make_shared<MemoryEqualityInvariant>());
  final_invariant->add_invariant(std::make_shared<NoSignalsInvariant>());

  //final_invariant->add_invariant(get_fixed_invariant());

  return final_invariant;
}

std::shared_ptr<ConjunctionInvariant> DdecValidator::get_fail_invariant() const {
  auto fail_invariant = std::make_shared<ConjunctionInvariant>();
  fail_invariant->add_invariant(std::make_shared<FalseInvariant>());

  return fail_invariant;
}
