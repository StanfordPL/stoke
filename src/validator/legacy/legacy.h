
#ifndef STOKE_SRC_VALIDATOR_HANDLER_LEGACY_LEGACY_H
#define STOKE_SRC_VALIDATOR_HANDLER_LEGACY_LEGACY_H

#include "src/validator/handler.h"

namespace stoke {

/** Supports all variants of instructions that simply move bits from one register to another */
class LegacyHandler : public Handler {

public:
  SupportLevel get_support(const x64asm::Instruction& instr);

  void build_circuit(const x64asm::Instruction& instr, SymState& start);

private:

};

} //namespace stoke


#endif
