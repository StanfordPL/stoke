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

#ifndef STOKE_TOOLS_ARGS_TRANSFORM_POOLS_INC
#define STOKE_TOOLS_ARGS_TRANSFORM_POOLS_INC

#include <set>
#include <vector>

#include "src/ext/cpputil/include/command_line/command_line.h"
#include "src/ext/x64asm/include/x64asm.h"

#include "tools/io/flag_set.h"
#include "tools/io/mem_set.h"
#include "tools/io/opc_set.h"
#include "tools/io/reg_set.h"

namespace stoke {

cpputil::Heading& transforms_heading =
  cpputil::Heading::create("Transform Pool Options:");

cpputil::ValueArg<x64asm::FlagSet, FlagSetReader, FlagSetWriter>& cpu_flags_arg =
  cpputil::ValueArg<x64asm::FlagSet, FlagSetReader, FlagSetWriter>::create("cpu_flags")
  .usage("{ flag1 flag2 ... flagn }")
  .description("Propose instruction and opcode moves that use this CPU ID flag set")
  .default_val(x64asm::FlagSet::universe());

cpputil::ValueArg<std::set<x64asm::Opcode>, OpcSetReader, OpcSetWriter>& opc_blacklist_arg =
  cpputil::ValueArg<std::set<x64asm::Opcode>, OpcSetReader, OpcSetWriter>::create("opc_blacklist")
  .usage("{ opcode1 ... opcoden; e.g., xorl_r32_r32 or xor.* }")
  .description("Don't propose any instructions from this set (takes precedence over --opc_whitelist)")
  .default_val({});

cpputil::ValueArg<std::set<x64asm::Opcode>, OpcSetReader, OpcSetWriter>& opc_whitelist_arg =
  cpputil::ValueArg<std::set<x64asm::Opcode>, OpcSetReader, OpcSetWriter>::create("opc_whitelist")
  .usage("{ opcode1 ... opcoden; e.g., xorl_r32_r32 or xor.* }")
  .description("Only proprose instructions from this set (unless they are not proposed for other reasons, e.g. --opc_blacklist, --propose_call, --cpu_flags, --force_mem_read, --force_mem_write, instructions not supported by stoke, etc.); empty whitelist means no whitelist")
  .default_val({});

cpputil::ValueArg<size_t>& call_weight_arg =
  cpputil::ValueArg<size_t>::create("call_weight")
  .usage("<int>")
  .description("Number of additional call opcodes in the opcode pool")
  .default_val(0);

cpputil::FlagArg& callee_save_arg =
  cpputil::FlagArg::create("callee_save")
  .alternate("propose_callee_save")
  .description("Override the value of preserve_regs to the empty set");

cpputil::FlagArg& validator_must_support_arg =
  cpputil::FlagArg::create("validator_must_support")
  .description("Only propose rewrites that the STOKE formal validator can support");

cpputil::ValueArg<x64asm::RegSet, RegSetReader, RegSetWriter>& preserve_regs_arg =
  cpputil::ValueArg<x64asm::RegSet, RegSetReader, RegSetWriter>::create("preserve_regs")
  .usage("{ %rax %rsp ... }")
  .description("Prevent STOKE from proposing instructions that modify these registers")
  .default_val(x64asm::RegSet::linux_call_preserved());

cpputil::ValueArg<std::vector<uint64_t>>& immediates_arg =
                                        cpputil::ValueArg<std::vector<uint64_t>>::create("immediates")
                                        .usage("{ imm1 imm2 ... }")
                                        .description("Additional immediates to propose as operands")
                                        .default_val({});

cpputil::ValueArg<std::set<x64asm::M8>, MemSetReader, MemSetWriter>& mem_ops_arg =
  cpputil::ValueArg<std::set<x64asm::M8>, MemSetReader, MemSetWriter>::create("mem_ops")
  .usage("{ (%rax) (%rdi, %rsp) ... }")
  .description("Additional addresses to propose as operands")
  .default_val({});

cpputil::ValueArg<std::vector<uint64_t>>& rips_arg =
                                        cpputil::ValueArg<std::vector<uint64_t>>::create("rips")
                                        .usage("{ rip1 rip2 ... }")
                                        .description("Additional global rip offsets to propose as operands")
                                        .default_val({});

} // namespace stoke

#endif
