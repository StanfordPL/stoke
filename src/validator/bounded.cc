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

//#define BOUNDED_DEBUG(X) {}
#define BOUNDED_DEBUG(X) { }

using namespace std;
using namespace stoke;
using namespace x64asm;

bool vectors_have_common(std::vector<size_t> left, std::vector<size_t> right, size_t& value) {

  size_t j = 0;
  for(size_t i : left) {
    while(j < right.size() && right[j] < i) {
      j++;
    }
    if(j < right.size() && right[j] == i) {
      // we're done!
      value = i;
      return true;
    }
  }

  return false;
}

vector<size_t> enumerate_accesses(const Cfg& cfg, const CfgPath& P) {
  vector<size_t> result;
  auto rewrite = CfgPaths::rewrite_cfg_with_path(cfg, P);
  for(size_t i = 0, ie = rewrite.get_code().size(); i < ie; ++i) {
    auto instr = rewrite.get_code()[i];
    if(instr.is_memory_dereference()) {
      result.push_back(i);
    }
  }
  return result;
}

CellMemory* make_cell_memory(const vector<CellMemory::SymbolicAccess>& vector) {
  map<size_t, CellMemory::SymbolicAccess> map;
  for(auto sa : vector) {
    map[sa.line] = sa;
    cout << sa.line << " --> " << sa.cell << " (offset " << sa.cell_offset << " / size " << sa.size << " / cell size " << sa.cell_size << ")" << endl;
  }
  return new CellMemory(map);
}

vector<pair<CellMemory*, CellMemory*>> BoundedValidator::enumerate_aliasing_helper(const Cfg& target, const Cfg& rewrite,
                                    const CfgPath& P, const CfgPath& Q,
                                    const vector<size_t>& target_con_access,
                                    const vector<size_t>& rewrite_con_access,
                                    const vector<CellMemory::SymbolicAccess>& target_sym_access,
const vector<CellMemory::SymbolicAccess>& rewrite_sym_access) {

  cout << "===================== RECURSIVE STEP ==============================" << endl;

  vector<pair<CellMemory*, CellMemory*>> result;
  // Step 0: check for feasibility.  if not, stop here.

  // (i) build circuits for each path, including jump constraints
  // (ii) assert equal starting states
  // (iii) assert aliasing relations

  // Step 1: if we've processed all the concrete accesses, we're done.  Generate CellMemories and return.
  if(target_sym_access.size() == target_con_access.size() &&
      rewrite_sym_access.size() == rewrite_sym_access.size()) {
    cout << " REACHED BASE CASE :D" << endl;

    cout << "  target map: " << endl;
    auto t = make_cell_memory(target_sym_access);
    cout << "  rewrite map: " << endl;
    auto r = make_cell_memory(rewrite_sym_access);

    result.push_back(pair<CellMemory*, CellMemory*>(t, r));
    return result;
  }

  // Step 2: choose a memory access to add
  bool work_on_rewrite = target_sym_access.size() == target_con_access.size();
  auto& cfg = work_on_rewrite ? rewrite : target;
  auto& conc = work_on_rewrite ? rewrite_con_access : target_con_access;
  auto symb = work_on_rewrite ? rewrite_sym_access : target_sym_access;

  vector<CellMemory::SymbolicAccess> all_accesses;
  all_accesses.insert(all_accesses.begin(), target_sym_access.begin(), target_sym_access.end());
  all_accesses.insert(all_accesses.begin(), rewrite_sym_access.begin(), rewrite_sym_access.end());

  // Step 3: consider all the ways it can overlap with all the existing cells
  // -> for each one, produce a new target_sym_access / rewrite_sym_access
  // -> then do the recursive call
  // -> concatenate all the results

  return vector<pair<CellMemory*, CellMemory*>>();
}

// ASSUMPTION: the target and rewrite both use memory
vector<pair<CellMemory*, CellMemory*>> BoundedValidator::enumerate_aliasing(const Cfg& target, const Cfg& rewrite, const CfgPath& P, const CfgPath& Q) {


  cout << "********************* NEW TASK ******************************" << endl;
  cout << "TARGET:" << endl;
  cout << target.get_code() << endl;
  cout << "REWRITE:" << endl;
  cout << rewrite.get_code() << endl;


  auto target_concrete_accesses = enumerate_accesses(target, P);
  auto rewrite_concrete_accesses = enumerate_accesses(rewrite, Q);

  // TODO: think about this
  if(target_concrete_accesses.size() == 0 || rewrite_concrete_accesses.size() == 0)
    return vector<pair<CellMemory*, CellMemory*>>();
  assert(target_concrete_accesses.size());
  assert(rewrite_concrete_accesses.size());

  // Create first symbolic access
  CellMemory::SymbolicAccess first;
  first.line = target_concrete_accesses[0];
  first.size = target.get_code()[first.line].mem_dereference_size();
  first.cell = 0;
  first.cell_offset = 0;
  first.cell_size = first.size;

  vector<CellMemory::SymbolicAccess> target_symbolic_accesses;
  vector<CellMemory::SymbolicAccess> rewrite_symbolic_accesses;

  target_symbolic_accesses.push_back(first);

  return enumerate_aliasing_helper(target, rewrite, P, Q,
                                   target_concrete_accesses, rewrite_concrete_accesses,
                                   target_symbolic_accesses, rewrite_symbolic_accesses);

}

bool BoundedValidator::find_pair_testcase(const Cfg& target, const Cfg& rewrite,
    const CfgPath& P, const CfgPath& Q, CpuState& tc) {

  if(paths_infeasible_[P][Q])
    return false;

  auto target_tcs = path_to_testcase_[0][P];
  auto rewrite_tcs = path_to_testcase_[1][Q];

  BOUNDED_DEBUG(cout << "===========================================" << endl;)
  BOUNDED_DEBUG(cout << "We're looking for TCs for these paths" << endl;)

  size_t index;
  bool found_one = vectors_have_common(target_tcs, rewrite_tcs, index);
  if(found_one) {
    tc = *(sandbox_->get_input(index));
    BOUNDED_DEBUG(cout << "  -> found a testcase, no problem." << endl;)
    return true;
  } else {
    // Roll your sleaves up: we're gonna try to brute force a new testcase.
    BOUNDED_DEBUG(cout << "  -> no testcase found, brute forcing one." << endl;)
    return brute_force_testcase(target, rewrite, P, Q, tc);
  }

}

// Find a testcase that takes paths (P,Q) or prove that one doesn't exist.
// We're assuming that a "gentle" search of known testcases failed here.
bool BoundedValidator::brute_force_testcase(const Cfg& target, const Cfg& rewrite,
    const CfgPath& P, const CfgPath& Q, CpuState& tc) {

  BOUNDED_DEBUG(cout << "** ATTEMPTING TC BRUTEFORCE **" << endl;)
  if(paths_infeasible_[P][Q]) {
    BOUNDED_DEBUG(cout << "  -> Path already known to be infeasible.";)
    return false;
  }

  // STEP 1: see if there's any bootstrap testcase that nearly makes it up to P/Q

  // find the prefix we need, i.e., the path P' short of P where the gap (nodes in P but not P') doesn't contain any memory access

  CfgPath P_prefix;
  CfgPath Q_prefix;
  for(size_t k = 0; k < 2; ++k) {
    auto& cfg = k ? target : rewrite;
    auto& path = k ? P : Q;
    auto& prefix = k ? P_prefix : Q_prefix;

    CfgPath buffer;
    for(size_t i = 0; path.size() && i < path.size() - 1; ++i) {
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
  BOUNDED_DEBUG(cout << "  -> Prefix for P: " << print(P_prefix) << endl;)
  BOUNDED_DEBUG(cout << "  -> Prefix for Q: " << print(Q_prefix) << endl;)

  // search testcases for these prefixes
  vector<size_t> target_tcs;
  vector<size_t> rewrite_tcs;

  for(size_t k = 0; k < 2; ++k) {
    auto& tc_list = k ? rewrite_tcs : target_tcs;
    auto& prefix = k ? Q_prefix : P_prefix;

    for(auto& path : paths_[k]) {

      if(!CfgPaths::is_prefix(prefix, path))
        continue;

      auto& testcases = path_to_testcase_[k][path];
      tc_list.insert(tc_list.begin(), testcases.begin(), testcases.end());
    }
  }

  CpuState prefix_tc;
  size_t tc_index;
  sort(target_tcs.begin(), target_tcs.end());
  sort(rewrite_tcs.begin(), rewrite_tcs.end());
  bool found_tc = vectors_have_common(target_tcs, rewrite_tcs, tc_index);
  if(found_tc) {
    prefix_tc = *sandbox_->get_input(tc_index);
    BOUNDED_DEBUG(cout << "  -> Found existing TC :)" << endl;)
    /*
    CfgPath a;
    CfgPath b;
    cfg_paths.learn_path(a, target, prefix_tc);
    cfg_paths.learn_path(b, rewrite, prefix_tc);
    cout << "Sanity check target: " << print(a) << endl;
    cout << "Sanity check rewrite: " << print(b) << endl;
    */
  } else {
    // sometimes there's a bug and we loop infinitely with two null prefixes
    if(P_prefix.size() == 0 && Q_prefix.size() == 0) {
      //we either have *no* testcases, or something funny is going on
      throw VALIDATOR_ERROR("Could not find any testcases that match null control flow prefix.  This is a bug.");
    }

    found_tc = brute_force_testcase(target, rewrite, P_prefix, Q_prefix, prefix_tc);
  }

  if(!found_tc) {
    // yay, it's infeasible!
    BOUNDED_DEBUG(cout << "  -> PATH INFEASIBLE :) " << endl;)
    paths_infeasible_[P][Q] = true;
    return false;
  }

  // STEP 2: build constraints and solve for a new TC, or prove infeasibility

  BOUNDED_DEBUG(cout << "***** Checking for feasibility *****" << endl;)
  BOUNDED_DEBUG(cout << "P=" << print(P) << endl;)
  BOUNDED_DEBUG(cout << "Q=" << print(Q) << endl;)

  init_mm();

  vector<SymBool> constraints;

  SymState init("");
  SymState state_t("1_INIT");
  SymState state_r("2_INIT");

  for(auto it : state_t.equality_constraints(init, target.def_ins()))
    constraints.push_back(it);
  for(auto it : state_r.equality_constraints(init, rewrite.def_ins()))
    constraints.push_back(it);


  auto target_repath = CfgPaths::rewrite_cfg_with_path(target, P);
  auto rewrite_repath = CfgPaths::rewrite_cfg_with_path(rewrite, Q);
  auto memories = am.build_cell_model(target_repath, rewrite_repath, prefix_tc);
  if(memories.first == NULL || memories.second == NULL) {
    throw VALIDATOR_ERROR("Overlapping memory accesses found.");
    return false;
  }

  state_t.memory = memories.first;
  state_r.memory = memories.second;
  auto mem_const = memories.first->equality_constraint(*memories.second);
  constraints.push_back(mem_const);

  auto target_line_cell_map = memories.first->get_line_cell_map();
  auto rewrite_line_cell_map = memories.second->get_line_cell_map();

  map<size_t, pair<SymBitVector, size_t>> cell_addr_map;

  size_t line_no = 0;
  for(size_t i = 0; P.size() && i < P.size() - 1; ++i)
    build_circuit(target, P[i], is_jump(target,P,i), state_t, line_no, target_line_cell_map, cell_addr_map);
  line_no = 0;
  for(size_t i = 0; Q.size() && i < Q.size() - 1; ++i)
    build_circuit(rewrite, Q[i], is_jump(rewrite,Q,i), state_r, line_no, rewrite_line_cell_map, cell_addr_map);

  constraints.insert(constraints.begin(), state_t.constraints.begin(), state_t.constraints.end());
  constraints.insert(constraints.begin(), state_r.constraints.begin(), state_r.constraints.end());

  /*
  cout << endl << "CONSTRAINTS" << endl << endl;;
  for(auto it : constraints) {
    cout << it << endl;
  }
  */

  // Step 4: Invoke the solver
  bool is_sat = solver_.is_sat(constraints);
  if(solver_.has_error()) {
    throw VALIDATOR_ERROR("solver: " + solver_.get_error());
  }

  if(is_sat) {
    BOUNDED_DEBUG(cout << "  -> Feasible!" << endl;)
    auto ceg = Validator::state_from_model(solver_, "_");
    bool ok = am.build_testcase_memory(ceg, solver_,
                                       *static_cast<CellMemory*>(state_t.memory),
                                       *static_cast<CellMemory*>(state_r.memory),
                                       target, rewrite);
    BOUNDED_DEBUG(if(!ok)
                  cout << "WARNING: build counterexample for unexplored path; segfaults." << endl;)
      BOUNDED_DEBUG(cout << "Here's the counterexample:" << endl << ceg << endl;)
      tc = ceg;
  } else {
    BOUNDED_DEBUG(cout << "Infeasible!" << endl;)
  }

  stop_mm();
  return is_sat;


}

bool BoundedValidator::learn_paths(const Cfg& cfg, bool is_rewrite) {

  bool found_one = false;

  for(size_t i = 0; i < sandbox_->num_inputs(); ++i) {

    auto tc = *sandbox_->get_input(i);

    CfgPath p;
    bool keep = cfg_paths.learn_path(p, cfg, tc);

    if(!keep)
      continue;

    // check the path to see if it's in the bound
    std::map<Cfg::id_type, size_t> counts;
    for(auto node : p) {
      counts[node]++;
      if(counts[node] > bound_) {
        keep = false;
        break;
      }
    }

    if(keep) {
      found_one = true;
      BOUNDED_DEBUG(cout << "  " << print(p) << endl;)
      path_to_testcase_[is_rewrite][p].push_back(i);
    }
  }

  return found_one;
}


void BoundedValidator::build_circuit(const Cfg& cfg, Cfg::id_type bb, JumpType jump,
                                     SymState& state, size_t& line_no,
                                     const map<size_t, CellMemory::SymbolicAccess>& line_cell_map,
                                     map<size_t, pair<SymBitVector, size_t>>& cell_addr_map) {

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
        //cout << "Assuming jump for " << instr << endl;
        state.constraints.push_back(constraint);
        break;
      case JumpType::FALL_THROUGH:
        //cout << "Assuming fall-through for " << instr << endl;
        constraint = !constraint;
        state.constraints.push_back(constraint);
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
      if(instr.is_memory_dereference()) {
        if(line_cell_map.count(line_no-1)) {
          // we need to add a constraint for the aliasing relationship that
          // we assumed.
          auto access = line_cell_map.at(line_no-1);
          size_t cell = access.cell;
          size_t width = access.size;
          auto address = state.get_addr(instr);
          auto cell_start_addr = address - SymBitVector::constant(64, access.cell_offset);

          // assert with other writes to the same cell use same cell start address
          if(cell_addr_map.count(cell)) {
            state.constraints.push_back(cell_addr_map[cell].first == cell_start_addr);
          } else {
            cell_addr_map[cell] = pair<SymBitVector,size_t>(cell_start_addr, access.cell_size);

            // Let's get that cell start address into a variable to use later
            stringstream ss;
            ss << "CELL_" << cell << "_ADDR";
            auto cell_addr_var = SymBitVector::var(64, ss.str());
            state.constraints.push_back(cell_addr_var == cell_start_addr);

            cell_addr_var == cell_start_addr;

            // By the way, don't go past address 0xffffffffffffffff.  Idiot.
            // In fact, for my sanity, let's keep it under 0xffffffffffffffc0,
            // except in debug mode where we want to find all the issues.
#ifdef NDEBUG
            state.constraints.push_back(
              cell_start_addr <= SymBitVector::constant(64, -access.cell_size-0x3f));
            state.constraints.push_back(
              cell_start_addr >= SymBitVector::constant(64, 0x40));
#else
            state.constraints.push_back(
              cell_start_addr <= SymBitVector::constant(64, -access.cell_size));
#endif

            // assert difference with previous writes to other cells
            for(auto p : cell_addr_map) {
              if(p.first != cell) {
                size_t other_cell = p.first;
                auto other_address = p.second.first;
                size_t other_width = p.second.second;

                auto curr_lt_other = cell_start_addr + SymBitVector::constant(64, access.cell_size) <= other_address;
                auto other_lt_curr = other_address + SymBitVector::constant(64, other_width) <= cell_start_addr;
                state.constraints.push_back(curr_lt_other | other_lt_curr);
              }
            }
          }
        }
      }

      // Build the handler for the instruction

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

  auto itr = cfg.succ_begin(block);
  if(itr == cfg.succ_end(block)) {
    // there are no successors
    //cout << "is_jump " << block << " NONE" << endl;
    return JumpType::NONE;
  }

  itr++;
  if(itr == cfg.succ_end(block)) {
    // there is only only successor
    //cout << "is_jump " << block << " NONE" << endl;
    return JumpType::NONE;
  }

  // ok, there are at least 2 successors
  auto next_block = P[i+1];
  if(next_block == block + 1) {
    //cout << "is_jump " << block << " FALL" << endl;
    return JumpType::FALL_THROUGH;
  }
  else {
    //cout << "is_jump " << block << " JUMP" << endl;
    return JumpType::JUMP;
  }
}

bool BoundedValidator::verify_pair(const Cfg& target, const Cfg& rewrite, const CfgPath& P, const CfgPath& Q) {


  BOUNDED_DEBUG(cout << "===========================================" << endl;)
  BOUNDED_DEBUG(cout << "Working on pair / P: " << print(P) << " Q: " << print(Q) << endl;)
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

  if(memory)
    enumerate_aliasing(target, rewrite, P, Q);

  // Step 1: Learn aliasing relationships
  auto memories = std::pair<CellMemory*, CellMemory*>(NULL, NULL);
  if(memory) {
    CpuState testcase;
    if(!find_pair_testcase(target, rewrite, P, Q, testcase)) {
      BOUNDED_DEBUG(cout << "Could not find testcase for this path" << endl;)
      return true;
    }

    auto target_repath = CfgPaths::rewrite_cfg_with_path(target, P);
    auto rewrite_repath = CfgPaths::rewrite_cfg_with_path(rewrite, Q);
    memories = am.build_cell_model(target_repath, rewrite_repath, testcase);
    assert(memories.first);
    assert(memories.second);
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

  map<size_t, pair<SymBitVector, size_t>> cell_addr_map;
  map<size_t, CellMemory::SymbolicAccess> target_line_cell_map;
  map<size_t, CellMemory::SymbolicAccess> rewrite_line_cell_map;;

  if(memory) {
    state_t.memory = memories.first;
    state_r.memory = memories.second;
    auto mem_const = memories.first->equality_constraint(*memories.second);
    BOUNDED_DEBUG(cout << "Start memory constraint: " << mem_const << endl;)
    constraints.push_back(mem_const);

    target_line_cell_map = memories.first->get_line_cell_map();
    rewrite_line_cell_map = memories.second->get_line_cell_map();
  }

  size_t line_no = 0;
  for(size_t i = 0; i < P.size(); ++i)
    build_circuit(target, P[i], is_jump(target,P,i), state_t, line_no, target_line_cell_map, cell_addr_map);
  line_no = 0;
  for(size_t i = 0; i < Q.size(); ++i)
    build_circuit(rewrite, Q[i], is_jump(rewrite,Q,i), state_r, line_no, rewrite_line_cell_map, cell_addr_map);

  constraints.insert(constraints.begin(), state_t.constraints.begin(), state_t.constraints.end());
  constraints.insert(constraints.begin(), state_r.constraints.begin(), state_r.constraints.end());

  BOUNDED_DEBUG(
    cout << endl << "CONSTRAINTS" << endl << endl;;
  for(auto it : constraints) {
  cout << it << endl;
})

  SymBool inequality = SymBool::_false();
  for(auto it : state_t.equality_constraints(state_r, target.live_outs())) {
    inequality = inequality | !it;
    BOUNDED_DEBUG(cout << "INEQUALITY: " << it << endl;)
  }

  if(memory) {
    auto mem_const = memories.first->equality_constraint(*memories.second);
    mem_const = !mem_const;
    inequality = inequality | mem_const;
    BOUNDED_DEBUG(cout << "End memory constraint: " << mem_const << endl;)
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
                                         *static_cast<CellMemory*>(state_r.memory),
                                         target, rewrite);
      if(ok) {
        counterexamples_.push_back(ceg);
      } else {
        throw VALIDATOR_ERROR("Couldn't build counterexample!  This is a BOUNDED VALIDATOR BUG.");
      }
    } else {
      counterexamples_.push_back(ceg);
    }
    BOUNDED_DEBUG(cout << "  (Got counterexample)" << endl;)
    BOUNDED_DEBUG(cout << ceg << endl;)
  } else {
    BOUNDED_DEBUG(cout << "  (This case verified)" << endl;)
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

    if(sandbox_->num_inputs() == 0) {
      throw VALIDATOR_ERROR("Sandbox has no testcases.  Bounded verification requires at least one to learn aliasing constraints.  It should run within the bound and not segfault.");
    }

    // Step 1: get all the paths from the enumerator
    for(auto path : CfgPaths::enumerate_paths(target, bound_)) {
      //cout << "adding TP: " << print(path) << endl;
      paths_[false].push_back(path);
    }
    //cout << "REWRITE: " << endl << rewrite.get_code() << endl;
    for(auto path : CfgPaths::enumerate_paths(rewrite, bound_)) {
      //cout << "adding RP: " << print(path) << endl;
      paths_[true].push_back(path);
    }

    // Step 2: get the paths taken by every testcase
    bool found_paths = true;
    BOUNDED_DEBUG(cout << "=== LEARNING TARGET TESTCASE PATHS" << endl;)
    found_paths &= learn_paths(target, false);
    BOUNDED_DEBUG(cout << "=== LEARNING REWRITE TESTCASE PATHS" << endl;)
    found_paths &= learn_paths(rewrite, true);
    BOUNDED_DEBUG(cout << "=== DONE LEARNING PATHS" << endl;)

    bool has_memory = false;
    for(auto it : target.get_code())
      if(it.is_memory_dereference() && !it.is_ret())
        has_memory = true;
    for(auto it : rewrite.get_code())
      if(it.is_memory_dereference() && !it.is_ret())
        has_memory = true;

    if(!found_paths && has_memory) {
      throw VALIDATOR_ERROR("No testcases terminated without segfault within bounds.");
    }

    // Step 3: check each pair of paths
    bool ok = true;
    size_t total = paths_[false].size() * paths_[true].size();
    size_t count = 0;
    for(auto target_path : paths_[false]) {
      for(auto rewrite_path : paths_[true]) {
        count++;
        ok &= verify_pair(target, rewrite, target_path, rewrite_path);
      }
    }

    return ok;

  } catch (validator_error e) {
    has_error_ = true;
    error_ = e.get_message();
    error_file_ = e.get_file();
    error_line_ = e.get_line();

    // TODO: this might be buggy if init_mm() is not called first.
    stop_mm();
    return false;
  }

  has_error_ = true;
  error_ = "Internal error!  Unexpected control flow.";
  return false;

}



