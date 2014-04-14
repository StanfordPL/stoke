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

#ifndef STOKE_SRC_SANDBOX_CPU_IO_H
#define STOKE_SRC_SANDBOX_CPU_IO_H

#include <map>
#include <vector>

#include "src/ext/x64asm/include/x64asm.h"

#include "src/state/cpu_state.h"

namespace stoke {

class CpuIo {
 public:
  /** Returns a function that writes masked registers to hardware. */
  static x64asm::Function write(CpuState& cs,
      const x64asm::RegSet& mask = x64asm::RegSet::universe());

  /** Returns a function that reads masked registers from hardware
    unless otherwise specified in arg list. */
  static x64asm::Function read(CpuState& cs,
      const x64asm::RegSet& mask = x64asm::RegSet::universe(),
      const std::map<x64asm::R64, uint64_t*>& alts = std::map<x64asm::R64, uint64_t*>());
};

} // namespace stoke

#endif
