
#ifndef STOKE_SRC_VALIDATOR_HANDLER_SHIFT_HANDLER_H
#define STOKE_SRC_VALIDATOR_HANDLER_SHIFT_HANDLER_H

#include <map>

#include "src/validator/handler.h"

namespace stoke {

/** Supports all sh[rl], sar, ro[lr] variants */
class ShiftHandler : public Handler {

public:
  SupportLevel get_support(const x64asm::Instruction& instr);

  void build_circuit(const x64asm::Instruction& instr, SymState& start);

private:
  const static std::map<std::string, std::array<bool, 4>> to_right_sign_rotate_cf_;
};

} //namespace stoke


#endif
