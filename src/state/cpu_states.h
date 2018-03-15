// Copyright 2013-2016 Stanford University
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

  CpuStates() { }

  CpuStates(const std::vector<CpuState>& states) {
    insert(begin(), states.begin(), states.end());
  }

  /** Write text. */
  std::ostream& write_text(std::ostream& os) const;
  /** Read text. */
  std::istream& read_text(std::istream& is);

};

} // namespace stoke

#endif

