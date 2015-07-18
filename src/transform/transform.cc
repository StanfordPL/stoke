// Copyright 2013-2015 Stanford University
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

bool Transform::get_indices(const Cfg& cfg, Cfg::id_type& bb, size_t& block_idx, size_t& code_idx) {
  // Corner case: This code could have no reachable blocks
  if (cfg.num_reachable() < 3) {
    return false;
  }

  // Pick a random reachable block
  auto b = cfg.reachable_begin();
  for (size_t i = 0, ie = (gen_() % (cfg.num_reachable() - 2)) + 1; i < ie; ++i) {
    ++b;
  }
  bb = *b;

  // Pick a random instruction in that block
  block_idx = gen_() % cfg.num_instrs(bb);
  code_idx = cfg.get_index({bb, block_idx});

  // Corner cases: Is this a control instruction other than a call or the first instruction
  if (code_idx == 0) {
    return false;
  }
  if (is_control_other_than_call(cfg.get_code()[code_idx].get_opcode())) {
    return false;
  }

  return true;
}

}
