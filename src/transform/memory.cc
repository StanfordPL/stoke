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

#include "src/transform/memory.h"

using namespace std;
using namespace stoke;
using namespace x64asm;

namespace stoke {

TransformInfo MemoryTransform::operator()(Cfg& cfg) {

  // Pick a memory instruction
  TransformInfo ti;
  ti.success = false;

  vector<size_t> memory_instruction_indexes;
  auto code = cfg.get_code();
  size_t instr_index = 0;
  Instruction instr(NOP);
  bool found = false;
  for (size_t i = 0, ie = code.size(); i < ie; ++i) {
    instr_index = gen_() % ie;
    instr = code[instr_index];
    if (instr.is_explicit_memory_dereference()) {
      found = true;
      break;
    }
  }
  if (!found)
    return ti;

  ti.undo_index[0] = instr_index;
  ti.undo_instr = instr;

  // Replace the memory operand
  const auto operand_index = instr.mem_index();
  auto mem = instr.get_operand<M8>(operand_index);

  bool ok = pools_.get_reg_mem(RegSet::universe(), mem);
  if (!ok)
    return ti;

  // if it's the first instruction, we can't replace the previous one
  if (instr_index == 0)
    return ti;

  // Find index of instruction to swap with
  size_t other_index = gen_() % code.size();

  for (size_t j = 0, je=code.size(); j < je; ++j) {
    if (other_index == instr_index ||
        other_index == instr_index - 1) {
      other_index = gen_() % je;
      continue;
    }
    auto other_instr = code[other_index];
    if (is_control_other_than_call(other_instr.get_opcode()) || other_instr.is_nop() || other_instr.is_call()) {
      other_index = gen_() % je;
      continue;
    }
  }
  if (other_index == instr_index ||
      other_index == instr_index - 1) {
    return ti;
  }
  auto other_instr = code[other_index];
  if (is_control_other_than_call(other_instr.get_opcode()) || other_instr.is_nop() || other_instr.is_call()) {
    return ti;
  }

  ti.undo_index[1] = other_index;

  // Replace the new memory operand
  instr.set_operand(operand_index, mem);
  cfg.get_function().replace(instr_index, instr, false, true);
  cfg.get_function().swap(instr_index - 1, ti.undo_index[1]);

  cfg.recompute();
  if (!cfg.check_invariants()) {
    undo(cfg, ti);
    return ti;
  }

  ti.success = true;

  assert(cfg.check_invariants());
  assert(cfg.get_function().check_invariants());

  return ti;
}

void MemoryTransform::undo(Cfg& cfg, const TransformInfo& ti) const {

  cfg.get_function().swap(ti.undo_index[0] - 1, ti.undo_index[1]);
  cfg.get_function().replace(ti.undo_index[0], ti.undo_instr, false, true);
  cfg.recompute();

  assert(cfg.check_invariants());
  assert(cfg.get_function().check_invariants());
}



} // namespace stoke
