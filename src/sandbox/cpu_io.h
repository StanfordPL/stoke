#ifndef STOKE_SRC_SANDBOX_CPU_IO_H
#define STOKE_SRC_SANDBOX_CPU_IO_H

#include <map>
#include <vector>

#include "src/ext/x64asm/include/x64asm.h"

#include "src/state/cpu_state.h"

namespace stoke {

/** Helper class for assembling cpu io functions. */
class CpuIo {
 public:
  /** Returns a function which writes masked registers to hardware. */
  static x64asm::Function write(CpuState& cs,
      const x64asm::RegSet& mask = x64asm::RegSet::universe());

  /** Returns a function which reads masked registers from hardware
    unless otherwise specified in arg list. */
  static x64asm::Function read(CpuState& cs,
      const x64asm::RegSet& mask = x64asm::RegSet::universe(),
      const std::map<x64asm::R64, uint64_t*>& alts = std::map<x64asm::R64, uint64_t*>());
};

} // namespace stoke

#endif
