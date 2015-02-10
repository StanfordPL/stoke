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

/** Returns true if this instruction uses rip offset addressing */
bool uses_rip(const Instruction& instr) {
  if (!instr.is_explicit_memory_dereference()) {
    return false;
  }
  const auto mi = instr.mem_index();
  return instr.get_operand<M8>(mi).rip_offset();
}

/** Returns true if this instruction uses rip offset addressing in this operand */
bool uses_rip(const Instruction& instr, size_t idx) {
  if (!instr.is_explicit_memory_dereference()) {
    return false;
  }
  const auto mi = instr.mem_index();
	if ((size_t)mi != idx) {
		return false;
	}
  return instr.get_operand<M8>(mi).rip_offset();
}

/** Returns the rip offset for this instruction */
uint64_t get_offset(const Instruction& instr) {
  assert(uses_rip(instr));
  const auto mi = instr.mem_index();
  return instr.get_operand<M8>(mi).get_disp();
}

/** Adds an offset to an existing rip offset */
void rescale_offset(Instruction& instr, int64_t delta) {
  assert(uses_rip(instr));
  const auto mi = instr.mem_index();
  auto m = instr.get_operand<M8>(mi);
  m.set_disp(m.get_disp()+delta);
  instr.set_operand(mi, m);
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
  set_opcode_pool(FlagSet::universe(), 0, true, true, RegSet::empty(), {}, {});
  set_operand_pool({RET}, RegSet::linux_call_preserved());
}

Transforms& Transforms::set_opcode_pool(const FlagSet& flags,
                                        size_t call_weight, bool use_mem_read,
                                        bool use_mem_write, const RegSet& preserve_regs,
                                        const set<Opcode>& opc_blacklist,
                                        const set<Opcode>& opc_whitelist) {
  control_free_.clear();
  auto use_whitelist = opc_whitelist.size() > 0; // empty whitelist means no whitelist
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
    } else if (!use_mem_read) {
      if (!use_mem_write) {
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
    } else if (!use_mem_write) {
      //read allowed, write disallowed
      if (is_mem_opcode(op) && !is_mem_read_only_opcode(op)) {
        continue;
      }
    }

    control_free_.push_back(op);
  }

  for (size_t i = 0; i < call_weight; ++i) {
    control_free_.push_back(CALL_LABEL);
  }

  if (control_free_.size() == 0) {
    error_ = true;
    error_message_ = "No opcodes left to propose (consider changing whitelist/blacklist parameters).";
  }

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

Transforms& Transforms::set_operand_pool(const Code& target, const RegSet& preserve_regs) {
  rl_pool_.clear();
  for (const auto& r : rls) {
    if (!preserve_regs.contains(r)) {
      rl_pool_.push_back(r);
    }
  }
  rh_pool_.clear();
  for (const auto& r : rhs) {
    if (!preserve_regs.contains(r)) {
      rh_pool_.push_back(r);
    }
  }
  rb_pool_.clear();
  for (const auto& r : rbs) {
    if (!preserve_regs.contains(r)) {
      rb_pool_.push_back(r);
    }
  }
  r16_pool_.clear();
  for (const auto& r : r16s) {
    if (!preserve_regs.contains(r)) {
      r16_pool_.push_back(r);
    }
  }
  r32_pool_.clear();
  for (const auto& r : r32s) {
    if (!preserve_regs.contains(r)) {
      r32_pool_.push_back(r);
    }
  }
  r64_pool_.clear();
  for (const auto& r : r64s) {
    if (!preserve_regs.contains(r)) {
      r64_pool_.push_back(r);
    }
  }
  mm_pool_.assign(mms.begin(), mms.end());
  sreg_pool_.assign(sregs.begin(), sregs.end());
  st_pool_.assign(sts.begin(), sts.end());
  xmm_pool_.assign(xmms.begin(), xmms.end());
  ymm_pool_.assign(ymms.begin(), ymms.end());

  imm_pool_.assign({
    0ul, 1ul, -1ul, 2ul, -2ul, 3ul, -3ul, 4ul, -4ul, 5ul, -5ul, 6ul, -6ul, 7ul, -7ul, 8ul, -8ul,
    16ul, -16ul, 32ul, -32ul, 64ul, -64ul, 128ul, -128ul
  });
  for (const auto& instr : target) {
    for (size_t i = 0, ie = instr.arity(); i < ie; ++i) {
      switch (instr.type(i)) {
      case Type::IMM_8:
      case Type::IMM_16:
      case Type::IMM_32:
      case Type::IMM_64:
      case Type::ZERO:
      case Type::ONE:
      case Type::THREE:
        insert_immediate(instr.get_operand<Imm64>(i));
        break;
      default:
        break;
      }
    }
  }

  m_pool_.clear();
  for (const auto& instr : target) {
    if (instr.is_explicit_memory_dereference()) {
      assert(instr.mem_index() != -1);
      insert_mem(instr.get_operand<M8>(instr.mem_index()));
    }
  }

  label_pool_.clear();
  for (const auto& instr : target) {
    if (instr.is_call()) {
      insert_label(instr.get_operand<Label>(0));
    }
  }

  offset_pool_.clear();
  uint64_t fxn_offset = 0;
  for (const auto& instr : target) {
    fxn_offset += assm_.hex_size(instr);
    if (!uses_rip(instr)) {
      continue;
    }
    const auto ptr = get_offset(instr) + fxn_offset;
    const auto itr = find(offset_pool_.begin(), offset_pool_.end(), ptr);
    if (itr == offset_pool_.end()) {
      offset_pool_.push_back(ptr);
    }
  }

  return *this;
}

bool Transforms::modify(Cfg& cfg, Move type) {
	cout << "MODIFY" << endl;
  switch (type) {
  case Move::INSTRUCTION:
    return instruction_move(cfg);
  case Move::OPCODE:
    return opcode_move(cfg);
  case Move::OPERAND:
    return operand_move(cfg);
  case Move::RESIZE:
    return resize_move(cfg);
  case Move::LOCAL_SWAP:
    return local_swap_move(cfg);
  case Move::GLOBAL_SWAP:
    return global_swap_move(cfg);
  case Move::EXTENSION:
    return extension_move(cfg);
  default:
    assert(false);
    return false;
  }
}

bool Transforms::instruction_move(Cfg& cfg) {
  auto& code = cfg.get_code();

  // Grab the index of an old instruction
  Cfg::id_type bb = cfg.get_entry();
  size_t block_idx = 0;
  if (!get_indices(gen_, cfg, bb, block_idx, instr_index_)) {
    return false;
  }

  // Record the old value and generate a new instruction
  old_instr_ = code[instr_index_];
  auto& instr = code[instr_index_];
  instr.set_opcode(get_control_free());

  // Try generating new operands but revert if we fail at any point
  const auto& rs = cfg.def_ins({bb, block_idx});
  for (size_t i = 0, ie = instr.arity(); i < ie; ++i) {
    Operand o = instr.get_operand<R64>(i);
    if (instr.maybe_read(i)) {
      if (!get_read_op(instr.get_opcode(), i, rs, o)) {
        instr = old_instr_;
        return false;
      }
    } else {
      if (!get_write_op(instr.get_opcode(), i, rs, o)) {
        instr = old_instr_;
        return false;
      }
    }
    instr.set_operand(i, o);
  }

  // Success: rescale rips before going on to harder checks
  // Any failure beyond here will require undoing the move
	if (uses_rip(instr)) {
		rescale_rip(code, instr_index_);
		rescale_rips(code, old_instr_, instr_index_, true);
	} else {
  	rescale_rips(code, old_instr_, instr_index_);
	}

  if(validator_ && !validator_->is_supported(instr)) {
    undo_instruction_move(cfg);
    return false;
  }
  cfg.recompute_defs();
  if (!cfg.is_sound()) {
    undo_instruction_move(cfg);
    return false;
  }

  return true;
}

bool Transforms::opcode_move(Cfg& cfg) {
  auto& code = cfg.get_code();

  // Grab the index of a random instruction
  Cfg::id_type bb = cfg.get_entry();
  size_t block_idx = 0;
  if (!get_indices(gen_, cfg, bb, block_idx, instr_index_)) {
    return false;
  }

  // Record the old value and generate a new opcode
  old_instr_ = code[instr_index_];
  auto& instr = code[instr_index_];
  instr.set_opcode(get_control_free_type_equiv(instr.get_opcode()));

  // Success: Rescale rips before going on to harder checks
  // Any failure beyond here will require undoing the move
  rescale_rips(code, old_instr_, instr_index_);

  if(validator_ && !validator_->is_supported(instr)) {
    undo_opcode_move(cfg);
    return false;
  }
  cfg.recompute_defs();
  if (!cfg.is_sound()) {
    undo_opcode_move(cfg);
    return false;
  }

  return true;
}

bool Transforms::operand_move(Cfg& cfg) {
  auto& code = cfg.get_code();

  // Grab the index of a random instruction
  Cfg::id_type bb = cfg.get_entry();
  size_t block_idx = 0;
  if (!get_indices(gen_, cfg, bb, block_idx, instr_index_)) {
    return false;
  }

  // Corner Cases: Don't try chaning 0-arity opcodes
  if (code[instr_index_].arity() == 0) {
    return false;
  }
  const auto operand_idx = gen_() % code[instr_index_].arity();

  // Record the old value and generate a new operand
  old_instr_ = code[instr_index_];
  auto& instr = code[instr_index_];
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

  // Success: Rescale rips before going on to harder checks
  // Any failure beyond here will require undoing the move
	if (uses_rip(instr, operand_idx)) {
		rescale_rip(code, instr_index_);
		rescale_rips(code, old_instr_, instr_index_, true);
	} else {
	  rescale_rips(code, old_instr_, instr_index_);
	}

  if(validator_ && !validator_->is_supported(instr)) {
    undo_operand_move(cfg);
    return false;
  }
  cfg.recompute_defs();
  if (!cfg.is_sound()) {
    undo_operand_move(cfg);
    return false;
  }

  return true;
}

bool Transforms::resize_move(Cfg& cfg) {
  auto& code = cfg.get_code();
  if (code.size() < 2) {
    return false;
  }

  move_i_ = 1;
  for (size_t ie = code.size(); move_i_ < ie; ++move_i_) {
    if (code[move_i_].is_nop()) {
      goto found_a_nop;
    }
  }
  return false;
found_a_nop:

  move_j_ = (gen_() % (code.size()-1)) + 1;
  if (move_i_ == move_j_) {
    return false;
  }

  move(code, move_i_, move_j_);
  if (move_i_ < move_j_) {
    //rescale_rips(code, code[move_j_], move_i_, move_j_);
  } else {
    //rescale_rips(code, code[move_i_], move_j_, move_i_);
  }
  cfg.recompute();

  return true;
}

bool Transforms::local_swap_move(Cfg& cfg) {
  auto& code = cfg.get_code();

  const auto bb = (gen_() % (cfg.num_blocks() - 2)) + 1;
  if (!cfg.is_reachable(bb)) {
    return false;
  }
  const auto num_instrs = cfg.num_instrs(bb);
  if (num_instrs < 2) {
    return false;
  }

  move_i_ = cfg.get_index({bb, gen_() % num_instrs});
  if (move_i_ == cfg.get_index({cfg.get_entry()+1,0})) {
    return false;
  }
  move_j_ = cfg.get_index({bb, gen_() % num_instrs});
  if (move_i_ == move_j_) {
    return false;
  }
	if (move_j_ < move_j_) {
		swap(move_i_, move_j_);
	}

  auto& i = code[move_i_];
  if (is_control_other_than_call(i.get_opcode())) {
    return false;
  }
  auto& j = code[move_j_];
  if (is_control_other_than_call(j.get_opcode())) {
    return false;
  }

  swap(i, j);
  //rescale_rips(code, code[move_j_], move_i_, move_j_);

  cfg.recompute_defs();
  if (!cfg.is_sound()) {
    undo_local_swap_move(cfg);
    return false;
  }

  return true;
}

bool Transforms::global_swap_move(Cfg& cfg) {
  auto& code = cfg.get_code();
  if (code.size() < 3) {
    return false;
  }

  move_i_ = (gen_() % (code.size()-1)) + 1;
  move_j_ = (gen_() % (code.size()-1)) + 1;
  if (move_i_ == move_j_) {
    return false;
  }
	if (move_j_ < move_i_) {
		swap(move_i_, move_j_);
	}

  auto& i = code[move_i_];
  if (is_control_other_than_call(i.get_opcode())) {
    return false;
  }
  auto& j = code[move_j_];
  if (is_control_other_than_call(j.get_opcode())) {
    return false;
  }

  swap(i, j);
  //rescale_rips(code, code[move_j_], move_i_, move_j_);

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
  // Transformations must preserve the first instruction in a code sequence
  // which should be a label that represents the name of a function.

  // Invariant 5:
  // Transformations must preserve the soundness of rip offsets
  // which should always point to elements in the offset_pool_

  return false;
}

void Transforms::undo(Cfg& cfg, Move type) {
	cout << "UNDO" << endl;
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

/** Returns a rip offset from the offset pool... this will need scaling!!! */
bool Transforms::get_rip_mem(Operand& o) {
	if (offset_pool_.empty()) {
		return false;
	}

	auto& m = *((M8*)(&o));
	m.set_rip_offset(true);
	m.clear_seg();
	m.clear_base();
	m.clear_index();
	m.set_disp(offset_pool_[gen_() % offset_pool_.size()]);

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

void Transforms::move(Code& code, size_t i, size_t j) const {
  const auto temp = code[i];
  if (i < j) {
    for (size_t k = i; k < j; ++k) {
      code[k] = code[k + 1];
    }
  } else {
    for (int k = i; k > (int)j; --k) {
      code[k] = code[k - 1];
    }
  }
  code[j] = temp;
}

void Transforms::rescale_rip(Code& code, size_t idx) {
	assert(uses_rip(code[idx]));

	cout << "SCALING JUST (" << idx << ")" << endl;
	int64_t delta = 0;
	for (size_t i = 0; i <= idx; ++i) {
		delta -= assm_.hex_size(code[i]);
	}
	cout << "*** " << code[idx] << " -> ";
	rescale_offset(code[idx], delta);
	cout << code[idx] << endl;
}

void Transforms::rescale_rips(Code& code, const Instruction& old_instr, size_t idx, bool ignore_first) {
  // How much shorter has the new instruction encoding become?
  const int64_t delta = assm_.hex_size(old_instr) - assm_.hex_size(code[idx]);

	cout << old_instr << " - > " << code[idx] << " (" << delta << ")" << endl;

  // Nothing to do if nothing has changed
  if (delta == 0) {
    return;
  }

	cout << "SCALING (" << (ignore_first ? idx+1 : idx) << "->" << (code.size()-1) << ")" << endl;

  // Otherwise, rip offsets between i and j are increased by this delta
  for (size_t i = ignore_first ? idx+1 : idx, ie = code.size(); i < ie; ++i) {
    if (uses_rip(code[i])) {
			cout << "*** " << code[i] << " -> ";
      rescale_offset(code[i], delta);
			cout << code[i] << endl;
    }
  }

	cout << "DONE" << endl << endl;

  // No harm in checking to be safe.
  assert(check_rips(code));
}

bool Transforms::check_rips(const Code& code) {
  uint64_t fxn_offset = 0;
  for (const auto& instr : code) {
    fxn_offset += assm_.hex_size(instr);
    if (!uses_rip(instr)) {
      continue;
    }
    const auto ptr = get_offset(instr) + fxn_offset;
    const auto itr = find(offset_pool_.begin(), offset_pool_.end(), ptr);
    if (itr == offset_pool_.end()) {
			cout << "FAIL: " << instr << " @ " << fxn_offset << endl;
			for (const auto p : offset_pool_) {
				cout << p << " ";
			}
			cout << endl;
      return false;
    }
  }

  return true;
}

} // namespace stoke
