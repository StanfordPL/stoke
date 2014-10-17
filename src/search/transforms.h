// Copyright 2014 eric schkufza
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

#include <random>
#include <vector>

#include "src/ext/x64asm/include/x64asm.h"

#include "src/cfg/cfg.h"
#include "src/search/move.h"

namespace stoke {

class Transforms {
 public:
	/** Creates a new transformation helper. */
  Transforms() : old_instr_ {x64asm::RET}, old_opcode_ {x64asm::RET}, old_operand_ {x64asm::rax} {
    set_opcode_pool(x64asm::FlagSet::universe(), 0, true, true);
    set_operand_pool({x64asm::RET}, x64asm::RegSet::linux_callee_save());
  }

	/** Sets random seed. */
  Transforms& set_seed(std::default_random_engine::result_type seed) {
    gen_.seed(seed);
    return *this;
  }
	/** Sets the pool of opcodes to propose from. */
  Transforms& set_opcode_pool(const x64asm::FlagSet& fs, size_t nop_percent, bool use_mem_read,
                              bool use_mem_write);
	/** Sets the pool operands to propose from. */
  Transforms& set_operand_pool(const x64asm::Code& target, const x64asm::RegSet& preserve_regs);

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
    cfg.get_code()[instr_index_] = old_instr_;
    cfg.recompute_defs();
  }
	/** Undo opcode move, recompute def-in relation. */
  void undo_opcode_move(Cfg& cfg) {
    cfg.get_code()[instr_index_].set_opcode(old_opcode_);
    cfg.recompute_defs();
  }
	/** Undo operand move, recompute def-in relation. */
  void undo_operand_move(Cfg& cfg) {
    cfg.get_code()[instr_index_].set_operand(operand_index_, old_operand_);
    cfg.recompute_defs();
  }
	/** Undo resize move, recompute EVERYTHING. */
  void undo_resize_move(Cfg& cfg) {
    move(cfg.get_code(), move_j_, move_i_);
    cfg.recompute();
  }
	/** Undo local swap move, recompute def-in relation. */
  void undo_local_swap_move(Cfg& cfg) {
    std::swap(cfg.get_code()[move_i_], cfg.get_code()[move_j_]);
    cfg.recompute_defs();
  }
	/** Undo global swap move, recompute def-in relation. */
  void undo_global_swap_move(Cfg& cfg) {
    std::swap(cfg.get_code()[move_i_], cfg.get_code()[move_j_]);
    cfg.recompute_defs();
  }
	/** Add user-defined undo implementation here ... */
	void undo_extension_move(Cfg& cfg);

 private:
	/** Returns the number of operands for this opcode. */
  size_t arity(x64asm::Opcode o) const {
    return x64asm::Instruction(o).arity();
  }
	/** Returns the index-th operand type for this opcode. */
  x64asm::Type type(x64asm::Opcode o, size_t index) const {
    return x64asm::Instruction(o).type(index);
  }
	/** Is this an lea instruction? */
  bool is_lea_opcode(x64asm::Opcode o) const {
    return o >= x64asm::LEA_R16_M16 && o <= x64asm::LEA_R64_M64;
  }
	/** Does this instruction dereference memory? */
  bool is_mem_opcode(x64asm::Opcode o) const {
    return x64asm::Instruction(o).is_memory_dereference();
  }
	/** Does this instruction read (but not write) memory. */
  bool is_mem_read_only_opcode(x64asm::Opcode o) const {
    const auto instr = x64asm::Instruction(o);
    const auto mi = instr.mem_index();
    return mi != -1 && !instr.maybe_write(mi) && !instr.maybe_undef(mi);
  }

  /** Does this instruction write (but not read or undef) memory. */
  bool is_mem_write_only_opcode(x64asm::Opcode o) const {
    const auto instr = x64asm::Instruction(o);
    const auto mi = instr.mem_index();
    return mi != -1 && !instr.maybe_read(mi) && !instr.maybe_undef(mi);
  }

	/** Does this instruction take an rh operand? */
  bool is_rh_opcode(x64asm::Opcode o) const;
	/** Does this instruction induce control flow? */
  bool is_control_opcode(x64asm::Opcode o) const {
    return x64asm::Instruction {o} .is_jump() || x64asm::Instruction {o} .is_label_defn() ||
           x64asm::Instruction {o} .is_return();
  }
	/** Add instructions that should never be proposed to this method. */
  bool is_unsupported(x64asm::Opcode o) const;
	/** Is this instruction enabled given this flag set? */
  bool is_enabled(x64asm::Opcode o, const x64asm::FlagSet& fs) const {
    return x64asm::Instruction {o} .enabled(fs);
  }
	/** Do these two instructions take operands of the same arity and type? */
  bool is_type_equiv(x64asm::Opcode o1, x64asm::Opcode o2) const;

	/** Get a random control free opcode. */
  x64asm::Opcode get_control_free() {
    assert(!control_free_.empty());
    return control_free_[gen_() % control_free_.size()];
  }
	/** Get a random control free opcode or a nop. */
  x64asm::Opcode get_control_free_or_nop() {
    assert(!control_free_or_nop_.empty());
    return control_free_or_nop_[gen_() % control_free_or_nop_.size()];
  }
	/** Get a random control free opcode that is type equivalent to the input opcode. */
  x64asm::Opcode get_control_free_type_equiv(x64asm::Opcode o) {
    assert(!control_free_type_equiv_.empty());
    const auto& equiv = control_free_type_equiv_[o];
    return equiv.empty() ? o : equiv[gen_() % equiv.size()];
  }

	/** Set o to a random element in a register set. Returns true on success. */
  template <typename T>
  bool get(const std::vector<T>& pool, const x64asm::RegSet& rs, x64asm::Operand& o) {
    std::vector<T> ts;
    for (const auto& t : pool) {
      if (rs.contains(t)) {
        ts.push_back(t);
      }
    }
    if (ts.empty()) {
      return false;
    }
    o = ts[gen_() % ts.size()];
    return true;
  }
	/** Convenience definition for rls. */
  bool get_rl(const x64asm::RegSet& rs, x64asm::Operand& o) {
    return get<x64asm::Rl>(rl_pool_, rs, o);
  }
	/** Convenience defition for rhs. */
  bool get_rh(const x64asm::RegSet& rs, x64asm::Operand& o) {
    return get<x64asm::Rh>(rh_pool_, rs, o);
  }
	/** Convenience defition for rbs. */
  bool get_rb(const x64asm::RegSet& rs, x64asm::Operand& o) {
    return get<x64asm::Rb>(rb_pool_, rs, o);
  }
	/** Convenience defition for r16s. */
  bool get_r16(const x64asm::RegSet& rs, x64asm::Operand& o) {
    return get<x64asm::R16>(r16_pool_, rs, o);
  }
	/** Convenience defition for r32s. */
  bool get_r32(const x64asm::RegSet& rs, x64asm::Operand& o) {
    return get<x64asm::R32>(r32_pool_, rs, o);
  }
	/** Convenience defition for r64s. */
  bool get_r64(const x64asm::RegSet& rs, x64asm::Operand& o) {
    return get<x64asm::R64>(r64_pool_, rs, o);
  }
	/** Convenience defition for mms. */
  bool get_mm(const x64asm::RegSet& rs, x64asm::Operand& o) {
    return get<x64asm::Mm>(mm_pool_, rs, o);
  }
	/** Convenience defition for sregs. */
  bool get_sreg(const x64asm::RegSet& rs, x64asm::Operand& o) {
    return get<x64asm::Sreg>(sreg_pool_, rs, o);
  }
	/** Convenience defition for sts. */
  bool get_st(const x64asm::RegSet& rs, x64asm::Operand& o) {
    return get<x64asm::St>(st_pool_, rs, o);
  }
	/** Convenience defition for xmms. */
  bool get_xmm(const x64asm::RegSet& rs, x64asm::Operand& o) {
    return get<x64asm::Xmm>(xmm_pool_, rs, o);
  }
	/** Convenience defition for ymms. */
  bool get_ymm(const x64asm::RegSet& rs, x64asm::Operand& o) {
    return get<x64asm::Ymm>(ymm_pool_, rs, o);
  }
	/** Convenience defition for imms. */
  void get_imm(x64asm::Operand& o) {
    assert(!imm_pool_.empty());
    o = imm_pool_[gen_() % imm_pool_.size()];
  }
	/** Replaces the base register in m using an element of a reg set. Returns true on success. */
  bool get_base(const x64asm::RegSet& rs, x64asm::M& m);
	/** Replaces the index register in m using an element of a reg set. Returns true on success. */
  bool get_index(const x64asm::RegSet& rs, x64asm::M& m);
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

	/** The set of control free opcodes. */
  std::vector<x64asm::Opcode> control_free_;
	/** The set of control free opcodes, padded with nops. */
  std::vector<x64asm::Opcode> control_free_or_nop_;
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

  /** Old instruction for instruction moves. */
  x64asm::Instruction old_instr_;
  /** Old opcode for opcode moves. */
  x64asm::Opcode old_opcode_;
  /** Old operand for operand moves. */
  x64asm::Operand old_operand_;
  /** Instruction index. */
  size_t instr_index_;
  /** Operand index. */
  size_t operand_index_;
  /** Indices for swap or code motion moves. */
  size_t move_i_;
  size_t move_j_;

  /** Random generator. */
  std::default_random_engine gen_;
};

} // namespace stoke

#endif
