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

#ifndef STOKE_TOOLS_GADGETS_TRANSFORMS_H
#define STOKE_TOOLS_GADGETS_TRANSFORMS_H

#include <iostream>
#include <random>
#include <vector>

#include "src/ext/x64asm/include/x64asm.h"
#include "src/ext/cpputil/include/io/console.h"

#include "src/cfg/cfg.h"
#include "src/solver/z3solver.h"
#include "src/target/cpu_info.h"
#include "src/transform/transforms.h"
#include "src/tunit/tunit.h"
#include "src/validator/validator.h"

#include "tools/args/transforms.inc"

namespace stoke {

class TransformsGadget : public Transforms {
public:
  TransformsGadget(const Cfg& cfg, const std::vector<TUnit>& aux_fxns,
                   std::default_random_engine::result_type seed) : Transforms() {
    smt_ = nullptr;
    validator_ = nullptr;

    set_seed(seed);

    if (validator_must_support) {
      smt_ = new Z3Solver();
      validator_ = new Validator(*smt_);
      set_must_validate(validator_);
    }

    set_opcode_pool(cfg, cpu_flags(), call_weight_arg, preserve_regs(),
                    opc_blacklist_arg, opc_whitelist_arg);
    set_operand_pool(cfg, preserve_regs_arg);

    for (const auto& imm : immediates_arg.value()) {
      insert_immediate(imm);
    }
    for (const auto& fxn : aux_fxns) {
      insert_label(fxn.get_leading_label());
    }
    for (const auto& m : mem_ops()) {
      insert_mem(m);
    }
    for (const auto r : rips_arg.value()) {
      insert_rip(r);
    }

    if (!invariant_non_empty_opcode_pool()) {
      cpputil::Console::warn() << "No valid opcodes can be proposed; consider modifying black/whitelists" << std::endl;
    }
  }

  ~TransformsGadget() {
    if (validator_) {
      delete validator_;
    }
    if (smt_) {
      delete smt_;
    }
  }

private:
  Z3Solver* smt_;
  Validator* validator_;

  /** Overrides the value of --callee_save if necessary */
  x64asm::RegSet preserve_regs() const {
    return callee_save_arg.value() ? x64asm::RegSet::empty() : preserve_regs_arg.value();
  }

  /** Warns if cpu flags are unavailable and removes those values */
  x64asm::FlagSet cpu_flags() const {
    const auto real_cpu_flags = CpuInfo::get_flags();
    const auto user_flags = cpu_flags_arg.value();

    if (!real_cpu_flags.contains(user_flags)) {
      cpputil::Console::warn() << "Some cpu flags are not available on this hardware and will be removed:" << std::endl;
      cpputil::Console::warn() << (user_flags - real_cpu_flags) << std::endl;
    }

    return user_flags & real_cpu_flags;
  }

  /** Warns if mem operands contain rip offsets and removes those values */
  std::vector<x64asm::M8> mem_ops() const {
    std::vector<x64asm::M8> ms;
    for (const auto& m : mem_ops_arg.value()) {
      if (m.rip_offset()) {
        cpputil::Console::warn() << "Ignoring memory operand with rip offset (" << m << ") use --rips" << std::endl;
      } else {
        ms.push_back(m);
      }
    }
    return ms;
  }
};

} // namespace stoke

#endif
