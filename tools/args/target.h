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

#ifndef STOKE_TOOLS_ARGS_TARGET_H
#define STOKE_TOOLS_ARGS_TARGET_H

#include "src/ext/cpputil/include/command_line/command_line.h"
#include "src/ext/x64asm/include/x64asm.h"

#include "src/tunit/tunit.h"
#include "tools/io/reg_set.h"
#include "tools/io/tunit.h"

namespace stoke {

extern cpputil::Heading& target_heading;

extern cpputil::FileArg<TUnit, TUnitReader, TUnitWriter>& target_arg;
extern cpputil::FolderArg<TUnit, TUnitReader, TUnitWriter>& aux_fxns_arg;
extern cpputil::ValueArg<x64asm::RegSet, RegSetReader, RegSetWriter>& def_in_arg;
extern cpputil::ValueArg<x64asm::RegSet, RegSetReader, RegSetWriter>& live_out_arg;
extern cpputil::FlagArg& stack_out_arg;
extern cpputil::FlagArg& heap_out_arg;
extern cpputil::FlagArg& no_default_mxcsr_arg;

} // namespace stoke

#endif
