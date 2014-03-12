#ifndef STOKE_STATE_CPU_STATE_H
#define STOKE_STATE_CPU_STATE_H

#include <iostream>

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

  /** I/O. */
  std::istream& read(std::istream& is);
  /** I/O. */
  std::ostream& write(std::ostream& os) const;

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

namespace std {

inline std::istream& operator>>(std::istream& is, stoke::CpuState& cs) {
  cs.read(is);
  return is;
}

inline std::ostream& operator<<(std::ostream& os, const stoke::CpuState& cs) {
  cs.write(os);
  return os;
}

} // namespace std

#endif
