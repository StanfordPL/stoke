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

#ifndef STOKE_SRC_SANDBOX_OUTPUT_ITERATOR_H
#define STOKE_SRC_SANDBOX_OUTPUT_ITERATOR_H

#include "src/sandbox/io_pair.h"
#include "src/state/cpu_state.h"

#include <vector>

namespace stoke {

/** Simple input iterator for exposing output states. */
class output_iterator {
  /** Needs access to constructor. */
  friend class Sandbox;

 public:
  const CpuState& operator*() const {
    return (*itr_)->out_;
  }
  const CpuState* operator->() const {
    return &((*itr_)->out_);
  }

  output_iterator& operator++() {
    itr_++;
    return *this;
  }

  bool operator==(const output_iterator& rhs) const {
    return itr_ == rhs.itr_;
  }
  bool operator!=(const output_iterator& rhs) const {
    return itr_ != rhs.itr_;
  }

 private:
  output_iterator(std::vector<IoPair*>::const_iterator itr) {
    itr_ = itr;
  }

  std::vector<IoPair*>::const_iterator itr_;
};

} // namespace stoke

#endif
