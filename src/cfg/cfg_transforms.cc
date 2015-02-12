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

namespace stoke {

void CfgTransforms::remove_unreachable(Cfg& cfg) {
  Code temp;
  for (auto b = cfg.reachable_begin(), be = cfg.reachable_end(); b != be; ++b) {
    for (auto i = cfg.instr_begin(*b), ie = cfg.instr_end(*b); i != ie; ++i) {
      temp.push_back(*i);
    }
  }

  cfg.get_code() = temp;
  cfg.recompute();
}

void CfgTransforms::remove_nop(Cfg& cfg) {
  Code temp;
  for (auto b = cfg.get_entry(), be = cfg.get_exit(); b != be; ++b) {
    for (auto i = cfg.instr_begin(b), ie = cfg.instr_end(b); i != ie; ++i) {
      if (!i->is_nop()) {
        temp.push_back(*i);
      }
    }
  }

  cfg.get_code() = temp;
  cfg.recompute();
}

/** Returns true if the instruction has any visible side-effect other than
control flow or effect on registers (e.g. memory writes, possibility of
signals, etc.). */
bool has_side_effect(x64asm::Instruction& instr) {
  return instr.is_memory_dereference() ||
         (instr.get_opcode() >= DIV_M16 && instr.get_opcode() <= DIVSS_XMM_XMM);
}

void CfgTransforms::remove_redundant(Cfg& cfg) {
  bool changed = true;
  while (changed) {
    // loop will terminate, as we remove at least one instruction in every iteration, except maybe the last one
    changed = false;
    Code temp;
    for (stoke::Cfg::reachable_iterator b = cfg.reachable_begin(), be = cfg.reachable_end(); b != be; ++b) {
      size_t c = 0;
      for (auto i = cfg.instr_begin(*b), ie = cfg.instr_end(*b); i != ie; ++i, ++c) {
        bool keep = true;
        if ((*i).is_label_defn() || (*i).is_any_jump() ||
            (*i).is_any_call() || (*i).is_any_return() ||
            (*i).is_any_loop()) {
          // we always keep control flow
        } else if (has_side_effect(*i)) {
          // we always keep instructions that have any side-effect other than
          // on the registers (hardware exceptions, memory writes, etc.)
        } else {
          auto instr_outputs = cfg.maybe_write_set(*i);
          auto live_regs_after_instruction = cfg.live_outs({*b, c});
          if ((instr_outputs & live_regs_after_instruction) == x64asm::RegSet::empty()) {
            // don't keep the instruction if it doesn't produce any values which
            // are live right after that instruction
            keep = false;
          }
        }

        if (keep) {
          temp.push_back(*i);
        } else {
          changed = true; // we removed an instruction
        }
      }
    }

    cfg.get_code() = temp;
    cfg.recompute();
  }
}

} // namespace stoke
