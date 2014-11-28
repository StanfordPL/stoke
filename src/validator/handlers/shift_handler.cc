
#include "src/validator/handlers/shift_handler.h"

using namespace std;
using namespace stoke;
using namespace x64asm;

const map<string, array<bool, 2>> ShiftHandler::to_right_sign_ = {
  { "salb", {false, false} },
  { "salw", {false, false} },
  { "sall", {false, false} },
  { "salq", {false, false} },
  { "shlb", {false, false} },
  { "shlw", {false, false} },
  { "shll", {false, false} },
  { "shlq", {false, false} },
  { "sarb", {true, true} },
  { "sarw", {true, true} },
  { "sarl", {true, true} },
  { "sarq", {true, true} },
  { "shrb", {true, false} },
  { "shrw", {true, false} },
  { "shrl", {true, false} },
  { "shrq", {true, false} }
};


Handler::SupportLevel ShiftHandler::get_support(const x64asm::Instruction& instr) {

  string opcode = get_opcode(instr);

  if(to_right_sign_.find(opcode) != to_right_sign_.end())
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
  bool right = to_right_sign_.at(opcode)[0];
  // signed or unsigned?
  bool sign = to_right_sign_.at(opcode)[1];

  Operand dest = instr.get_operand<Operand>(0);
  Operand shift = instr.get_operand<Operand>(1);

  // Mask 5 bits for <= 32-bits in operand, and 6 bits otherwise
  // (see tempCount in Intel manual "Operation" section)
  uint64_t mask = 0x1f;
  if (dest.size() == 64)
    mask = 0x3f;

  // Compute shift amount, and add a leading zero to make it typecheck when
  // shifting with the extended value below
  assert(dest.size() >= 8);
  auto shift_amt = SymBitVector::constant(dest.size() - 7, 0) ||
                   (state[shift][7][0] & SymBitVector::constant(8, mask));

  // We need to compute a shift on a slightly larger register to get the carry flag.  so:
  SymBitVector extended_src;
  if(right)
    extended_src = state[dest] || SymBitVector::constant(1,0);
  else
    extended_src = SymBitVector::constant(1,0) || state[dest];

  // If the shift is length 0, we don't set SF/ZF/PF
  auto set_szp = shift_amt != SymBitVector::constant(dest.size() + 1, 0);
  // If the shift is length 1, we do set the OF
  auto set_of = shift_amt == SymBitVector::constant(dest.size() + 1, 1);
  // If the shift amount is too large, CF is undefined for SHL/SHR
  auto undef_cf = (state[shift] > SymBitVector::constant(shift.size(), dest.size()));

  // Do the shift and extract final value and CF/OF flags
  // Note that the computation of CF/OF depends on instruction variant
  SymBitVector temp_dest;
  SymBitVector result;
  if(right && !sign) {
    temp_dest = extended_src >> shift_amt;
    result = temp_dest[dest.size()][1];

    state.set(dest, result);

    // If not too large, CF is the lsb of extended result
    state.set(eflags_cf, undef_cf.ite(
                SymBool::var("CF_" + to_string(temp())),
                set_szp.ite(temp_dest[0], state[eflags_cf])
              ));

    // If shift is length 1, OF is MSB of *original* operand
    state.set(eflags_of, set_of.ite(
                extended_src[dest.size()],
                state[eflags_of]
              ));

  } else if (right && sign) {
    temp_dest = extended_src.s_shr(shift_amt);
    result = temp_dest[dest.size()][1];

    state.set(dest, result);

    // For SAR, CF is set so long as a shift happens
    state.set(eflags_cf, set_szp.ite(
                temp_dest[0],
                state[eflags_cf]
              ));

    // The OF bit is set to 0 if this is a shift of length 1, otherwise left alone
    state.set(eflags_of, set_of.ite(
                SymBool::_false(),
                state[eflags_of]
              ));

  } else if (!right) {
    temp_dest = extended_src << shift_amt;
    result = temp_dest[dest.size() - 1][0];

    state.set(dest, result);

    // If not too large, CF is the msb of extended result
    state.set(eflags_cf, undef_cf.ite(
                SymBool::var("CF_" + to_string(temp())),
                set_szp.ite(temp_dest[dest.size()], state[eflags_cf])
              ));

    // The OF bit is 0 <=> MSB of result is same as carry flag (unless left alone)
    state.set(eflags_of, set_of.ite(
                state[eflags_cf] != result[dest.size() - 1],
                state[eflags_of]
              ));
  }

  // Set SF to MSB of result, unless there's no change
  state.set(eflags_sf, set_szp.ite(
              result[dest.size()-1],
              state[eflags_sf]
            ));

  // Set ZF to whether the final value is zero, unless there's no change
  state.set(eflags_zf, set_szp.ite(
              result == SymBitVector::constant(dest.size(), 0),
              state[eflags_zf]
            ));

  // SET PF to pairity of result, unless there's no change
  state.set(eflags_pf, set_szp.ite(
              result[7][0].pairity(),
              state[eflags_pf]
            ));

  // SET AF to undefined (fresh variable), unless no shift happened
  state.set(eflags_af, set_szp.ite(
              SymBool::var("AF_" + to_string(temp())),
              state[eflags_af]
            ));
}



