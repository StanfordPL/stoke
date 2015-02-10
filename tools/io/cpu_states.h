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

#ifndef STOKE_TOOLS_IO_CPU_STATES_H
#define STOKE_TOOLS_IO_CPU_STATES_H

#include <iostream>

#include "src/state/cpu_states.h"

namespace stoke {

struct CpuStatesReader {
  void operator()(std::istream& is, CpuStates& cs) {
    cs.read_text(is);
  }
};

struct CpuStatesWriter {
  void operator()(std::ostream& os, const CpuStates& cs) {
    cs.write_text(os);
  }
};

} // namespace stoke

#endif

