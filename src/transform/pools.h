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

#ifndef STOKE_SRC_TRANSFORM_POOLS_H
#define STOKE_SRC_TRANSFORM_POOLS_H

#include "src/cfg/cfg.h"
#include "src/ext/x64asm/include/x64asm.h"
#include "src/validator/validator.h"

namespace stoke {

class TransformPools {
public:

  /** Initializes data structures */
  TransformPools();

  /** Sets the pool of opcodes to propose from. */
  TransformPools& set_opcode_pool(const Cfg& target,
                                  const x64asm::FlagSet& fs, size_t call_weight,
                                  const x64asm::RegSet& preserve_regs,
                                  const std::set<x64asm::Opcode>& opc_blacklist,
                                  const std::set<x64asm::Opcode>& opc_whitelist,
                                  const Validator *);

  /** Sets the pool operands to propose from. */
  TransformPools& set_operand_pool(const Cfg& target, const x64asm::RegSet& preserve_regs);

  /** Insert a value into the immediate pool */
  TransformPools& insert_immediate(const x64asm::Imm64& imm) {
    const auto itr = std::find(imm_pool_.begin(), imm_pool_.end(), imm);
    if (itr == imm_pool_.end()) {
      imm_pool_.push_back(imm);
    }
    return *this;
  }
  /** Insert a value into the label pool */
  TransformPools& insert_label(const x64asm::Label& l) {
    const auto itr = std::find(label_pool_.begin(), label_pool_.end(), l);
    if (itr == label_pool_.end()) {
      label_pool_.push_back(l);
    }
    return *this;
  }
  /** Insert a value into the mem operand pool */
  TransformPools& insert_mem(const x64asm::M8& m)  {
    assert(!m.rip_offset());
    const auto itr = std::find(m_pool_.begin(), m_pool_.end(), m);
    if (itr == m_pool_.end()) {
      m_pool_.push_back(m);
    }
    return *this;
  }
  /** Insert a value into the rip offset pool */
  TransformPools& insert_rip(uint64_t addr) {
    const auto itr = std::find(rip_pool_.begin(), rip_pool_.end(), addr);
    if (itr == rip_pool_.end()) {
      rip_pool_.push_back(addr);
    }
    return *this;
  }


  /** Sets o to a random opcode; returns true on success */
  bool get_control_free(x64asm::Opcode& o) {
    //std::cout << this << " Control free count: " << control_free_.size() << std::endl;
    if (opcode_pool_.empty()) {
      return false;
    }
    o = opcode_pool_[gen_() % opcode_pool_.size()];
    return true;
  }

  /** Sets o to a random opcode of equivalent type; returns true on success */
  bool get_control_free_type_equiv(x64asm::Opcode& o) {
    if (opcodes_type_equiv_.empty()) {
      return false;
    }
    const auto& equiv = opcodes_type_equiv_[o];
    if (equiv.empty()) {
      return false;
    }
    o = equiv[gen_() % equiv.size()];
    return true;
  }

  TransformPools& insert_opcode(const x64asm::Opcode& op) {
    if(!opcode_weights_[(int)op])
      opcode_weights_[(int)op] = 1;
    return *this;
  }
  TransformPools& remove_opcode(const x64asm::Opcode& op) {
    opcode_weights_[(int)op] = 0;
    return *this;
  }
  TransformPools& set_opcode_weight(const x64asm::Opcode& op, int n) {
    opcode_weights_[(int)op] = n;
    return *this;
  }

  /** Adjusts pools after class configuration has been changed. */
  void recompute_pools();

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


  /** Seed random number generator */
  TransformPools& set_seed(std::default_random_engine::result_type seed) {
    gen_.seed(seed);
    return *this;
  }

private:

  /** The weighting of each control-free opcode.  Used to generate pool. */
  std::array<size_t, X64ASM_NUM_OPCODES> opcode_weights_;
  /** The pool of opcodes. */
  std::vector<x64asm::Opcode> opcode_pool_;

  /** Weighted pool of opcodes categorized by type */
  std::vector<std::vector<x64asm::Opcode>> opcodes_type_equiv_;

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

  /** Random generator. */
  std::default_random_engine gen_;


};

} // namespace stoke

#endif
