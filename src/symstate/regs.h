
#ifndef _STOKE_SRC_SYMSTATE_SYM_REGS_H
#define _STOKE_SRC_SYMSTATE_SYM_REGS_H

#include "src/symstate/bitvector.h"

namespace stoke {

class SymRegs {

public:
  /** Create a bank of n symbolic registers of w bits */
  SymRegs(size_t count, uint16_t width) {
    contents_.resize(count, SymBitVector::constant(width, 0));
  };

  /** Number of elements */
  size_t size() const {
    return contents_.size();
  }

  /** Element access */
  stoke::SymBitVector& operator[](size_t i) {
    assert(i < size());
    return contents_[i];
  }

  /** Element access */
  const stoke::SymBitVector& operator[](size_t i) const {
    assert(i < size());
    return contents_[i];
  }

private:
  /** Symbolic register contents. */
  std::vector<stoke::SymBitVector> contents_;
};

};

#endif
