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

#include "src/validator/flow_invariant_learner.h"
#include "src/validator/local_class_checker.h"

#include "src/validator/invariants/conjunction.h"
#include "src/validator/invariants/disjunction.h"
#include "src/validator/invariants/equality.h"
#include "src/validator/invariants/false.h"
#include "src/validator/invariants/flag.h"
#include "src/validator/invariants/implication.h"
#include "src/validator/invariants/memory_equality.h"
#include "src/validator/invariants/no_signals.h"
#include "src/validator/invariants/nonzero.h"
#include "src/validator/invariants/sign.h"
#include "src/validator/invariants/state_equality.h"
#include "src/validator/invariants/true.h"

#ifdef STOKE_DEBUG_CEG
#define CEG_DEBUG(X) { X }
#else
#define CEG_DEBUG(X) { }
#endif




using namespace stoke;
using namespace std;

/** Check this template with equivalence class. */
int LocalClassChecker::check(
    const DualAutomata& template_pod,
    const DualBuilder::EquivalenceClassMap& equivalence_class,
    Callback& callback,
    void* optional) {

  DualBuilder builder(data_collector_, template_pod, control_learner_);
  builder.set_bound(target_bound_, rewrite_bound_);
  auto pod = builder.generate_pod(equivalence_class);
  bool sane = sanity_check(pod);
  if(!sane) {
    Result r;
    r.verified = false;
    r.has_error = false;
    r.error_message = "POD not sane";
    callback(r, optional);
    return 0;
  }

  Result r = verify_dual(pod);
  callback(r, optional);
  return 0;

}


ClassChecker::Result LocalClassChecker::verify_dual(DualAutomata& dual) {
  Result r;
  r.verified = false;
  r.has_error = false;
  r.error_message = "";


  dual.remove_prefixes();
  dual.print_all();

  bool learning_successful = dual.learn_invariants(invariant_learner_);
  if (!learning_successful) {
    cout << "[verify_dual] Learning invariants failed!" << endl;
    r.error_message = "Learning state data/invariants failed";
    return r;
  }

  auto edge_reachable = dual.get_edge_reachable_states();
  for (auto state : edge_reachable) {
    if (state == dual.start_state() || state == dual.exit_state() || state == dual.fail_state())
      continue;
    auto inv = dual.get_invariant(state);
    if (inv->size() < 2) {
      cout << "[verify_dual] Could not learn invariant at state " << state << endl;
      cout << "[verify_dual] Aboring." << endl;
      r.error_message = "Could not learn invariant at state.";
      return r;
    }
  }

  auto target = dual.get_target();
  auto rewrite = dual.get_rewrite();

  cout << "[verify_dual] Compute Failure Edges" << endl;
  auto failure_edges = dual.compute_failure_edges(target, rewrite);
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
  dual.print_all();
  discharge_invariants(dual);
  dual.print_all();

  /** Check that there's no path to the failure state. */
  auto fail_invariant = dual.get_invariant(fail_state);
  if(fail_invariant->size() == 0) {
    cout << "[verify_dual] There's a feasible path to a fail state.  Proof failed." << endl;
    r.error_message = "Feasible path to fail state.";
    return r;
  }

  /** Perform the final check. */
  auto actual_final = dual.get_invariant(end_state);
  auto expected_final = get_final_invariant(dual);
  vector<pair<CpuState, CpuState>> testcases;
  auto result = obligation_checker_.check_wait(target, rewrite, end_state.ts, end_state.rs,
                                    {}, {}, *actual_final, *expected_final, testcases);
  if(result.has_error) {
    cout << "[verify_dual] Checker encountered error: " << result.error_message << endl;
    r.has_error = true;
    r.error_message = "Solver encountered error on final obligation";
    return r;
  }

  if (!result.verified) {
    cout << "[verify_dual] Could not complete final proof step." << endl;
    cout << "[verify_dual] Maybe DDEC missed an important invariant?" << endl;
    r.error_message = "Final proof obligation failed.";
    return r;
  }

  /** All done :) */
  cout << " ===== PROOF COMPLETE ===== " << endl;
  dual.print_all();
  r.verified = true;
  return r;
};


ConjunctionInvariant* LocalClassChecker::get_initial_invariant(DualAutomata& dual) const {
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

ConjunctionInvariant* LocalClassChecker::get_final_invariant(DualAutomata& dual) const {
  auto target = dual.get_target();
  auto final_invariant = new ConjunctionInvariant();
  auto sei = new StateEqualityInvariant(target.live_outs());
  final_invariant->add_invariant(sei);
  final_invariant->add_invariant(new MemoryEqualityInvariant());

  //final_invariant->add_invariant(get_fixed_invariant());

  return final_invariant;
}

ConjunctionInvariant* LocalClassChecker::get_fail_invariant() const {
  auto fail_invariant = new ConjunctionInvariant();
  fail_invariant->add_invariant(new FalseInvariant());

  return fail_invariant;
}

/** returns true if everything was successful. */
void LocalClassChecker::discharge_edge(const DualAutomata& dual, DischargeState& ds, const DualAutomata::Edge& edge, size_t conjunct, stringstream* ss) {

  auto start_inv = dual.get_invariant(edge.from);
  auto end_inv = dual.get_invariant(edge.to);
  auto partial_inv = (*end_inv)[conjunct];
  *ss << " conjunct " << conjunct << " / " << end_inv->size() << endl;
  *ss << "    Edge " << edge << endl;
  *ss << "    Proving " << *partial_inv << endl;
  bool valid = false;

  // Get test cases from dual
  auto target_testcases = dual.get_target_data(edge);
  auto rewrite_testcases = dual.get_rewrite_data(edge);
  vector<pair<CpuState, CpuState>> testcases;
  for(size_t i = 0; i < 1 && i < target_testcases.size(); ++i) {
    testcases.push_back(pair<CpuState, CpuState>(target_testcases[i], rewrite_testcases[i]));
  }

  ObligationCheckerCallbackInfo* info = new ObligationCheckerCallbackInfo(ds, edge, conjunct, ss);

  callback_ = [this] (ObligationChecker::Result& r, void* opt) {
    cout << "Received callback opt=" << (uint64_t)opt << std::endl;
    this->obligation_checker_callback(r, opt);
  };

  // Run the obligation check
  callbacks_expected_++;
  auto target = dual.get_target();
  auto rewrite = dual.get_rewrite();
  obligation_checker_.check(target, rewrite, edge.from.ts, edge.from.rs,
                 edge.te, edge.re, *start_inv, *partial_inv, testcases, callback_, (void*)info);

}

void LocalClassChecker::discharge_thread_run(DualAutomata& dual, DischargeState& state) {

  callbacks_expected_ = 0;
  callbacks_count_ = 0;

  discharge_thread(dual, state, 0);
  obligation_checker_.block_until_complete();

  if(callbacks_count_ < callbacks_expected_) {
    cout << "Too few callbacks returned.  Expected " << callbacks_expected_
         << " and got " << callbacks_count_ << endl;
    exit(1);
  }
}

void LocalClassChecker::block_until_complete() {
  return;
}

void LocalClassChecker::discharge_thread(DualAutomata& dual, DischargeState& discharge_state, size_t i) {
  while(true) {
    cout << "[discharge_thread " << i << "] getting another problem" << endl;
    auto problem = discharge_state.next_problem();
    cout << "[discharge_thread " << i << "] got problem" << endl;
    auto& edge = problem.first;
    auto conjunct = problem.second;
    if(conjunct == (size_t)(-1)) { /* we're done. */
      cout << "[discharge_thread " << i << "] all done!" << endl;
      return;
    }
    stringstream* ss = new stringstream();
    *ss << "[discharge_thread " << i << "]" ;
    discharge_edge(dual, discharge_state, edge, conjunct, ss);
  }
}

void LocalClassChecker::discharge_invariants(DualAutomata& dual) {

  auto sorted_states = dual.get_topological_sort();
  cout << "[discharge_invariants] Topological sort: ";
  for(auto it : sorted_states)
    cout << "    " << it << endl;

  for(size_t i = 0; i < sorted_states.size(); ++i) {
    auto current_state = sorted_states[i];
    auto edges = dual.next_edges(current_state);
    vector<DualAutomata::Edge> self_edges;
    vector<DualAutomata::Edge> forward_edges;

    cout << "[discharge_invariants] Processing state: " << current_state << endl;

    // STEP 0: classify edges
    for(auto e : edges) {
      if(e.to == e.from) {
        self_edges.push_back(e);
      } else {
        forward_edges.push_back(e);
      }
    }

    // STEP 1: visit all the self-edges (if any) until fixedpoint
    cout << "[discharge_invariants] State " << current_state << " has " << self_edges.size() << " self edges." << endl;
    if(self_edges.size()) {
      bool update_required = true;
      while(update_required) {
        cout << "[discharge_invariants] Running self-loop threads" << endl;
        DischargeState discharge_loop(dual, self_edges);
        discharge_thread_run(dual, discharge_loop);
        cout << "[discharge_invariants] self-loop threads done." << endl;
        update_required = discharge_loop.update_dual();
        cout << "[discharge_invariants] Update required = " << update_required << endl;
        dual.print_all();
      }
    }
    
    // STEP 2: visit all the edges from this state to subsequent states
    cout << "[discharge_invariants] State " << current_state << " has " << forward_edges.size() << " forward edges." << endl;
    if(forward_edges.size()) {
      cout << "[discharge_invariants] Running forward edge threads" << endl;
      DischargeState discharge_forward(dual, forward_edges);
      cout << "[discharge_invariants] discharge_forward created" << endl;
      discharge_thread_run(dual, discharge_forward);
      cout << "[discharge_invariants] forward edge threads done" << endl;
      discharge_forward.update_dual();
      dual.print_all();
    }

    // Bail out early if we've failed to prove something crucial.
    auto fail_invariant = dual.get_invariant(dual.fail_state());
    if(fail_invariant->size() == 0) {
      cout << "[discharge_invariants] There's a feasible path to a fail state.  Proof failed." << endl;
      return;
    }


  }
}

void LocalClassChecker::obligation_checker_callback(ObligationChecker::Result& result, void* info) {
  ObligationCheckerCallbackInfo* cci = static_cast<ObligationCheckerCallbackInfo*>(info);
  DischargeState& state = cci->state;
  auto& ss = *(cci->ss);

  ss << "    " << (result.verified ? "true" : "false") << endl;
  if(result.has_error) {
    ss << "    error: " << result.error_message << endl;
  } 
  CEG_DEBUG(
    if(result.has_ceg) {
      auto ceg_t = result.target_ceg;
      auto ceg_r = result.rewrite_ceg;
      auto ceg_t_end = result.target_final_ceg;
      auto ceg_r_end = result.rewrite_final_ceg;

      ss << "    (counterexample)" << endl << endl;
      ss << "TARGET COUNTEREXAMPLE" << endl << endl << ceg_t << endl << endl;
      ss << "REWRITE COUNTEREXAMPLE" << endl << endl << ceg_r << endl << endl;
      ss << "TARGET COUNTEREXAMPLE - END" << endl << endl << ceg_t_end << endl << endl;
      ss << "REWRITE COUNTEREXAMPLE - END" << endl << endl << ceg_r_end << endl << endl;
    } else if (!result.verified) {
      ss << "    (could not generate counterexample)" << endl;
    } else {
      ss << "    (verified!)" << endl;
    }
  )
  auto str = ss.str();
  state.report_outcome(cci->edge, cci->conjunct, result.verified, str);
  callbacks_count_++;

  delete cci->ss;
  delete cci;

}


bool LocalClassChecker::sanity_check(DualAutomata& pod) {
  /** get set of globally reachable states. */
  set<DualAutomata::State> global_reachable = pod.get_edge_reachable_states();
  cout << "[sanity] global reachable: ";
  for (auto r : global_reachable)
    cout << r << "  ";
  cout << endl;

  /** make sure that exit is reachable from all states...
    ... if not, we're sure not to pass the exhaustiveness check. */
  for (auto state : global_reachable) {
    size_t init_count = 0;
    set<DualAutomata::State> reachable;
    reachable.insert(state);

    size_t curr_count = reachable.size();
    while (curr_count > init_count) {
      init_count = curr_count;

      for (auto r : reachable) {
        for (auto p : pod.next_states(r)) {
          reachable.insert(p);
        }
      }

      curr_count = reachable.size();
    }

    if (reachable.count(pod.exit_state()) == 0) {
      cout << "[sanity] exit state not reachable from " << state << endl;
      return false;
    } else {
      cout << "[sanity] states reachable from " << state << " are ";
      for (auto r : reachable)
        cout << r << "  ";
      cout << endl;
    }
  }
  return true;

}

CfgPath extend_until_branch(const Cfg& cfg, Cfg::id_type current) {
  CfgPath prefix;
  Cfg::id_type orig = current;
  while(cfg.succ_size(current) == 1) {
    current = *cfg.succ_begin(current);
    prefix.push_back(current);
  }
  cout << "[extend_until_branch] @" << orig << " -> " << prefix << " @ " << current << endl;
  return prefix;
}

