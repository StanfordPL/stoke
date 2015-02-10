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


#include "src/validator/error.h"
#include "src/validator/handlers/conditional_handler.h"

using namespace std;
using namespace stoke;
using namespace x64asm;

Handler::SupportLevel ConditionalHandler::get_support(const x64asm::Instruction& instr) {

  string opcode = get_opcode(instr);

  if(opcode.substr(0,3) == "set" || opcode.substr(0,4) == "cmov")
    return (Handler::SupportLevel)(Handler::BASIC | Handler::CEG);

  return Handler::NONE;

}

SymBool ConditionalHandler::condition_predicate(const string& cc, const SymState& ss) {


  //CF = 0 and ZF = 0
  if (cc == "a" || cc == "nbe") {
    return !ss[eflags_cf] & !ss[eflags_zf];
  }

  // CF = 0
  if (cc == "ae" || cc == "nb" || cc == "nc") {
    return !ss[eflags_cf];
  }

  // CF = 1
  if (cc == "b" || cc == "c" || cc == "nae") {
    return ss[eflags_cf];
  }

  // CF = 1 OR ZF = 1
  if (cc == "be" || cc == "na") {
    return ss[eflags_cf] | ss[eflags_zf];
  }

  // ZF = 1
  if (cc == "e" || cc == "z") {
    return ss[eflags_zf];
  }

  // ZF = 0 and SF = OF
  if (cc == "g" || cc == "nle") {
    return !ss[eflags_zf] & (ss[eflags_sf] == ss[eflags_of]);
  }

  // SF = OF
  if (cc == "ge" || cc == "nl") {
    return ss[eflags_sf] == ss[eflags_of];
  }

  // SF != OF
  if (cc == "l" || cc == "nge") {
    return ss[eflags_sf] != ss[eflags_of];
  }

  // ZF = 1 or SF != OF
  if (cc == "le" || cc == "ng") {
    return ss[eflags_zf] | (ss[eflags_sf] != ss[eflags_of]);
  }

  // ZF = 0
  if (cc == "ne" || cc == "nz") {
    return !ss[eflags_zf];
  }

  // OF = 0
  if (cc == "no") {
    return !ss[eflags_of];
  }

  // PF = 0
  if (cc == "np" || cc == "po") {
    return !ss[eflags_pf];
  }

  // SF = 0
  if (cc == "ns") {
    return !ss[eflags_sf];
  }

  // OF = 1
  if (cc == "o") {
    return ss[eflags_of];
  }

  // PF = 1
  if (cc == "p" || cc == "pe") {
    return ss[eflags_pf];
  }

  // SF = 1
  if (cc == "s") {
    return ss[eflags_sf];
  }

  string message = "Condition flag " + cc + " is not handled.";
  throw VALIDATOR_ERROR(message);

}

void ConditionalHandler::build_circuit(const x64asm::Instruction& instr, SymState& state) {

  string opcode = get_opcode(instr);

  error_ = "";
  if(!get_support(instr)) {
    error_ = "Instruction not supported";
    return;
  }

  bool cmov = opcode.substr(0, 4) == "cmov";

  // Get operands
  Operand dest = instr.get_operand<Operand>(0);
  Operand src = instr.get_operand<Operand>(1);

  // Get condition predicate
  string predicate;
  if(cmov)
    predicate = opcode.substr(4, opcode.size() - 5);
  else
    predicate = opcode.substr(3, opcode.size() - 3);

  SymBool doit = condition_predicate(predicate, state);

  // Perform the action

  if(cmov) {
    state.set(dest, doit.ite(state[src], state[dest]));
  } else {
    state.set(dest, doit.ite(SymBitVector::constant(8, 1),
                             SymBitVector::constant(8, 0)));
  }

}



