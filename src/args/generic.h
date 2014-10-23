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

#ifndef STOKE_SRC_ARGS_GENERIC_H
#define STOKE_SRC_ARGS_GENERIC_H

#include <cassert>

#include <array>
#include <utility>

namespace stoke {

/** Forward lookup; returns true iff lookup succeeds. */
template <size_t N, typename T1, typename T2>
bool generic_read(const std::array<std::pair<T1, T2>, N>& elems, const T1& key, T2& val) {
  for (const auto& elem : elems) {
    if (key == elem.first) {
      val = elem.second;
      return true;
    }
  }
  return false;
}

/** Backward lookup; returns true iff lookup succeeds. */
template <size_t N, typename T1, typename T2>
void generic_write(const std::array<std::pair<T1, T2>, N>& elems, T1& key, const T2& val) {
  for (const auto& elem : elems) {
    if (val == elem.second) {
      key = elem.first;
      return;
    }
  }
  assert(false);
}

} // namespace stoke

#endif
