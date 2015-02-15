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

#ifndef STOKE_TOOLS_ARGS_IN_OUT_H
#define STOKE_TOOLS_ARGS_IN_OUT_H

#include "src/ext/cpputil/include/command_line/command_line.h"
#include "src/ext/x64asm/include/x64asm.h"

#include "src/tunit/tunit.h"
#include "tools/io/reg_set.h"
#include "tools/io/tunit.h"

namespace stoke {

extern cpputil::Heading& in_out_heading;

extern cpputil::ValueArg<x64asm::RegSet, RegSetReader, RegSetWriter>& def_in_arg;
extern cpputil::ValueArg<x64asm::RegSet, RegSetReader, RegSetWriter>& live_out_arg;
extern cpputil::FlagArg& stack_out_arg;
extern cpputil::FlagArg& heap_out_arg;
extern cpputil::FlagArg& no_default_mxcsr_arg;

} // namespace stoke

#ifdef DEFINE_STOKE_ARGS

using namespace cpputil;
using namespace x64asm;

namespace stoke {

Heading& in_out_heading =
  Heading::create("Input/Output Register/Memory Options:");

ValueArg<RegSet, RegSetReader, RegSetWriter>& def_in_arg =
  ValueArg<RegSet, RegSetReader, RegSetWriter>::create("def_in")
  .alternate("di")
  .usage("{ %rax %rsp ... }")
  .description("Registers defined on entry")
  .default_val(RegSet::linux_call_parameters());

ValueArg<RegSet, RegSetReader, RegSetWriter>& live_out_arg =
  ValueArg<RegSet, RegSetReader, RegSetWriter>::create("live_out")
  .alternate("lo")
  .usage("{ %rax %rsp ... }")
  .description("Registers live on exit")
  .default_val(RegSet::linux_call_return());

FlagArg& stack_out_arg =
  FlagArg::create("stack_out")
  .description("Is stack defined on exit?");

FlagArg& heap_out_arg =
  FlagArg::create("heap_out")
  .description("Is heap defined on exit?");

FlagArg& no_default_mxcsr_arg =
  FlagArg::create("no_default_mxcsr")
  .description("Remove the default rounding control bit (%mxcsr[rc]) from def_in");

} // namespace stoke


#endif
#endif
