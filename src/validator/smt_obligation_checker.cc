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
#include "src/validator/error.h"
#include "src/validator/invariants/conjunction.h"
#include "src/validator/invariants/flag.h"
#include "src/validator/invariants/memory_equality.h"
#include "src/validator/invariants/state_equality.h"
#include "src/validator/invariants/true.h"
#include "src/validator/smt_obligation_checker.h"
#include "src/solver/z3solver.h"
#include "src/symstate/memory_manager.h"

#include "tools/common/version_info.h"

#define OBLIG_DEBUG(X) { }
#define CONSTRAINT_DEBUG(X) { }
#define BUILD_TC_DEBUG(X) {  }
#define DEBUG_MAP_TC(X) {}
#define ALIAS_DEBUG(X) {  }
#define ALIAS_CASE_DEBUG(X) {  }
//#define DEBUG_ARMS_RACE(X)  X
#define DEBUG_ARMS_RACE(X)  { }
#define DEBUG_FIXPOINT(X) { } 

//#ifdef STOKE_DEBUG_CEG
//#define CEG_DEBUG(X) { X }
//#else
//#define CEG_DEBUG(X) { }
//#endif
#define CEG_DEBUG(X) { X }

#define MAX(X,Y) ( (X) > (Y) ? (X) : (Y) )
#define MIN(X,Y) ( (X) < (Y) ? (X) : (Y) )

using namespace cpputil;
using namespace std;
using namespace stoke;
using namespace x64asm;
using namespace std::chrono;

#ifdef DEBUG_CHECKER_PERFORMANCE
uint64_t SmtObligationChecker::number_queries_ = 0;
uint64_t SmtObligationChecker::number_cases_ = 0;
uint64_t SmtObligationChecker::constraint_gen_time_ = 0;
uint64_t SmtObligationChecker::solver_time_ = 0;
uint64_t SmtObligationChecker::aliasing_time_ = 0;
uint64_t SmtObligationChecker::ceg_time_ = 0;
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

/** Returns an invariant representing the fact that the first state transition in the path is taken. */
Invariant* SmtObligationChecker::get_jump_inv(const Cfg& cfg, Cfg::id_type start_b, const CfgPath& p, bool is_rewrite) {
  auto jump_type = ObligationChecker::is_jump(cfg, start_b, {p[0]}, 0);

  //cout << "get_jump_inv: jump type " << jump_type << endl;

  if (jump_type == SmtObligationChecker::JumpType::NONE) {
    return new TrueInvariant();
  }

  auto start_block = start_b;
  auto start_bs = cfg.num_instrs(start_block);
  assert(start_bs > 0);
  auto jump_instr = cfg.get_code()[cfg.get_index(Cfg::loc_type(start_block, start_bs - 1))];

  if (!jump_instr.is_jcc()) {
    //cout << "   get_jump_inv: no cond jump" << endl;
    return new TrueInvariant();
  }

  bool is_fallthrough = jump_type == SmtObligationChecker::JumpType::FALL_THROUGH;
  auto jump_inv = new FlagInvariant(jump_instr, is_rewrite, is_fallthrough);
  //cout << "   get_jump_inv: got " << *jump_inv << endl;
  return jump_inv;
}


bool SmtObligationChecker::build_testcase_flat_memory(CpuState& ceg, SymArray var, const map<const SymBitVectorAbstract*, uint64_t>& others) const {
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


CpuState SmtObligationChecker::run_sandbox_on_path(const Cfg& cfg, const CfgPath& P, const CpuState& state) {

  // TODO: fixme
  CpuState output;
  return output;

}

bool SmtObligationChecker::check_counterexample(
    const Cfg& target, 
    const Cfg& rewrite, 
    const CfgPath& P, 
    const CfgPath& Q, 
    Invariant& assume, 
    Invariant& prove, 
    const CpuState& ceg, 
    const CpuState& ceg2, 
    const CpuState& ceg_expected, 
    const CpuState& ceg_expected2) {

  /*
  CEG_DEBUG(
      // TODO: this is totally broken.
  // Next, we run only the relevant blocks of the target/rewrite.
    CpuState target_output = run_sandbox_on_path(target, P, ceg);
    CpuState rewrite_output = run_sandbox_on_path(rewrite, Q, ceg);

  // Lastly, we check that the final states do not satisfy the invariant
    cout << "  TARGET (actual) END state:" << endl << target_output << endl;
    cout << "  REWRITE (actual) END state:" << endl << rewrite_output << endl;

    if(target_output != ceg_expected) {
      cout << "  WARNING!!! Got a different counterexample from sandbox than from validator." << endl;
    }
    if(rewrite_output != ceg_expected2) {
      cout << "  WARNING!!! Got a different counterexample from sandbox than from validator." << endl;
    }

  )*/

  // First, the counterexample has to pass the invariant.
  if (!assume.check(ceg, ceg2)) {
    cout << "  (Counterexample does not meet assumed invariant.)  P=" << P << " Q=" << Q << " Prove=" << prove << endl;
    auto conj = static_cast<ConjunctionInvariant&>(assume);
    for(size_t i = 0; i < conj.size(); ++i) {
      auto inv = conj[i];
      if(!inv->check(ceg, ceg2))
        cout << "    " << *inv << endl;
    }
    return false;
  }

  if(prove.check(ceg_expected, ceg_expected2)) {
    cout << "  (Counterexample satisfies desired invariant; it shouldn't)  P=" << P << " Q=" << Q << " Prove=" << prove << endl;
    return false;
  }

  return true;
}


void SmtObligationChecker::build_circuit(const Cfg& cfg, Cfg::id_type bb, JumpType jump,
                                      SymState& state, size_t& line_no, const LineMap& line_info, bool ignore_last_line) {

  if (cfg.num_instrs(bb) == 0)
    return;

  size_t start_index = cfg.get_index(std::pair<Cfg::id_type, size_t>(bb, 0));
  size_t end_index = start_index + cfg.num_instrs(bb);

  /** increment ghost variable, if needed */
  if(basic_block_ghosts_) {
    auto name = Variable::bb_ghost(bb, false).name;
    auto old = state.shadow[name];
    auto updated = old + SymBitVector::constant(64, 1);
    state.shadow[name] = updated;
  }

  /** symbolically execute each instruction */
  for (size_t i = start_index; i < end_index; ++i) {
    auto li = line_info.at(line_no);
    line_no++;
    auto instr = cfg.get_code()[i];

    if (instr.is_jcc()) {
      if (ignore_last_line)
        continue;

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
      state.set_deref(li.deref);
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
      auto constraints = (filter_)(instr, state);
      for (auto constraint : constraints) {
        state.constraints.push_back(constraint);
      }

      if (filter_.has_error()) {
        error_ = filter_.error();
      }
    }
  }
}




vector<string> SmtObligationChecker::get_ghost_names(const Cfg& cfg) {
  vector<string> outputs;
  if(basic_block_ghosts_) {
    for(size_t blk = cfg.get_entry(); blk < cfg.get_exit(); blk++) {
      auto v = Variable::bb_ghost(blk, false).name;
      outputs.push_back(v);
    }
  }
  return outputs;
}

void SmtObligationChecker::add_basic_block_ghosts(SymState& ss, const Cfg& cfg, string suffix) {

  if(basic_block_ghosts_) {
    auto names = get_ghost_names(cfg);
    for(auto v : names) {
      stringstream name;
      name << v << "_" << suffix;
      ss.shadow[v] = SymBitVector::var(64, name.str());
    }
  }

}

void SmtObligationChecker::return_error(Callback& callback, string& s, void* optional) const {
  ObligationChecker::Result result;
  result.verified = false;
  result.has_ceg = false;
  result.has_error = true;
  result.error_message = s;
  result.source_version = string(version_info);
  callback(result, optional);
}

void SmtObligationChecker::check(
	const Cfg& target, 
  const Cfg& rewrite, 
  Cfg::id_type target_block, 
  Cfg::id_type rewrite_block, 
  const CfgPath& P, 
  const CfgPath& Q, 
  Invariant& assume, 
  Invariant& prove, 
  const vector<pair<CpuState, CpuState>>& testcases,
  Callback& callback,
  void* optional) {

  auto start_time = system_clock::now();

  /*
  cout << "== PROBLEM ==" << endl;
  Obligation ob;
  ob.target = target;
  ob.rewrite = rewrite;
  ob.target_block = target_block;
  ob.rewrite_block = rewrite_block;
  ob.P = P;
  ob.Q = Q;
  ob.assume = &assume;
  ob.prove = &prove;
  ob.testcases = testcases;
  ob.write_text(cout);
  cout << "END" << endl;
  */

#ifdef DEBUG_CHECKER_PERFORMANCE
  number_queries_++;
  microseconds perf_start = duration_cast<microseconds>(system_clock::now().time_since_epoch());
#endif

  static mutex print_m;
  OBLIG_DEBUG(print_m.lock();)
  OBLIG_DEBUG(cout << "===========================================" << endl;)
  OBLIG_DEBUG(cout << "Obligation Check. solver_=" << &solver_ << " this=" << this << endl;)
  OBLIG_DEBUG(cout << "Paths P: " << P << " Q: " << Q << endl;)
  OBLIG_DEBUG(cout << "Assuming: " << assume << endl;)
  OBLIG_DEBUG(cout << "Proving: " << prove << endl;)
  OBLIG_DEBUG(cout << "----" << endl;)
  OBLIG_DEBUG(print_m.unlock();)

  // Get a list of all aliasing cases.
  bool flat_model = alias_strategy_ == AliasStrategy::FLAT;
  bool arm_model = alias_strategy_ == AliasStrategy::ARM;
  bool arm_testcases = arm_model && (testcases.size() > 0);

  //cout << "[check_core] Got " << testcases.size() << " testcases!" << endl;
  //OBLIG_DEBUG(cout << "[check_core] arm_testcases = " << arm_testcases << endl;)

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

  add_basic_block_ghosts(state_t, target, "1_INIT");
  add_basic_block_ghosts(state_r, rewrite, "2_INIT");

  OBLIG_DEBUG(cout << "separate_stack_ = " << separate_stack_ << endl;)
  if (flat_model) {
    state_t.memory = new FlatMemory(separate_stack_);
    state_r.memory = new FlatMemory(separate_stack_);
  } else if (arm_model) {
    state_t.memory = new ArmMemory(separate_stack_, solver_);
    state_r.memory = new ArmMemory(separate_stack_, solver_);
  }

  // Build dereference map
  DereferenceMaps deref_maps;
  for(const auto& tc : testcases) {
    DereferenceMap deref_map;
    deref_maps.push_back(deref_map);
    break;
  }

  // Add given assumptions
  size_t invariant_lineno = 0;
  auto assumption = assume(state_t, state_r, invariant_lineno);
  constraints.push_back(assumption);
  invariant_lineno++;

  // Update dereference maps for the assumption if ARM
  if(arm_testcases) {
    for(size_t i = 0; i < deref_maps.size(); ++i) {
      size_t tmp_invariant_lineno = 0;
      auto& deref_map = deref_maps[i];
      const auto& tc_pair = testcases[i];
      cout << "[check_core] adding assume dereference map" << endl;
      cout << tc_pair.first << endl << endl;
      cout << tc_pair.second << endl << endl;
      assume.get_dereference_map(deref_map, tc_pair.first, tc_pair.second, tmp_invariant_lineno);
      cout << "[check_core] debugging assume dereference map 1" << endl;
      cout << "deref_map size = " << deref_map.size() << endl;
      for(auto it : deref_map) {
        cout << it.first.invariant_number << " -> " << it.second << endl; 
      }
    }
  }


  // Generate line maps
  LineMap target_line_map;
  LineMap rewrite_line_map;
  Code target_unroll;
  Code rewrite_unroll;
  generate_linemap(target, P, target_line_map, false, target_unroll);
  generate_linemap(rewrite, Q, rewrite_line_map, true, rewrite_unroll);

  // Build the circuits
  if (P.size() > 0) {
    auto ji = get_jump_inv(target, target_block, P, true);
    size_t tmp_invariant_lineno = invariant_lineno;
    SymBool conj = (*ji)(state_t, state_t, tmp_invariant_lineno);
    constraints.push_back(conj);
  }
  if (Q.size() > 0) {
    auto ji = get_jump_inv(rewrite, rewrite_block, Q, true);
    size_t tmp_invariant_lineno = invariant_lineno;
    SymBool conj = (*ji)(state_r, state_r, tmp_invariant_lineno);
    constraints.push_back(conj);
  }


  size_t line_no = 0;
  try {
    for (size_t i = 0; i < P.size(); ++i)
      build_circuit(target, P[i], is_jump(target,target_block,P,i), state_t, line_no, target_line_map, i == P.size() - 1);
    line_no = 0;
    for (size_t i = 0; i < Q.size(); ++i)
      build_circuit(rewrite, Q[i], is_jump(rewrite,rewrite_block,Q,i), state_r, line_no, rewrite_line_map, i == Q.size() - 1);
  } catch (validator_error e) {
    stringstream message;
    message << e.get_file() << ":" << e.get_line() << ": " << e.get_message();
    auto str = message.str();
    return_error(callback, str, optional);
    delete state_t.memory;
    delete state_r.memory;
    return;
  }



  constraints.insert(constraints.end(), state_t.constraints.begin(), state_t.constraints.end());
  constraints.insert(constraints.end(), state_r.constraints.begin(), state_r.constraints.end());


  // Update dereference maps for the code if ARM and we have testcases
  if(arm_testcases) {
    CpuState last_target;
    CpuState last_rewrite;
    for(size_t k = 0; k < 2; ++k) {
      auto& unroll_code = k ? rewrite_unroll : target_unroll;
      auto& testcase = k ? testcases[0].second : testcases[0].first;
      auto& last = k ? last_rewrite : last_target;
      auto& linemap = k ? rewrite_line_map : target_line_map;
      cout << "[check_core] adding code dereferences is_rewrite=" << k << endl;

      Cfg unroll_cfg(unroll_code);
      oc_sandbox_.clear_inputs();
      oc_sandbox_.insert_input(testcase);
      DataCollector oc_data_collector(oc_sandbox_);
      auto traces = oc_data_collector.get_detailed_traces(unroll_cfg, &linemap);

      cout << "[check_core] traces.size() = " << traces.size() << endl;
      cout << "[check_core] traces[0].size() = " << traces[0].size() << endl;
      cout << "[check_core] unroll_code.size() = " << unroll_code.size() << endl;
      for(size_t i = 0; i < traces[0].size(); ++i) {
        auto instr = unroll_code[i];
        cout << "[check_core] dereferences for " << instr << endl;
        if(instr.is_memory_dereference()) {
          auto dri = linemap[i].deref;
          auto state = traces[0][i].cs;
          auto addr = state.get_addr(instr, linemap[i].rip_offset);
          cout << "[check_core]     * found one!" << endl;
          deref_maps[0][dri] = addr;
        }
        last = traces[0][i].cs;
      }
    }

    for(size_t i = 0; i < deref_maps.size(); ++i) {
      size_t tmp_invariant_lineno = invariant_lineno;
      auto& deref_map = deref_maps[i];
      const auto& tc_pair = testcases[i];
      //cout << "[check_core] adding prove dereference map" << endl;
      prove.get_dereference_map(deref_map, last_target, last_rewrite, tmp_invariant_lineno);
    }
  }

  if (arm_model) {
    /** When we read out the constraint for the proof, we want to get the ending
      state of the heap, not the initial state. */
    auto target_arm = static_cast<ArmMemory*>(state_t.memory);
    auto rewrite_arm = static_cast<ArmMemory*>(state_r.memory);
    target_arm->finalize_heap();
    rewrite_arm->finalize_heap();
  }

  // Build inequality constraint
  auto prove_constraint = !prove(state_t, state_r, invariant_lineno);

  constraints.push_back(prove_constraint);

  // Extract the final states of target/rewrite
  SymState state_t_final("1_FINAL");
  SymState state_r_final("2_FINAL");

  add_basic_block_ghosts(state_t_final, target, "1_FINAL");
  add_basic_block_ghosts(state_r_final, rewrite, "2_FINAL");
  auto target_ghost_names = get_ghost_names(target);
  auto rewrite_ghost_names = get_ghost_names(rewrite);

  for (auto it : state_t.equality_constraints(state_t_final, RegSet::universe(), target_ghost_names))
    constraints.push_back(it);
  for (auto it : state_r.equality_constraints(state_r_final, RegSet::universe(), rewrite_ghost_names))
    constraints.push_back(it);

  // Add any extra memory constraints that are needed
  if (flat_model) {
    auto target_flat = static_cast<FlatMemory*>(state_t.memory);
    auto rewrite_flat = static_cast<FlatMemory*>(state_r.memory);
    auto target_con = target_flat->get_constraints();
    auto rewrite_con = rewrite_flat->get_constraints();
    constraints.insert(constraints.end(),
                       target_con.begin(),
                       target_con.end());
    constraints.insert(constraints.end(),
                       rewrite_con.begin(),
                       rewrite_con.end());
  } else if (arm_model) {
    auto target_arm = static_cast<ArmMemory*>(state_t.memory);
    auto rewrite_arm = static_cast<ArmMemory*>(state_r.memory);

    target_arm->generate_constraints(rewrite_arm, constraints, deref_maps);

    auto target_con = target_arm->get_constraints();
    auto rewrite_con = rewrite_arm->get_constraints();
    constraints.insert(constraints.end(),
                       target_con.begin(),
                       target_con.end());
    constraints.insert(constraints.end(),
                       rewrite_con.begin(),
                       rewrite_con.end());
  }

  CONSTRAINT_DEBUG(print_m.lock();)
  CONSTRAINT_DEBUG(cout << "[ConstraintDebug] for P: " << P << " Q: " << Q << endl;)
    CONSTRAINT_DEBUG(
      cout << endl << "CONSTRAINTS" << endl << endl;;
    for (auto it : constraints) {
    cout << it << endl;
  })
  CONSTRAINT_DEBUG(print_m.unlock();)

  // Step 4: Invoke the solver
#ifdef DEBUG_CHECKER_PERFORMANCE
  microseconds perf_constr_end = duration_cast<microseconds>(system_clock::now().time_since_epoch());
  constraint_gen_time_ += (perf_constr_end - perf_constr_start).count();
#endif

  auto sat_start = system_clock::now();

  bool is_sat = solver_.is_sat(constraints);
  if (solver_.has_error()) {
    stringstream err;
    err << "solver: " << solver_.get_error();
    auto str = err.str();
    return_error(callback, str, optional);
    return;
  }

#ifdef DEBUG_CHECKER_PERFORMANCE
  microseconds perf_solve = duration_cast<microseconds>(system_clock::now().time_since_epoch());
  solver_time_ += (perf_solve - perf_constr_end).count();
#endif

  uint64_t smt_duration = duration_cast<microseconds>(system_clock::now() - sat_start).count();
  uint64_t gen_duration = duration_cast<microseconds>(sat_start - start_time).count();
  

  ObligationChecker::Result result;
  result.solver = solver_.get_enum();
  result.strategy = alias_strategy_;
  result.smt_time_microseconds = smt_duration;
  result.gen_time_microseconds = gen_duration;
  result.source_version = string(version_info);

  if (is_sat) {
    bool have_ceg;
    CpuState ceg_t = state_from_model("_1_INIT", target_ghost_names);
    CpuState ceg_r = state_from_model("_2_INIT", rewrite_ghost_names);
    CpuState ceg_tf = state_from_model("_1_FINAL", target_ghost_names);
    CpuState ceg_rf = state_from_model("_2_FINAL", rewrite_ghost_names);

    bool ok = true;
    if (flat_model) {
      auto target_flat = static_cast<FlatMemory*>(state_t.memory);
      auto rewrite_flat = static_cast<FlatMemory*>(state_r.memory);

      vector<map<const SymBitVectorAbstract*, uint64_t>> other_maps;
      other_maps.push_back(target_flat->get_access_list());
      other_maps.push_back(rewrite_flat->get_access_list());
      auto other_map = append_maps(other_maps);

      ok &= build_testcase_flat_memory(ceg_t, target_flat->get_start_variable(), other_map);
      ok &= build_testcase_flat_memory(ceg_r, rewrite_flat->get_start_variable(), other_map);
      ok &= build_testcase_flat_memory(ceg_tf, target_flat->get_variable(), other_map);
      ok &= build_testcase_flat_memory(ceg_rf, rewrite_flat->get_variable(), other_map);
    } else if (arm_model) {
      auto target_arm = static_cast<ArmMemory*>(state_t.memory);
      auto rewrite_arm = static_cast<ArmMemory*>(state_r.memory);

      vector<map<const SymBitVectorAbstract*, uint64_t>> other_maps;
      other_maps.push_back(target_arm->get_access_list());
      other_maps.push_back(rewrite_arm->get_access_list());
      auto other_map = append_maps(other_maps);

      ok &= build_testcase_flat_memory(ceg_t, target_arm->get_start_variable(), other_map);
      ok &= build_testcase_flat_memory(ceg_r, rewrite_arm->get_start_variable(), other_map);
      ok &= build_testcase_flat_memory(ceg_tf, target_arm->get_variable(), other_map);
      ok &= build_testcase_flat_memory(ceg_rf, rewrite_arm->get_variable(), other_map);
    }

    if (!ok) {
      // We don't have memory accurate in our counterexample.  Just leave.
      CEG_DEBUG(cout << "[counterexample-debug] for P: " << P << " Q: " << Q << endl;)
      CEG_DEBUG(cout << "(  Counterexample does not have accurate memory)" << endl;)
    }

    CEG_DEBUG(print_m.lock();)
    CEG_DEBUG(cout << "[counterexample-debug] for P: " << P << " Q: " << Q << endl;)
    CEG_DEBUG(cout << "  (Got counterexample)" << endl;)
    CEG_DEBUG(cout << "TARGET START STATE" << endl;)
    CEG_DEBUG(cout << ceg_t << endl;)
    CEG_DEBUG(cout << "REWRITE START STATE" << endl;)
    CEG_DEBUG(cout << ceg_r << endl;)
    CEG_DEBUG(cout << "TARGET (expected) END STATE" << endl;)
    CEG_DEBUG(cout << ceg_tf << endl;)
    CEG_DEBUG(cout << "REWRITE (expected) END STATE" << endl;)
    CEG_DEBUG(cout << ceg_rf << endl;)
    CEG_DEBUG(print_m.unlock();)


    // TODO FIXME
    // doesn't work right now because 
    // (1) it doesn't get ghost variables in ceg
    // (2) it doesn't run code on correct path */
    if (check_counterexample(target, rewrite, P, Q, assume, prove, ceg_t, ceg_r, ceg_tf, ceg_rf)) {
      CEG_DEBUG(cout << "  (Counterexample verified in sandbox) P=" << P << " Q=" << Q << endl;)
    } else {
      ok = false;
      CEG_DEBUG(cout << "  (Spurious counterexample detected) P=" << P << " Q=" << Q << endl;)
    }

    delete state_t.memory;
    delete state_r.memory;

#ifdef DEBUG_CHECKER_PERFORMANCE
    microseconds perf_ceg = duration_cast<microseconds>(system_clock::now().time_since_epoch());
    ceg_time_ += (perf_ceg - perf_solve).count();
    print_performance();
#endif

    result.verified = false;
    result.has_ceg = ok;
    result.has_error = false;
    result.error_message = "";
    result.target_ceg = ceg_t;
    result.rewrite_ceg = ceg_r;
    result.target_final_ceg = ceg_tf;
    result.rewrite_final_ceg = ceg_rf;

    callback(result, optional);

  } else {

    delete state_t.memory;
    delete state_r.memory;

    CEG_DEBUG(cout << "  (This case verified)" << endl;)

#ifdef DEBUG_CHECKER_PERFORMANCE
    microseconds perf_ceg = duration_cast<microseconds>(system_clock::now().time_since_epoch());
    ceg_time_ += (perf_ceg - perf_solve).count();
#endif

    result.verified = true;
    result.has_ceg = false;
    result.has_error = false;
    result.error_message = "";
    callback(result, optional);

  }


}

/** Construct an unrolled version of a Cfg for a given path, and populate the
 * linemap data structure that maps lines of the unrolled CFG to those of the
 * original program. */
void SmtObligationChecker::generate_linemap(const Cfg& cfg, const CfgPath& p, LineMap& to_populate, bool is_rewrite, Code& unrolled) {
  auto& function = cfg.get_function();
  auto& code = cfg.get_code();

  size_t line_no = 0;
  for (auto node : p) {
    if (cfg.num_instrs(node) == 0)
      continue;

    size_t start_index = cfg.get_index(std::pair<Cfg::id_type, size_t>(node, 0));
    size_t end_index = start_index + cfg.num_instrs(node);
    for (size_t i = start_index; i < end_index; ++i) {

      /** build derefernece info */
      DereferenceInfo deref;
      deref.line_number = line_no;
      deref.is_rewrite = is_rewrite;
      deref.is_invariant = false;
      deref.implicit_dereference = false;

      LineInfo li;
      li.line_number = i;
      li.rip_offset = function.hex_offset(i) + function.get_rip_offset() + function.hex_size(i);
      li.deref = deref;
      to_populate[line_no++] = li;

      auto& instr = code[i];
      if(!instr.is_any_jump())
        unrolled.push_back(instr);
      else
        unrolled.push_back(Instruction(Opcode::NOP));
      assert(line_no == unrolled.size());

    }
  }
  unrolled.push_back(Instruction(Opcode::RET));

}

CpuState SmtObligationChecker::state_from_model(const string& name_suffix,
                                    vector<string> shadow_vars) {
  CpuState cs;

  // 64-bit GP registers
  for (size_t i = 0; i < r64s.size(); ++i) {
    stringstream name;
    name << r64s[i] << name_suffix;
    cs.gp[r64s[i]] = solver_.get_model_bv(name.str(), 64);
    //cout << "Var " << name.str() << " has value " << hex << cs.gp[r64s[i]].get_fixed_quad(0) << endl;
  }

  // XMMs/YMMs
  for (size_t i = 0; i < ymms.size(); ++i) {
    stringstream name;
    name << ymms[i] << name_suffix;
    cs.sse[ymms[i]] = solver_.get_model_bv(name.str(), 256);
  }

  // flags
  for (size_t i = 0; i < eflags.size(); ++i) {
    if (!cs.rf.is_status(eflags[i].index()))
      continue;

    stringstream name;
    name << eflags[i] << name_suffix;
    cs.rf.set(eflags[i].index(), solver_.get_model_bool(name.str()));
  }

  // shadow variables
  for(auto var : shadow_vars) {
    stringstream name;
    name << var << name_suffix;
    cs.shadow[var] = solver_.get_model_bv(name.str(), 64).get_fixed_quad(0);
  }

  // Figure out error code
  if (solver_.get_model_bool("sigbus" + name_suffix)) {
    cs.code = ErrorCode::SIGBUS_;
  } else if (solver_.get_model_bool("sigfpe" + name_suffix)) {
    cs.code = ErrorCode::SIGFPE_;
  } else if (solver_.get_model_bool("sigsegv" + name_suffix)) {
    cs.code = ErrorCode::SIGSEGV_;
  } else {
    cs.code = ErrorCode::NORMAL;
  }

  return cs;
}
