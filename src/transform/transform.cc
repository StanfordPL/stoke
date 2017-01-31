// Copyright 2013-2016 Stanford University
//
// Licensed under the Apache License, Version 2.0 (the License);
// you may not use this file except in compliance with the License.
// You may obtain a copy of the License at
//
//     http://www.apache.org/licenses/LICENSE-2.0
//
// Unless required by applicable law or agreed to in writing, software
// distributed under the License is distributed on an AS IS BASIS,
// WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
// See the License for the specific language governing permissions and
// limitations under the License.


#include "src/transform/transform.h"

using namespace std;
using namespace x64asm;

namespace stoke {

/** Does this instruction induce control flow? */
bool Transform::is_control_opcode(Opcode o) {
  const Instruction instr(o);
  return instr.is_label_defn() || instr.is_any_jump() ||
         instr.is_any_call() || instr.is_any_return() ||
         instr.is_any_loop();
}

/** Does this instruction induce control flow, other than a call (which STOKE can propose)? */
bool Transform::is_control_other_than_call(Opcode op) {
  return op != CALL_LABEL && is_control_opcode(op);
}

}
