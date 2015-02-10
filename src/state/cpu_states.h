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

#ifndef STOKE_STATE_CPU_STATES_H
#define STOKE_STATE_CPU_STATES_H

#include <iostream>
#include <vector>

#include "src/state/cpu_state.h"

namespace stoke {

class CpuStates : public std::vector<CpuState> {
public:
  /** Write text. */
  std::ostream& write_text(std::ostream& os) const;
  /** Read text. */
  std::istream& read_text(std::istream& is);

  /** Write binary. */
  std::ostream& write_bin(std::ostream& os) const {
    const auto size = this->size();
    os.write((const char*)&size, sizeof(size_t));

    for (size_t i = 0, ie = this->size(); i < ie; ++i) {
      (*this)[i].write_bin(os);
    }

    return os;
  }
  /** Read binary. */
  std::istream& read_bin(std::istream& is) {
    size_t size = 0;
    is.read((char*)&size, sizeof(size_t));

    this->resize(size);
    for (size_t i = 0; i < size; ++i) {
      (*this)[i].read_bin(is);
    }

    return is;
  }
};

} // namespace stoke

#endif

