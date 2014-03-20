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

#include "src/sandbox/stack_snapshot.h"

using namespace x64asm;

namespace stoke {

bool StackSnapshot::check_abi(const CpuState& cs) const {
  for (const auto r : {rbx, rbp, rsp, r12, r13, r14, r15}) {
    if (user_callee_save_.gp[r].get_fixed_quad(0) != cs.gp[r].get_fixed_quad(0)) {
      return false;
    }
  }
  return true;
}

} // namespace stoke
