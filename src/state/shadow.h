#ifndef STOKE_SRC_STATE_SHADOW_H
#define STOKE_SRC_STATE_SHADOW_H

#include <algorithm>
#include <cassert>
#include <stdint.h>
#include <vector>

namespace stoke {

class Shadow {
 public:
  /** Resize for this many bytes. */
  void resize(size_t bytes) {
    mask_.resize(bytes / 0x40 + 1);
    old_.resize(mask_.size());
  }
  /** Reset mask to zero. */
  void clear() {
    for (auto& m : mask_) {
      m = 0;
    }
  }

  /** Is this element set? */
  bool is_set(uint64_t addr) const {
    assert(addr / 0x40 < mask_.size());
    return mask_[addr / 0x40] & (0x1 << (addr % 0x40));
  }
  /** Set this element. */
  void set(uint64_t addr, bool val = true) {
    assert(addr / 0x40 < mask_.size());
    if (val) {
      mask_[addr / 0x40] |= (0x1 << (addr % 0x40));
    } else {
      mask_[addr / 0x40] &= ~(0x1 << (addr % 0x40));
    }
  }

  /** Begin a transaction where direct editting of mask is allowed. */
  void* begin() {
    std::copy(mask_.begin(), mask_.end(), old_.begin());
    return mask_.data();
  }
  /** Accept changes. */
  void commit() {
    // Does nothing.
  }
  /** Revert changes. */
  void abort() {
    std::copy(old_.begin(), old_.end(), mask_.begin());
  }

 private:
  std::vector<uint64_t> mask_;
  std::vector<uint64_t> old_;
};

} // namespace stoke

#endif
