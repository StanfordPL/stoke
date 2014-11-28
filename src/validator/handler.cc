
#include "src/validator/handler.h"

using namespace stoke;
using namespace x64asm;
using namespace std;

/* Returns true if the validator supports all the operands of the instruction. */
bool Handler::operands_supported(const Instruction& instr) {

  for(size_t i = 0; i < instr.arity(); ++i) {
    auto& o = instr.get_operand<Operand>(i);
    if (!o.is_gp_register() && !o.is_sse_register() && !o.is_immediate()) {
      error_ = "Operand " + to_string(i) + " not supported.";
      return false;
    }
  }

  return true;
}


const array<const char*, 3801> Handler::att_ = {{
    "<label definition>"
#include "src/ext/x64asm/src/opcode.att"
  }
};

uint64_t Handler::temporary_ = 0;

