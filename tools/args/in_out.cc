// Copyright 2013-2015 Eric Schkufza, Rahul Sharma, Berkeley Churchill, Stefan Heule
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

#include "tools/args/in_out.h"

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
