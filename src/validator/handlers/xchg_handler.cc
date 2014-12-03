// Copyright 2013-2015 Eric Schkufza, Rahul Sharma, Berkeley Churchill, Stefan Heule
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


#include "src/validator/handlers/xchg_handler.h"

using namespace std;
using namespace stoke;
using namespace x64asm;

Handler::SupportLevel XchgHandler::get_support(const x64asm::Instruction& instr) {

  string opcode = get_opcode(instr);

  if(opcode == "xchgb" || opcode == "xchgw" || opcode == "xchgl" || opcode == "xchgq")
    return (Handler::SupportLevel)(Handler::BASIC | Handler::CEG);

  return Handler::NONE;

}

void XchgHandler::build_circuit(const x64asm::Instruction& instr, SymState& state) {

  // Sanity check for support
  error_ = "";

  if(!get_support(instr)) {
    error_ = "Instruction not supported.";
    return;
  }

  // Get operands
  Operand dest = instr.get_operand<Operand>(0);
  Operand src = instr.get_operand<Operand>(1);

  // Swap
  auto tmp = state[dest];
  state.set(dest, state[src]);
  state.set(src, tmp);

}



