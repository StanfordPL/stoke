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

#ifndef STOKE_SRC_STATE_STATE_READER_H
#define STOKE_SRC_STATE_STATE_READER_H

#include <iostream>

#include "src/state/cpu_state.h"
#include "src/state/regs.h"
#include "src/state/memory.h"

namespace stoke {

class StateReader {
 public:
  void operator()(std::istream& is, CpuState& cs) const;

 private:
  void read_regs(std::istream& is, Regs& regs) const;

  void read_mem(std::istream& is, Memory& mem) const;
  void read_summary(std::istream& is, Memory& mem) const;
  void read_row(std::istream& is, Memory& mem) const;
  void read_contents(std::istream& is, Memory& mem) const;
};

} // namespace stoke

namespace std {

inline std::istream& operator>>(std::istream& is, stoke::CpuState& cs) {
  stoke::StateReader()(is, cs);
  return is;
}

} // namespace std

#endif

