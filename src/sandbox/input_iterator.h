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

#ifndef STOKE_SRC_SANDBOX_INPUT_ITERATOR_H
#define STOKE_SRC_SANDBOX_INPUT_ITERATOR_H

#include "src/sandbox/io_pair.h"
#include "src/state/cpu_state.h"

#include <vector>

namespace stoke {

class input_iterator {
  /** Needs access to constructor. */
  friend class Sandbox;

public:
  /** Returns the underlying input state. */
  const CpuState& operator*() const {
    return (*itr_)->in_;
  }
  /** Returns the underlying input state. */
  const CpuState* operator->() const {
    return &((*itr_)->in_);
  }

  /** Increments the outer iterator. */
  input_iterator& operator++() {
    itr_++;
    return *this;
  }

  /** Equality based on outer iterators. */
  bool operator==(const input_iterator& rhs) const {
    return itr_ == rhs.itr_;
  }
  /** Inequality based on outer iterators. */
  bool operator!=(const input_iterator& rhs) const {
    return itr_ != rhs.itr_;
  }

private:
  /** Creates a new input iterator using an IoPair iterator. */
  input_iterator(std::vector<IoPair*>::const_iterator itr) {
    itr_ = itr;
  }

  /** Outer iterator. */
  std::vector<IoPair*>::const_iterator itr_;
};

} // namespace stoke

#endif
