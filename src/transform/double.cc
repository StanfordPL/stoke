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

  const auto& rs = cfg.def_ins(cfg.get_loc(ti.undo_index[0]));
  // Try generating a new instruction
  auto instr1 = Instruction(x64asm::CMP_R32_R32);
  for (size_t i = 0, ie = instr1.arity(); i < ie; ++i) {
    Operand o = instr1.get_operand<R64>(i);
    assert (instr.maybe_read(i));
    if (!pools_.get_read_op(instr1.get_opcode(), i, rs, o)) {
      return ti;
    }
    instr1.set_operand(i, o);
  }
  
  std::vector<Opcode> set_opcodes = { SETA_R8
  , SETAE_R8
  , SETB_R8
  , SETBE_R8
  , SETC_R8
  , SETE_R8
  , SETG_R8
  , SETGE_R8
  , SETL_R8
  , SETLE_R8
  , SETNA_R8
  , SETNAE_R8
  , SETNB_R8
  , SETNBE_R8
  , SETNC_R8
  , SETNE_R8
  , SETNG_R8
  , SETNGE_R8
  , SETNL_R8
  , SETNLE_R8
  , SETNO_R8
  , SETNP_R8
  , SETNS_R8
  , SETNZ_R8
  , SETO_R8
  , SETP_R8
  , SETPE_R8
  , SETPO_R8
  , SETS_R8
  , SETZ_R8};
  
  auto instr2 = Instruction(set_opcodes[gen_() % set_opcodes.size()]);
  
  Operand o = instr2.get_operand<R64>(0);
  if (!pools_.get_write_op(instr2.get_opcode(), 0, rs, o)) {
    return ti;
  }
  instr1.set_operand(0, o);
  
  // Check that the instruction is valid
  if (!instr1.check() || !instr2.check()) {
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
