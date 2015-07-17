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

#include <string>
#include <iostream>
#include <sstream>
#include <vector>
#include <map>
#include <list>
#include <cassert>
#include <initializer_list>

#include "src/state/cpu_state.h"
#include "src/symstate/bitvector.h"
#include "src/validator/validator.h"

using namespace std;
using namespace stoke;
using namespace x64asm;


bool regset_is_supported(x64asm::RegSet rs) {

  /* Check to make sure all liveout are supported. */
  /* Right now we support gps, xmms, ACOPSZ eflags */
  RegSet supported = (RegSet::all_gps() | RegSet::all_ymms()) +
                     eflags_cf + eflags_of +
                     eflags_pf + eflags_sf + eflags_zf;

  // TODO mxcsr's presense here is a bug.  See #339.
  for(size_t i = 0; i < mxcsr.size(); ++i) {
    supported = supported + mxcsr[i];
  }

  // Do the check.
  if((supported & rs) != rs) {
    stringstream tmp;
    tmp << (rs - supported);

    string message =
      string("Validator only supports gps, xmms and eflags COPSZ in live out.") +
      string("  Not supported: ") + tmp.str();

    throw VALIDATOR_ERROR(message);
    return false;
  }
  return true;
}

bool Validator::is_supported(Instruction& i) {

  return handler_.get_support(i);
}

bool Validator::is_supported(Instruction& i) const {

  SymState s("");
  try {
    build_circuit(i, s);
    return true;
  } catch (validator_error e) {
    return false;
  }

  return false;
}

bool Validator::is_supported(const Opcode& op) const {
  return support_table_[(int)op];
}

void Validator::setup_support_table() {

  vector<string> att_opcodes = handler_.full_support_opcodes();

  for(size_t i = 0; i < X64ASM_NUM_OPCODES; ++i) {
    Opcode op = (Opcode)i;
    string att = Handler::att_[op];
    if(find(att_opcodes.begin(), att_opcodes.end(), att) != att_opcodes.end()) {
      support_table_[i] = true;
    } else {
      support_table_[i] = false;
    }
  }

}


void Validator::generate_constraints(const stoke::Cfg& f1, const stoke::Cfg& f2,
                                     SymState& f1_final, SymState& f2_final,
                                     vector<SymBool>& constraints) const {

  // Check to make sure def-ins/live-outs agree
  if (f1.def_ins() != f2.def_ins()) {
    throw VALIDATOR_ERROR("Def-ins of the two CFGs differ");
  }
  if (f1.live_outs() != f2.live_outs()) {
    throw VALIDATOR_ERROR("Live-outs of the two CFGs differ");
  }
  // Check that the regsets are supported, throw an error otherwise
  regset_is_supported(f1.def_ins());
  regset_is_supported(f1.live_outs());

  // Create starting symbolic states
  SymState init("");

  SymState first("1_INIT");
  SymState second("2_INIT");

  for(auto it : first.equality_constraints(init, f1.def_ins()))
    constraints.push_back(it);

  for(auto it : second.equality_constraints(init, f1.def_ins()))
    constraints.push_back(it);

  // Setup aliasing analyses
  AliasAnalysis first_analysis(f1.get_code());
  AliasAnalysis second_analysis(f2.get_code());

  first.memory.set_analysis(&first_analysis);
  second.memory.set_analysis(&second_analysis);

  // Build the circuits
  build_circuit(f1, first);
  build_circuit(f2, second);

  for(auto it : first.constraints)
    constraints.push_back(it);
  for(auto it : second.constraints)
    constraints.push_back(it);

  // Assert inequality of the final states
  SymBool inequality = SymBool::_false();
  for(auto it : first.equality_constraints(second, f1.live_outs())) {
    inequality = inequality | !it;
  }

  constraints.push_back(inequality);
  f1_final = first;
  f2_final = first;

  // Create states to track the final values on each side
  // (this is to get a counterexample)
  SymState first_outputs("1_FINAL");
  SymState second_outputs("2_FINAL");

  for(auto it : first_outputs.equality_constraints(first, f1.live_outs()))
    constraints.push_back(it);
  for(auto it : second_outputs.equality_constraints(second, f1.live_outs()))
    constraints.push_back(it);

  /*
  cout << endl;
  cout << "============= CONSTRAINTS =====================" << endl;
  for(auto it : constraints)
    cout << it << endl;
  */
}

void Validator::build_circuit(const Instruction& instr, SymState& state) const {

  /* No need to do anything for labels/nops */
  if(instr.is_label_defn() || instr.is_nop())
    return;

  /* For now, we don't handle any control flow */
  if(instr.is_any_jump() || instr.is_any_call() || instr.is_any_return()) {
    stringstream ss;
    ss << "Control flow unsupported: " << instr;
    throw VALIDATOR_ERROR(ss.str());
  }

  /* Otherwise, run the handler and check for errors */
  if(!handler_.get_support(instr)) {
    stringstream ss;
    ss << "Instruction not supported: " << instr;
    throw VALIDATOR_ERROR(ss.str());
  }

  handler_.build_circuit(instr, state);

  if(handler_.has_error()) {
    stringstream ss;
    ss << "Error building circuit for: " << instr << ".";
    ss << "Handler says: " << handler_.error();
    throw VALIDATOR_ERROR(ss.str());
  }

  /*
  cout << endl;
  cout << "====== STATE AFTER INSTRUCTION " << instr << endl;
  for(size_t i = 0; i < r64s.size(); ++i) {
    cout << r64s[i] << ": " << state[r64s[i]] << endl;
  }
  */
}

void Validator::build_circuit(const Cfg& cfg, SymState& state) const {

  Code code = cfg.get_code();

  for(size_t i = 0; i < code.size(); ++i) {

    if(code[i].is_any_return())
      break;

    state.set_lineno(i);
    build_circuit(code[i], state);
  }
}

/** Takes a *sorted* list of addresses along with the size of the read/write.
 * Determines the stack/heap bounds if we put the first 'pos' addresses in the
 * heap and the remaining 'count - pos' addresses in the stack.  Also checks
 * that the split is "valid", i.e. no read is both in the stack/heap; this
 * check is needed because the sorting doesn't account for overlapping reads
 * (this is the boolean returned). */
bool compute_split(vector<pair<uint64_t, uint16_t>> addresses, size_t pos,
                   uint64_t& heap_min, uint64_t& heap_size,
                   uint64_t& stack_min, uint64_t& stack_size) {

  size_t count = addresses.size();

  // Compute heap bounds
  if(pos) {
    heap_min = addresses[0].first;
    heap_size = addresses[pos-1].first + addresses[pos-1].second - heap_min;
  } else {
    heap_min = 0;
    heap_size = 0;
  }

  // Compute stack bounds
  if(pos == count) {
    stack_min = 0;
    stack_size = 0;
  } else {
    stack_min = addresses[pos].first;
    stack_size = addresses[count-1].first + addresses[count-1].second - stack_min;
  }

  // Check the bounds work
  for(auto p : addresses) {
    if (p.first >= heap_min && (p.first + p.second) <= (heap_min + heap_size - 1))
      continue;
    if (p.first >= stack_min && (p.first + p.second) <= (stack_min + stack_size - 1))
      continue;

    return false;
  }

  return true;
}

CpuState Validator::state_from_model(SMTSolver& smt, const string& name_suffix,
                                     const SymMemory* memory, const SymMemory* memory2) {

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

  // Figure out memory, if needed (this is the last thing).  We can get a list
  // of concrete addresses accessed, and need to split these addresses into
  // heap/stack.  My goal is to just optimize the size of each of the heap and
  // the stack; the algorithm is to just sort the addresses and try every
  // possible place to split them.  This is O(n^2) where n is the number of
  // addresses.  The sorting O(n*log n) is dominated by the loop where we check
  // the goodness of each split; calculating the goodness costs O(n) and we
  // need to do this O(n) times.

  // Generate default memory
  cs.stack.resize(0x700000000, 0);
  cs.heap.resize(0x100000000, 0);
  cs.data.resize(0x000000000, 0);
  if(!memory && !memory2) {
    return cs;
  }

  auto concrete = vector<pair<uint64_t, uint16_t>>();
  if(memory) {
    for(auto p : memory->get_address_vars()) {
      concrete.push_back(pair<uint64_t, uint16_t>(smt.get_model_bv(p.first, 1).get_fixed_quad(0), p.second));
    }
  }
  if(memory2) {
    for(auto p : memory2->get_address_vars()) {
      concrete.push_back(pair<uint64_t, uint16_t>(smt.get_model_bv(p.first, 1).get_fixed_quad(0), p.second));
    }
  }

  if (concrete.size() == 0) {
    // no memory
    return cs;
  }

  auto compare = [] (const pair<uint64_t, uint16_t>& p1, const pair<uint64_t, uint16_t>& p2) {
    if(p1.first - p2.first == 0)
      return (int64_t)(p1.second - p2.second);
    return (int64_t)(p1.first - p2.first);
  };
  sort(concrete.begin(), concrete.end(), compare);

  uint64_t heap_min, heap_size, stack_min, stack_size;
  bool ok = compute_split(concrete, 0, heap_min, heap_size, stack_min, stack_size);
  assert(ok);

  uint64_t best = heap_size + stack_size;
  size_t best_index = 0;
  for (size_t i = 1; i < concrete.size(); ++i) {
    ok = compute_split(concrete, i, heap_min, heap_size, stack_min, stack_size);
    if(!ok)
      continue;
    uint64_t quality = heap_size + stack_size;
    if(quality < best && heap_size < quality && stack_size < quality) {
      best = quality;
      best_index = i;
    }
  }

  ok = compute_split(concrete, best_index, heap_min, heap_size, stack_min, stack_size);
  assert(ok);

  if(stack_size > 4096 || heap_size > 4096) {
    // Failed to allocate memory, oh well.
    return cs;
  }

  cs.stack.resize(stack_min, stack_size); //base, size
  cs.heap.resize(heap_min, heap_size);  //base, size

  // Now set the defined bits
  for(auto p : concrete) {
    if(cs.stack.in_range(p.first) && cs.stack.in_range(p.first + p.second - 1)) {
      for(size_t i = 0; i < p.second; ++i) {
        cs.stack.set_valid(p.first + i, true);
      }
    }
    if(cs.heap.in_range(p.first) && cs.heap.in_range(p.first + p.second - 1)) {
      for(size_t i = 0; i < p.second; ++i) {
        cs.heap.set_valid(p.first + i, true);
      }
    }
  }

  return cs;

}




bool Validator::validate(const Cfg& target, const Cfg& rewrite, CpuState& counter_example)
{


#ifdef DEBUG_VALIDATOR
  std::cout << "Enter the dragon!" << std::endl;
#endif
  // State
  has_error_ = false;
  init_mm();

  try {

    // Generate constraints
    vector<SymBool> constraints;
    SymState target_final;
    SymState rewrite_final;
    generate_constraints(target, rewrite, target_final, rewrite_final, constraints);

    // Run the solver
    bool is_sat = solver_.is_sat(constraints);

    if(solver_.has_error())
      throw VALIDATOR_ERROR("solver: " + solver_.get_error());

    // Do we have a counterexample?
    if (is_sat && solver_.has_model()) {

      counterexample_valid_ = true;
      counterexample_ =      state_from_model(solver_, "_", &target_final.memory, &rewrite_final.memory);
      target_final_state_  = state_from_model(solver_, "_1_FINAL");
      rewrite_final_state_ = state_from_model(solver_, "_2_FINAL");

      counter_example = counterexample_;

    } else {
      counterexample_valid_ = false;
    }

    stop_mm();
    return !is_sat;

  } catch(validator_error e) {

    has_error_ = true;
    error_message_ = e.get_message();
    error_file_ = e.get_file();
    error_line_ = e.get_line();
    counterexample_valid_ = false;

    stop_mm();
    return false;
  }

  assert(false);
  stop_mm();
  return false;
}



