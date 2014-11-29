
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
  SymBitVector address = SymBitVector::constant(width, memory.get_disp());

  if(memory.contains_base())
    address = address + state[memory.get_base()];

  if(memory.contains_index())
    address = address + state[memory.get_index()]*SymBitVector::constant(64, memory.get_scale());

  // Set the destination value; takes care of perserving other bits and setting other bits to zero
  state.set(dest, address);
}



