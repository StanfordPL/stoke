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

#include "src/cfg/cfg_transforms.h"

using namespace x64asm;

namespace {

/** Returns true for instructions that induce control flow */
bool is_control(const Instruction& instr) {
  return instr.is_label_defn() || instr.is_any_jump() ||
         instr.is_any_call() || instr.is_any_return() ||
         instr.is_any_loop();
}

/** Returns true for instructions that have non-register side effects */
bool has_side_effects(const x64asm::Instruction& instr) {
  // More instructions have side-effects (ie UD2) but aren't relevant here
  return instr.is_memory_dereference() ||
         (instr.get_opcode() >= DIV_M16 && instr.get_opcode() <= DIVSS_XMM_XMM);
}

} // namespace

namespace stoke {

Cfg& CfgTransforms::remove_unreachable(Cfg& cfg) const {
  // Assume that invariants are satisfied on entry
  assert(cfg.check_invariants());
  assert(cfg.get_function().check_invariants());

  // Remove unreachable instructions one at a time
  for (auto removed = true; removed;) {
    removed = false;
    for (size_t i = 0, ie = cfg.get_code().size(); i < ie; ++i) {
      if (!cfg.is_reachable(cfg.get_loc(i).first)) {
        cfg.get_function().remove(i);
        cfg.recompute();
        removed = true;
        break;
      }
    }
  }

  // Make sure that we've left everything back in a valid state before continuing
  assert(cfg.check_invariants());
  assert(cfg.get_function().check_invariants());

  return cfg;
}

Cfg& CfgTransforms::remove_nop(Cfg& cfg) const {
  // Assume that invariants are satisfied on entry
  assert(cfg.check_invariants());
  assert(cfg.get_function().check_invariants());

  // Remove nops one at a time
  for (auto removed = true; removed;) {
    removed = false;
    for (size_t i = 0, ie = cfg.get_code().size(); i < ie; ++i) {
      if (cfg.get_code()[i].is_nop()) {
        cfg.get_function().remove(i);
        cfg.recompute();
        removed = true;
        break;
      }
    }
  }

  // Make sure that we've left everything back in a valid state before continuing
  assert(cfg.check_invariants());
  assert(cfg.get_function().check_invariants());
  return cfg;
}

Cfg& CfgTransforms::remove_redundant(Cfg& cfg) const {
  // Assume that invariants are satisfied on entry
  assert(cfg.check_invariants());
  assert(cfg.get_function().check_invariants());

  // This transformsation subsumes unreachable block removal
  remove_unreachable(cfg);

  // Remove redundant instructions one at a time
  for (auto removed = true; removed;) {
    removed = false;
    for (size_t i = 0, ie = cfg.get_code().size(); i < ie; ++i) {
      const auto& instr = cfg.get_code()[i];

      // Skip instructions that induce control flow or have non-register side effects
      if (is_control(instr) || has_side_effects(instr)) {
        continue;
      }

      // Remove instructions if it doesn't produce a value which is live out afterward
      const auto instr_outputs = cfg.maybe_write_set(instr);
      const auto live_regs_after_instruction = cfg.live_outs(cfg.get_loc(i));
      if ((instr_outputs & live_regs_after_instruction) == RegSet::empty()) {
        cfg.get_function().remove(i);
        cfg.recompute();
        removed = true;
        break;
      }
    }
  }

  // Make sure that we've left everything back in a valid state before continuing
  assert(cfg.check_invariants());
  assert(cfg.get_function().check_invariants());
  return cfg;
}

Cfg CfgTransforms::minimal_correct_cfg(const RegSet& def_in, const RegSet& live_out) const {
  Cfg cfg(TUnit(), def_in, live_out);
  const auto diff = cfg.live_outs() - cfg.def_outs();

  // initialize all general purpose registers
  for (auto rit = diff.gp_begin(); rit != diff.gp_end(); ++rit) {
    auto reg = *rit;
    auto type = reg.type();
    if (type == Type::R_64 || type == Type::RAX) {
      cfg.get_function().push_back(Instruction(XOR_R64_R64, {reg, reg}));
    } else if (type == Type::R_32 || type == Type::EAX) {
      cfg.get_function().push_back(Instruction(XOR_R32_R32, {reg, reg}));
    } else if (type == Type::R_16 || type == Type::AX || type == Type::DX) {
      cfg.get_function().push_back(Instruction(XOR_R16_R16, {reg, reg}));
    } else if (type == Type::RL || type == Type::AL || type == Type::CL) {
      cfg.get_function().push_back(Instruction(XOR_RL_RL, {reg, reg}));
    } else if (type == Type::RH) {
      cfg.get_function().push_back(Instruction(XOR_RH_RH, {reg, reg}));
    } else if (type == Type::RB) {
      cfg.get_function().push_back(Instruction(XOR_RB_RB, {reg, reg}));
    }
  }

  // initialize sse registers
  for (auto rit = diff.sse_begin(); rit != diff.sse_end(); ++rit) {
    auto reg = *rit;
    auto type = reg.type();
    if (type == Type::XMM || type == Type::XMM_0) {
      cfg.get_function().push_back(Instruction(PXOR_XMM_XMM, {reg, reg}));
    } else if (type == Type::YMM) {
      cfg.get_function().push_back(Instruction(VPXOR_YMM_YMM_YMM, {reg, reg, reg}));
    }
  }

  // initialize mm registers
  for (auto rit = diff.mm_begin(); rit != diff.mm_end(); ++rit) {
    auto reg = *rit;
    cfg.get_function().push_back(Instruction(PXOR_MM_MM, {reg, reg}));
  }

  // flags
  auto regular = false;
  for (auto rit = diff.flags_begin(); rit != diff.flags_end(); ++rit) {
    auto reg = *rit;
    if ((reg == Constants::eflags_of() ||
         reg == Constants::eflags_zf() ||
         reg == Constants::eflags_sf() ||
         reg == Constants::eflags_af() ||
         reg == Constants::eflags_cf() ||
         reg == Constants::eflags_pf()) && !regular) {
      regular = true;
      cfg.get_function().push_back(Instruction(XOR_R32_R32, {Constants::rax(), Constants::rax()}));
      cfg.get_function().push_back(Instruction(ADD_R32_IMM32, {Constants::rax(), Imm32(0)}));
    }
  }

  cfg.get_function().push_back(RET);
  cfg.recompute();

  // Everything should look good now
  assert(cfg.check_invariants());
  assert(cfg.get_function().check_invariants());

  return cfg;
}

} // namespace stoke
