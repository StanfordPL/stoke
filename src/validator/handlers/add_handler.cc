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


#include "src/validator/handlers/add_handler.h"

using namespace std;
using namespace stoke;
using namespace x64asm;

Handler::SupportLevel AddHandler::get_support(const x64asm::Instruction& instr) {

  string opcode = get_opcode(instr);

  if(opcode == "addb" || opcode == "addw" || opcode == "addl" || opcode == "addq")
    return (Handler::SupportLevel)(Handler::BASIC | Handler::CEG | Handler::ANALYSIS);

  return Handler::NONE;

}

void AddHandler::build_circuit(const x64asm::Instruction& instr, SymState& state) {

  // Sanity check for support
  error_ = "";

  if(!get_support(instr)) {
    error_ = "Instruction not supported.";
    return;
  }

  // Fetch Operands
  Operand dest = instr.get_operand<Operand>(0);
  Operand src  = instr.get_operand<Operand>(1);

  SymBitVector src_bv = state[src];
  SymBitVector dst_bv = state[dest];

  uint16_t width = dest.size();

  // Sign/zero extend the source to destionation
  if (src.size() < dest.size()) {
    src_bv = src_bv.extend(dest.size());
    width = dest.size();
  }

  SymBitVector ext_src = SymBitVector::constant(2, 0) || src_bv;
  SymBitVector ext_dst = SymBitVector::constant(2, 0) || dst_bv;

  // Compute the final values
  SymBitVector total = ext_src + ext_dst;

  // Compute auxiliary carry
  SymBitVector aux = (SymBitVector::constant(1, 0) || state[src][3][0]) +
                     (SymBitVector::constant(1, 0) || dst_bv[3][0]);

  // Set the destination value; takes care of perserving
  // other bits and setting other bits to zero
  state.set(dest, total[width-1][0]);
  state.set(eflags_of, plus_of(src_bv[width-1], dst_bv[width-1], total[width-1]));
  state.set(eflags_cf, total[width] | total[width+1]);
  state.set(eflags_af, aux[4]);
  state.set_szp_flags(total[width-1][0]);
}



