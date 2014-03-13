#ifndef STOKE_STATE_CPU_STATE_H
#define STOKE_STATE_CPU_STATE_H

#include "src/state/error_code.h"
#include "src/state/regs.h"
#include "src/state/memory.h"

namespace stoke {

struct CpuState {
  /** Returns a new CpuState. */
  CpuState(size_t stack_size = 0, size_t heap_size = 0, uint64_t base = 0) :
    gp(16, 64), sse(16, 256) {
    stack.resize(0, stack_size);
    heap.resize(base, heap_size);
  }

  /** Bit-wise xor; ignores error code. */
  CpuState& operator^=(const CpuState& rhs) {
    gp ^= rhs.gp;
    sse ^= rhs.sse;
    stack ^= rhs.stack;
    heap ^= rhs.stack;

    return *this;
  }
  /** Bit-wise xor; ignores error code. */
  CpuState operator^(const CpuState& rhs) const {
    auto ret = *this;
    return ret ^= rhs;
  }

  /** Equality. */
  bool operator==(const CpuState& rhs) const {
    return code == rhs.code && gp == rhs.gp && sse == rhs.sse &&
           stack == rhs.stack && heap == rhs.heap;
  }
  /** Inequality. */
  bool operator!=(const CpuState& rhs) const {
    return !(*this == rhs);
  }

  /** The error code associated with this state. */
  ErrorCode code;
  /** General purpose register buffer. */
  Regs gp;
  /** SSE register buffer. */
  Regs sse;
  /** Stack. */
  Memory stack;
  /** Heap. */
  Memory heap;
};

} // namespace stoke

#endif
