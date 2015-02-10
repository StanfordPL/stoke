// Copyright 2013-2015 Stanford University
//
// Licensed under the Apache License, Version 2.0 (the License);
// you may not use this file except in compliance with the License.
// You may obtain a copy of the License at
//
//     http://www.apache.org/licenses/LICENSE-2.0
//
// Unless required by applicable law or agreed to in writing, software
// distributed under the License is distributed on an AS IS BASIS,
// WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
// See the License for the specific language governing permissions and
// limitations under the License.


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
