
#ifndef STOKE_SRC_VALIDATOR_HANDLER_MOVE_HANDLER_H
#define STOKE_SRC_VALIDATOR_HANDLER_MOVE_HANDLER_H

#include <map>

#include "src/validator/handler.h"

namespace stoke {

/** Supports variants of mov, movz, movs */
class MoveHandler : public Handler {

public:
  SupportLevel get_support(const x64asm::Instruction& instr);

  void build_circuit(const x64asm::Instruction& instr, SymState& start);

private:

  enum MoveSupport {
    NONE = 0,
    SIGN_EXTEND = 1,
    ZERO_EXTEND = 2
  };

  static const std::map<std::string, bool> sign_extend_;
  static const std::map<std::string, uint16_t> truncate_;

};

} //namespace stoke


#endif
