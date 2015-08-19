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

#include "src/transform/operand.h"

using namespace std;
using namespace stoke;
using namespace x64asm;


namespace stoke {

TransformInfo OperandTransform::operator()(Cfg& cfg) {

  TransformInfo ti;
  ti.success = false;

  // Grab the index of a random instruction
  auto code = cfg.get_code();
  size_t index = (gen_() % (code.size() - 1)) + 1;

  for(size_t i = 0, ie = code.size(); i < ie; ++i) {
    index = (gen_() % (ie - 1)) + 1;
    if(code[index].is_nop() || !cfg.is_reachable(cfg.get_loc(index).first)) {
      continue;
    } else {
      break;
    }
  }

  ti.undo_index[0] = index;

  // If not reachable, don't bother
  if(!cfg.is_reachable(cfg.get_loc(ti.undo_index[0]).first)) {
    return ti;
  }

  ti.undo_instr = code[ti.undo_index[0]];
  //if(is_control_other_than_call(ti.undo_instr.get_opcode()))
  //  return ti;

  // Corner Cases: Don't try chaning 0-arity opcodes
  if (ti.undo_instr.arity() == 0) {
    return ti;
  }

  const auto operand_idx = gen_() % ti.undo_instr.arity();

  // Record the old value and generate a new operand
  auto instr = ti.undo_instr;
  Operand o = instr.get_operand<R64>(operand_idx);

  const auto& rs = cfg.def_ins(cfg.get_loc(ti.undo_index[0]));
  if (instr.maybe_read(operand_idx)) {
    if (!pools_.get_read_op(instr.get_opcode(), operand_idx, rs, o)) {
      return ti;
    }
  } else {
    if (!pools_.get_write_op(instr.get_opcode(), operand_idx, rs, o)) {
      return ti;
    }
  }
  instr.set_operand(operand_idx, o);

  // Check that the instruction is valid
  if (!instr.check()) {
    return ti;
  }

  // If this is a rip operand, it needs global rescaling
  const auto is_mem = instr.is_explicit_memory_dereference() &&
                      ((size_t)instr.mem_index() == operand_idx);
  const auto is_rip = ((M8*)&o)->rip_offset();

  // Success: Any failure beyond here will require undoing the move
  cfg.get_function().replace(ti.undo_index[0], instr, false, is_rip);
  cfg.recompute();
  if (!cfg.check_invariants()) {
    undo(cfg, ti);
    return ti;
  }

  assert(cfg.invariant_no_undef_reads());
  assert(cfg.get_function().check_invariants());


  ti.success = true;
  return ti;
}

void OperandTransform::undo(Cfg& cfg, const TransformInfo& ti) const {
  cfg.get_function().replace(ti.undo_index[0], ti.undo_instr, true);
  cfg.recompute();

  assert(cfg.invariant_no_undef_reads());
  assert(cfg.get_function().check_invariants());


}



} // namespace stoke
