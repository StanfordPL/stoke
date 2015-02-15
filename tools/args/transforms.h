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

#ifndef STOKE_TOOLS_ARGS_TRANSFORMS_H
#define STOKE_TOOLS_ARGS_TRANSFORMS_H

#include <set>
#include <vector>

#include "src/ext/cpputil/include/command_line/command_line.h"
#include "src/ext/x64asm/include/x64asm.h"

#include "tools/io/flag_set.h"
#include "tools/io/mem_set.h"
#include "tools/io/opc_set.h"
#include "tools/io/reg_set.h"

namespace stoke {

extern cpputil::Heading& transforms_heading;

extern cpputil::ValueArg<x64asm::FlagSet, FlagSetReader, FlagSetWriter>& cpu_flags_arg;
extern cpputil::ValueArg<std::set<x64asm::Opcode>, OpcSetReader, OpcSetWriter>& opc_blacklist_arg;
extern cpputil::ValueArg<std::set<x64asm::Opcode>, OpcSetReader, OpcSetWriter>& opc_whitelist_arg;
extern cpputil::ValueArg<size_t>& call_weight_arg;
extern cpputil::FlagArg& force_mem_read_arg;
extern cpputil::FlagArg& force_no_mem_read_arg;
extern cpputil::FlagArg& force_mem_write_arg;
extern cpputil::FlagArg& force_no_mem_write_arg;
extern cpputil::FlagArg& callee_save_arg;
extern cpputil::FlagArg& validator_must_support;
extern cpputil::ValueArg<x64asm::RegSet, RegSetReader, RegSetWriter>& preserve_regs_arg;
extern cpputil::ValueArg<std::vector<uint64_t>>& immediates_arg;
extern cpputil::ValueArg<std::set<x64asm::M8>, MemSetReader, MemSetWriter>& mem_ops_arg;

} // namespace stoke

#ifdef DEFINE_STOKE_ARGS

using namespace cpputil;
using namespace std;
using namespace x64asm;

namespace stoke {

Heading& transforms_heading =
  Heading::create("Transform Options:");

ValueArg<FlagSet, FlagSetReader, FlagSetWriter>& cpu_flags_arg =
  ValueArg<FlagSet, FlagSetReader, FlagSetWriter>::create("cpu_flags")
  .usage("{ flag1 flag2 ... flagn }")
  .description("Propose instruction and opcode moves that use this CPU ID flag set")
  .default_val(FlagSet::universe());

ValueArg<set<Opcode>, OpcSetReader, OpcSetWriter>& opc_blacklist_arg =
  ValueArg<set<Opcode>, OpcSetReader, OpcSetWriter>::create("opc_blacklist")
  .usage("{ opcode1 ... opcoden; e.g., xorl or xorl_r32_r32 }")
  .description("Don't propose any instructions from this set (takes precedence over --opc_whitelist)")
  .default_val({});

ValueArg<set<Opcode>, OpcSetReader, OpcSetWriter>& opc_whitelist_arg =
  ValueArg<set<Opcode>, OpcSetReader, OpcSetWriter>::create("opc_whitelist")
  .usage("{ opcode1 ... opcoden; e.g., xorl or xorl_r32_r32 }")
  .description("Only proprose instructions from this set (unless they are not proposed for other reasons, e.g. --opc_blacklist, --propose_call, --cpu_flags, --force_mem_read, --force_mem_write, instructions not supported by stoke, etc.); empty whitelist means no whitelist")
  .default_val({});

ValueArg<size_t>& call_weight_arg =
  ValueArg<size_t>::create("call_weight")
  .usage("<int>")
  .description("Number of additional call opcodes in the opcode pool")
  .default_val(0);

FlagArg& force_mem_read_arg =
  FlagArg::create("force_mem_read")
  .description("Propose moves that read memory, even if the target doesn't.");

FlagArg& force_no_mem_read_arg =
  FlagArg::create("force_no_mem_read")
  .description("Propose no moves that read memory, even if the target does.");

FlagArg& force_mem_write_arg =
  FlagArg::create("force_mem_write")
  .description("Propose moves that write memory, even if the target doesn't.");

FlagArg& force_no_mem_write_arg =
  FlagArg::create("force_no_mem_write")
  .description("Propose no moves that write memory, even if the target does.");

FlagArg& callee_save_arg =
  FlagArg::create("callee_save")
  .alternate("propose_callee_save")
  .description("Override the value of preserve_regs to the empty set");

FlagArg& validator_must_support =
  FlagArg::create("validator_must_support")
  .description("Only propose rewrites that the STOKE formal validator can support");

ValueArg<RegSet, RegSetReader, RegSetWriter>& preserve_regs_arg =
  ValueArg<RegSet, RegSetReader, RegSetWriter>::create("preserve_regs")
  .usage("{ %rax %rsp ... }")
  .description("Prevent STOKE from proposing instructions that modify these registers")
  .default_val(RegSet::linux_call_preserved());

ValueArg<vector<uint64_t>>& immediates_arg =
                          ValueArg<vector<uint64_t>>::create("immediates")
                          .usage("{ imm1 imm2 ... }")
                          .description("Additional immediates to propose as operands")
                          .default_val({});

ValueArg<set<M8>, MemSetReader, MemSetWriter>& mem_ops_arg =
  ValueArg<set<M8>, MemSetReader, MemSetWriter>::create("mem_ops")
  .usage("{ (%rax) (%rdi, %rsp) ... }")
  .description("Additional addresses to propose as operands")
  .default_val({});

} // namespace stoke


#endif
#endif
