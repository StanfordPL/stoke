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
#include "src/transform/pools.h"

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
  return !Sandbox::is_supported(o);
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

} // namespace

namespace stoke {

TransformPools::TransformPools() {

  validator_ = NULL;
  memory_read_ = false;
  memory_write_ = false;

  auto imms = {
    0ul,
    1ul, -1ul, 2ul, -2ul, 3ul, -3ul, 4ul, -4ul,
    5ul, -5ul, 6ul, -6ul, 7ul, -7ul, 8ul, -8ul,
    16ul, -16ul, 32ul, -32ul, 64ul, -64ul, 128ul, -128ul
  };

  for(auto imm : imms) {
    insert_immediate(imm);
  }


  fill_pool(rh_pool_, rhs, preserve_regs_);
  fill_pool(r8_pool_, r8s, preserve_regs_);
  fill_pool(r16_pool_, r16s, preserve_regs_);
  fill_pool(r32_pool_, r32s, preserve_regs_);
  fill_pool(r64_pool_, r64s, preserve_regs_);

  fill_pool(mm_pool_, mms, preserve_regs_);
  fill_pool(sreg_pool_, sregs, preserve_regs_);
  fill_pool(st_pool_, sts, preserve_regs_);
  fill_pool(xmm_pool_, xmms, preserve_regs_);
  fill_pool(ymm_pool_, ymms, preserve_regs_);

  for(size_t i = 0; i < X64ASM_NUM_OPCODES; ++i) {
    opcode_weights_[i] = 0;
    opcode_weights_locked_[i] = false;
  }
}

TransformPools& TransformPools::add_target(const Cfg& target) {

  // Does it read/write memory?
  memory_read_ = false;
  memory_write_ = false;
  for(size_t i = 0, ie = target.get_code().size(); i < ie; ++i) {
    const auto& instr = target.get_code()[i];
    memory_read_ |= instr.maybe_read_memory();
    memory_write_ |= instr.maybe_write_memory();
    memory_write_ |= instr.maybe_write_memory();
  }

  // Get operands from the target
  const auto& fxn = target.get_function();

  set<Imm64> imm_ops(fxn.imm_begin(), fxn.imm_end());
  for (const auto& imm : imm_ops) {
    insert_immediate(imm);
  }

  set<M8> mem_ops(fxn.mem_begin(), fxn.mem_end());
  m_pool_.insert(m_pool_.begin(),mem_ops.begin(), mem_ops.end());

  set<Label> call_ops(fxn.call_target_begin(), fxn.call_target_end());
  label_pool_.insert(label_pool_.begin(), call_ops.begin(), call_ops.end());

  set<uint64_t> rip_ops(fxn.rip_offset_target_begin(), fxn.rip_offset_target_end());
  rip_pool_.insert(rip_pool_.begin(),rip_ops.begin(), rip_ops.end());

  return *this;
}

void TransformPools::recompute_pools() {

  // clean out the weight table
  for(size_t i = 0; i < X64ASM_NUM_OPCODES; ++i)
    if(!opcode_weights_locked_[i])
      opcode_weights_[i] = 0;

  // rebuild the weight table
  for (size_t i = 0, ie = X64ASM_NUM_OPCODES; i != ie; ++i) {

    // 1. If the user has made a wish, we keep it.
    if(opcode_weights_locked_[i])
      continue;

    const auto op = (Opcode)i;
    const auto mw = Instruction(op).implicit_maybe_write_set();
    const auto mu = Instruction(op).implicit_maybe_undef_set();

    // 2. No control flow, besides call
    if (is_control_other_than_call(op)) {
      continue;

      // 3. No sandbox-unsupported opcodes
    } else if (is_unsupported(op)) {
      continue;

      // 4. No instructions disabled through flags.
    } else if (!is_enabled(op, flags_)) {
      continue;

      // 5. No nondeterministic instructions.
    } else if (is_non_deterministic(op)) {
      continue;

      // 6. No instructions that damage preserved registers
    } else if (preserve_regs_.intersects(mw)) {
      continue;
    } else if (preserve_regs_.intersects(mu)) {
      continue;

      // 7. No validator-unsupported instructions
    } else if (validator_ && !validator_->is_supported(op)) {
      continue;

      // 8. Check if memory is OK
    } else if (!memory_read_) {
      if (!memory_write_) {
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
    } else if (!memory_write_) {
      //read allowed, write disallowed
      if (is_mem_opcode(op) && !is_mem_read_only_opcode(op)) {
        continue;
      }
    }

    opcode_weights_[i] = 1;
  }


  // Setup opcode pool
  opcode_pool_.clear();

  for(size_t i = 0; i < X64ASM_NUM_OPCODES; ++i)
    for(size_t j = 0; j < opcode_weights_[i]; ++j)
      opcode_pool_.push_back((Opcode)i);

  // Build raw-memonic-equiv pool
  // (start with string -> [opcode] map)
  map<string, std::vector<Opcode>> str_to_opcode;
  for(auto i = 0; i < X64ASM_NUM_OPCODES; ++i) {
    if(opcode_weights_[i]) {
      string text = opcode_write_att((Opcode)i);
      text = text.substr(0, text.size()-1);

      auto& vector = str_to_opcode[text];
      vector.push_back((Opcode)i);
    }
  }

  raw_memonic_pool_.resize(X64ASM_NUM_OPCODES);
  for(auto i = 0; i < X64ASM_NUM_OPCODES; ++i) {
    if(opcode_weights_[i]) {
      string text = opcode_write_att((Opcode)i);
      text = text.substr(0, text.size()-1);

      auto vector = str_to_opcode[text];
      raw_memonic_pool_[(Opcode)i] = vector;
      cout << (Opcode)i << " --> ";
      for(auto opc : vector) {
        cout << " " << opc;
      }
      cout << endl;
    }
  }

  // Build type_equivalent pool
  opcodes_type_equiv_.clear();
  opcodes_type_equiv_.resize(X64ASM_NUM_OPCODES);

  for(auto i = 0; i < X64ASM_NUM_OPCODES; ++i)
    if(opcode_weights_[i]) {
      for(size_t j = 0; j < X64ASM_NUM_OPCODES; ++j)
        if (is_type_equiv((Opcode)i, (Opcode)j))
          for(size_t k = 0; k < opcode_weights_[j]; ++k)
            opcodes_type_equiv_[i].push_back((Opcode)j);
    } else {
      opcodes_type_equiv_[i].clear();
    }
}


bool TransformPools::get_lea_mem(const RegSet& rs, Operand& o) {
  M8 m(Imm32(0));
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

bool TransformPools::get_rip_mem(Operand& o) {
  if (rip_pool_.empty()) {
    return false;
  }

  M8 m(Imm32(0));
  m.set_rip_offset(true);
  m.clear_seg();
  m.clear_base();
  m.clear_index();
  m.set_disp(rip_pool_[gen_() % rip_pool_.size()]);
  o = m;

  return true;
}

bool TransformPools::get_reg_mem(const RegSet& rs, Operand& o) {
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

bool TransformPools::get_m(const RegSet& rs, Opcode c, Operand& o) {
  if (is_lea_opcode(c)) {
    return get_lea_mem(rs, o);
  } else if (gen_() % 2) {
    return get_rip_mem(o);
  } else {
    return get_reg_mem(rs, o);
  }
}

bool TransformPools::get_write_op(Opcode o, size_t idx, const RegSet& rs, Operand& op) {
  switch (type(o, idx)) {
  case Type::M_8:
  case Type::M_16:
  case Type::M_32:
  case Type::M_64:
  case Type::M_128:
  case Type::M_256:
    return get_m(rs, o, op);

  case Type::MM:
    return get<Mm>(gen_, mm_pool_, op);

  case Type::M_80_FP:
  case Type::M_80_BCD:
  case Type::M_16_INT:
  case Type::M_32_INT:
  case Type::M_64_INT:
  case Type::M_64_FP:
  case Type::M_32_FP:
  case Type::MOFFS_8:
  case Type::MOFFS_16:
  case Type::MOFFS_32:
  case Type::MOFFS_64:
  case Type::M_2_BYTE:
  case Type::M_28_BYTE:
  case Type::M_108_BYTE:
  case Type::M_512_BYTE:
  case Type::FAR_PTR_16_16:
  case Type::FAR_PTR_16_32:
  case Type::FAR_PTR_16_64:
    return false;

  case Type::RH:
    return get<Rh>(gen_, rh_pool_, op);
  case Type::R_8:
    return get<R8>(gen_, r8_pool_, op);
  case Type::AL:
    return get<R8>(r8_pool_, al, op);
  case Type::CL:
    return get<R8>(r8_pool_, cl, op);
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

bool TransformPools::get_read_op(Opcode o, size_t idx, const RegSet& rs, Operand& op) {
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
  case Type::MOFFS_8:
  case Type::MOFFS_16:
  case Type::MOFFS_32:
  case Type::MOFFS_64:
    return false;

  case Type::RH:
    return get<Rh>(gen_, rh_pool_, rs, op);
  case Type::R_8:
    return get<R8>(gen_, r8_pool_, rs, op);
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
