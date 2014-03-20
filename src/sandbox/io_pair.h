#ifndef STOKE_SRC_SANDBOX_IO_PAIR_H
#define STOKE_SRC_SANDBOX_IO_PAIR_H

#include "src/ext/x64asm/include/x64asm.h"

#include "src/state/cpu_state.h"

namespace stoke {

class IoPair {
  /** This class is for use by the sandbox only. */
  friend class Sandbox;
  /** This iterator exposes output states. */
  friend class output_iterator;

  /** Input state (this never changes). */
  CpuState in_;
  /** Copies input state to cpu. */
  x64asm::Function in2cpu_;

  /** Output state (this is modified as code executes). */
  CpuState out_;
  /** Copies output state to cpu. */
  x64asm::Function out2cpu_;
  /** Reads output state from cpu. */
  x64asm::Function cpu2out_;
  /** Sandboxes memory accesses for this output state. */
  x64asm::Function map_addr_;
};

} // namespace stoke

#endif
