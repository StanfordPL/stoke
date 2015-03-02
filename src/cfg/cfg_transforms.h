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

	/** Adds instructions until check_invariants() returns true, assumes function satisfies invariants */
	Cfg& satisfy_invariants(Cfg& cfg) const;

	/** Returns a minimal Cfg that satisfies all invariants */
	Cfg minimal_correct_cfg() const {
		Cfg cfg(TUnit(), x64asm::RegSet::universe(), x64asm::RegSet::universe());
		return satisfy_invariants(cfg);
	}
};

} // namespace stoke

#endif
