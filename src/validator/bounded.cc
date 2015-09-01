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
#include "src/cfg/path_enumerator.h"
#include "src/validator/bounded.h"

using namespace std;
using namespace stoke;
using namespace x64asm;


CpuState BoundedValidator::state_from_model(SMTSolver& smt, const string& name_suffix,
    const CellMemory* memory, const CellMemory* memory2) {

  CpuState cs;

  // Get the values of registers
  for(size_t i = 0; i < r64s.size(); ++i) {
    stringstream name;
    name << r64s[i] << name_suffix;
    cs.gp[r64s[i]] = smt.get_model_bv(name.str(), 1);
  }

  for(size_t i = 0; i < ymms.size(); ++i) {
    stringstream name;
    name << ymms[i] << name_suffix;
    cs.sse[ymms[i]] = smt.get_model_bv(name.str(), 4);
  }

  for(size_t i = 0; i < eflags.size(); ++i) {
    if(!cs.rf.is_status(eflags[i].index()))
      continue;

    stringstream name;
    name << eflags[i] << name_suffix;
    cs.rf.set(eflags[i].index(), smt.get_model_bool(name.str()));
  }

  // Figure out error code
  if(smt.get_model_bool("sigbus" + name_suffix)) {
    cs.code = ErrorCode::SIGBUS_;
  } else if (smt.get_model_bool("sigfpe" + name_suffix)) {
    cs.code = ErrorCode::SIGFPE_;
  } else if (smt.get_model_bool("sigsegv" + name_suffix)) {
    cs.code = ErrorCode::SIGSEGV_;
  } else {
    cs.code = ErrorCode::NORMAL;
  }

  return cs;
}

Cfg BoundedValidator::path_cfg(const Cfg& cfg, const Path& p) {

  Code code;
  for(auto node : p) {
    if(cfg.num_instrs(node) == 0)
      continue;

    size_t start_index = cfg.get_index(std::pair<Cfg::id_type, size_t>(node, 0));
    size_t end_index = start_index + cfg.num_instrs(node);
    for(size_t i = start_index; i < end_index; ++i)
      code.push_back(cfg.get_code()[i]);
  }

  Cfg new_cfg(code, cfg.def_ins(), cfg.live_outs());
  return new_cfg;
}

bool BoundedValidator::find_pair_testcase(const Cfg& target, const Cfg& rewrite,
    const Path& P, const Path& Q, CpuState& tc) {

  auto target_tcs = path_to_testcase_[0][P];
  auto rewrite_tcs = path_to_testcase_[1][Q];

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
    if(rewrite_tcs[j] == i) {
      // we're done!
      tc = *(sandbox_->get_input(i));
      return true;
    }
  }

  // Couldn't find anything
  return false;

}

void BoundedValidator::learn_paths(const Cfg& cfg, bool is_rewrite) {
  auto code = cfg.get_code();
  auto label = code[0].get_operand<x64asm::Label>(0);
  sandbox_->insert_function(cfg);
  sandbox_->set_entrypoint(label);

  /** Insert code either before or after the first instruction in a block to
   * record the path took */
  vector<pair<BoundedValidator*, Cfg::id_type>*> to_delete;
  for(size_t i = 0; i < code.size(); ++i) {
    // figure out if we're at the beginning of a block
    auto loc = cfg.get_loc(i);
    auto steps = loc.second;
    if(steps > 0)
      continue;

    // build a pair with a pointer to our object and the basic block of this
    // instruction
    auto pair = new std::pair<BoundedValidator*, Cfg::id_type>(this, loc.first);
    to_delete.push_back(pair);

    // insert callback after labels (so jumps don't skip them), but before
    // returns and everything else (so if segfault or exit we still get
    // called).
    auto instr = code[i];
    if(instr.is_label_defn()) {
      sandbox_->insert_after(label, i, sandbox_path_callback, pair);
    } else {
      sandbox_->insert_before(label, i, sandbox_path_callback, pair);
    }
  }

  for(size_t i = 0; i < sandbox_->num_inputs(); ++i) {
    Path p;
    current_path_ = &p;

    sandbox_->run(i);

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
      cout << "FOUND PATH: rewrite=" << is_rewrite << " p=" << print(p) << endl;
    }
  }

  for(auto it : to_delete)
    delete it;
}

void BoundedValidator::sandbox_path_callback(const StateCallbackData& data, void* arg) {

  auto pair = (std::pair<BoundedValidator*, Cfg::id_type>*)arg;

  auto bb = pair->second;
  pair->first->current_path_->push_back(bb);

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

BoundedValidator::JumpType BoundedValidator::is_jump(const Cfg& cfg, const Path& P, size_t i) {

  if(i == P.size() - 1)
    return JumpType::NONE;

  auto block = P[i];

  auto first = cfg.succ_begin(block);
  if(first == cfg.succ_end(block)) {
    // there are no successors
    return JumpType::NONE;
  }

  auto second = first++;
  if(second == cfg.succ_end(block)) {
    // there is only only successor
    return JumpType::NONE;
  }

  // ok, there are at least 2 successors
  auto next_block = P[i+1];
  if(next_block == block + 1)
    return JumpType::FALL_THROUGH;
  else
    return JumpType::JUMP;
}

bool BoundedValidator::verify_pair(const Cfg& target, const Cfg& rewrite, const Path& P, const Path& Q) {

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
      return false;
    }

    memories = am.build_cell_model(path_cfg(target, P), path_cfg(rewrite, Q), testcase);
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

  try {

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
      auto ceg = state_from_model(solver_, "_");
      counterexamples_.push_back(ceg);
    }

    stop_mm();
    return !is_sat;

  } catch (validator_error e) {
    has_error_ = true;
    error_ = e.get_message();
    error_file_ = e.get_file();
    error_line_ = e.get_line();

    stop_mm();
    return false;
  }

  return false;

}

bool BoundedValidator::verify(const Cfg& target, const Cfg& rewrite) {


#ifdef DEBUG_VALIDATOR
  std::cout << "Enter the dragon!" << std::endl;
#endif
  // State
  counterexamples_.clear();
  has_error_ = false;

  // Step 0: Background checks
  // - all the instructions are supported in target/rewrite
  for(const auto& cfg : {
  target, rewrite
}) {
    for(auto instr : cfg.get_code()) {
      if(instr.is_label_defn() || instr.is_any_jump() || instr.is_ret()) {
        continue;
      }
      else if(!is_supported(instr)) {
        stringstream ss;
        ss << "Instruction " << instr << " is unsupported.";
        SET_ERROR(ss.str());
        return false;
      }
    }
  }

  // - def-ins/live-outs match
  if(target.def_ins() != rewrite.def_ins()) {
    SET_ERROR("Target def-ins do not match rewrite def-ins");
    return false;
  }
  if(target.live_outs() != target.live_outs()) {
    SET_ERROR("Target live-outs do not match rewrite live-outs");
    return false;
  }

  // - def-in/live-out are supported
  for(const auto& cfg : {
  target, rewrite
}) {
    if(!handler_.regset_is_supported(cfg.def_ins())) {
      SET_ERROR("Def-ins are not supported");
      return false;
    }
    if(!handler_.regset_is_supported(cfg.live_outs())) {
      SET_ERROR("Live outs are not supported");
      return false;
    }
  }

  // Step 1: get all the paths from the enumerator
  for(auto path : PathEnumerator::find_paths(target, bound_))
    paths_[false].push_back(path);
  for(auto path : PathEnumerator::find_paths(rewrite, bound_))
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
}



