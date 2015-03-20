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

#ifndef STOKE_SRC_CFG_CFG_TRANSFORMS_H
#define STOKE_SRC_CFG_CFG_TRANSFORMS_H

#include "src/ext/x64asm/include/x64asm.h"

#include "src/cfg/cfg.h"
#include "src/tunit/tunit.h"

namespace stoke {

class CfgTransforms {
public:
  /** Remove unreachable basic blocks (assumes cfg and function satify invariants()) */
  Cfg& remove_unreachable(Cfg& cfg) const;
  /** Remove nops (assumes cfg and function satisfy invariants) */
  Cfg& remove_nop(Cfg& cfg) const;
  /** Remove instructions that don't produce side effects (assumes cfg and function satisfy invariants) */
  Cfg& remove_redundant(Cfg& cfg) const;

  /** Returns a minimal Cfg that satisfies all invariants */
  Cfg minimal_correct_cfg(const x64asm::RegSet& def_in, const x64asm::RegSet& live_out) const;
  /** Convenience method; returns a minimal cfg that writes all gp, sse, and eflags regs */
  Cfg minimal_correct_cfg() {
    constexpr auto def_in = x64asm::RegSet::empty();
    constexpr auto rfs = x64asm::RegSet::empty() +
      x64asm::Constants::eflags_af() + x64asm::Constants::eflags_cf() + x64asm::Constants::eflags_of() +
      x64asm::Constants::eflags_pf() + x64asm::Constants::eflags_sf() + x64asm::Constants::eflags_zf();
    constexpr auto live_out = x64asm::RegSet::empty() | 
      x64asm::RegSet::all_gps() | x64asm::RegSet::all_ymms() | rfs;
    return minimal_correct_cfg(def_in, live_out);
  }
};

} // namespace stoke

#endif
