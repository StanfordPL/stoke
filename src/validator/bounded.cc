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

#include "src/cfg/cfg.h"
#include "src/cfg/paths.h"
#include "src/validator/bounded.h"

using namespace std;
using namespace stoke;
using namespace x64asm;


bool BoundedValidator::find_pair_testcase(const Cfg& target, const Cfg& rewrite,
    const CfgPath& P, const CfgPath& Q, CpuState& tc) {

  if(paths_infeasible_[P][Q])
    return false;

  auto target_tcs = path_to_testcase_[0][P];
  auto rewrite_tcs = path_to_testcase_[1][Q];

  cout << "===========================================" << endl;
  cout << "We're looking for TCs for these paths" << endl;
  cout << "P: " << print(P) << endl;
  cout << "Q: " << print(Q) << endl;
  cout << "Target has " << target_tcs.size() << endl;
  cout << "Rewrite has " << rewrite_tcs.size() << endl;

  cout << "TARGET PATHS:" << endl;
  for(auto it : path_to_testcase_[0]) {
    cout << print(it.first) << " : " << it.second.size() << endl;
  }

  // Do they have something in common?  if so, we're done.
  // Both of these vectors are sorted --> O(n) time.
  size_t j = 0;
  size_t winner = (size_t)-1;
  for(size_t i : target_tcs) {
    while(j < rewrite_tcs.size() && rewrite_tcs[j] < i) {
      j++;
    }
    if(j < rewrite_tcs.size() && rewrite_tcs[j] == i) {
      // we're done!
      tc = *(sandbox_->get_input(i));
      return true;
    }
  }

  // Roll your sleaves up: we're gonna try to brute force a new testcase.
  return brute_force_testcase(target, rewrite, P, Q, tc);

}

// Find a testcase that takes paths (P,Q) or prove that one doesn't exist.
// We're assuming that a "gentle" search of known testcases failed here.
bool BoundedValidator::brute_force_testcase(const Cfg& target, const Cfg& rewrite,
    const CfgPath& P, const CfgPath& Q, CpuState& tc) {

  cout << "*************** ATTEMPTING TC BRUTEFORCE ***************" << endl;
  cout << "P=" << print(P) << endl;
  cout << "Q=" << print(Q) << endl;
  if(paths_infeasible_[P][Q])
    return false;

  // STEP 1: see if there's any bootstrap testcase that nearly makes it up to P/Q

  // find the prefix we need, i.e., the path P' short of P where the gap (nodes in P but not P') doesn't contain any memory access
  CfgPath P_prefix;
  CfgPath Q_prefix;
  for(size_t k = 0; k < 2; ++k) {
    auto& cfg = k ? target : rewrite;
    auto& path = k ? P : Q;
    auto& prefix = k ? P_prefix : Q_prefix;

    CfgPath buffer;
    for(size_t i = 0; i < path.size() - 1; ++i) {
      auto node = path[i];
      if(cfg.num_instrs(node) == 0)
        continue;

      // does this node have a memory dereference?
      bool deref = false;
      size_t start_instr = cfg.get_loc(i).first;
      size_t end_instr = start_instr + cfg.num_instrs(node);
      for(size_t j = start_instr; j < end_instr; ++j) {
        if(cfg.get_code()[j].is_memory_dereference()) {
          deref = true;
          cout << "  node " << node << " has dereference k=" << k << endl;
          break;
        }
      }

      buffer.push_back(node);

      if(deref) {
        prefix.insert(prefix.end(), buffer.begin(), buffer.end());  
        buffer.clear();
      }
    }
  }
  cout << "Prefix for P: " << print(P_prefix) << endl;
  cout << "Prefix for Q: " << print(Q_prefix) << endl;

  // search testcases for these prefixes
  CpuState prefix_tc;
  bool found_tc = false;
  for(size_t i = 0; i < paths_[0].size(); ++i) {
    auto& target_path = paths_[0][i];
    auto& rewrite_path = paths_[1][i];

    if(!CfgPaths::is_prefix(P_prefix, target_path))
      continue;
    if(!CfgPaths::is_prefix(Q_prefix, rewrite_path))
      continue;

    //aha!  found one!
    found_tc = true;
    prefix_tc = *(sandbox_->get_input(i));
    cout << "Found prefix TC :)" << endl;
    break;
  }

  // STEP 2: if not, we need to synthesize one of those -- or get a guarantee none can exit.  (recursive call)

  if(!found_tc) {
    found_tc = brute_force_testcase(target, rewrite, P_prefix, Q_prefix, prefix_tc);
  }

  if(!found_tc) {
    // yay, it's infeasible!
    cout << "PATH INFEASIBLE :) " << endl;
    paths_infeasible_[P][Q] = true;
    return false;
  }

  // STEP 3: build constraints and solve for a new TC, or prove infeasibility

  cout << "***** Checking for feasibility *****" << endl;

  init_mm();

  vector<SymBool> constraints;

  SymState init("");
  SymState state_t("1_INIT");
  SymState state_r("2_INIT");

  for(auto it : state_t.equality_constraints(init, target.def_ins()))
    constraints.push_back(it);
  for(auto it : state_r.equality_constraints(init, rewrite.def_ins()))
    constraints.push_back(it);


  auto target_repath = CfgPaths::rewrite_cfg_with_path(target, P_prefix);
  auto rewrite_repath = CfgPaths::rewrite_cfg_with_path(rewrite, Q_prefix);
  auto memories = am.build_cell_model(target_repath, rewrite_repath, prefix_tc);
  if(memories.first == NULL || memories.second == NULL) {
    throw VALIDATOR_ERROR("Overlapping memory accesses found.");
    return false;
  }

  state_t.memory = memories.first;
  state_r.memory = memories.second;
  auto mem_const = memories.first->equality_constraint(*memories.second);
  constraints.push_back(mem_const);

  size_t line_no = 0;
  for(size_t i = 0; i < P.size() - 1; ++i)
    build_circuit(target, P[i], is_jump(target,P,i), state_t, line_no);
  line_no = 0;
  for(size_t i = 0; i < Q.size() - 1; ++i)
    build_circuit(rewrite, Q[i], is_jump(rewrite,Q,i), state_r, line_no);

  constraints.insert(constraints.begin(), state_t.constraints.begin(), state_t.constraints.end());
  constraints.insert(constraints.begin(), state_r.constraints.begin(), state_r.constraints.end());

   cout << endl << "CONSTRAINTS" << endl << endl;;
   for(auto it : constraints) {
     cout << it << endl;
   }

  // Step 4: Invoke the solver
  bool is_sat = solver_.is_sat(constraints);
  if(solver_.has_error()) {
    throw VALIDATOR_ERROR("solver: " + solver_.get_error());
  }

  if(is_sat) {
    cout << "Feasible!" << endl;
    auto ceg = Validator::state_from_model(solver_, "_");
    bool ok = am.build_testcase_memory(ceg, solver_,
        *static_cast<CellMemory*>(state_t.memory),
        *static_cast<CellMemory*>(state_r.memory), 
        CfgPaths::rewrite_cfg_with_path(target, P),
        CfgPaths::rewrite_cfg_with_path(rewrite, Q));
    if(!ok)
      throw VALIDATOR_ERROR("Built counterexample for unexplored path; could not instantiate");
  } else {
    cout << "Infeasible!" << endl;
  }

  stop_mm();
  return !is_sat;


}

void BoundedValidator::learn_paths(const Cfg& cfg, bool is_rewrite) {

  for(size_t i = 0; i < sandbox_->num_inputs(); ++i) {

    auto tc = *sandbox_->get_input(i);

    CfgPath p = cfg_paths.learn_path(cfg, tc);

    // check the path to see if it's in the bound
    std::map<Cfg::id_type, size_t> counts;
    bool keep = true;
    for(auto node : p) {
      counts[node]++;
      if(counts[node] > bound_) {
        keep = false;
        break;
      }
    }

    if(keep) {
      path_to_testcase_[is_rewrite][p].push_back(i);
    }
  }
}


void BoundedValidator::build_circuit(const Cfg& cfg, Cfg::id_type bb, JumpType jump, SymState& state, size_t& line_no) {

  if(cfg.num_instrs(bb) == 0)
    return;

  size_t start_index = cfg.get_index(std::pair<Cfg::id_type, size_t>(bb, 0));
  size_t end_index = start_index + cfg.num_instrs(bb);

  for(size_t i = start_index; i < end_index; ++i) {
    line_no++;
    auto instr = cfg.get_code()[i];

    if(instr.is_jcc()) {
      // get the name of the condition
      string name = opcode_write_att(instr.get_opcode());
      string condition = name.substr(1);
      auto constraint = ConditionalHandler::condition_predicate(condition, state);

      // figure out if its this condition (jump case) or negation (fallthrough)
      //cout << "INSTR: " << instr << endl;
      switch(jump) {
        case JumpType::JUMP:
          state.constraints.push_back(constraint);
          //cout << "Constraint: (jump) " << constraint << endl;
          break;
        case JumpType::FALL_THROUGH:
          constraint = !constraint;
          state.constraints.push_back(constraint);
          //cout << "Constraint: (ft) " << constraint << endl;
          break;
        case JumpType::NONE:
          break;
        default:
          assert(false);
      }

    } else if (instr.is_label_defn() || instr.is_nop() || instr.is_any_jump()) {
      continue;
    } else if (instr.is_ret()) {
      return;
    } else {
      state.set_lineno(line_no-1);
      //cout << "LINE=" << line_no-1 << ": " << instr << endl;
      handler_.build_circuit(instr, state);

      if(handler_.has_error()) {
        stringstream ss;
        ss << "Error building circuit for: " << instr << ".";
        ss << "Handler says: " << handler_.error();
        throw VALIDATOR_ERROR(ss.str());
      }
    }
  }
}

BoundedValidator::JumpType BoundedValidator::is_jump(const Cfg& cfg, const CfgPath& P, size_t i) {

  if(i == P.size() - 1)
    return JumpType::NONE;

  auto block = P[i];

  auto first = cfg.succ_begin(block);
  if(first == cfg.succ_end(block)) {
    // there are no successors
    cout << "is_jump " << block << " NONE" << endl;
    return JumpType::NONE;
  }

  auto second = first++;
  if(second == cfg.succ_end(block)) {
    // there is only only successor
    cout << "is_jump " << block << " NONE" << endl;
    return JumpType::NONE;
  }

  // ok, there are at least 2 successors
  auto next_block = P[i+1];
  if(next_block == block + 1) {
    cout << "is_jump " << block << " FALL" << endl;
    return JumpType::FALL_THROUGH;
  }
  else {
    cout << "is_jump " << block << " JUMP" << endl;
    return JumpType::JUMP;
  }
}

bool BoundedValidator::verify_pair(const Cfg& target, const Cfg& rewrite, const CfgPath& P, const CfgPath& Q) {

  // Step 0: Check if there's any memory access
  bool memory = false;
  for(size_t i = 0; i < 2; ++i) {
    auto& path = i ? P : Q;
    auto& cfg = i ? target : rewrite;
    for(auto bb : path) {
      if(!cfg.num_instrs(bb))
        continue;
      size_t start = cfg.get_index(std::pair<Cfg::id_type, size_t>(bb, 0));
      size_t end = start + cfg.num_instrs(bb);
      for(size_t j = start; j < end; ++j) {
        auto instr = cfg.get_code()[j];
        if(instr.is_memory_dereference() && !instr.is_ret()) {
          memory = true;
          break;
        }
      }
      if(memory)
        break;
    }
    if(memory)
      break;
  }

  // Step 1: Learn aliasing relationships
  auto memories = std::pair<CellMemory*, CellMemory*>(NULL, NULL);
  if(memory) {
    CpuState testcase;
    if(!find_pair_testcase(target, rewrite, P, Q, testcase)) {
      cout << "DEBUG Could not find testcase for this path" << endl;
      cout << "RESULT IS UNSOUND" << endl;
      //return false;
      return true;
    }

    auto target_repath = CfgPaths::rewrite_cfg_with_path(target, P);
    auto rewrite_repath = CfgPaths::rewrite_cfg_with_path(rewrite, Q);
    memories = am.build_cell_model(target_repath, rewrite_repath, testcase);
    if(memories.first == NULL || memories.second == NULL) {
      has_error_ = true;
      error_ = "Overlapping memory accesses found.";
      return false;
    }
  }

  // Step 3: Build circuits
  init_mm();

  vector<SymBool> constraints;

  SymState init("");
  SymState state_t("1_INIT");
  SymState state_r("2_INIT");

  for(auto it : state_t.equality_constraints(init, target.def_ins()))
    constraints.push_back(it);
  for(auto it : state_r.equality_constraints(init, rewrite.def_ins()))
    constraints.push_back(it);

  if(memory) {
    state_t.memory = memories.first;
    state_r.memory = memories.second;
    auto mem_const = memories.first->equality_constraint(*memories.second);
    constraints.push_back(mem_const);
  }

  size_t line_no = 0;
  for(size_t i = 0; i < P.size(); ++i)
    build_circuit(target, P[i], is_jump(target,P,i), state_t, line_no);
  line_no = 0;
  for(size_t i = 0; i < Q.size(); ++i)
    build_circuit(rewrite, Q[i], is_jump(rewrite,Q,i), state_r, line_no);

  constraints.insert(constraints.begin(), state_t.constraints.begin(), state_t.constraints.end());
  constraints.insert(constraints.begin(), state_r.constraints.begin(), state_r.constraints.end());

  /*
     cout << endl << "CONSTRAINTS" << endl << endl;;
     for(auto it : constraints) {
     cout << it << endl;
     }
   */

  SymBool inequality = SymBool::_false();
  for(auto it : state_t.equality_constraints(state_r, target.live_outs())) {
    inequality = inequality | !it;
    //cout << "INEQUALITY: " << it << endl;
  }

  if(memory) {
    auto mem_const = memories.first->equality_constraint(*memories.second);
    //cout << "End memory constraint: " << mem_const << endl;
    inequality = inequality | !mem_const;
  }

  constraints.push_back(inequality);

  // Step 4: Invoke the solver
  bool is_sat = solver_.is_sat(constraints);
  if(solver_.has_error()) {
    throw VALIDATOR_ERROR("solver: " + solver_.get_error());
  }

  if(is_sat) {
    auto ceg = Validator::state_from_model(solver_, "_");
    if(memory) {
      bool ok = am.build_testcase_memory(ceg, solver_,
          *static_cast<CellMemory*>(state_t.memory),
          *static_cast<CellMemory*>(state_r.memory), target, rewrite);
      if(ok)
        counterexamples_.push_back(ceg);
    } else {
      counterexamples_.push_back(ceg);
    }
    cout << "  (Got counterexample)" << endl;
  } else {
    cout << "  (This case verified)" << endl;
  }

  stop_mm();
  return !is_sat;

  return false;

}

bool BoundedValidator::verify(const Cfg& target, const Cfg& rewrite) {


#ifdef DEBUG_VALIDATOR
  std::cout << "Enter the dragon!" << std::endl;
#endif
  // State
  counterexamples_.clear();
  has_error_ = false;

  try {

    // Step 0: Background checks
    sanity_checks(target, rewrite);

    // Step 1: get all the paths from the enumerator
    for(auto path : CfgPaths::enumerate_paths(target, bound_))
      paths_[false].push_back(path);
    for(auto path : CfgPaths::enumerate_paths(rewrite, bound_))
      paths_[true].push_back(path);

    // Step 2: get the paths taken by every testcase
    learn_paths(target, false);
    learn_paths(rewrite, true);

    // Step 3: check each pair of paths
    bool ok = true;
    size_t total = paths_[false].size() * paths_[true].size();
    size_t count = 0;
    for(auto target_path : paths_[false]) {
      for(auto rewrite_path : paths_[true]) {
        count++;
        //cout << "Verifying pair " << count << "/" << total << endl;
        ok &= verify_pair(target, rewrite, target_path, rewrite_path);
      }
    }

    return ok;

  } catch (validator_error e) {
    has_error_ = true;
    error_ = e.get_message();
    error_file_ = e.get_file();
    error_line_ = e.get_line();

    stop_mm();
    return false;
  }

  has_error_ = true;
  error_ = "Internal error!  Unexpected control flow.";
  return false;

}



