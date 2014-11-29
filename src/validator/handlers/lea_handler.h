
#ifndef STOKE_SRC_VALIDATOR_HANDLER_LEA_HANDLER_H
#define STOKE_SRC_VALIDATOR_HANDLER_LEA_HANDLER_H

#include <map>

#include "src/validator/handler.h"

namespace stoke {

/** Supports lea[wlq] */
class LeaHandler : public Handler {

public:
  SupportLevel get_support(const x64asm::Instruction& instr);

  void build_circuit(const x64asm::Instruction& instr, SymState& start);

};

} //namespace stoke


#endif
