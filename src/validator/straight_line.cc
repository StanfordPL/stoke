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
#include "src/validator/straight_line.h"

using namespace cpputil;
using namespace std;
using namespace stoke;
using namespace x64asm;


void StraightLineValidator::generate_constraints(const stoke::Cfg& f1, const stoke::Cfg& f2,
    SymState& f1_final, SymState& f2_final,
    vector<SymBool>& constraints) const {

  // Verify def-ins, live-outs, support for instructions
  sanity_checks(f1, f2);

  // Create starting symbolic states
  SymState init("");

  SymState first("1_INIT");
  SymState second("2_INIT");

  for (auto it : first.equality_constraints(init, f1.def_ins()))
    constraints.push_back(it);

  for (auto it : second.equality_constraints(init, f1.def_ins()))
    constraints.push_back(it);

  // Setup aliasing analyses
  AliasAnalysis first_analysis(f1.get_code());
  AliasAnalysis second_analysis(f2.get_code());

  first.memory = new DeprecatedMemory();
  second.memory = new DeprecatedMemory();
  static_cast<DeprecatedMemory*>(first.memory)->set_analysis(&first_analysis);
  static_cast<DeprecatedMemory*>(second.memory)->set_analysis(&second_analysis);
  first.memory->set_parent(&first);
  second.memory->set_parent(&second);

  // Build the circuits
  build_circuit(f1, first);
  build_circuit(f2, second);

  for (auto it : first.constraints)
    constraints.push_back(it);
  for (auto it : second.constraints)
    constraints.push_back(it);

  // Assert inequality of the final states
  SymBool inequality = SymBool::_false();
  for (auto it : first.equality_constraints(second, f1.live_outs())) {
    inequality = inequality | !it;
  }

  constraints.push_back(inequality);
  f1_final = first;
  f2_final = first;

  // Create states to track the final values on each side
  // (this is to get a counterexample)
  SymState first_outputs("1_FINAL");
  SymState second_outputs("2_FINAL");

  for (auto it : first_outputs.equality_constraints(first, f1.live_outs()))
    constraints.push_back(it);
  for (auto it : second_outputs.equality_constraints(second, f1.live_outs()))
    constraints.push_back(it);

  /*
  cout << endl;
  cout << "============= CONSTRAINTS =====================" << endl;
  for(auto it : constraints)
    cout << it << endl;
    */
}

void StraightLineValidator::build_circuit(const Instruction& instr, SymState& state) const {

  /* No need to do anything for labels/nops */
  if (instr.is_label_defn() || instr.is_nop())
    return;

  /* For now, we don't handle any control flow */
  if ((instr.is_any_jump() || instr.is_any_call() || instr.is_any_return()) && instr.get_opcode() != Opcode::CALL_LABEL) {
    stringstream ss;
    ss << "Control flow unsupported: " << instr;
    throw VALIDATOR_ERROR(ss.str());
  }

  /* Otherwise, run the handler and check for errors */
  if (!handler_.get_support(instr)) {
    stringstream ss;
    ss << "Instruction not supported: " << instr;
    throw VALIDATOR_ERROR(ss.str());
  }

  handler_.build_circuit(instr, state);

  if (handler_.has_error()) {
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

void StraightLineValidator::build_circuit(const Cfg& cfg, SymState& state) const {

  Code code = cfg.get_code();

  for (size_t i = 0; i < code.size(); ++i) {

    if (code[i].is_any_return())
      break;

    state.set_lineno(i);
    build_circuit(code[i], state);
  }
}



CpuState StraightLineValidator::state_from_model(SMTSolver& smt, const string& name_suffix,
    const DeprecatedMemory* memory, const DeprecatedMemory* memory2) {

  CpuState cs = Validator::state_from_model(smt, name_suffix);

  // populate address map
  auto concrete = map<uint64_t, BitVector>();

  for (size_t i = 0; i < 2; ++i) {
    auto mem = i ? memory : memory2;
    if (!mem)
      continue;
    for (auto p : mem->get_address_vars()) {
      auto address = smt.get_model_bv(p.first, 64).get_fixed_quad(0);
      concrete[address] = BitVector(p.second);
      //cout << "memory var name: " << p.first << " of size " << p.second << endl;
      //cout << "  address: " << hex << address << endl;
    }
  }

  // add to testcase
  memory_map_to_testcase(concrete, cs);
  /*
  cout << "Generated TC: " << endl;
  cout << cs << endl;
  */

  return cs;

}


bool StraightLineValidator::verify(const Cfg& target, const Cfg& rewrite) {

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

    if (solver_.has_error())
      throw VALIDATOR_ERROR("solver: " + solver_.get_error());

    // Do we have a counterexample?
    if (is_sat && solver_.has_model()) {

      counterexample_valid_ = true;
      counterexample_ =      state_from_model(solver_, "_",
                                              static_cast<DeprecatedMemory*>(target_final.memory),
                                              static_cast<DeprecatedMemory*>(rewrite_final.memory));
      target_final_state_  = Validator::state_from_model(solver_, "_1_FINAL");
      rewrite_final_state_ = Validator::state_from_model(solver_, "_2_FINAL");

    } else {
      counterexample_valid_ = false;
    }

    reset_mm();
    return !is_sat;

  } catch (validator_error e) {

    has_error_ = true;
    error_= e.get_message();
    error_file_ = e.get_file();
    error_line_ = e.get_line();
    counterexample_valid_ = false;

    reset_mm();
    return false;
  }

  assert(false);
  reset_mm();
  return false;
}



