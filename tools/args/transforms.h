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

#ifndef STOKE_TOOLS_ARGS_TRANSFORMS_H
#define STOKE_TOOLS_ARGS_TRANSFORMS_H

#include <set>
#include <vector>

#include "src/ext/cpputil/include/command_line/command_line.h"
#include "src/ext/x64asm/include/x64asm.h"

#include "tools/io/flag_set.h"
#include "tools/io/opc_set.h"
#include "tools/io/reg_set.h"

namespace stoke {

extern cpputil::Heading& transforms_heading;

extern cpputil::ValueArg<x64asm::FlagSet, FlagSetReader, FlagSetWriter>& cpu_flags_arg;
extern cpputil::ValueArg<std::set<x64asm::Opcode>, OpcSetReader, OpcSetWriter>& opc_blacklist_arg;
extern cpputil::ValueArg<size_t>& nop_percent_arg;
extern cpputil::FlagArg& mem_read_arg;
extern cpputil::FlagArg& mem_write_arg;
extern cpputil::FlagArg& propose_call_arg;
extern cpputil::FlagArg& callee_save_arg;
extern cpputil::ValueArg<x64asm::RegSet, RegSetReader, RegSetWriter>& preserve_regs_arg;
extern cpputil::ValueArg<std::vector<uint64_t>>& immediates_arg;

} // namespace stoke

#endif
