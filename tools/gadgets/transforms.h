// Copyright 2014 eric schkufza
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

#include <random>

#include "src/ext/x64asm/include/x64asm.h"

#include "src/search/transforms.h"
#include "tools/args/target.h"
#include "tools/args/transforms.h"

namespace stoke {

class TransformsGadget : public Transforms {
public:
  TransformsGadget(std::default_random_engine::result_type seed) : Transforms() {
    if (callee_save_arg.value()) {
      preserve_regs_arg.value() = x64asm::RegSet::empty();
    }

    set_opcode_pool(cpu_flags_arg, nop_percent_arg, mem_read_arg, mem_write_arg,
                    opc_blacklist_arg, opc_whitelist_arg);
    set_operand_pool(target_arg.value().code, preserve_regs_arg);

    for (const auto& imm : immediates_arg.value()) {
      insert_immediate(imm);
    }
    for (const auto& fxn : aux_fxns_arg.value()) {
      insert_label(fxn.code[0].get_operand<x64asm::Label>(0));
    }
  }
};

} // namespace stoke

#endif
