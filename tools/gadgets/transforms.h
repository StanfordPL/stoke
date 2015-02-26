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

#include "src/cfg/cfg.h"
#include "src/search/transforms.h"
#include "src/solver/z3solver.h"
#include "src/target/cpu_info.h"
#include "src/tunit/tunit.h"
#include "src/validator/validator.h"

#include "tools/args/transforms.inc"
#include "tools/ui/console.h"

namespace stoke {

class TransformsGadget : public Transforms {
public:
  TransformsGadget(const TUnit& fxn, const std::vector<TUnit>& aux_fxns,
                   std::default_random_engine::result_type seed) : Transforms() {
    if (callee_save_arg.value()) {
      preserve_regs_arg.value() = x64asm::RegSet::empty();
    }
    set_seed(seed);

    // Warn and remove cpu flags that aren't provided by the user's machine
    const auto real_cpu_flags = CpuInfo::get_flags();
    auto arg_cpu_flags = cpu_flags_arg.value();
    if (!real_cpu_flags.contains(arg_cpu_flags)) {
      x64asm::FlagSet diff = arg_cpu_flags - real_cpu_flags;
      arg_cpu_flags -= diff;

      Console::warn() << "Some cpu flags are not available on this hardware and will be removed:" << std::endl;
      Console::warn() << diff << std::endl;
    }

    // Determine if we need to read/write memory operands
    bool mem_read = false;
    bool mem_write = false;
    for(size_t i = 0; i < fxn.get_code().size(); ++i) {
      auto instr = fxn.get_code()[i];
      mem_read |= instr.maybe_read_memory();
      mem_write |= instr.maybe_write_memory();
      mem_write |= instr.maybe_undef_memory();
    }

    // Check if we're overridden by command line
    if(force_mem_read_arg)
      mem_read = true;
    if(force_no_mem_read_arg)
      mem_read = false;
    if(force_mem_write_arg)
      mem_write = true;
    if(force_no_mem_write_arg)
      mem_write = false;

    set_opcode_pool(arg_cpu_flags, call_weight_arg, mem_read, mem_write,
                    preserve_regs_arg, opc_blacklist_arg, opc_whitelist_arg);
    set_operand_pool(fxn, preserve_regs_arg);

    for (const auto& imm : immediates_arg.value()) {
      insert_immediate(imm);
    }
    for (const auto& fxn : aux_fxns) {
      insert_label(fxn.get_name());
    }
    for (const auto& m : mem_ops_arg.value()) {
      insert_mem(m);
    }

    if(validator_must_support) {
      // need to instantiate a validator/solver that will
      // live into the future.
      smt_ = new Z3Solver();
      validator_ = new Validator(*smt_);
      set_must_validate(validator_);
    }

    if (has_error()) {
      Console::error(1) << get_error() << std::endl;
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
  Z3Solver* smt_ = NULL;
  Validator* validator_ = NULL;
};

} // namespace stoke

#endif
