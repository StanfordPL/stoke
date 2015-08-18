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
  for(size_t i = 0, ie = code.size(); i < ie; ++i) {
    instr_index = gen_() % ie;
    instr = code[instr_index];
    if(instr.is_explicit_memory_dereference()) {
      found = true;
      break;
    }
  }
  if(!found)
    return ti;

  ti.undo_index[0] = instr_index;
  ti.undo_instr = instr;

  // Replace the memory operand
  const auto operand_index = instr.mem_index();
  auto mem = instr.get_operand<M8>(operand_index);

  bool ok = pools_.get_reg_mem(RegSet::universe(), mem);
  if(!ok)
    return ti;

  //cout << "Old: " << instr << endl;
  instr.set_operand(operand_index, mem);
  //cout << "New: " << instr << endl;
  cfg.get_function().replace(instr_index, instr, false, false);
  cfg.recompute();
  if(!cfg.check_invariants()) {
    undo(cfg, ti);
  }

  // Perform some other transform
  TransformInfo* ti_second = new TransformInfo();
  ti_second->success = false;
  *ti_second = transform_(cfg);

  if(ti_second->success) {
    //add to record
    ti.success = true;
    ti.undo_next = ti_second;
    return ti;
  } else {
    //undo everything!
    ti.undo_next = NULL;
    undo(cfg, ti);
    ti.success = false;
    delete ti_second;
    return ti;
  }

  assert(cfg.invariant_no_undef_reads());
  assert(cfg.get_function().check_invariants());

  return ti;
}

void MemoryTransform::undo(Cfg& cfg, const TransformInfo& ti) const {

  TransformInfo* info = ti.undo_next;
  if(info) {
    transform_.undo(cfg, *info);
  }
  cfg.get_function().replace(ti.undo_index[0], ti.undo_instr, true);

  assert(cfg.invariant_no_undef_reads());
  assert(cfg.get_function().check_invariants());
}



} // namespace stoke
