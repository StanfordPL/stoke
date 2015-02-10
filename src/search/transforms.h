// Copyright 2013-2015 Eric Schkufza, Rahul Sharma, Berkeley Churchill, Stefan Heule
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

#include <cassert>

#include <algorithm>
#include <random>
#include <vector>
#include <set>

#include "src/cfg/cfg.h"
#include "src/ext/x64asm/include/x64asm.h"
#include "src/search/move.h"
#include "src/validator/validator.h"

namespace stoke {

class Transforms {
public:
  /** Creates a new transformation helper. */
  Transforms();

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
  /** Sets the pool of opcodes to propose from. */
  Transforms& set_opcode_pool(const x64asm::FlagSet& fs, size_t call_weight,
                              bool use_mem_read, bool use_mem_write,
                              const x64asm::RegSet& preserve_regs,
                              const std::set<x64asm::Opcode>& opc_blacklist,
                              const std::set<x64asm::Opcode>& opc_whitelist);
  /** Sets the pool operands to propose from. */
  Transforms& set_operand_pool(const x64asm::Code& target, const x64asm::RegSet& preserve_regs);
  /** Insert a value into the immediate pool */
  Transforms& insert_immediate(const x64asm::Imm64& imm) {
    const auto itr = std::find(imm_pool_.begin(), imm_pool_.end(), imm);
    if (itr == imm_pool_.end()) {
      imm_pool_.push_back(imm);
    }
    return *this;
  }
  /** Insert a value into the label pool */
  Transforms& insert_label(const x64asm::Label& l) {
    const auto itr = std::find(label_pool_.begin(), label_pool_.end(), l);
    if (itr == label_pool_.end()) {
      label_pool_.push_back(l);
    }
    return *this;
  }
  /** Insert a value into the mem pool */
  Transforms& insert_mem(const x64asm::M8& m)  {
    // @todo should we warn that rip offset instructions are being ignored?
    // They don't make sense here... what rip is this relative to?
    const auto itr = std::find(m_pool_.begin(), m_pool_.end(), m);
    if (itr == m_pool_.end() && !m.rip_offset()) {
      m_pool_.push_back(m);
    }
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
    const auto undo_instr = cfg.get_code()[instr_index_];
    cfg.get_code()[instr_index_] = old_instr_;
    rescale_trailing_rips(cfg.get_code(), undo_instr, instr_index_, true);
    cfg.recompute_defs();
  }
  /** Undo opcode move, recompute def-in relation. */
  void undo_opcode_move(Cfg& cfg) {
    const auto undo_instr = cfg.get_code()[instr_index_];
    cfg.get_code()[instr_index_] = old_instr_;
    rescale_trailing_rips(cfg.get_code(), undo_instr, instr_index_, true);
    cfg.recompute_defs();
  }
  /** Undo operand move, recompute def-in relation. */
  void undo_operand_move(Cfg& cfg) {
    const auto undo_instr = cfg.get_code()[instr_index_];
    cfg.get_code()[instr_index_] = old_instr_;
    rescale_trailing_rips(cfg.get_code(), undo_instr, instr_index_, true);
    cfg.recompute_defs();
  }
  /** Undo resize move, recompute EVERYTHING. */
  void undo_resize_move(Cfg& cfg) {
    rescale_rotated_rips(cfg.get_code(), move_j_, move_i_);
    cfg.recompute();
  }
  /** Undo local swap move, recompute def-in relation. */
  void undo_local_swap_move(Cfg& cfg) {
    std::swap(cfg.get_code()[move_i_], cfg.get_code()[move_j_]);
    rescale_swapped_rips(cfg.get_code(), move_i_, move_j_);
    cfg.recompute_defs();
  }
  /** Undo global swap move, recompute def-in relation. */
  void undo_global_swap_move(Cfg& cfg) {
    std::swap(cfg.get_code()[move_i_], cfg.get_code()[move_j_]);
    rescale_swapped_rips(cfg.get_code(), move_i_, move_j_);
    cfg.recompute_defs();
  }
  /** Add user-defined undo implementation here ... */
  void undo_extension_move(Cfg& cfg);

  /* Reports if an error occurred during initialization (e.g. empty opcode pool). */
  bool has_error() {
    return error_;
  }
  /* Returns the latest error message. */
  std::string get_error() {
    return error_message_;
  }
  /* Clears any error there might be. */
  void clear_error() {
    error_ = false;
    error_message_ = "";
  }

private:
  /** The set of control free opcodes. */
  std::vector<x64asm::Opcode> control_free_;
  /** The set of control free type equivalent opcodes for each opcode. */
  std::vector<std::vector<x64asm::Opcode>> control_free_type_equiv_;

  /** Operand pool. */
  std::vector<x64asm::Rl> rl_pool_;
  /** Operand pool. */
  std::vector<x64asm::Rh> rh_pool_;
  /** Operand pool. */
  std::vector<x64asm::Rb> rb_pool_;
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
  /** Operand pool -- these are relative to the beginning of the function. */
  std::vector<x64asm::Imm32> offset_pool_;

  /** Old instruction for instruction moves. */
  x64asm::Instruction old_instr_;
  /** Instruction index. */
  size_t instr_index_;
  /** Operand index. */
  size_t operand_index_;
  /** Indices for swap or code motion moves. */
  size_t move_i_;
  size_t move_j_;

  /** Random generator. */
  std::default_random_engine gen_;
  // Assembler.
  x64asm::Assembler assm_;
  /** Validator to check for support. */
  Validator* validator_ = NULL;

  /** Tracks if an error occurred. */
  bool error_ = false;
  /* Tracks the last error message. */
  std::string error_message_;

  /** Get a random control free opcode. */
  x64asm::Opcode get_control_free() {
    assert(!control_free_.empty());
    return control_free_[gen_() % control_free_.size()];
  }
  /** Get a random control free opcode that is type equivalent to the input opcode. */
  x64asm::Opcode get_control_free_type_equiv(x64asm::Opcode o) {
    assert(!control_free_type_equiv_.empty());
    const auto& equiv = control_free_type_equiv_[o];
    return equiv.empty() ? o : equiv[gen_() % equiv.size()];
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

  /** Shifts instructions about a basic block boundary. */
  void move(x64asm::Code& code, size_t i, size_t j) const;
  /** Recompute this rip value */
  void rescale_rip(x64asm::Code& code, size_t i);
  /** Scale rips between here and the end of the code */
  void rescale_trailing_rips(x64asm::Code& code, const x64asm::Instruction& old_instr, size_t i, bool ignore_first = false);
	/** Scale rips between two swapped instructions */
 	void rescale_swapped_rips(x64asm::Code& code, size_t i, size_t j);
	/** Scale rips for a set of rotated instructions. */
	void rescale_rotated_rips(x64asm::Code& code, size_t i, size_t j);

  /** Checks that all rip offsets point into offset_pool when scaled to beginning of function */
  bool check_rips(const x64asm::Code& code);
};

} // namespace stoke

#endif
