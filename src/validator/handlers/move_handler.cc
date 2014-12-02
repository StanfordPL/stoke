
#include "src/validator/handlers/move_handler.h"

using namespace stoke;
using namespace x64asm;
using namespace std;

const map<string, bool> MoveHandler::sign_extend_ = {
  { "movq", true },
  { "movl", true },
  { "movw", true },
  { "movb", true },
  { "movsbw", true },
  { "movsbl", true },
  { "movsbq", true },
  { "movsd", false },
  { "movswl", true },
  { "movswq", true },
  { "movslq", true },
  { "movss", false },
  { "movzbw", false },
  { "movzbl", false },
  { "movzbq", false },
  { "movzwl", false },
  { "movzwq", false },
  { "movzlq", false }
};

const map<string, uint16_t> MoveHandler::truncate_ = {
  { "movsd", 64 },
  { "movss", 32 }
};

Handler::SupportLevel MoveHandler::get_support(const Instruction& instr) {
  string opcode = get_opcode(instr);


  if (sign_extend_.find(opcode) == sign_extend_.end())
    return SupportLevel::NONE;
  else
    return (Handler::SupportLevel)(SupportLevel::BASIC | SupportLevel::CEG);
}

void MoveHandler::build_circuit(const Instruction& instr, SymState& ss) {

  error_ = "";
  if(!get_support(instr)) {
    error_ = "Instruction not supported by move handler";
    return;
  }

  // Get the source and destination operands
  auto& dst = instr.get_operand<Operand>(0);
  auto& src = instr.get_operand<Operand>(1);

  // Compute the value to move into the destination
  auto to_move = ss[src];
  const auto opcode = get_opcode(instr);

  bool sign_extend = sign_extend_.at(opcode);
  uint16_t truncate = (truncate_.find(opcode) != truncate_.end() ? truncate_.at(opcode) : 0);

  if(dst.is_sse_register() && opcode == "movq") {
    // handles movq m/64, xmm and movq xmm, xmm
    // all sse operands for this handler should be xmm
    assert(dst.size() == 128);
    ss.set(dst, SymBitVector::constant(64, 0) || ss[src][63][0]);
    return;
  } else if (src.is_sse_register() && dst.is_typical_memory() && opcode == "movq") {
    // handles movq xmm, m/64
    assert(dst.size() == 64 && src.size() == 128);

    ss.set(dst, ss[src][63][0]);
    return;

  } else if(truncate) {
    // Case 0: this instruction expects us to truncate the source (e.g. movss)
    to_move = ss[dst][dst.size()-1][truncate] || ss[src][truncate-1][0];

  } else if (dst.size() > src.size()) {
    // Case 1: we need to extend the source (sign or not)
    if(sign_extend) {
      to_move = ss[src].extend(dst.size());
    } else {
      to_move = SymBitVector::constant(dst.size() - src.size(), 0) || ss[src];
    }

  } else if (src.size() > dst.size()) {
    // Case 2: we need to truncate the source
    to_move = ss[src][dst.size()-1][0];
  }

  /* Takes care of setting upper 32-bits of 64-bit registers, etc. */
  ss.set(dst, to_move);
}

