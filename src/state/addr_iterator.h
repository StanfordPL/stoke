// Copyright 2014 eric schkufza
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

#ifndef STOKE_SRC_STATE_ADDR_ITERATOR_H
#define STOKE_SRC_STATE_ADDR_ITERATOR_H

#include "src/ext/cpputil/include/container/bit_vector.h"

namespace stoke {

class addr_iterator {
  /** Needs access to constructor. */
  friend class Memory;

 public:
  /** Dereference. */
  size_t operator*() const {
    return *itr_ + base_;
  }
  /** Incrememnt. */
  addr_iterator& operator++() {
    ++itr_;
    return *this;
  }

  /** Equality defined in terms of virtual address. */
  bool operator==(const addr_iterator& rhs) const {
    return itr_ == rhs.itr_ && base_ == rhs.base_;
  }
  /** Inequality defined in terms of virtual address. */
  bool operator!=(const addr_iterator& rhs) const {
    return itr_ != rhs.itr_ || base_ != rhs.base_;
  }

 private:
  /** This constructor is only visible to Memory. */
  addr_iterator(const cpputil::BitVector::const_set_bit_index_iterator& itr, size_t base) :
    itr_(itr), base_(base) { }

  /** Set bytes. */
  cpputil::BitVector::const_set_bit_index_iterator itr_;
  /** Virtual memory base address. */
  size_t base_;
};

} // namespace stoke

#endif
