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

void CfgTransforms::remove_unreachable(Cfg& cfg) {
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
}

void CfgTransforms::remove_nop(Cfg& cfg) {
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
}

void CfgTransforms::remove_redundant(Cfg& cfg) {
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
}

} // namespace stoke
