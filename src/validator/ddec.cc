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
#include "src/validator/bounded.h"
#include "src/validator/data_collector.h"
#include "src/validator/dual.h"
#include "src/validator/ddec.h"
#include "src/validator/flow_invariant_learner.h"
#include "src/validator/indexer.h"
#include "src/validator/null.h"
#include "src/validator/invariants/conjunction.h"
#include "src/validator/invariants/equality.h"
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

        /** if we have a loop with another block, the last node on the end is redundant. */
        if (tp.size() > 1 && tp[1] != tp[0]) {
          tp.erase(tp.end()-1);
        }
        if (rp.size() > 1 && rp[1] != rp[0]) {
          rp.erase(rp.end()-1);
        }


        if (control_learner_->pair_feasible(tp, rp, true)) {
          cout << "Found inductive pair " << tp << " and " << rp << endl;
          target_inductive_paths.push_back(tp);
          rewrite_inductive_paths.push_back(rp);
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

  DualAutomata pod(target_, rewrite_, data_collector_);

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

void DdecValidator::class_checker_callback(const ClassChecker::Result& result, void* optional) {
  cout << "[class_checker_callback] verified=" << result.verified << endl;
  if(result.verified) {
    verified_++;
  }
}

bool DdecValidator::verify(const Cfg& init_target, const Cfg& init_rewrite) {

  target_ = init_target;
  rewrite_ = init_rewrite;

  /** STEP 1: Find inductive paths and initial invariants in a template */
  flow_invariant_learner_ = new FlowInvariantLearner(data_collector_, invariant_learner_);
  flow_invariant_learner_->initialize(target_, rewrite_);
  control_learner_ = new ControlLearner(target_, rewrite_, sandbox_);
  DualAutomata template_pod = learn_inductive_paths();

  // free all that memory :)
  delete flow_invariant_learner_;
  flow_invariant_learner_ = NULL;

  /** Populate the POD with the initial invariants. */
  //DualAutomata::State start_state = template_pod.start_state();
  //template_pod.set_invariant(start_state, get_initial_invariant());

  /** Debug POD */
  cout << endl;
  template_pod.print_all();
  cout << endl;

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

  DualBuilder builder(data_collector_, template_pod, *control_learner_);
  builder.set_bound(target_bound_, rewrite_bound_);
  DualBuilder::EquivalenceClassMap handhold_class = builder.get_handhold_class();

  ClassChecker::Callback callback = [&] (const ClassChecker::Result& r, void* optional) {
    return class_checker_callback(r, optional);
  };

  verified_ = 0;
  LocalClassChecker local_checker(data_collector_, *control_learner_, 
                    target_bound_, rewrite_bound_,
                    checker_, invariant_learner_);
  local_checker.check(template_pod, handhold_class, callback, (void*)NULL);
  local_checker.block_until_complete();

  if(verified_ > 0)
    return true;

  return false;
}

set<DualBuilder::EquivalenceClass> DdecValidator::make_wildcard_classes(const set<DualBuilder::EquivalenceClass>& done, const vector<uint64_t>& remaining) {
  if(remaining.size() == 0)
    return done;

  auto elem = remaining[0];
  auto new_remaining = remaining;
  new_remaining.erase(new_remaining.begin());
  set<DualBuilder::EquivalenceClass> new_done;

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
      /*cout << "classification = ";
      for(auto it : classification)
        cout << it << "  ";
      cout << endl;*/

      // each classification turns into 2^N equivalence classes where N is the length of the vector
      set<DualBuilder::EquivalenceClass> starting_set;
      auto wildcards = make_wildcard_classes(starting_set, classification);
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
