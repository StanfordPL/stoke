#include "src/sandbox/stack_snapshot.h"

using namespace x64asm;

namespace stoke {

bool StackSnapshot::check_abi(const CpuState& cs) const {
  for (const auto r : {
  rbx, rbp, rsp, r12, r13, r14, r15
}) {
    if (user_callee_save_.gp[r].get_fixed_quad(0) != cs.gp[r].get_fixed_quad(0)) {
      return false;
    }
  }
  return true;
}

} // namespace stoke
