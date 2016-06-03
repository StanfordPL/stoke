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

#include "src/transform/double.h"

using namespace std;
using namespace stoke;
using namespace x64asm;

struct gadget {
  x64asm::Opcode opcode1;
  int index;
  x64asm::Opcode opcode2;
};


static const gadget choices[] = {
  {CMP_R32_R32, -1, SETAE_R8}
};


namespace stoke {

TransformInfo DoubleTransform::operator()(Cfg& cfg) {

  TransformInfo ti;
  ti.success = false;

  // Grab the index of a random instruction
  ti.undo_index[0] = (gen_() % (cfg.get_code().size() - 2)) + 1;
  ti.undo_index[1] = ti.undo_index[0]+1;

  assert(ti.undo_index[1] < cfg.get_code().size());


  ti.undo_instr = cfg.get_code()[ti.undo_index[0]];
  ti.undo_instr2 = cfg.get_code()[ti.undo_index[1]];
  if (is_control_other_than_call(ti.undo_instr.get_opcode()) ||
      is_control_other_than_call(ti.undo_instr2.get_opcode()))
    return ti;

  // Try generating a new instruction

  // FIXME: select a random one
  gadget choice = choices[0];


  auto instr1 = Instruction(choice.opcode1);
  const auto& rs = cfg.def_ins(cfg.get_loc(ti.undo_index[0]));
  for (size_t i = 0, ie = instr1.arity(); i < ie; ++i) {
    Operand o = instr1.get_operand<R64>(i);
    if (instr1.maybe_read(i)) {
      if (!pools_.get_read_op(instr1.get_opcode(), i, rs, o)) {
        return ti;
      }
    } else {
      if (!pools_.get_write_op(instr1.get_opcode(), i, rs, o)) {
        return ti;
      }
    }
    instr1.set_operand(i, o);
  }
  if (!instr1.check()) {
    return ti;
  }

  const auto& instr1_written = instr1.must_write_set();
  auto instr2 = Instruction(choice.opcode2);

  for (size_t i = 0, ie = instr2.arity(); i < ie; ++i) {
    Operand o = instr2.get_operand<R64>(i);
    if ((int)i == choice.index) {
      if (instr2.maybe_read(i)) {
        if (!pools_.get_read_op(instr2.get_opcode(), i, instr1_written, o)) {
          return ti;
        }
      } else {
        if (!pools_.get_write_op(instr2.get_opcode(), i, instr1_written, o)) {
          return ti;
        }
      }
    } else {
      if (instr2.maybe_read(i)) {
        if (!pools_.get_read_op(instr2.get_opcode(), i, rs, o)) {
          return ti;
        }
      } else {
        if (!pools_.get_write_op(instr2.get_opcode(), i, rs, o)) {
          return ti;
        }
      }
    }
    instr2.set_operand(i, o);
  }

  // Check that the instruction is valid
  if (!instr2.check()) {
    return ti;
  }

  // Success: Any failure beyond here will require undoing the move
  cfg.get_function().replace(ti.undo_index[0], instr1, false, true);
  cfg.get_function().replace(ti.undo_index[1], instr2, false, true);
  cfg.recompute_defs();
  if (!cfg.check_invariants()) {
    undo(cfg, ti);
    return ti;
  }

  assert(cfg.invariant_no_undef_reads());
  assert(cfg.get_function().check_invariants());


  ti.success = true;
  return ti;
}

void DoubleTransform::undo(Cfg& cfg, const TransformInfo& ti) const {
  cfg.get_function().replace(ti.undo_index[0], ti.undo_instr, true);
  cfg.get_function().replace(ti.undo_index[1], ti.undo_instr2, true);
  cfg.recompute_defs();

  assert(cfg.invariant_no_undef_reads());
  assert(cfg.get_function().check_invariants());


}



} // namespace stoke

