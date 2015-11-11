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

#ifndef STOKE_SRC_SANDBOX_OUTPUT_ITERATOR_H
#define STOKE_SRC_SANDBOX_OUTPUT_ITERATOR_H

#include "src/sandbox/io_pair.h"
#include "src/state/cpu_state.h"

#include <vector>

namespace stoke {

class output_iterator : public std::iterator<std::input_iterator_tag, CpuState> {
  /** Needs access to constructor. */
  friend class Sandbox;

public:
  /** Returns the underlying output state. */
  const CpuState& operator*() const {
    return (*itr_)->out_;
  }
  /** Returns the underlying output state. */
  const CpuState* operator->() const {
    return &((*itr_)->out_);
  }

  /** Increments the outer iterator. */
  output_iterator& operator++() {
    itr_++;
    return *this;
  }

  /** Equality based on outer iterators. */
  bool operator==(const output_iterator& rhs) const {
    return itr_ == rhs.itr_;
  }
  /** Inequality based on outer iterators. */
  bool operator!=(const output_iterator& rhs) const {
    return itr_ != rhs.itr_;
  }

private:
  /** Creates a new output iterator using an IoPair iterator. */
  output_iterator(std::vector<IoPair*>::const_iterator itr) {
    itr_ = itr;
  }

  /** Outer iterator. */
  std::vector<IoPair*>::const_iterator itr_;
};

} // namespace stoke

#endif
