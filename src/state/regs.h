#ifndef STOKE_SRC_STATE_REGS_H
#define STOKE_SRC_STATE_REGS_H

#include <cassert>

#include <vector>

#include "src/ext/cpputil/include/container/bit_vector.h"

namespace stoke {

class Regs {
 public:
  /** Create a bank of n registers of w bits. */
  Regs(size_t n, size_t w) {
    contents_.resize(n, cpputil::BitVector(w));
  }

  /** Number of elements. */
  size_t size() const {
    return contents_.size();
  }

  /** Element access. */
  cpputil::BitVector& operator[](size_t i) {
    assert(i < size());
    return contents_[i];
  }
  /** Element access. */
  const cpputil::BitVector& operator[](size_t i) const {
    assert(i < size());
    return contents_[i];
  }

  /** Bit-wise xor */
  Regs& operator^=(const Regs& rhs) {
    for (size_t i = 0, ie = size(); i < ie; ++i) {
      contents_[i] ^= rhs.contents_[i];
    }
    return *this;
  }
  /** Bit-wise xor */
  Regs operator^(const Regs& rhs) {
    auto ret = *this;
    return ret ^= rhs;
  }

  /** Equality. */
  bool operator==(const Regs& rhs) const {
    return contents_ == rhs.contents_;
  }
  /** Inequality. */
  bool operator!=(const Regs& rhs) const {
    return contents_ != rhs.contents_;
  }

 private:
  /** Register contents. */
  std::vector<cpputil::BitVector> contents_;
};

} // namespace stoke

#endif
