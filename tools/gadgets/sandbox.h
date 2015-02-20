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

#ifndef STOKE_TOOLS_GADGETS_SANDBOX_H
#define STOKE_TOOLS_GADGETS_SANDBOX_H

#include <vector>

#include "src/ext/x64asm/include/x64asm.h"

#include "src/sandbox/sandbox.h"
#include "src/state/cpu_states.h"
#include "src/tunit/tunit.h"
#include "tools/args/in_out.inc"
#include "tools/args/sandbox.inc"
#include "tools/args/target.inc"

namespace stoke {

class SandboxGadget : public Sandbox {
public:
  SandboxGadget(const CpuStates& tcs, const std::vector<TUnit>& aux_fxns) {
    set_abi_check(abi_check_arg);
    set_max_jumps(max_jumps_arg);

    for (const auto& fxn : aux_fxns) {
      insert_function({fxn.code, x64asm::RegSet::empty(), x64asm::RegSet::empty()});
    }
    for (const auto& tc : tcs) {
      insert_input(tc);
    }
  }
};

} // namespace stoke

#endif
