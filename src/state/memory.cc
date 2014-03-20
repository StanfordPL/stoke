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

#include "src/state/memory.h"

using namespace cpputil;
using namespace std;

namespace stoke {

void Memory::copy_defined(const Memory& rhs) {
  assert(base_ == rhs.base_);
  assert(size() == rhs.size());

  // Copying invalid bits doesn't hurt so we'll use the largest atomic copy we can.
  // We don't have to worry about non-valid bytes since we never touch them.
  for (auto i = rhs.valid_.set_quad_index_begin(), ie = rhs.valid_.set_quad_index_end(); i != ie; ++i) {
    def_.get_fixed_quad(*i) = rhs.def_.get_fixed_quad(*i);
  }
  // Now we'll copy the actual bytes. One byte of mask corresponds to one quad of data.
  for (auto i = def_.set_byte_index_begin(), ie = def_.set_byte_index_end(); i != ie; ++i) {
    contents_.get_fixed_quad(*i) = rhs.contents_.get_fixed_quad(*i);
  }
}

} // namespace stoke
