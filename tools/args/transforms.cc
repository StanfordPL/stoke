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

#include "tools/args/transforms.h"

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
  .default_val(FlagSet::empty());

ValueArg<set<Opcode>, OpcSetReader, OpcSetWriter>& opc_blacklist_arg =
  ValueArg<set<Opcode>, OpcSetReader, OpcSetWriter>::create("opc_blacklist")
  .usage("{ opcode1 opcode2 ... opcoden; e.g., xorl or xorl_r32_r32 }")
  .description("Don't proprose any instructions from this set (takes precedence over --opc_whitelist)")
  .default_val({});

ValueArg<set<Opcode>, OpcSetReader, OpcSetWriter>& opc_whitelist_arg =
  ValueArg<set<Opcode>, OpcSetReader, OpcSetWriter>::create("opc_whitelist")
  .usage("{ opcode1 opcode2 ... opcoden; e.g., xorl or xorl_r32_r32 }")
  .description("Only proprose instructions from this set (unless they are not proposed for other reasons, e.g. --opc_blacklist, --propose_call, --cpu_flags, --mem_read, --mem_write, instructions not supported by stoke, etc.); empty whitelist means no whitelist")
  .default_val({});

ValueArg<size_t>& nop_percent_arg =
  ValueArg<size_t>::create("nop_percent")
  .usage("<percent>")
  .description("Percent of instruction moves that produce nops")
  .default_val(0);

ValueArg<size_t>& call_weight_arg =
  ValueArg<size_t>::create("call_weight")
  .usage("<int>")
  .description("Number of additional call opcodes in the opcode pool")
  .default_val(0);

FlagArg& mem_read_arg =
  FlagArg::create("mem_read")
  .description("Propose instruction and opcode moves that read memory?");

FlagArg& mem_write_arg =
  FlagArg::create("mem_write")
  .description("Propose instruction and opcode moves that write memory?");

FlagArg& callee_save_arg =
  FlagArg::create("callee_save")
  .alternate("propose_callee_save")
  .description("Override the value of preserve_regs to the empty set");

ValueArg<RegSet, RegSetReader, RegSetWriter>& preserve_regs_arg =
  ValueArg<RegSet, RegSetReader, RegSetWriter>::create("preserve_regs")
  .usage("{ %rax %rsp ... }")
  .description("Prevent STOKE from proposing instructions that modify these registers")
  .default_val(RegSet::linux_call_preserved());

ValueArg<vector<uint64_t>>& immediates_arg =
                          ValueArg<vector<uint64_t>>::create("immediates")
                          .usage("{ imm1 imm2 ... }")
                          .description("Additional immediates to propose as operands");

} // namespace stoke
