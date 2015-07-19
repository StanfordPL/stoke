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

#ifndef STOKE_SRC_SEARCH_TRANSFORMS_H
#define STOKE_SRC_SEARCH_TRANSFORMS_H

#include <algorithm>
#include <cassert>
#include <random>
#include <set>
#include <vector>

#include "src/cfg/cfg.h"
#include "src/ext/x64asm/include/x64asm.h"
#include "src/transform/global_swap.h"
#include "src/transform/instruction.h"
#include "src/transform/local_swap.h"
#include "src/transform/move.h"
#include "src/transform/opcode.h"
#include "src/transform/operand.h"
#include "src/transform/pools.h"
#include "src/transform/rotate.h"
#include "src/validator/validator.h"

namespace stoke {

class Transforms {
public:
  /** Creates a new transformation helper; guaranteed to pass invariants. */
  Transforms(TransformPools& pools) : pools_(pools), old_instr_(x64asm::RET),
    instr_trans_(pools), local_swap_trans_(pools), global_swap_trans_(pools),
    rotate_trans_(pools), operand_trans_(pools), opcode_trans_(pools) {
    validator_ = nullptr;
  }

  /** Sets random seed. */
  Transforms& set_seed(std::default_random_engine::result_type seed) {
    gen_.seed(seed);
    return *this;
  }
  /** Provide a validator to check for instruction support. No check if not provided. */
  Transforms& set_must_validate(Validator* v) {
    validator_ = v;
    return *this;
  }
  /** Insert a value into the immediate pool */
  Transforms& insert_immediate(const x64asm::Imm64& imm) {
    const auto itr = std::find(imm_pool_.begin(), imm_pool_.end(), imm);
    if (itr == imm_pool_.end()) {
      imm_pool_.push_back(imm);
    }
    pools_.insert_immediate(imm);
    return *this;
  }
  /** Insert a value into the label pool */
  Transforms& insert_label(const x64asm::Label& l) {
    const auto itr = std::find(label_pool_.begin(), label_pool_.end(), l);
    if (itr == label_pool_.end()) {
      label_pool_.push_back(l);
    }
    pools_.insert_label(l);
    return *this;
  }
  /** Insert a value into the mem operand pool */
  Transforms& insert_mem(const x64asm::M8& m)  {
    assert(!m.rip_offset());
    const auto itr = std::find(m_pool_.begin(), m_pool_.end(), m);
    if (itr == m_pool_.end()) {
      m_pool_.push_back(m);
    }
    pools_.insert_mem(m);
    return *this;
  }
  /** Insert a value into the rip offset pool */
  Transforms& insert_rip(uint64_t addr) {
    const auto itr = std::find(rip_pool_.begin(), rip_pool_.end(), addr);
    if (itr == rip_pool_.end()) {
      rip_pool_.push_back(addr);
    }
    pools_.insert_rip(addr);
    return *this;
  }

  /** Transforms a control flow graph using a move type, returns true if the change succeeded. */
  bool modify(Cfg& cfg, Move type);
  /** Replaces a random instruction with a random replacement. */
  bool instruction_move(Cfg& cfg);
  /** Replaces the opcode for a random instruction. */
  bool opcode_move(Cfg& cfg);
  /** Replaces an operand for a random instruction. */
  bool operand_move(Cfg& cfg);
  /** Redistributes instructions between basic blocks. */
  bool resize_move(Cfg& cfg);
  /** Swaps two instructions in the same basic block. */
  bool local_swap_move(Cfg& cfg);
  /** Swaps two instructions regardless of basic block. */
  bool global_swap_move(Cfg& cfg);
  /** Add user-defined move implementation here ... */
  bool extension_move(Cfg& cfg);

  /** Undo the last move that was performed. */
  void undo(Cfg& cfg, Move type);
  /** Undo instruction move, recompute def-in relation. */
  void undo_instruction_move(Cfg& cfg) {
    instr_trans_.undo(cfg, info_);
  }
  /** Undo opcode move, recompute def-in relation. */
  void undo_opcode_move(Cfg& cfg) {
    // The old instruction should go back exactly as it was
    opcode_trans_.undo(cfg, info_);
  }
  /** Undo operand move, recompute def-in relation. */
  void undo_operand_move(Cfg& cfg) {
    // The old instruction should go back exactly as it was
    operand_trans_.undo(cfg, info_);
  }
  /** Undo resize move, recompute EVERYTHING. */
  void undo_resize_move(Cfg& cfg) {
    rotate_trans_.undo(cfg, info_);
  }
  /** Undo local swap move, recompute def-in relation. */
  void undo_local_swap_move(Cfg& cfg) {
    local_swap_trans_.undo(cfg, info_);
  }
  /** Undo global swap move, recompute def-in relation. */
  void undo_global_swap_move(Cfg& cfg) {
    global_swap_trans_.undo(cfg, info_);
  }
  /** Add user-defined undo implementation here ... */
  void undo_extension_move(Cfg& cfg);

  /** Can this class perform at least one opcode transformation? */
  bool invariant_non_empty_opcode_pool() const {
    return !control_free_.empty();
  }
  /** Check all invariants */
  bool check_invariants() const {
    return invariant_non_empty_opcode_pool();
  }

private:
  /** The set of control free opcodes. */
  std::vector<x64asm::Opcode> control_free_;
  /** The set of control free type equivalent opcodes for each opcode. */
  std::vector<std::vector<x64asm::Opcode>> control_free_type_equiv_;

  /** Operand pool. */
  std::vector<x64asm::Rh> rh_pool_;
  /** Operand pool. */
  std::vector<x64asm::R8> r8_pool_;
  /** Operand pool. */
  std::vector<x64asm::R16> r16_pool_;
  /** Operand pool. */
  std::vector<x64asm::R32> r32_pool_;
  /** Operand pool. */
  std::vector<x64asm::R64> r64_pool_;
  /** Operand pool. */
  std::vector<x64asm::Mm> mm_pool_;
  /** Operand pool. */
  std::vector<x64asm::Sreg> sreg_pool_;
  /** Operand pool. */
  std::vector<x64asm::St> st_pool_;
  /** Operand pool. */
  std::vector<x64asm::Xmm> xmm_pool_;
  /** Operand pool. */
  std::vector<x64asm::Ymm> ymm_pool_;
  /** Operand pool. */
  std::vector<x64asm::Imm64> imm_pool_;
  /** Operand pool. */
  std::vector<x64asm::M8> m_pool_;
  /** Operand pool. */
  std::vector<x64asm::Label> label_pool_;
  /** Operand pool -- these are global offsets. */
  std::vector<x64asm::Imm32> rip_pool_;

  /** Old instruction for instruction moves. */
  x64asm::Instruction old_instr_;
  /** Instruction indices. */
  size_t instr_idx1_;
  size_t instr_idx2_;

  /** Random generator. */
  std::default_random_engine gen_;
  /** Validator to check for support. */
  Validator* validator_;

  /** Sets o to a random opcode; returns true on success */
  bool get_control_free(x64asm::Opcode& o) {
    if (control_free_.empty()) {
      return false;
    }
    o = control_free_[gen_() % control_free_.size()];
    return true;
  }
  /** Sets o to a random opcode of equivalent type; returns true on success */
  bool get_control_free_type_equiv(x64asm::Opcode& o) {
    if (control_free_type_equiv_.empty()) {
      return false;
    }
    const auto& equiv = control_free_type_equiv_[o];
    if (equiv.empty()) {
      return false;
    }
    o = equiv[gen_() % equiv.size()];
    return true;
  }

  /** Sets o to a random lea operand, returns true on success. */
  bool get_lea_mem(const x64asm::RegSet& rs, x64asm::Operand& o);
  /** Sets o to a random rip offset operand, returns true on success. */
  bool get_rip_mem(x64asm::Operand& o);
  /** Sets o to a random register memory operand, returns true on success. */
  bool get_reg_mem(const x64asm::RegSet& rs, x64asm::Operand& o);
  /** Sets o to a random memory operand, returns true on success. */
  bool get_m(const x64asm::RegSet& rs, x64asm::Opcode c, x64asm::Operand& o);

  /** Sets o to a random operand. Returns true on success. */
  bool get_write_op(x64asm::Opcode o, size_t idx, const x64asm::RegSet& rs,
                    x64asm::Operand& op);
  /** Sets o to a random operand from the pool of defined values. Returns true on success. */
  bool get_read_op(x64asm::Opcode o, size_t idx, const x64asm::RegSet& rs,
                   x64asm::Operand& op);

  TransformPools& pools_;
  InstructionTransform instr_trans_;
  LocalSwapTransform local_swap_trans_;
  GlobalSwapTransform global_swap_trans_;
  RotateTransform rotate_trans_;
  OperandTransform operand_trans_;
  OpcodeTransform opcode_trans_;


  TransformInfo info_;
};

} // namespace stoke

#endif
