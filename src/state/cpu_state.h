#ifndef STOKE_STATE_CPU_STATE_H
#define STOKE_STATE_CPU_STATE_H

#include "src/state/error_code.h"
#include "src/state/regs.h"
#include "src/state/memory.h"

namespace stoke {

/** A datastructure representation of a hardware CPU state. */
struct CpuState {
  /** Returns a new CpuState. */
  CpuState(size_t stack_size = 0, size_t heap_size = 0, uint64_t base = 0) {
    stack.set_base(0).resize(stack_size);
    stack.set_base(base).resize(heap_size);
  }

  /** Comparison based on components. */
  bool operator==(const CpuState& rhs) const {
    return code == rhs.code && gp == rhs.gp && sse == rhs.sse &&
           stack == rhs.stack && heap == rhs.heap;
  }
  /** Comparison based on components. */
  bool operator!=(const CpuState& rhs) const {
    return !(*this == rhs);
  }

  /** Bit-wise operation in terms of components. */
  CpuState& operator^=(const CpuState& rhs) {
    gp ^= rhs.gp;
    sse ^= rhs.sse;
    stack ^= rhs.stack;
    heap ^= rhs.stack;

    return *this;
  }

  /** Bit-wise operation in terms of components. */
  CpuState operator^(const CpuState& rhs) const {
    auto ret = *this;
    return ret ^= rhs;
  }

  /** I/O. */
  std::istream& read(std::istream& is) {
    code = ErrorCode::NORMAL;
    gp.read(is);
    sse.read(is);
    stack.read(is);
    heap.read(is);

    return is;
  }

  /** I/O. */
  std::ostream& write(std::ostream& os) const {
    const char* gps[] = {
      "%rax", "%rcx", "%rdx", "%rbx", "%rsp", "%rbp", "%rsi", "%rdi",
      "%r8", "%r9", "%r10", "%r11", "%r12", "%r13", "%r14", "%r15"
    };
    const char* sses[] = {
      "%ymm0", "%ymm1", "%ymm2", "%ymm3", "%ymm4", "%ymm5", "%ymm6", "%ymm7",
      "%ymm8", "%ymm9", "%ymm10", "%ymm11", "%ymm12", "%ymm13", "%ymm14", "%ymm15"
    };
    gp.write(os, gps, 5);
    os << std::endl;
    sse.write(os, sses, 3);
    os << std::endl;
    stack.write(os);
    os << std::endl << std::endl;
    heap.write(os);
    os << std::endl << std::endl;

    return os;
  }

  /** The error code associated with this state. */
  ErrorCode code;
  /** General purpose register buffer. */
  Regs<16, 8> gp;
  /** SSE register buffer. */
  Regs<16, 32> sse;
  /** Stack. */
  Memory stack;
  /** Heap. */
  Memory heap;
};

} // namespace stoke

namespace std {

std::istream& operator>>(std::istream& is, stoke::CpuState& cs) {
  return cs.read(is);
}

std::ostream& operator<<(std::ostream& os, const stoke::CpuState& cs) {
  return cs.write(os);
}

} // namespace std

#endif
