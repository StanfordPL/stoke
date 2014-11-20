
#include "src/validator/handlers/move_handler.h"

using namespace stoke;
using namespace x64asm;
using namespace std;

MoveHandler::MoveSupport MoveHandler::lookup(const Instruction& instr) const {

  string opcode = get_opcode(instr);

  if (opcode == "movq" || opcode == "movl" || opcode == "movw" || opcode == "movb" ||
      opcode == "movsbw" || opcode == "movsbl" || opcode == "movsbq" ||
      opcode == "movswl" || opcode == "movswq" || opcode == "movslq")
    return MoveSupport::SIGN_EXTEND;

  if (opcode == "movzbw" || opcode == "movzbl" || opcode == "movzbq" ||
      opcode == "movzwl" || opcode == "movzwq" || opcode == "movzlq")
    return MoveSupport::ZERO_EXTEND;

  return MoveSupport::NONE;
}

Handler::SupportLevel MoveHandler::get_support(const Instruction& instr) {
  cout << "[MoveHandler] Checking support for " << instr << endl;
  if(!operands_supported(instr))
    return SupportLevel::NONE;

  cout << "[MoveHandler]     ...operands ok" << endl;

  if(!lookup(instr))
    return SupportLevel::NONE;

  cout << "[MoveHandler]     ...instruction ok" << endl;

  return (Handler::SupportLevel)(SupportLevel::BASIC | SupportLevel::CEG);
}

void MoveHandler::build_circuit(const Instruction& instr, SymState& ss) {

  assert(get_support(instr));

  // Get the source and destination operands
  auto& dst = instr.get_operand<Operand>(0);
  auto& src = instr.get_operand<Operand>(1);

  // Compute the value to move into the destination
  auto to_move = ss[src];

  if (dst.size() > src.size()) {
    // Case 1: we need to extend the source (sign or not)
    bool sign_extend = lookup(instr) == MoveSupport::SIGN_EXTEND;
    if(sign_extend) {
      to_move = ss[src].extend(dst.size());
    } else {
      to_move = SymBitVector::constant(dst.size() - src.size(), 0) || ss[src];
    }

  } else if (src.size() > dst.size()) {
    // Case 2: we need to truncate the source
    to_move = ss[src][src.size()-1][0];
  }

  /* Takes care of setting upper 32-bits of 64-bit registers, etc. */
  ss.set(dst, to_move);
}

