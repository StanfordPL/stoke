// Copyright 2013-2015 Eric Schkufza, Rahul Sharma, Berkeley Churchill, Stefan Heule
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

#ifndef STOKE_SRC_SANDBOX_FUNCTION_ITERATOR_H
#define STOKE_SRC_SANDBOX_FUNCTION_ITERATOR_H

#include <unordered_map>

#include "src/ext/x64asm/include/x64asm.h"
#include "src/cfg/cfg.h"

namespace stoke {

class function_iterator {
  /** Needs access to constructor. */
  friend class Sandbox;

public:
  /** Returns the underlying cfg. */
  const Cfg& operator*() const {
    return *(itr_->second);
  }
  /** Returns the underlying cfg. */
  const Cfg* operator->() const {
    return itr_->second;
  }

  /** Increments the outer iterator. */
  function_iterator& operator++() {
    itr_++;
    return *this;
  }

  /** Equality based on outer iterators. */
  bool operator==(const function_iterator& rhs) const {
    return itr_ == rhs.itr_;
  }
  /** Inequality based on outer iterators. */
  bool operator!=(const function_iterator& rhs) const {
    return itr_ != rhs.itr_;
  }

private:
  /** Creates a new function iterator. */
  function_iterator(std::unordered_map<x64asm::Label, Cfg*>::const_iterator itr) {
    itr_ = itr;
  }

  /** Outer iterator. */
  std::unordered_map<x64asm::Label, Cfg*>::const_iterator itr_;
};

} // namespace stoke

#endif
