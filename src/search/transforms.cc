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

#include "src/sandbox/sandbox.h"
#include "src/search/transforms.h"

using namespace std;
using namespace stoke;
using namespace x64asm;

namespace {

/** Returns the number of operands for this opcode. */
size_t arity(Opcode o) {
  return Instruction(o).arity();
}

/** Returns the index-th operand type for this opcode. */
Type type(Opcode o, size_t index) {
  return Instruction(o).type(index);
}

/** Is this an lea instruction? */
bool is_lea_opcode(Opcode o) {
  return Instruction(o).is_lea();
}

/** Does this instruction dereference memory? */
bool is_mem_opcode(Opcode o) {
  return Instruction(o).is_memory_dereference();
}

/** Does this instruction read (but not write) memory. */
bool is_mem_read_only_opcode(Opcode o) {
  if (Instruction(o).is_pop() || Instruction(o).is_popf()) {
    return true;
  }
  const auto instr = Instruction(o);
  const auto mi = instr.mem_index();
  return mi != -1 && !instr.maybe_write(mi) && !instr.maybe_undef(mi);
}

/** Does this instruction write (but not read or undef) memory. */
bool is_mem_write_only_opcode(Opcode o) {
  if (Instruction(o).is_push() || Instruction(o).is_pushf()) {
    return true;
  }
  const auto instr = Instruction(o);
  const auto mi = instr.mem_index();
  return mi != -1 && !instr.maybe_read(mi) && !instr.maybe_undef(mi);
}

/** Does this instruction take an rh operand? */
bool is_rh_opcode(Opcode o) {
  for (size_t i = 0, ie = arity(o); i < ie; ++i) {
    if (type(o, i) == Type::RH) {
      return true;
    }
  }
  return false;
}

/** Does this instruction induce control flow? */
bool is_control_opcode(Opcode o) {
  const Instruction instr(o);
  return instr.is_label_defn() || instr.is_any_jump() ||
         instr.is_any_call() || instr.is_any_return() ||
         instr.is_any_loop();
}

/** Does this instruction induce control flow, other than a call (which STOKE can propose)? */
bool is_control_other_than_call(Opcode op) {
  return op != CALL_LABEL && is_control_opcode(op);
}

/** Does this instruction produce non-deterministic results? */
bool is_non_deterministic(Opcode o) {
  return Instruction(o).is_rdrand();
}

/** Add instructions that should never be proposed to this method. */
bool is_unsupported(Opcode o) {
  return is_rh_opcode(o) || !Sandbox::is_supported(o);
}

/** Is this instruction enabled given this flag set? */
bool is_enabled(Opcode o, const FlagSet& fs) {
  return Instruction(o).enabled(fs);
}

/** Do these two instructions take operands of the same arity and type? */
bool is_type_equiv(Opcode o1, Opcode o2) {
  if (arity(o1) != arity(o2)) {
    return false;
  }
  for (size_t i = 0, ie = arity(o1); i < ie; ++i) {
    if (type(o1, i) != type(o2, i)) {
      return false;
    }
  }
  return true;
}

/** Fills a reg pool */
template <typename T, size_t N>
void fill_pool(vector<T>& pool, const array<T, N>& src, const RegSet& omit) {
  pool.clear();
  for (const auto& r : src) {
    if (!omit.contains(r)) {
      pool.push_back(r);
    }
  }
}

/** Set o to a random element from a pool. Returns true on success. */
template <typename T>
bool get(default_random_engine& gen, const vector<T>& pool, Operand& o) {
  if (pool.empty()) {
    return false;
  }
  o = pool[gen() % pool.size()];
  return true;
}

/** Set o to exactly one element from a pool. Returns true on success. */
template <typename T>
bool get(const vector<T>& pool, const T& val, Operand& o) {
  if (find(pool.begin(), pool.end(), val) == pool.end()) {
    return false;
  }
  o = val;
  return true;
}

/** Set o to a random element in a register set. Returns true on success. */
template <typename T>
bool get(default_random_engine& gen, const vector<T>& pool, const RegSet& rs, Operand& o) {
  vector<T> ts;
  for (const auto& t : pool) {
    if (rs.contains(t)) {
      ts.push_back(t);
    }
  }
  if (ts.empty()) {
    return false;
  }
  o = ts[gen() % ts.size()];
  return true;
}

/** Replaces base register using an element of a reg set. Returns true on success. */
template <class T>
bool get_base(default_random_engine& gen, const vector<R32> r32_pool, const vector<R64>& r64_pool, const RegSet& rs, M<T>& m) {
  if (gen() % 2) {
    m.clear_base();
    return true;
  } else if (m.addr_or()) {
    auto r = eax;
    if (get<R32>(gen, r32_pool, rs, r)) {
      m.set_base(r);
      return true;
    }
  } else {
    auto r = rax;
    if (get<R64>(gen, r64_pool, rs, r)) {
      m.set_base(r);
      return true;
    }
  }
  return false;
}

/** Replaces index register using an element of a reg set. Returns true on success. */
template <class T>
bool get_index(default_random_engine& gen, const vector<R32>& r32_pool, const vector<R64>& r64_pool, const RegSet& rs, M<T>& m) {
  if (gen() % 2) {
    m.clear_index();
  } else if (m.addr_or()) {
    auto r = eax;
    if (get<R32>(gen, r32_pool, rs, r)) {
      m.set_index(r);
      return m.get_index() != esp;
    }
  } else {
    auto r = rax;
    if (get<R64>(gen, r64_pool, rs, r)) {
      m.set_index(r);
      return m.get_index() != rsp;
    }
  }
  return false;
}

bool get_indices(default_random_engine& gen, const Cfg& cfg, Cfg::id_type& bb, size_t& block_idx, size_t& code_idx) {
  // Corner case: This code could have no reachable blocks
  if (cfg.num_reachable() < 3) {
    return false;
  }

  // Pick a random reachable block
  auto b = cfg.reachable_begin();
  for (size_t i = 0, ie = (gen() % (cfg.num_reachable() - 2)) + 1; i < ie; ++i) {
    ++b;
  }
  bb = *b;

  // Pick a random instruction in that block
  block_idx = gen() % cfg.num_instrs(bb);
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

} // namespace

namespace stoke {

Transforms::Transforms() : old_instr_(RET) {
  validator_ = nullptr;
}

Transforms& Transforms::set_opcode_pool(const Cfg& target, const FlagSet& flags,
                                        size_t call_weight, const RegSet& preserve_regs,
                                        const set<Opcode>& opc_blacklist,
                                        const set<Opcode>& opc_whitelist) {
  // Determine if we need to read/write memory operands
  auto mem_read = false;
  auto mem_write = false;
  for (size_t i = 0, ie = target.get_code().size(); i < ie; ++i) {
    const auto& instr = target.get_code()[i];
    mem_read |= instr.maybe_read_memory();
    mem_write |= instr.maybe_write_memory();
    mem_write |= instr.maybe_undef_memory();
  }

  // Empty whitelist means no whitelist
  const auto use_whitelist = !opc_whitelist.empty();

  // Refill the opcode pool
  control_free_.clear();
  for (auto i = (int)LABEL_DEFN, ie = (int)XSAVEOPT64_M64; i != ie; ++i) {
    const auto op = (Opcode)i;
    const auto mw = Instruction(op).implicit_maybe_write_set();
    const auto mu = Instruction(op).implicit_maybe_undef_set();
    if (is_control_other_than_call(op)) {
      continue;
    } else if (is_unsupported(op)) {
      continue;
    } else if (!is_enabled(op, flags)) {
      continue;
    } else if (is_non_deterministic(op)) {
      continue;
    } else if (opc_blacklist.find(op) != opc_blacklist.end()) {
      continue;
    } else if (use_whitelist && opc_whitelist.find(op) == opc_whitelist.end()) {
      continue;
    } else if (preserve_regs.intersects(mw)) {
      continue;
    } else if (preserve_regs.intersects(mu)) {
      continue;
    } else if (!mem_read) {
      if (!mem_write) {
        //no memory allowed
        if (is_mem_opcode(op)) {
          continue;
        }
      } else {
        //reads disallowed, writes allowed
        if (is_mem_opcode(op) && !is_mem_write_only_opcode(op)) {
          continue;
        }
      }
    } else if (!mem_write) {
      //read allowed, write disallowed
      if (is_mem_opcode(op) && !is_mem_read_only_opcode(op)) {
        continue;
      }
    }
    control_free_.push_back(op);
  }

  // Add additional calls depending on weight
  for (size_t i = 0; i < call_weight; ++i) {
    control_free_.push_back(CALL_LABEL);
  }

  // Lift opcode pool to type equivalent pool
  control_free_type_equiv_.clear();
  control_free_type_equiv_.resize((int)XSAVEOPT64_M64 + 1);
  for (const auto i : control_free_) {
    for (const auto j : control_free_) {
      if (is_type_equiv(i, j)) {
        control_free_type_equiv_[i].push_back(j);
      }
    }
  }

  return *this;
}

Transforms& Transforms::set_operand_pool(const Cfg& target, const RegSet& preserve_regs) {
  fill_pool(rl_pool_, rls, preserve_regs);
  fill_pool(rh_pool_, rhs, preserve_regs);
  fill_pool(rb_pool_, rbs, preserve_regs);
  fill_pool(r16_pool_, r16s, preserve_regs);
  fill_pool(r32_pool_, r32s, preserve_regs);
  fill_pool(r64_pool_, r64s, preserve_regs);

  mm_pool_.assign(mms.begin(), mms.end());
  sreg_pool_.assign(sregs.begin(), sregs.end());
  st_pool_.assign(sts.begin(), sts.end());
  xmm_pool_.assign(xmms.begin(), xmms.end());
  ymm_pool_.assign(ymms.begin(), ymms.end());

  const auto& fxn = target.get_function();

  imm_pool_.assign({
    0ul,
    1ul, -1ul, 2ul, -2ul, 3ul, -3ul, 4ul, -4ul,
    5ul, -5ul, 6ul, -6ul, 7ul, -7ul, 8ul, -8ul,
    16ul, -16ul, 32ul, -32ul, 64ul, -64ul, 128ul, -128ul
  });
  set<Imm64> imm_ops(fxn.imm_begin(), fxn.imm_end());
  for (const auto& imm : imm_ops) {
    insert_immediate(imm);
  }

  set<M8> mem_ops(fxn.mem_begin(), fxn.mem_end());
  m_pool_.assign(mem_ops.begin(), mem_ops.end());

  set<Label> call_ops(fxn.call_target_begin(), fxn.call_target_end());
  label_pool_.assign(call_ops.begin(), call_ops.end());

  set<uint64_t> rip_ops(fxn.rip_offset_target_begin(), fxn.rip_offset_target_end());
  rip_pool_.assign(rip_ops.begin(), rip_ops.end());

  return *this;
}

bool Transforms::modify(Cfg& cfg, Move type) {
  auto ret = false;
  switch (type) {
  case Move::INSTRUCTION:
    ret = instruction_move(cfg);
    break;
  case Move::OPCODE:
    ret = opcode_move(cfg);
    break;
  case Move::OPERAND:
    ret = operand_move(cfg);
    break;
  case Move::RESIZE:
    ret = resize_move(cfg);
    break;
  case Move::LOCAL_SWAP:
    ret = local_swap_move(cfg);
    break;
  case Move::GLOBAL_SWAP:
    ret = global_swap_move(cfg);
    break;
  case Move::EXTENSION:
    ret = extension_move(cfg);
    break;
  default:
    assert(false);
    return false;
  }

  assert(cfg.get_function().check_invariants());
  return ret;
}

bool Transforms::instruction_move(Cfg& cfg) {
  // Grab the index of an old instruction
  Cfg::id_type bb = cfg.get_entry();
  size_t block_idx = 0;
  if (!get_indices(gen_, cfg, bb, block_idx, instr_idx1_)) {
    return false;
  }

  // Record the old value
  old_instr_ = cfg.get_code()[instr_idx1_];

  // Try generating a new instruction
  auto instr = old_instr_;

  auto opc = RET;
  if (!get_control_free(opc)) {
    return false;
  }
  instr.set_opcode(opc);

  const auto& rs = cfg.def_ins({bb, block_idx});
  for (size_t i = 0, ie = instr.arity(); i < ie; ++i) {
    Operand o = instr.get_operand<R64>(i);
    if (instr.maybe_read(i)) {
      if (!get_read_op(instr.get_opcode(), i, rs, o)) {
        return false;
      }
    } else {
      if (!get_write_op(instr.get_opcode(), i, rs, o)) {
        return false;
      }
    }
    instr.set_operand(i, o);
  }

  // Check for validator support for the new instruction
  if (validator_ && !validator_->is_supported(instr)) {
    return false;
  }

  // Success: Any failure beyond here will require undoing the move
  cfg.get_function().replace(instr_idx1_, instr, true);
  cfg.recompute_defs();
  if (!cfg.is_sound()) {
    undo_instruction_move(cfg);
    return false;
  }

  return true;
}

bool Transforms::opcode_move(Cfg& cfg) {
  // Grab the index of a random instruction
  Cfg::id_type bb = cfg.get_entry();
  size_t block_idx = 0;
  if (!get_indices(gen_, cfg, bb, block_idx, instr_idx1_)) {
    return false;
  }

  // Record the old value
  old_instr_ = cfg.get_code()[instr_idx1_];

  // Try generating a new instruction
  auto instr = old_instr_;

  auto opc = RET;
  if (!get_control_free_type_equiv(opc)) {
    return false;
  }
  instr.set_opcode(opc);

  // Check for validator support for the new instruction
  if (validator_ && !validator_->is_supported(instr)) {
    return false;
  }

  // Success: Any failure beyond here will require undoing the move
  cfg.get_function().replace(instr_idx1_, instr);
  cfg.recompute_defs();
  if (!cfg.is_sound()) {
    undo_opcode_move(cfg);
    return false;
  }

  return true;
}

bool Transforms::operand_move(Cfg& cfg) {
  // Grab the index of a random instruction
  Cfg::id_type bb = cfg.get_entry();
  size_t block_idx = 0;
  if (!get_indices(gen_, cfg, bb, block_idx, instr_idx1_)) {
    return false;
  }

  // Corner Cases: Don't try chaning 0-arity opcodes
  if (cfg.get_code()[instr_idx1_].arity() == 0) {
    return false;
  }
  const auto operand_idx = gen_() % cfg.get_code()[instr_idx1_].arity();

  // Record the old value and generate a new operand
  old_instr_ = cfg.get_code()[instr_idx1_];
  auto instr = old_instr_;
  Operand o = instr.get_operand<R64>(operand_idx);

  const auto& rs = cfg.def_ins({bb, block_idx});
  if (instr.maybe_read(operand_idx)) {
    if (!get_read_op(instr.get_opcode(), operand_idx, rs, o)) {
      return false;
    }
  } else {
    if (!get_write_op(instr.get_opcode(), operand_idx, rs, o)) {
      return false;
    }
  }
  instr.set_operand(operand_idx, o);

  // Check for validator support for the new instruction
  if (validator_ && !validator_->is_supported(instr)) {
    return false;
  }

  // If this is a rip operand, it needs rescaling since it's global
  // Otherwise, the instruction should be replaced as is
  const auto is_mem = instr.is_explicit_memory_dereference() && ((size_t)instr.mem_index() == operand_idx);
  const auto is_rip = ((M8*)&o)->rip_offset();

  // Success: Any failure beyond here will require undoing the move
  cfg.get_function().replace(instr_idx1_, instr, is_rip);
  cfg.recompute_defs();
  if (!cfg.is_sound()) {
    undo_operand_move(cfg);
    return false;
  }

  return true;
}

bool Transforms::resize_move(Cfg& cfg) {
  if (cfg.get_code().size() < 2) {
    return false;
  }

  instr_idx1_ = 1;
  for (size_t ie = cfg.get_code().size(); instr_idx1_ < ie; ++instr_idx1_) {
    if (cfg.get_code()[instr_idx1_].is_nop()) {
      goto found_a_nop;
    }
  }
  return false;
found_a_nop:

  instr_idx2_ = (gen_() % (cfg.get_code().size()-1)) + 1;
  if (instr_idx1_ == instr_idx2_) {
    return false;
  }

  if (instr_idx1_ < instr_idx2_) {
    cfg.get_function().rotate_left(instr_idx1_, instr_idx2_);
  } else {
    cfg.get_function().rotate_right(instr_idx2_, instr_idx1_);
  }
  cfg.recompute();

  return true;
}

bool Transforms::local_swap_move(Cfg& cfg) {
  const auto bb = (gen_() % (cfg.num_blocks() - 2)) + 1;
  if (!cfg.is_reachable(bb)) {
    return false;
  }
  const auto num_instrs = cfg.num_instrs(bb);
  if (num_instrs < 2) {
    return false;
  }

  instr_idx1_ = cfg.get_index({bb, gen_() % num_instrs});
  if (instr_idx1_ == cfg.get_index({cfg.get_entry()+1,0})) {
    return false;
  }
  instr_idx2_ = cfg.get_index({bb, gen_() % num_instrs});
  if (instr_idx1_ == instr_idx2_) {
    return false;
  }
  if (instr_idx2_ < instr_idx1_) {
    swap(instr_idx1_, instr_idx2_);
  }

  const auto& i = cfg.get_code()[instr_idx1_];
  if (is_control_other_than_call(i.get_opcode())) {
    return false;
  }
  const auto& j = cfg.get_code()[instr_idx2_];
  if (is_control_other_than_call(j.get_opcode())) {
    return false;
  }

  cfg.get_function().swap(instr_idx1_, instr_idx2_);
  cfg.recompute_defs();
  if (!cfg.is_sound()) {
    undo_local_swap_move(cfg);
    return false;
  }

  return true;
}

bool Transforms::global_swap_move(Cfg& cfg) {
  if (cfg.get_code().size() < 3) {
    return false;
  }

  instr_idx1_ = (gen_() % (cfg.get_code().size()-1)) + 1;
  instr_idx2_ = (gen_() % (cfg.get_code().size()-1)) + 1;
  if (instr_idx1_ == instr_idx2_) {
    return false;
  }

  const auto& i = cfg.get_code()[instr_idx1_];
  if (is_control_other_than_call(i.get_opcode())) {
    return false;
  }
  const auto& j = cfg.get_code()[instr_idx2_];
  if (is_control_other_than_call(j.get_opcode())) {
    return false;
  }

  cfg.get_function().swap(instr_idx1_, instr_idx2_);
  cfg.recompute_defs();
  if (!cfg.is_sound()) {
    undo_global_swap_move(cfg);
    return false;
  }

  return true;
}

bool Transforms::extension_move(Cfg& cfg) {
  // Add user-defined implementation here ...

  // Invariant 1:
  // If this method returns true, it should leave this class in a state such
  // that calling undo_extension_move() will revert cfg to its original state.

  // Invariant 2:
  // If this method returns false, it must leave cfg in its original state.

  // Invariant 3:
  // If validator_ is non-null, validator_->is_sound(instr) must hold true for
  // all instructions instr upon return.  (You can assume this holds at the
  // beginning).

  // Invariant 4:
  // The soundness of the underlying function must be preserved. This can be
  // checking by calling ...
  assert(cfg.get_function().check_invariants());

  return false;
}

void Transforms::undo(Cfg& cfg, Move type) {
  switch (type) {
  case Move::INSTRUCTION:
    undo_instruction_move(cfg);
    break;
  case Move::OPCODE:
    undo_opcode_move(cfg);
    break;
  case Move::OPERAND:
    undo_operand_move(cfg);
    break;
  case Move::RESIZE:
    undo_resize_move(cfg);
    break;
  case Move::LOCAL_SWAP:
    undo_local_swap_move(cfg);
    break;
  case Move::GLOBAL_SWAP:
    undo_global_swap_move(cfg);
    break;
    undo_extension_move(cfg);
    break;
  default:
    assert(false);
    break;
  }

  assert(cfg.get_function().check_invariants());
}

void Transforms::undo_extension_move(Cfg& cfg) {
  // Add user-defined implementation here ...

  // Invariant: If the previous invocation of extension_move() returned true, this
  // method must return cfg to its original state.

  return;
}

bool Transforms::get_lea_mem(const RegSet& rs, Operand& o) {
  auto m = *((M8*)(&o));
  m.set_rip_offset(false);
  m.set_addr_or(gen_() % 2);
  m.clear_seg();
  m.set_scale((Scale)(gen_() % 4));
  m.set_disp((Imm32)(imm_pool_[gen_() % imm_pool_.size()]));

  if (!get_base(gen_, r32_pool_, r64_pool_, rs, m)) {
    return false;
  }
  if (!get_index(gen_, r32_pool_, r64_pool_, rs, m)) {
    return false;
  }
  o = m;
  return true;
}

bool Transforms::get_rip_mem(Operand& o) {
  if (rip_pool_.empty()) {
    return false;
  }

  auto& m = *((M8*)(&o));
  m.set_rip_offset(true);
  m.clear_seg();
  m.clear_base();
  m.clear_index();
  m.set_disp(rip_pool_[gen_() % rip_pool_.size()]);

  return true;
}

bool Transforms::get_reg_mem(const RegSet& rs, Operand& o) {
  // Pull an operand out of the mem pool
  if (m_pool_.empty()) {
    return false;
  }
  const auto& m = m_pool_[gen_() % m_pool_.size()];

  // All we do now is check whether this operand works here
  if (m.contains_base()) {
    if (m.addr_or() && !rs.contains(r32s[m.get_base()])) {
      return false;
    } else if (!m.addr_or() && !rs.contains(r64s[m.get_base()])) {
      return false;
    }
  }
  if (m.contains_index()) {
    if (m.addr_or() && !rs.contains(r32s[m.get_index()])) {
      return false;
    } else if (!m.addr_or() && !rs.contains(r64s[m.get_index()])) {
      return false;
    }
  }

  // If we're here it did, replace o
  o = m;
  return true;
}

bool Transforms::get_m(const RegSet& rs, Opcode c, Operand& o) {
  if (is_lea_opcode(c)) {
    return get_lea_mem(rs, o);
  } else if (gen_() % 2) {
    return get_rip_mem(o);
  } else {
    return get_reg_mem(rs, o);
  }
}

bool Transforms::get_write_op(Opcode o, size_t idx, const RegSet& rs, Operand& op) {
  switch (type(o, idx)) {
  case Type::M_8:
  case Type::M_16:
  case Type::M_32:
  case Type::M_64:
  case Type::M_128:
  case Type::M_256:
  case Type::M_16_INT:
  case Type::M_32_INT:
  case Type::M_64_INT:
  case Type::M_32_FP:
  case Type::M_64_FP:
  case Type::M_80_FP:
  case Type::M_80_BCD:
  case Type::M_2_BYTE:
  case Type::M_28_BYTE:
  case Type::M_108_BYTE:
  case Type::M_512_BYTE:
  case Type::FAR_PTR_16_16:
  case Type::FAR_PTR_16_32:
  case Type::FAR_PTR_16_64:
    return get_m(rs, o, op);

  case Type::MM:
    return get<Mm>(gen_, mm_pool_, op);

  case Type::MOFFS_8:
  case Type::MOFFS_16:
  case Type::MOFFS_32:
  case Type::MOFFS_64:
    return false;

  case Type::RL:
    return get<Rl>(gen_, rl_pool_, op);
  case Type::RH:
    return get<Rh>(gen_, rh_pool_, op);
  case Type::RB:
    return get<Rb>(gen_, rb_pool_, op);
  case Type::AL:
    return get<Rl>(rl_pool_, al, op);
  case Type::CL:
    return get<Rl>(rl_pool_, cl, op);
  case Type::R_16:
    return get<R16>(gen_, r16_pool_, op);
  case Type::AX:
    return get<R16>(r16_pool_, ax, op);
  case Type::DX:
    return get<R16>(r16_pool_, dx, op);
  case Type::R_32:
    return get<R32>(gen_, r32_pool_, op);
  case Type::EAX:
    return get<R32>(r32_pool_, eax, op);
  case Type::R_64:
    return get<R64>(gen_, r64_pool_, op);
  case Type::RAX:
    return get<R64>(r64_pool_, rax, op);

  case Type::REL_8:
  case Type::REL_32:
    return false;

  case Type::SREG:
    return get<Sreg>(gen_, sreg_pool_, op);
  case Type::FS:
    return get<Sreg>(sreg_pool_, fs, op);
  case Type::GS:
    return get<Sreg>(sreg_pool_, gs, op);

  case Type::ST:
    return get<St>(gen_, st_pool_, op);
  case Type::ST_0:
    return get<St>(st_pool_, st0, op);

  case Type::XMM:
    return get<Xmm>(gen_, xmm_pool_, op);
  case Type::XMM_0:
    return get<Xmm>(xmm_pool_, xmm0, op);

  case Type::YMM:
    return get<Ymm>(gen_, ymm_pool_, op);

  // See issue #463 -- This is probably an x64asm bug that LEAVE_PREF66 thinks
  // this is a write op. But for now it doesn't hurt to just return the correct value.
  case Type::PREF_66:
    op = pref_66;
    return true;

  default:
    assert(false);
    return false;;
  }
}

bool Transforms::get_read_op(Opcode o, size_t idx, const RegSet& rs, Operand& op) {
  switch (type(o, idx)) {
  case Type::HINT:
    op = gen_() % 2 ? taken : not_taken;
    return true;

  case Type::IMM_8: {
    bool b = get<Imm64>(gen_, imm_pool_, op);
    if (!b) return false;
    Imm* i = static_cast<Imm*>(&op);
    *i = Imm8((uint64_t)*i & 0xff);
    return true;
  }

  case Type::IMM_16: {
    bool b = get<Imm64>(gen_, imm_pool_, op);
    if (!b) return false;
    Imm* i = static_cast<Imm*>(&op);
    *i = Imm16((uint64_t)*i & 0xffff);
    return true;
  }

  case Type::IMM_32: {
    bool b = get<Imm64>(gen_, imm_pool_, op);
    if (!b) return false;
    Imm* i = static_cast<Imm*>(&op);
    *i = Imm32((uint64_t)*i & 0xffffffff);
    return true;
  }

  case Type::IMM_64:
    return get<Imm64>(gen_, imm_pool_, op);
  case Type::ZERO:
    op = zero;
    return true;
  case Type::ONE:
    op = one;
    return true;
  case Type::THREE:
    op = three;
    return true;

  case Type::LABEL:
    return get<Label>(gen_, label_pool_, op);

  case Type::M_8:
  case Type::M_16:
  case Type::M_32:
  case Type::M_64:
  case Type::M_128:
  case Type::M_256:
  case Type::M_16_INT:
  case Type::M_32_INT:
  case Type::M_64_INT:
  case Type::M_32_FP:
  case Type::M_64_FP:
  case Type::M_80_FP:
  case Type::M_80_BCD:
  case Type::M_2_BYTE:
  case Type::M_28_BYTE:
  case Type::M_108_BYTE:
  case Type::M_512_BYTE:
  case Type::FAR_PTR_16_16:
  case Type::FAR_PTR_16_32:
  case Type::FAR_PTR_16_64:
    return get_m(rs, o, op);

  case Type::MM:
    return get<Mm>(gen_, mm_pool_, rs, op);

  case Type::PREF_66:
    op = pref_66;
    return true;
  case Type::PREF_REX_W:
    op = pref_rex_w;
    return true;
  case Type::FAR:
    op = far;
    return true;

  case Type::MOFFS_8:
  case Type::MOFFS_16:
  case Type::MOFFS_32:
  case Type::MOFFS_64:
    return false;

  case Type::RL:
    return get<Rl>(gen_, rl_pool_, rs, op);
  case Type::RH:
    return get<Rh>(gen_, rh_pool_, rs, op);
  case Type::RB:
    return get<Rb>(gen_, rb_pool_, rs, op);
  case Type::AL:
    return get<Al>(gen_, {al}, rs, op);
  case Type::CL:
    return get<Cl>(gen_, {cl}, rs, op);
  case Type::R_16:
    return get<R16>(gen_, r16_pool_, rs, op);
  case Type::AX:
    return get<Ax>(gen_, {ax}, rs, op);
  case Type::DX:
    return get<Dx>(gen_, {dx}, rs, op);
  case Type::R_32:
    return get<R32>(gen_, r32_pool_, rs, op);
  case Type::EAX:
    return get<Eax>(gen_, {eax}, rs, op);
  case Type::R_64:
    return get<R64>(gen_, r64_pool_, op);
  case Type::RAX:
    return get<Rax>(gen_, {rax}, rs, op);

  case Type::REL_8:
  case Type::REL_32:
    return false;

  case Type::SREG:
    return get<Sreg>(gen_, sreg_pool_, rs, op);
  case Type::FS:
    return get<Fs>(gen_, {fs}, rs, op);
  case Type::GS:
    return get<Gs>(gen_, {gs}, rs, op);

  case Type::ST:
    return get<St>(gen_, st_pool_, rs, op);
  case Type::ST_0:
    return get<St0>(gen_, {st0}, rs, op);

  case Type::XMM:
    return get<Xmm>(gen_, xmm_pool_, rs, op);
  case Type::XMM_0:
    return get<Xmm0>(gen_, {xmm0}, rs, op);

  case Type::YMM:
    return get<Ymm>(gen_, ymm_pool_, rs, op);

  default:
    assert(false);
    return false;;
  }
}

} // namespace stoke
