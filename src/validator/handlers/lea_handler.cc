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


#include "src/validator/handlers/lea_handler.h"

using namespace std;
using namespace stoke;
using namespace x64asm;

Handler::SupportLevel LeaHandler::get_support(const x64asm::Instruction& instr) {

  string opcode = get_opcode(instr);

  if(opcode == "leaw" || opcode == "leal" || opcode == "leaq")
    return (Handler::SupportLevel)(Handler::BASIC | Handler::CEG);

  return Handler::NONE;

}

void LeaHandler::build_circuit(const x64asm::Instruction& instr, SymState& state) {

  // Sanity check for support
  error_ = "";

  if(!get_support(instr)) {
    error_ = "Instruction not supported.";
    return;
  }

  Operand dest = instr.get_operand<Operand>(0);
  M8 memory = instr.get_operand<M8>(1);

  uint16_t width = dest.size();

  // Compute the memory address
  SymBitVector address = state.get_addr(memory)[width-1][0];

  // Set the destination value; takes care of perserving other bits and setting other bits to zero
  state.set(dest, address);
}



