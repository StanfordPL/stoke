#ifndef STOKE_TOOLS_TARGET_CPU_INFO_H
#define STOKE_TOOLS_TARGET_CPU_INFO_H

#include "src/ext/x64asm/include/x64asm.h"

namespace stoke {

class CpuInfo {
public:
  static x64asm::FlagSet get_flags();
};

} // namespace stoke

#endif
