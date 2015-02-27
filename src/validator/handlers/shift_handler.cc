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


#include "src/validator/handlers/shift_handler.h"

using namespace std;
using namespace stoke;
using namespace x64asm;

const map<string, array<bool, 4>> ShiftHandler::to_right_sign_rotate_cf_ = {
  { "salb", {false, false, false, false} },
  { "salw", {false, false, false, false} },
  { "sall", {false, false, false, false} },
  { "salq", {false, false, false, false} },
  { "shlb", {false, false, false, false} },
  { "shlw", {false, false, false, false} },
  { "shll", {false, false, false, false} },
  { "shlq", {false, false, false, false} },
  { "sarb", {true, true, false, false} },
  { "sarw", {true, true, false, false} },
  { "sarl", {true, true, false, false} },
  { "sarq", {true, true, false, false} },
  { "shrb", {true, false, false, false} },
  { "shrw", {true, false, false, false} },
  { "shrl", {true, false, false, false} },
  { "shrq", {true, false, false, false} },
  { "rolb", {false, false, true, false} },
  { "rolw", {false, false, true, false} },
  { "roll", {false, false, true, false} },
  { "rolq", {false, false, true, false} },
  { "rorb", {true, false, true, false} },
  { "rorw", {true, false, true, false} },
  { "rorl", {true, false, true, false} },
  { "rorq", {true, false, true, false} },
  { "rclb", {false, false, true, true} },
  { "rclw", {false, false, true, true} },
  { "rcll", {false, false, true, true} },
  { "rclq", {false, false, true, true} },
  { "rcrb", {true, false, true, true} },
  { "rcrw", {true, false, true, true} },
  { "rcrl", {true, false, true, true} },
  { "rcrq", {true, false, true, true} },
};


Handler::SupportLevel ShiftHandler::get_support(const x64asm::Instruction& instr) {

  string opcode = get_opcode(instr);

  if(to_right_sign_rotate_cf_.find(opcode) != to_right_sign_rotate_cf_.end())
    return (Handler::SupportLevel)(Handler::BASIC | Handler::CEG);

  return Handler::NONE;

}

void ShiftHandler::build_circuit(const x64asm::Instruction& instr, SymState& state) {

  // Sanity check for support
  error_ = "";

  if(!get_support(instr)) {
    error_ = "Instruction not supported.";
    return;
  }

  string opcode = get_opcode(instr);

  // Get metadata about this instruction:
  // is the shift to the left or right?
  bool right = to_right_sign_rotate_cf_.at(opcode)[0];
  // signed or unsigned?
  bool sign = to_right_sign_rotate_cf_.at(opcode)[1];
  // shift or rotate
  bool rotate = to_right_sign_rotate_cf_.at(opcode)[2];
  // rotate CF or not?
  bool rotate_cf = to_right_sign_rotate_cf_.at(opcode)[3];

  Operand dest = instr.get_operand<Operand>(0);
  Operand shift = instr.get_operand<Operand>(1);

  assert(dest.size() >= 8);

  // Mask 5 bits for <= 32-bits in operand, and 6 bits otherwise
  // (see tempCount in Intel manual "Operation" section)
  uint64_t mask = 0x1f;
  if (dest.size() == 64)
    mask = 0x3f;

  // Compute shift amount, and the right number of zeros for typechecking.
  SymBitVector shift_amt = state[shift][7][0] & SymBitVector::constant(8, mask);

  if(rotate && !rotate_cf) {
    if(dest.size() > 8)
      shift_amt = SymBitVector::constant(dest.size() - 8, 0) || shift_amt;
  } else {
    shift_amt = SymBitVector::constant(dest.size() - 7, 0) || shift_amt;
  }

  // When rotating cf, need to do modulous
  if(rotate && rotate_cf)
    shift_amt = shift_amt % SymBitVector::constant(dest.size() + 1, dest.size() + 1);

  // If the shift is length 0, we don't set SF/ZF/PF
  auto operand_nonzero = shift_amt[7][0] != SymBitVector::constant(8, 0);

  // We need to compute a shift on a slightly larger register to get the carry flag.  so:
  SymBitVector extended_src;
  if(right && !rotate)
    extended_src = state[dest] || SymBitVector::constant(1,0);
  else if (!right && !rotate)
    extended_src = SymBitVector::constant(1,0) || state[dest];
  else if (rotate && rotate_cf)
    extended_src = SymBitVector::from_bool(state[eflags_cf]) || state[dest];
  else
    extended_src = state[dest];

  // If the shift is length 1, we do set the OF
  auto set_of = shift_amt[7][0] == SymBitVector::constant(8, 1);
  // If the shift amount is too large, CF is undefined for SHL/SHR
  auto undef_cf = (shift_amt[7][0] >= SymBitVector::constant(8, dest.size()));

  // Do the shift and extract final value and CF/OF flags
  // Note that the computation of CF/OF depends on instruction variant
  SymBitVector temp_dest;
  SymBitVector result;
  if(!rotate && right && !sign) {
    temp_dest = extended_src >> shift_amt;
    result = temp_dest[dest.size()][1];

    state.set(dest, result);

    // If not too large, CF is the lsb of extended result
    state.set(eflags_cf, undef_cf.ite(
                SymBool::var("CF_" + to_string(temp())),
                operand_nonzero.ite(temp_dest[0], state[eflags_cf])
              ));

    // If shift is length 1, OF is MSB of *original* operand
    state.set(eflags_of, set_of.ite(
                extended_src[dest.size()],
                state[eflags_of]
              ));

  } else if (!rotate && right && sign) {
    temp_dest = extended_src.s_shr(shift_amt);
    result = temp_dest[dest.size()][1];

    state.set(dest, result);

    // For SAR, CF is set so long as a shift happens
    state.set(eflags_cf, operand_nonzero.ite(
                temp_dest[0],
                state[eflags_cf]
              ));

    // The OF bit is set to 0 if this is a shift of length 1, otherwise left alone
    state.set(eflags_of, set_of.ite(
                SymBool::_false(),
                state[eflags_of]
              ));

  } else if (!rotate && !right) {
    temp_dest = extended_src << shift_amt;
    result = temp_dest[dest.size() - 1][0];

    state.set(dest, result);

    // If not too large, CF is the msb of extended result
    state.set(eflags_cf, undef_cf.ite(
                SymBool::var("CF_" + to_string(temp())),
                operand_nonzero.ite(temp_dest[dest.size()], state[eflags_cf])
              ));

    // The OF bit is 0 <=> MSB of result is same as carry flag (unless left alone)
    state.set(eflags_of, set_of.ite(
                state[eflags_cf] != result[dest.size() - 1],
                state[eflags_of]
              ));
  } else if (rotate && !rotate_cf) {

    // Do the shift and store the result
    int last_bit_shifted;
    if(right) {
      temp_dest = extended_src.ror(shift_amt);
      last_bit_shifted = dest.size() - 1;
    } else {
      temp_dest = extended_src.rol(shift_amt);
      last_bit_shifted = 0;
    }
    state.set(dest, temp_dest);

    // Set CF to last bit rotated, if any
    state.set(eflags_cf, operand_nonzero.ite(
                temp_dest[last_bit_shifted],
                state[eflags_cf]
              ));

    // Set OF (if needed) to xor of two MSB (for right shifts)
    // or xor of MSB, LSB (for left shifts)
    SymBool of;
    if(right) {
      of = temp_dest[dest.size() - 1] ^ temp_dest[dest.size() - 2];
    } else {
      of = temp_dest[dest.size() - 1] ^ temp_dest[0];
    }

    state.set(eflags_of, set_of.ite(of, SymBool::var("OF_" + to_string(temp()))));

  } else if (rotate && rotate_cf) {

    // Do the rotate and store the result
    if(right) {
      temp_dest = extended_src.ror(shift_amt);
    } else {
      temp_dest = extended_src.rol(shift_amt);
    }

    state.set(dest, temp_dest[dest.size()-1][0]);

    // Set CF (easy)
    state.set(eflags_cf, temp_dest[dest.size()]);

    // If the rotate is of size 0, don't touch OF
    // If the rotate is of size 1, do the previous case
    //   (i.e. xor two MSB when shifting right, or
    //         xor MSB, LSB when shifting left)
    // Otherwise, OF is undefined.
    SymBool of;
    if(right)
      of = temp_dest[dest.size() - 1] ^ temp_dest[dest.size() - 2];
    else
      of = temp_dest[dest.size()] ^ temp_dest[dest.size() - 1];

    state.set(eflags_of, set_of.ite(
                of,
                operand_nonzero.ite( state[eflags_of], SymBool::var("OF_" + to_string(temp())))
              ));
  }



  // Set S, Z, P, A flags for shifts
  if (!rotate) {

    // Set SF to MSB of result, unless there's no change
    state.set(eflags_sf, operand_nonzero.ite(
                result[dest.size()-1],
                state[eflags_sf]
              ));

    // Set ZF to whether the final value is zero, unless there's no change
    state.set(eflags_zf, operand_nonzero.ite(
                result == SymBitVector::constant(dest.size(), 0),
                state[eflags_zf]
              ));

    // SET PF to pairity of result, unless there's no change
    state.set(eflags_pf, operand_nonzero.ite(
                result[7][0].parity(),
                state[eflags_pf]
              ));

    // SET AF to undefined (fresh variable), unless no shift happened
    state.set(eflags_af, operand_nonzero.ite(
                SymBool::var("AF_" + to_string(temp())),
                state[eflags_af]
              ));
  }
}



