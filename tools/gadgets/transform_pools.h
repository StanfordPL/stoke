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

#ifndef STOKE_TOOLS_GADGETS_TRANSFORM_POOLS_H
#define STOKE_TOOLS_GADGETS_TRANSFORM_POOLS_H

#include <iostream>
#include <random>
#include <vector>

#include "src/ext/x64asm/include/x64asm.h"
#include "src/ext/cpputil/include/io/console.h"

#include "src/cfg/cfg.h"
#include "src/solver/cvc4solver.h"
#include "src/target/cpu_info.h"
#include "src/transform/pools.h"
#include "src/tunit/tunit.h"
#include "src/validator/validator.h"

#include "tools/args/transform_pool.inc"

namespace stoke {

class TransformPoolsGadget : public TransformPools {
public:
  TransformPoolsGadget(const Cfg& cfg, const std::vector<TUnit>& aux_fxns,
                       std::default_random_engine::result_type seed) : TransformPools() {

    set_seed(seed);

    // The semantics of the --whitelist command line argument is to say "only
    // include opcodes if they're in this list, and not contradicted by any of
    // the other options".  Via the contract of TransformPools, this means
    // *blacklisting* everything that's not on the whitelist, but not
    // whitelisting anything (since that would force the opcode to be included
    // nomatter what).
    auto whitelist = opc_whitelist_arg.value();
    if(!whitelist.empty()) {
      for(size_t i = 0; i < X64ASM_NUM_OPCODES; ++i) {
        if(find(whitelist.begin(), whitelist.end(), (x64asm::Opcode)i) == whitelist.end()) {
          remove_opcode((x64asm::Opcode)i);
        }
      }
    }

    // add a validator if needed
    smt_ = nullptr;
    validator_ = nullptr;
    if (validator_must_support_arg.value()) {
      smt_ = (SMTSolver*)new Cvc4Solver();
      validator_ = new Validator(*smt_);
      set_validator(validator_);
    }

    // Extra immediates provided by user
    for (const auto& imm : immediates_arg.value()) {
      insert_immediate(imm);
    }

    // Labels for function calls
    for (const auto& fxn : aux_fxns) {
      insert_label(fxn.get_leading_label());
    }

    // Extra memory operands provided by user
    for (const auto& m : mem_ops()) {
      insert_mem(m);
    }

    // RIP offsets provided by user
    for (const auto r : rips_arg.value()) {
      insert_rip(r);
    }

    // Set memory read/write, and add memory opcodes, immediates.
    add_target(cfg);

    // Set cpu flags to choose opcodes from.
    set_flags(cpu_flags());

    // Set weight of call opcode
    if(call_weight_arg.value())
      set_opcode_weight(x64asm::CALL_LABEL, call_weight_arg.value());

    // Set registers to be preserved
    set_preserve_regs(preserve_regs());

    // remove all blacklisted opcodes
    for(auto op : opc_blacklist_arg.value())
      remove_opcode(op);

    recompute_pools();

    if(opcode_pool_.empty()) {
      cpputil::Console::warn() << "No valid opcodes can be proposed; consider modifying black/whitelists" << std::endl;
    }
  }

  ~TransformPoolsGadget() {
    if (validator_) {
      delete validator_;
    }
    if (smt_) {
      delete smt_;
    }
  }

private:
  SMTSolver* smt_;
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
