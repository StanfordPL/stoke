// Copyright 2013-2015 Stanford University
//
// Licensed under the Apache License, Version 2.0 (the "License");
// you may not use this file except in compliance with the License.
// You may obtain a copy of the License at
//
//     http://www.apache.org/licenses/LICENSE-2.0
//
// Unless required by applicable law or agreed to in writing, software
// distributed under the License is distributed on an "AS IS" BASIS,
// WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
// See the License for the specific language governing permissions and
// limitations under the License.

#ifndef STOKE_SRC_STATE_REGS_H
#define STOKE_SRC_STATE_REGS_H

#include <cassert>

#include <iostream>
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
  Regs operator^(const Regs& rhs) const {
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

  /** Write text. */
  std::ostream& write_text(std::ostream& os, const char** names, size_t padding) const;
  /** Read text. */
  std::istream& read_text(std::istream& is);

  /** Write binary. */
  std::ostream& write_bin(std::ostream& os) const {
    for (size_t i = 0, ie = size(); i < ie; ++i) {
      const auto size = sizeof(uint64_t) * contents_[i].num_fixed_quads();
      os.write((const char*)contents_[i].data(), size);
    }
    return os;
  }
  /** Read binary. */
  std::istream& read_bin(std::istream& is) {
    for (size_t i = 0, ie = size(); i < ie; ++i) {
      const auto size = sizeof(uint64_t) * contents_[i].num_fixed_quads();
      is.read((char*)contents_[i].data(), size);
    }
    return is;
  }

private:
  /** Register contents. */
  std::vector<cpputil::BitVector> contents_;
};

} // namespace stoke

#endif
