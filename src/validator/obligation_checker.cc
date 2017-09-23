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

#include <chrono>

#include "src/cfg/cfg.h"
#include "src/cfg/paths.h"
#include "src/symstate/memory/arm.h"
#include "src/symstate/memory/trivial.h"
#include "src/validator/abstractions/block.h"
#include "src/validator/invariants/conjunction.h"
#include "src/validator/invariants/memory_equality.h"
#include "src/validator/invariants/state_equality.h"
#include "src/validator/invariants/true.h"
#include "src/validator/obligation_checker.h"
#include "src/solver/z3solver.h"
#include "src/symstate/memory_manager.h"


#define OBLIG_DEBUG(X) { }
#define CONSTRAINT_DEBUG(X) { }
#define BUILD_TC_DEBUG(X) { }
#define ALIAS_DEBUG(X) { }
#define ALIAS_CASE_DEBUG(X) { }
#define ALIAS_STRING_DEBUG(X) { }
#define DEBUG_ARMS_RACE(X) { }

#ifdef STOKE_DEBUG_CEG
#define CEG_DEBUG(X) { X }
#else
#define CEG_DEBUG(X) { }
#endif

#define MAX(X,Y) ( (X) > (Y) ? (X) : (Y) )
#define MIN(X,Y) ( (X) < (Y) ? (X) : (Y) )

using namespace cpputil;
using namespace std;
using namespace stoke;
using namespace x64asm;
using namespace std::chrono;

#ifdef DEBUG_CHECKER_PERFORMANCE
uint64_t ObligationChecker::number_queries_ = 0;
uint64_t ObligationChecker::number_cases_ = 0;
uint64_t ObligationChecker::constraint_gen_time_ = 0;
uint64_t ObligationChecker::solver_time_ = 0;
uint64_t ObligationChecker::aliasing_time_ = 0;
uint64_t ObligationChecker::ceg_time_ = 0;
#endif

template <typename K, typename V>
map<K,V> append_maps(vector<map<K,V>> maps) {

  map<K,V> output;

  for (auto m : maps) {
    for (auto p : m) {
      output[p.first] = p.second;
    }
  }

  return output;
}

bool ObligationChecker::build_testcase_flat_memory(CpuState& ceg, SymArray var, const map<const SymBitVectorAbstract*, uint64_t>& others) const {
  auto symvar = dynamic_cast<const SymArrayVar* const>(var.ptr);
  assert(symvar != NULL);
  auto str = symvar->name_;

  auto map_and_default = solver_.get_model_array(str, 64, 8);
  auto orig_map = map_and_default.first;
  auto default_value = map_and_default.second;
  unordered_map<uint64_t, BitVector> mem_map;
  for (auto pair : orig_map) {
    mem_map[pair.first] = pair.second;
  }

  BitVector default_value_bv(8);
  default_value_bv.get_fixed_byte(0) = default_value;

  for (auto p : others) {
    auto abs_var = p.first;
    uint64_t size = p.second/8;

    auto var = dynamic_cast<const SymBitVectorVar*>(abs_var);
    assert(var != NULL);
    auto var_name = var->get_name();
    auto var_size = var->get_size();
    assert(var_size == 64);
    auto address_bv = solver_.get_model_bv(var_name, var_size);
    auto addr = address_bv.get_fixed_quad(0);

    for (uint64_t i = addr; i < addr + size; ++i) {
      if (!mem_map.count(i)) {
        mem_map[i] = default_value_bv;
      }
    }
  }

  BUILD_TC_DEBUG(
    cout << "[build tc] map:" << endl;
  for (auto it : mem_map) {
  cout << "  " << it.first << " -> " << (uint64_t)it.second.get_fixed_byte(0) << endl;
  }
  );

  return ceg.memory_from_map(mem_map);

}


CpuState ObligationChecker::run_sandbox_on_path(const Cfg& cfg, const CfgPath& P, const CpuState& state) {

  Sandbox sb(*sandbox_);
  sb.reset(); // if we ever want to call helper functions, this will break.

  sb.insert_input(state);
  sb.insert_function(cfg);
  sb.set_entrypoint(cfg.get_function().get_leading_label());
  sb.run();

  CpuState output = *(sb.get_output(0));
  return output;

}

bool ObligationChecker::check_counterexample(const Cfg& target, const Cfg& rewrite, const CfgPath& P, const CfgPath& Q, const Invariant& assume, const Invariant& prove, const CpuState& ceg, const CpuState& ceg2) {

  // We can't do anything without a sandbox
  if (!sandbox_) {
    CEG_DEBUG(cout << "  (No sandbox available; not checking counterexample.)" << endl;);
    return true;
  }

  // First, the counterexample has to pass the invariant.
  if (!assume.check(ceg, ceg2)) {
    CEG_DEBUG(cout << "  (Counterexample does not meet assumed invariant.)" << endl;);
    return false;
  }

  // Next, we run only the relevant blocks of the target/rewrite.
  CpuState target_output = run_sandbox_on_path(target, P, ceg);
  CpuState rewrite_output = run_sandbox_on_path(rewrite, Q, ceg);

  // Lastly, we check that the final states do not satisfy the invariant
  CEG_DEBUG(cout << "  TARGET (actual) END state:" << endl << target_output << endl;)
  CEG_DEBUG(cout << "  REWRITE (actual) END state:" << endl << rewrite_output << endl;)
  if (prove.check(target_output, rewrite_output)) {
    CEG_DEBUG(cout << "  (Counterexample satisifes desired invariant; it shouldn't)" << endl;);
    return false;
  }

  return true;
}

CfgPath ObligationChecker::check_ceg_path(const Cfg& cfg,
    Cfg::id_type block,
    const CpuState& state) {

  auto code = cfg.get_code();

  if (cfg.instr_begin(block)->is_label_defn()) {
    auto instr = *cfg.instr_begin(block);
    auto label = instr.get_operand<x64asm::Label>(0);
    auto jump_instr = x64asm::Instruction(x64asm::JMP_LABEL_1, { label });
    code.insert(code.begin(), jump_instr);

  } else {
    // add the block to the beginning of the code again, along with a
    // fallthrough jump for protection
    size_t num_added = cfg.num_instrs(block);
    code.insert(code.begin(), cfg.instr_begin(block), cfg.instr_end(block));

    // figure out the block's fallthrough path
    if (cfg.has_fallthrough_target(block)) {

      // add the fallthrough jump target
      auto ft_block = cfg.fallthrough_target(block);
      x64asm::Label fallthrough_target("._______TEMP___CHECK_CEG_PATH_FT_TARGET");
      auto label_instr = x64asm::Instruction(x64asm::LABEL_DEFN, { fallthrough_target });
      auto jump_instr = x64asm::Instruction(x64asm::JMP_LABEL_1, { fallthrough_target });
      code.insert(code.begin() + num_added, jump_instr);
      code.insert(code.begin() + cfg.get_index({ft_block,0}) + num_added, label_instr);
    }
  }

  // make cfg and recompute
  Cfg cfg2(code, cfg.def_ins(), cfg.live_outs());
  cout << "Debugging new code: " << endl << cfg2.get_code() << endl;

  // run sandbox
  assert(sandbox_ != NULL);
  Sandbox sb(*sandbox_);
  BlockAbstraction ba(cfg2, sb);
  auto trace = ba.learn_trace(state, true);

  cout << "Debugging trace" << endl;
  for (auto it : trace) {
    cout << it.first << endl;
  }

  if (trace.size() < 2) {
    // got to return a failure here
    CfgPath x;
    return x;
  }


  assert(trace.size() > 2);
  trace.erase(trace.begin());
  trace.erase(trace.begin());

  size_t diff = trace[0].first - block;
  for (auto& it : trace)
    it.first -= diff;

  CfgPath transformed;
  for (size_t i = 0; i < trace.size(); ++i)
    transformed.push_back(trace[i].first);

  return transformed;


}

bool ObligationChecker::exhaustive_check_counterexample(
  const Cfg& target, const Cfg& rewrite,
  Cfg::id_type target_start, Cfg::id_type rewrite_start,
  std::vector<std::pair<CfgPath, CfgPath>>& path_pairs,
  const Invariant& assume,
  const CpuState& ceg, const CpuState& ceg2) {

  auto tp = check_ceg_path(target, target_start, ceg);
  auto rp = check_ceg_path(rewrite, rewrite_start, ceg2);

  cout << "COUNTEREXAMPLE TAKES PATHS:" << dec << endl;
  cout << tp << endl;
  cout << rp << endl;

  // TODO: check assume
  // TODO: check if path was already found

  return true;

}




SymBool ObligationChecker::get_path_constraint(const Cfg& cfg,
    const SymState& state_orig,
    Cfg::id_type cfg_start,
    const CfgPath& P) {

  // Initialize state copy
  SymState state = state_orig;
  state.constraints.clear();

  // Generate line map
  LineMap line_map;
  generate_linemap(cfg, P, line_map);

  // Build the circuits
  size_t line_no = 0;
  for (size_t i = 0; i < P.size(); ++i)
    build_circuit(cfg, P[i], is_jump(cfg, cfg_start, P, i), state, line_no, line_map);

  // Extract the conjunction
  SymBool conjunction = SymBool::_true();
  for (auto it : state.constraints) {
    conjunction = conjunction & it;
  }

  return conjunction;
}


void ObligationChecker::build_circuit(const Cfg& cfg, Cfg::id_type bb, JumpType jump,
                                      SymState& state, size_t& line_no, const LineMap& line_info) {

  if (cfg.num_instrs(bb) == 0)
    return;

  size_t start_index = cfg.get_index(std::pair<Cfg::id_type, size_t>(bb, 0));
  size_t end_index = start_index + cfg.num_instrs(bb);

  for (size_t i = start_index; i < end_index; ++i) {
    auto li = line_info.at(line_no);
    line_no++;
    auto instr = cfg.get_code()[i];

    if (instr.is_jcc()) {
      // get the name of the condition
      string name = opcode_write_att(instr.get_opcode());
      string condition = name.substr(1);
      auto constraint = ConditionalHandler::condition_predicate(condition, state);

      // figure out if its this condition (jump case) or negation (fallthrough)
      //cout << "INSTR: " << instr << endl;
      switch (jump) {
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
      // Build the handler for the instruction
      state.set_lineno(line_no-1);
      state.rip = SymBitVector::constant(64, li.rip_offset);

      if (nacl_) {
        // We need to add constraints keeping the index register (if present)
        // away from the edges of the ddress space.
        if (instr.is_explicit_memory_dereference()) {
          auto mem = instr.get_operand<M8>(instr.mem_index());
          if (mem.contains_index()) {
            R64 index = mem.get_index();
            auto address = state[index];
            state.constraints.push_back(address >= SymBitVector::constant(64, 0x10));
            state.constraints.push_back(address <= SymBitVector::constant(64, 0xfffffff0));
          }
        }
      }

      //cout << "LINE=" << line_no-1 << ": " << instr << endl;
      auto constraints = (*filter_)(instr, state);
      for (auto constraint : constraints) {
        state.constraints.push_back(constraint);
      }

      if (filter_->has_error()) {
        throw VALIDATOR_ERROR(filter_->error());
      }
    }
  }
}

ObligationChecker::JumpType ObligationChecker::is_jump(const Cfg& cfg, Cfg::id_type start_block, const CfgPath& P_copy, size_t i) {

  auto P = P_copy;

  if (i == 0 && P.size() == 1) {
    P.insert(P.begin(), start_block);
  }

  if (i == P.size() - 1)
    return JumpType::NONE;

  auto block = P[i];

  auto itr = cfg.succ_begin(block);
  if (itr == cfg.succ_end(block)) {
    // there are no successors
    //cout << "is_jump " << block << " NONE" << endl;
    return JumpType::NONE;
  }

  itr++;
  if (itr == cfg.succ_end(block)) {
    // there is only only successor
    //cout << "is_jump " << block << " NONE" << endl;
    return JumpType::NONE;
  }

  // ok, there are at least 2 successors
  auto next_block = P[i+1];
  if (next_block == block + 1) {
    //cout << "is_jump " << block << " FALL" << endl;
    return JumpType::FALL_THROUGH;
  }
  else {
    //cout << "is_jump " << block << " JUMP" << endl;
    return JumpType::JUMP;
  }
}

bool ObligationChecker::check(const Cfg& target, const Cfg& rewrite, Cfg::id_type target_block, Cfg::id_type rewrite_block, const CfgPath& P, const CfgPath& Q, const Invariant& assume, const Invariant& prove) {
  stop_now_.store(false);

  if (alias_strategy_ == AliasStrategy::ARMS_RACE) {
    DEBUG_ARMS_RACE(cout << "===================================" << endl;)

    DEBUG_ARMS_RACE(auto start_time = high_resolution_clock::now();)
    atomic<size_t> finished; // 0 -> nobody; 1 -> FLAT; 2 -> ARM
    finished.store(0);

    if (oc1_ == NULL) {
      assert(oc2_ == NULL);
      z3_1_ = new Z3Solver();
      oc1_ = new ObligationChecker(*z3_1_);
      oc1_->set_filter(filter_);
      oc1_->set_alias_strategy(AliasStrategy::FLAT);

      z3_2_ = new Z3Solver();
      oc2_ = new ObligationChecker(*z3_2_);
      oc2_->set_filter(filter_);
      oc2_->set_alias_strategy(AliasStrategy::ARM);
    }

    bool result = false;

    // for debug purposes

    auto run_oc = [&] (size_t index) {
      DEBUG_ARMS_RACE(cout << "Thread " << index << " starting at "
                      << duration_cast<microseconds>(
                        high_resolution_clock::now() - start_time).count() << endl;)

      auto& oc = index == 0 ? *oc1_ : *oc2_;


      bool success = false;
      bool my_result = false;
      try {
        DEBUG_ARMS_RACE(auto t0 = high_resolution_clock::now();)
        my_result = oc.check(target, rewrite, target_block, rewrite_block, P, Q, assume, prove);
        DEBUG_ARMS_RACE(auto t1 = high_resolution_clock::now();)
        DEBUG_ARMS_RACE(cout << "Index " << index << " took " <<
                        duration_cast<microseconds>(t1-t0).count() << endl;)
        success = true;
      } catch (std::exception e) {
        // todo: record exception
      }

      size_t swap_zero = 0;
      bool i_was_first = finished.compare_exchange_strong(swap_zero, index+1);
      if (success && i_was_first) {
        DEBUG_ARMS_RACE(cout << "Index " << index << " was first!" << endl;)
        auto& other_oc = index == 0 ? *oc2_ : *oc1_;
        other_oc.interrupt();

        // set output data
        result = my_result;
        this->have_ceg_ = oc.checker_has_ceg();
        this->ceg_t_ = oc.checker_get_target_ceg();
        this->ceg_r_ = oc.checker_get_rewrite_ceg();
        this->ceg_tf_ = oc.checker_get_target_ceg_end();
        this->ceg_rf_ = oc.checker_get_rewrite_ceg_end();
      }
      DEBUG_ARMS_RACE(cout << "Thread " << index << " exiting at "
                      << duration_cast<microseconds>(
                        high_resolution_clock::now() - start_time).count() << endl;)


    };

    auto t1 = thread(run_oc, 0);
    auto t2 = thread(run_oc, 1);

    t1.join();
    t2.join();

    return result;

  } else {
    return check_core(target, rewrite, target_block, rewrite_block, P, Q, assume, prove);
  }
}


bool ObligationChecker::check_core(const Cfg& target, const Cfg& rewrite, Cfg::id_type target_block, Cfg::id_type rewrite_block, const CfgPath& P, const CfgPath& Q, const Invariant& assume, const Invariant& prove) {

  stop_now_.store(false);

#ifdef DEBUG_CHECKER_PERFORMANCE
  number_queries_++;
  microseconds perf_start = duration_cast<microseconds>(system_clock::now().time_since_epoch());
#endif

  OBLIG_DEBUG(cout << "===========================================" << endl;)
  OBLIG_DEBUG(cout << "Obligation Check." << endl;)
  OBLIG_DEBUG(cout << "Paths P: " << P << " Q: " << Q << endl;)
  OBLIG_DEBUG(cout << "Assuming: " << assume << endl;)
  OBLIG_DEBUG(cout << "Proving: " << prove << endl;)
  OBLIG_DEBUG(cout << "----" << endl;)
  have_ceg_ = false;

  // Get a list of all aliasing cases.
  bool flat_model = alias_strategy_ == AliasStrategy::FLAT;
  bool arm_model = alias_strategy_ == AliasStrategy::ARM;

#ifdef DEBUG_CHECKER_PERFORMANCE
  microseconds perf_alias = duration_cast<microseconds>(system_clock::now().time_since_epoch());
  aliasing_time_ += (perf_alias - perf_start).count();
#endif

#ifdef DEBUG_CHECKER_PERFORMANCE
  microseconds perf_constr_start = duration_cast<microseconds>(system_clock::now().time_since_epoch());
  number_cases_++;
#endif

  // Step 2: Build circuits

  vector<SymBool> constraints;

  SymState state_t("1_INIT");
  SymState state_r("2_INIT");

  if (flat_model) {
    state_t.memory = new FlatMemory();
    state_r.memory = new FlatMemory();
  } else if (arm_model) {
    state_t.memory = new ArmMemory(solver_);
    state_r.memory = new ArmMemory(solver_);
  }

  auto check_abort = [&]() -> bool {
    if (stop_now_) {
      delete state_t.memory;
      delete state_r.memory;
      return true;
    }
    return false;
  };

  // Add given assumptions
  // TODO pass line numbers as appropriate here
  size_t target_invariant_lineno = 0;
  size_t rewrite_invariant_lineno = 0;
  auto assumption = assume(state_t, state_r, target_invariant_lineno, rewrite_invariant_lineno);
  CONSTRAINT_DEBUG(cout << "Assuming " << assumption << endl;);
  constraints.push_back(assumption);

  if (check_abort()) return false;

  // Generate line maps
  LineMap target_line_map;
  LineMap rewrite_line_map;
  generate_linemap(target, P, target_line_map);
  generate_linemap(rewrite, Q, rewrite_line_map);

  // Build the circuits
  size_t line_no = 0;
  for (size_t i = 0; i < P.size(); ++i)
    build_circuit(target, P[i], is_jump(target,target_block,P,i), state_t, line_no, target_line_map);
  line_no = 0;
  for (size_t i = 0; i < Q.size(); ++i)
    build_circuit(rewrite, Q[i], is_jump(rewrite,rewrite_block,Q,i), state_r, line_no, rewrite_line_map);

  constraints.insert(constraints.begin(), state_t.constraints.begin(), state_t.constraints.end());
  constraints.insert(constraints.begin(), state_r.constraints.begin(), state_r.constraints.end());

  if (check_abort()) return false;

  CONSTRAINT_DEBUG(
    cout << endl << "CONSTRAINTS" << endl << endl;;
  for (auto it : constraints) {
  cout << it << endl;
})

  if (arm_model) {
    /** When we read out the constraint for the proof, we want to get the ending
      state of the heap, not the initial state. */
    auto target_arm = static_cast<ArmMemory*>(state_t.memory);
    auto rewrite_arm = static_cast<ArmMemory*>(state_r.memory);
    target_arm->finalize_heap();
    rewrite_arm->finalize_heap();
  }

  // Build inequality constraint
  // TODO pass line numbers as appropriate
  auto prove_constraint = !prove(state_t, state_r, target_invariant_lineno, rewrite_invariant_lineno);
  CONSTRAINT_DEBUG(cout << "Proof inequality: " << prove_constraint << endl;)

  constraints.push_back(prove_constraint);

  // Extract the final states of target/rewrite
  SymState state_t_final("1_FINAL");
  SymState state_r_final("2_FINAL");

  for (auto it : state_t.equality_constraints(state_t_final, RegSet::universe()))
    constraints.push_back(it);
  for (auto it : state_r.equality_constraints(state_r_final, RegSet::universe()))
    constraints.push_back(it);

  if (check_abort()) return false;

  // Add any extra memory constraints that are needed
  if (flat_model) {
    auto target_flat = static_cast<FlatMemory*>(state_t.memory);
    auto rewrite_flat = static_cast<FlatMemory*>(state_r.memory);
    auto target_con = target_flat->get_constraints();
    auto rewrite_con = rewrite_flat->get_constraints();
    constraints.insert(constraints.begin(),
                       target_con.begin(),
                       target_con.end());
    constraints.insert(constraints.begin(),
                       rewrite_con.begin(),
                       rewrite_con.end());
  } else if (arm_model) {
    auto target_arm = static_cast<ArmMemory*>(state_t.memory);
    auto rewrite_arm = static_cast<ArmMemory*>(state_r.memory);

    target_arm->set_interrupt_var(&stop_now_);
    if (check_abort()) return false;
    target_arm->generate_constraints(rewrite_arm, constraints);

    if (check_abort()) return false;
    auto target_con = target_arm->get_constraints();
    auto rewrite_con = rewrite_arm->get_constraints();
    constraints.insert(constraints.begin(),
                       target_con.begin(),
                       target_con.end());
    constraints.insert(constraints.begin(),
                       rewrite_con.begin(),
                       rewrite_con.end());
  }



  // Step 4: Invoke the solver
#ifdef DEBUG_CHECKER_PERFORMANCE
  microseconds perf_constr_end = duration_cast<microseconds>(system_clock::now().time_since_epoch());
  constraint_gen_time_ += (perf_constr_end - perf_constr_start).count();
#endif


  if (check_abort()) return false;
  bool is_sat = solver_.is_sat(constraints);
  if (solver_.has_error()) {
    throw VALIDATOR_ERROR("solver: " + solver_.get_error());
  }
  if (check_abort()) return false;

#ifdef DEBUG_CHECKER_PERFORMANCE
  microseconds perf_solve = duration_cast<microseconds>(system_clock::now().time_since_epoch());
  solver_time_ += (perf_solve - perf_constr_end).count();
#endif

  if (is_sat) {
    if (check_abort()) return false;
    ceg_t_ = Validator::state_from_model(solver_, "_1_INIT");
    ceg_r_ = Validator::state_from_model(solver_, "_2_INIT");
    ceg_tf_ = Validator::state_from_model(solver_, "_1_FINAL");
    ceg_rf_ = Validator::state_from_model(solver_, "_2_FINAL");

    if (check_abort()) return false;
    bool ok = true;
    if (flat_model) {
      auto target_flat = static_cast<FlatMemory*>(state_t.memory);
      auto rewrite_flat = static_cast<FlatMemory*>(state_r.memory);

      vector<map<const SymBitVectorAbstract*, uint64_t>> other_maps;
      other_maps.push_back(target_flat->get_access_list());
      other_maps.push_back(rewrite_flat->get_access_list());
      auto other_map = append_maps(other_maps);

      ok &= build_testcase_flat_memory(ceg_t_, target_flat->get_start_variable(), other_map);
      ok &= build_testcase_flat_memory(ceg_r_, rewrite_flat->get_start_variable(), other_map);
      ok &= build_testcase_flat_memory(ceg_tf_, target_flat->get_variable(), other_map);
      ok &= build_testcase_flat_memory(ceg_rf_, rewrite_flat->get_variable(), other_map);
    } else if (arm_model) {
      auto target_arm = static_cast<ArmMemory*>(state_t.memory);
      auto rewrite_arm = static_cast<ArmMemory*>(state_r.memory);

      vector<map<const SymBitVectorAbstract*, uint64_t>> other_maps;
      other_maps.push_back(target_arm->get_access_list());
      other_maps.push_back(rewrite_arm->get_access_list());
      auto other_map = append_maps(other_maps);

      ok &= build_testcase_flat_memory(ceg_t_, target_arm->get_start_variable(), other_map);
      ok &= build_testcase_flat_memory(ceg_r_, rewrite_arm->get_start_variable(), other_map);
      ok &= build_testcase_flat_memory(ceg_tf_, target_arm->get_variable(), other_map);
      ok &= build_testcase_flat_memory(ceg_rf_, rewrite_arm->get_variable(), other_map);
    }

    if (!ok) {
      // We don't have memory accurate in our counterexample.  Just leave.
      have_ceg_ = false;
      CEG_DEBUG(cout << "(  Counterexample does not have accurate memory)" << endl;)
    }

    CEG_DEBUG(cout << "  (Got counterexample)" << endl;)
    CEG_DEBUG(cout << "TARGET START STATE" << endl;)
    CEG_DEBUG(cout << ceg_t_ << endl;)
    CEG_DEBUG(cout << "REWRITE START STATE" << endl;)
    CEG_DEBUG(cout << ceg_r_ << endl;)
    CEG_DEBUG(cout << "TARGET (expected) END STATE" << endl;)
    CEG_DEBUG(cout << ceg_tf_ << endl;)
    CEG_DEBUG(cout << "REWRITE (expected) END STATE" << endl;)
    CEG_DEBUG(cout << ceg_rf_ << endl;)

    if (check_abort()) return false;

    if (check_counterexample(target, rewrite, P, Q, assume, prove, ceg_t_, ceg_r_)) {
      have_ceg_ = true;
      CEG_DEBUG(cout << "  (Counterexample verified in sandbox)" << endl;)
    } else {
      CEG_DEBUG(cout << "  (Spurious counterexample detected)" << endl;)
    }

    delete state_t.memory;
    delete state_r.memory;

#ifdef DEBUG_CHECKER_PERFORMANCE
    microseconds perf_ceg = duration_cast<microseconds>(system_clock::now().time_since_epoch());
    ceg_time_ += (perf_ceg - perf_solve).count();
    print_performance();
#endif


    return false;
  } else {

    delete state_t.memory;
    delete state_r.memory;

    CEG_DEBUG(cout << "  (This case verified)" << endl;)

#ifdef DEBUG_CHECKER_PERFORMANCE
    microseconds perf_ceg = duration_cast<microseconds>(system_clock::now().time_since_epoch());
    ceg_time_ += (perf_ceg - perf_solve).count();
#endif
  }

#ifdef DEBUG_CHECKER_PERFORMANCE
  print_performance();
#endif

  return true;

}

void ObligationChecker::generate_linemap(const Cfg& cfg, const CfgPath& p, LineMap& to_populate) {
  auto function = cfg.get_function();

  size_t line_no = 0;
  for (auto node : p) {
    if (cfg.num_instrs(node) == 0)
      continue;

    size_t start_index = cfg.get_index(std::pair<Cfg::id_type, size_t>(node, 0));
    size_t end_index = start_index + cfg.num_instrs(node);
    for (size_t i = start_index; i < end_index; ++i) {

      LineInfo li;
      li.line_number = i;
      li.rip_offset = function.hex_offset(i) + function.get_rip_offset() + function.hex_size(i);
      to_populate[line_no++] = li;
    }
  }

}

bool ObligationChecker::verify_exhaustive(const Cfg& target, const Cfg& rewrite,
    Cfg::id_type target_block, Cfg::id_type rewrite_block,
    std::vector<std::pair<CfgPath, CfgPath>>& path_pairs,
    const Invariant& assume) {

  cout << "================== verify exhaustive =======================" << endl;
  cout << "Assuming " << assume << endl;
  for (auto pair : path_pairs) {
    cout << pair.first << " / " << pair.second << endl;
    cout << "-------" << endl;
  }

  have_ceg_ = false;

  // Get a list of all aliasing cases.
  bool flat_model = alias_strategy_ == AliasStrategy::FLAT || alias_strategy_ == AliasStrategy::ARMS_RACE;
  bool arm_model = alias_strategy_ == AliasStrategy::ARM;// || alias_strategy_ == AliasStrategy::ARMS_RACE;

  // Step 2: Build circuits

  vector<SymBool> constraints;

  SymState state_t("1_INIT");
  SymState state_r("2_INIT");

  if (flat_model) {
    state_t.memory = new FlatMemory();
    state_r.memory = new FlatMemory();
  } else if (arm_model) {
    state_t.memory = new ArmMemory(solver_);
    state_r.memory = new ArmMemory(solver_);
  }

  SymMemory* original_target_mem = state_t.memory;
  SymMemory* original_rewrite_mem = state_r.memory;

  if (flat_model) {
    state_t.memory = new FlatMemory(*static_cast<FlatMemory*>(original_target_mem));
    state_r.memory = new FlatMemory(*static_cast<FlatMemory*>(original_rewrite_mem));
  } else if (arm_model) {
    state_t.memory = new ArmMemory(*static_cast<ArmMemory*>(original_target_mem));
    state_r.memory = new ArmMemory(*static_cast<ArmMemory*>(original_rewrite_mem));
  }

  // Add given assumptions
  size_t target_invariant_lineno = 0;
  size_t rewrite_invariant_lineno = 0;
  auto assumption = assume(state_t, state_r, target_invariant_lineno, rewrite_invariant_lineno);
  cout << "Assuming " << assumption << endl;
  constraints.push_back(assumption);

  SymBool assume_mem_constraint = SymBool::_true();
  if (arm_model) {
    vector<SymBool> arm_constraints = { assumption };
    auto target_arm = static_cast<ArmMemory*>(state_t.memory);
    auto rewrite_arm = static_cast<ArmMemory*>(state_r.memory);
    target_arm->generate_constraints(rewrite_arm, arm_constraints);

    auto target_con = target_arm->get_constraints();
    auto rewrite_con = rewrite_arm->get_constraints();
    for (auto it : target_con)
      assume_mem_constraint = assume_mem_constraint & it;
    for (auto it : rewrite_con)
      assume_mem_constraint = assume_mem_constraint & it;

  } else if (flat_model) {
    auto target_flat = static_cast<FlatMemory*>(state_t.memory);
    auto rewrite_flat = static_cast<FlatMemory*>(state_r.memory);
    auto target_con = target_flat->get_constraints();
    auto rewrite_con = rewrite_flat->get_constraints();
    for (auto it : target_con)
      assume_mem_constraint = assume_mem_constraint & it;
    for (auto it : rewrite_con)
      assume_mem_constraint = assume_mem_constraint & it;
  }

  constraints.push_back(assume_mem_constraint);


  /** collect accesses */
  vector<map<const SymBitVectorAbstract*, uint64_t>> other_maps;
  other_maps.push_back(state_t.memory->get_access_list());
  other_maps.push_back(state_r.memory->get_access_list());


  for (auto& path_pair : path_pairs) {
    if (flat_model) {
      state_t.memory = new FlatMemory(*static_cast<FlatMemory*>(original_target_mem));
      state_r.memory = new FlatMemory(*static_cast<FlatMemory*>(original_rewrite_mem));
    } else if (arm_model) {
      state_t.memory = new ArmMemory(*static_cast<ArmMemory*>(original_target_mem));
      state_r.memory = new ArmMemory(*static_cast<ArmMemory*>(original_rewrite_mem));
    }

    // get initial assumption (again) (need to rework each time due to arm)
    vector<SymBool> arm_constraints;
    /*
    size_t target_invariant_lineno = 0;
    size_t rewrite_invariant_lineno = 0;
    auto assumption_redo = assume(state_t, state_r, target_invariant_lineno, rewrite_invariant_lineno);
    cout << "Assuming " << assumption_redo << endl;
    arm_constraints.push_back(assumption_redo);
    */
    //constraints.push_back(assumption);

    auto P = path_pair.first;
    auto Q = path_pair.second;

    cout << "Getting path constraints..." << endl;
    auto P_constraint = get_path_constraint(target, state_t, target_block, P);
    auto Q_constraint = get_path_constraint(rewrite, state_r, rewrite_block, Q);

    SymBool mem_constraint = SymBool::_true();

    if (arm_model) {
      //vector<SymBool> arm_constraints = { assumption, assume_mem_constraint };
      auto target_arm = static_cast<ArmMemory*>(state_t.memory);
      auto rewrite_arm = static_cast<ArmMemory*>(state_r.memory);

      cout << "Generating constraints..." << endl;
      target_arm->generate_constraints(rewrite_arm, arm_constraints);

      auto target_con = target_arm->get_constraints();
      auto rewrite_con = rewrite_arm->get_constraints();
      for (auto it : target_con)
        mem_constraint = mem_constraint & it;
      for (auto it : rewrite_con)
        mem_constraint = mem_constraint & it;

    } else if (flat_model) {
      auto target_flat = static_cast<FlatMemory*>(state_t.memory);
      auto rewrite_flat = static_cast<FlatMemory*>(state_r.memory);
      auto target_con = target_flat->get_constraints();
      auto rewrite_con = rewrite_flat->get_constraints();
      for (auto it : target_con)
        mem_constraint = mem_constraint & it;
      for (auto it : rewrite_con)
        mem_constraint = mem_constraint & it;
    }

    cout << "[ex-check] P_constraint = " << P_constraint << endl;
    cout << "[ex-check] Q_constraint = " << Q_constraint << endl;
    cout << "[ex-check] Asserting !(P & Q)" << endl;
    cout << "[ex-check] Asserting mem_constraint = " << mem_constraint << endl;
    constraints.push_back(!(P_constraint & Q_constraint));
    constraints.push_back(mem_constraint);

    other_maps.push_back(state_t.memory->get_access_list());
    other_maps.push_back(state_r.memory->get_access_list());

    delete state_t.memory;
    delete state_r.memory;

  }

  // Step 4: Invoke the solver
  bool is_sat = solver_.is_sat(constraints);
  if (solver_.has_error()) {
    throw VALIDATOR_ERROR("solver: " + solver_.get_error());
  }
  cout << "IS SAT: " << is_sat << endl;

  if (is_sat) {
    ceg_t_ = Validator::state_from_model(solver_, "_1_INIT");
    ceg_r_ = Validator::state_from_model(solver_, "_2_INIT");

    bool ok = true;
    if (flat_model) {
      auto target_flat = static_cast<FlatMemory*>(original_target_mem);
      auto rewrite_flat = static_cast<FlatMemory*>(original_rewrite_mem);
      auto other_map = append_maps(other_maps);

      ok &= build_testcase_flat_memory(ceg_t_, target_flat->get_start_variable(), other_map);
      ok &= build_testcase_flat_memory(ceg_r_, rewrite_flat->get_start_variable(), other_map);
    } else if (arm_model) {
      auto target_arm = static_cast<ArmMemory*>(original_target_mem);
      auto rewrite_arm = static_cast<ArmMemory*>(original_rewrite_mem);
      auto other_map = append_maps(other_maps);

      ok &= build_testcase_flat_memory(ceg_t_, target_arm->get_start_variable(), other_map);
      ok &= build_testcase_flat_memory(ceg_r_, rewrite_arm->get_start_variable(), other_map);
    }

    if (!ok) {
      // We don't have memory accurate in our counterexample.  Just leave.
      have_ceg_ = false;
      CEG_DEBUG(cout << "(  Counterexample does not have accurate memory)" << endl;)
    }

    cout << "TARGET COUNTEREXAMPLE: " << endl << ceg_t_ << endl;
    cout << "REWRITE COUNTEREXAMPLE: " << endl << ceg_r_ << endl;

    CEG_DEBUG(cout << "  (Got counterexample)" << endl;)
    CEG_DEBUG(cout << "TARGET START STATE" << endl;)
    CEG_DEBUG(cout << ceg_t_ << endl;)
    CEG_DEBUG(cout << "REWRITE START STATE" << endl;)
    CEG_DEBUG(cout << ceg_r_ << endl;)

    // TODO: check the counterexample
    bool correct = exhaustive_check_counterexample(target, rewrite,
                   target_block, rewrite_block, path_pairs, assume, ceg_t_, ceg_r_);
    have_ceg_ = true;

    delete original_target_mem;
    delete original_rewrite_mem;

    return false;

  } else {

    delete original_target_mem;
    delete original_rewrite_mem;

    CEG_DEBUG(cout << "  (This case verified)" << endl;)

  }

  return true;
}

