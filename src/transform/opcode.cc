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

#include "src/transform/opcode.h"

using namespace std;
using namespace stoke;
using namespace x64asm;


namespace stoke {

TransformInfo OpcodeTransform::operator()(Cfg& cfg) {

  TransformInfo ti;
  ti.success = false;

  // Grab the index of a random instruction
  ti.undo_index[0] = (gen_() % (cfg.get_code().size() - 1)) + 1;

  ti.undo_instr = cfg.get_code()[ti.undo_index[0]];
  if (is_control_other_than_call(ti.undo_instr.get_opcode()))
    return ti;

  // Try generating a new instruction
  auto instr = ti.undo_instr;

  auto opc = instr.get_opcode();
  if (!pools_.get_control_free_type_equiv(opc)) {
    return ti;
  }
  instr.set_opcode(opc);

  // Check that the instruction is valid
  if (!instr.check()) {
    return ti;
  }

  // Success: Any failure beyond here will require undoing the move
  // This operand hasn't changed, so the rip only needs local rescaling
  cfg.get_function().replace(ti.undo_index[0], instr, false, false);
  cfg.recompute_defs();
  if (!cfg.check_invariants()) {
    undo(cfg, ti);
    return ti;
  }

  assert(cfg.check_invariants());
  assert(cfg.invariant_no_undef_reads());
  assert(cfg.get_function().check_invariants());


  ti.success = true;
  return ti;
}

void OpcodeTransform::undo(Cfg& cfg, const TransformInfo& ti) const {
  cfg.get_function().replace(ti.undo_index[0], ti.undo_instr, true);
  cfg.recompute_defs();

  assert(cfg.check_invariants());
  assert(cfg.invariant_no_undef_reads());
  assert(cfg.get_function().check_invariants());


}



} // namespace stoke
