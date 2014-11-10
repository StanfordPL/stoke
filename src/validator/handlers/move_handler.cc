
#include "src/validator/handlers/move_handler.h"

using namespace stoke;
using namespace x64asm;
using namespace std;

MoveHandler::MoveSupport MoveHandler::lookup(const Instruction& instr) const {

  string opcode = get_opcode(instr);

  if (opcode == "movq")
    return MoveSupport::SIGN_EXTEND;

  return MoveSupport::NONE;
}

Handler::SupportLevel MoveHandler::is_supported(const Instruction& instr) {
  if(!operands_supported(instr))
    return SupportLevel::NONE;

  if(!lookup(instr))
    return SupportLevel::NONE;

  return (Handler::SupportLevel)(SupportLevel::BASIC | SupportLevel::CEG);
}

void MoveHandler::build_circuit(const Instruction& instr, SymState& ss) {

  assert(is_supported(instr));

  // Get the source and destination operands
  auto& dst = instr.get_operand<Operand>(0);
  auto& src = instr.get_operand<Operand>(1);

  // Compute the value to move into the destination
  auto& to_move = ss[src];
  
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

  // Compute the final destination value
  if (dst.type() == Type::EAX || dst.type() == Type::R_32) {
    // If we're targeting a 32-bit GP, zero-out upper 32 bits
    ss[dst] = SymBitVector::constant(32, 0) || to_move;
  } else {
    // Otherwise, preserve unset bits of destination
    ss[dst] = ss[dst][dst.size() - 1][src.size()] || to_move;
  }
}

