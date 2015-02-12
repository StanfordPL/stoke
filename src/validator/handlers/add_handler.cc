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


#include "src/validator/handlers/add_handler.h"

using namespace std;
using namespace stoke;
using namespace x64asm;

Handler::SupportLevel AddHandler::get_support(const x64asm::Instruction& instr) {

  string opcode = get_opcode(instr);

  if(opcode == "adcb" || opcode == "adcw" || opcode == "adcl" || opcode == "adcq")
    return (Handler::SupportLevel)(Handler::BASIC | Handler::CEG | Handler::ANALYSIS);

  if(opcode == "addb" || opcode == "addw" || opcode == "addl" || opcode == "addq")
    return (Handler::SupportLevel)(Handler::BASIC | Handler::CEG | Handler::ANALYSIS);

  if(opcode == "cmpb" || opcode == "cmpw" || opcode == "cmpl" || opcode == "cmpq")
    return (Handler::SupportLevel)(Handler::BASIC | Handler::CEG | Handler::ANALYSIS);

  if(opcode == "sbbb" || opcode == "sbbw" || opcode == "sbbl" || opcode == "sbbq")
    return (Handler::SupportLevel)(Handler::BASIC | Handler::CEG | Handler::ANALYSIS);

  if(opcode == "subb" || opcode == "subw" || opcode == "subl" || opcode == "subq")
    return (Handler::SupportLevel)(Handler::BASIC | Handler::CEG | Handler::ANALYSIS);

  if(opcode == "xaddb" || opcode == "xaddw" || opcode == "xaddl" || opcode == "xaddq")
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

  string opcode = get_opcode(instr);

  /* Use the carry flag in the addition? */
  bool carry = opcode.substr(0, 3) == "adc" ||
               opcode.substr(0, 3) == "sbb";

  /* Flip the two arguments before adding */
  bool exchange = opcode.substr(0, 4) == "xadd";

  /* Negate the source argument? */
  bool subtract = opcode.substr(0, 3) == "sub" ||
                  opcode.substr(0, 3) == "sbb" ||
                  opcode.substr(0, 3) == "cmp";

  /* Don't actually write out the result */
  bool compare = opcode.substr(0, 3) == "cmp";

  // Fetch Operands
  Operand dest = instr.get_operand<Operand>(0);
  Operand src  = instr.get_operand<Operand>(1);

  // Do the exchange if need be
  if(exchange) {
    SymBitVector tmp = state[src];
    state.set(src, state[dest]);
    state.set(dest, tmp);
  }

  SymBitVector src_bv = state[src];
  SymBitVector dst_bv = state[dest];

  uint16_t width = dest.size();

  // Sign/zero extend the source to destionation
  if (src.size() < dest.size()) {
    src_bv = src_bv.extend(dest.size());
  }

  if(subtract) {
    src_bv = !src_bv;
  }

  // Arrange for subtraction, carry flags, etc.
  SymBitVector ext_src = SymBitVector::constant(1, 0) || src_bv;
  SymBitVector ext_dst = SymBitVector::constant(1, 0) || dst_bv;

  if(subtract) {
    // This addition takes care of two things at once; on one hand,
    // if finishes the two's complement negation started earlier.
    // On the other, it adds one to the src if the carry flag is
    // set.  These are accomplished simultaneously here.
    if(!carry)
      ext_src = ext_src + SymBitVector::constant(width + 1, 1);
    else
      ext_src = state[eflags_cf].ite( ext_src,
                                      ext_src + SymBitVector::constant(width + 1, 1));

  }

  if(carry && !subtract) {
    ext_src = state[eflags_cf].ite(
                ext_src + SymBitVector::constant(width + 1, 1),
                ext_src);
  }

  // Compute the final values
  SymBitVector total = ext_src + ext_dst;
  // Compute auxiliary carry
  SymBitVector aux = (SymBitVector::constant(1, 0) || state[src][3][0]) +
                     (SymBitVector::constant(1, 0) || dst_bv[3][0]);

  // Set the destination value; takes care of perserving
  // other bits and setting other bits to zero
  if(!compare)
    state.set(dest, total[width-1][0]);

  state.set(eflags_of, plus_of(src_bv[width-1], dst_bv[width-1], total[width-1]));

  if(!subtract)
    state.set(eflags_cf, total[width]);
  else
    state.set(eflags_cf, !total[width]);

  state.set(eflags_af, aux[4]);
  state.set_szp_flags(total[width-1][0]);
}



