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

using namespace std;
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
  return instr.is_memory_dereference();
}

} // namespace

namespace stoke {

Cfg& CfgTransforms::remove_unreachable(Cfg& cfg) {
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

Cfg& CfgTransforms::remove_nop(Cfg& cfg) {
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

Cfg& CfgTransforms::remove_redundant(Cfg& cfg) {
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

//#define STOKE_DEBUG_CFG_TRANSFORMS
#ifdef STOKE_DEBUG_CFG_TRANSFORMS
      std::cout << "---------------------" << std::endl;
      std::cout << "Instruction: " << instr << std::endl;
#endif

      // Skip instructions that induce control flow or have non-register side effects
      if (is_control(instr) || has_side_effects(instr)) {
#ifdef STOKE_DEBUG_CFG_TRANSFORMS
        std::cout << "  -> is control instruction or has side-effect" << std::endl;
#endif
        continue;
      }

      // Remove instructions if it doesn't produce a value which is live out afterward
      const auto instr_outputs = cfg.maybe_write_set(instr);
      const auto live_regs_after_instruction = cfg.live_outs(cfg.get_loc(i));
#ifdef STOKE_DEBUG_CFG_TRANSFORMS
      std::cout << "  instruction output:     " << instr_outputs << std::endl;
      std::cout << "  live after instruction: " << live_regs_after_instruction << std::endl;
#endif
      if ((instr_outputs & live_regs_after_instruction) == RegSet::empty()) {
#ifdef STOKE_DEBUG_CFG_TRANSFORMS
        std::cout << "  -> can be removed" << std::endl;
#endif
        cfg.get_function().remove(i);
        cfg.recompute();
        removed = true;
        break;
      }
#ifdef STOKE_DEBUG_CFG_TRANSFORMS
      std::cout << "  instruction produces live values: " << (instr_outputs & live_regs_after_instruction) << std::endl;
      std::cout << "  -> cannot be removed" << std::endl;
#endif
    }
  }
#ifdef STOKE_DEBUG_CFG_TRANSFORMS
  std::cout << "---------------------" << std::endl;
#endif

  // Make sure that we've left everything back in a valid state before continuing
  assert(cfg.check_invariants());
  assert(cfg.get_function().check_invariants());
  return cfg;
}

Code generate_nop(size_t i) {

  switch(i) {
  case 0:
    return {};
  case 1:
    return {Instruction(NOP)};
  case 2:
    return {Instruction(NOP), Instruction(NOP)};
  case 3:
    return {Instruction(NOP_R32, {rax})};
  default:
    Code start = generate_nop(3);
    Code rest = generate_nop(i-3);
    rest.insert(rest.end(), start.begin(), start.end());
    return rest;
  }

}

Cfg& CfgTransforms::nacl_transform(Cfg& cfg) {
  // Assume that invariants are satisfied on entry
  assert(cfg.check_invariants());
  assert(cfg.get_function().check_invariants());

  Assembler assm;

  // Replace redundant instructions with nops
  for (auto removed = true; removed;) {
    removed = false;
    for (size_t i = 0, ie = cfg.get_code().size(); i < ie; ++i) {
      const auto& instr = cfg.get_code()[i];

      // Skip control flow, side effects, or just take up space
      if (is_control(instr) || has_side_effects(instr) || instr.is_nop()) {
        continue;
      }

      // Remove instructions if it doesn't produce a value which is live out afterward
      const auto instr_outputs = cfg.maybe_write_set(instr);
      const auto live_regs_after_instruction = cfg.live_outs(cfg.get_loc(i));
      if ((instr_outputs & live_regs_after_instruction) == RegSet::empty()) {
        size_t bytes = assm.hex_size(instr);
        Code nops = generate_nop(bytes);
        cfg.get_function().remove(i);
        for(auto nop : nops) {
          cfg.get_function().insert(i, nop);
        }
        cfg.recompute();
        removed = true;
        break;
      }
    }
  }

  // Replace ret with nacl exit code
  bool found = false;
  do {
    found = false;
    for(size_t i = 0; i < cfg.get_code().size(); ++i) {
      auto instr = cfg.get_code()[i];
      if(instr.get_opcode() == RET) {

        auto& func = cfg.get_function();

        auto popq_r11 = Instruction(POP_R64_1, {r11});
        auto andl_e0_r11 = Instruction(AND_R32_IMM8, { r11d, Imm8(0xe0) });
        auto addq_r15_r11 = Instruction(ADD_R64_R64, { r11, r15 });
        auto jmpq_r11 = Instruction(JMP_R64, { r11 });

        func.insert(i, jmpq_r11);
        func.insert(i, addq_r15_r11);
        func.insert(i, andl_e0_r11);
        func.insert(i, popq_r11);
        func.remove(i+4);
        cfg.recompute();


        found = true;
        break;
      }
    }
  } while(found);

  // Remove unreachable instructions at the end
  for (size_t i = 0, ie = cfg.get_code().size(); i < ie; ++i) {
    if (!cfg.is_reachable(cfg.get_loc(i).first)) {
      bool ok = true;

      // check to see if future instructions are reachable; if so, abort.
      for(size_t j = i+1; j < ie; ++j) {
        if(cfg.is_reachable(cfg.get_loc(j).first)) {
          ok = false;
          break;
        }
      }

      // delete everything that's left.
      if(ok) {
        for(size_t j = i; j < ie; ++j) { 
          cfg.get_function().remove(i);
        }
        cfg.recompute();
        break;
      }
    }
  }


  // Make sure that we've left everything back in a valid state before continuing
  assert(cfg.check_invariants());
  assert(cfg.get_function().check_invariants());
  return cfg;
}

Cfg CfgTransforms::minimal_correct_cfg(const RegSet& def_in, const RegSet& live_out) {
  Cfg cfg(TUnit(), def_in, live_out);
  const auto diff = live_out;

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
    } else if (type == Type::R_8 || type == Type::AL || type == Type::CL) {
      cfg.get_function().push_back(Instruction(XOR_R8_R8, {reg, reg}));
    } else if (type == Type::RH) {
      cfg.get_function().push_back(Instruction(XOR_RH_RH, {reg, reg}));
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
