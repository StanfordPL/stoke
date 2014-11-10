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

#include "tools/args/target.h"

using namespace cpputil;
using namespace x64asm;

namespace stoke {

Heading& target_heading =
  Heading::create("Target Options:");

FileArg<TUnit, TUnitReader, TUnitWriter>& target_arg =
  FileArg<TUnit, TUnitReader, TUnitWriter>::create("target")
  .usage("<path/to/file.s>")
  .description("Target code")
.default_val({"anon", {{RET}}});

FolderArg<TUnit, TUnitReader, TUnitWriter>& aux_fxns_arg =
  FolderArg<TUnit, TUnitReader, TUnitWriter>::create("functions")
  .usage("<path/to/dir>")
  .description("Directory containing helper functions")
  .default_val({});

ValueArg<RegSet, RegSetReader, RegSetWriter>& def_in_arg =
  ValueArg<RegSet, RegSetReader, RegSetWriter>::create("def_in")
  .usage("{ %rax %rsp ... }")
  .description("Registers defined on entry")
  .default_val(RegSet::linux_call_parameters());

ValueArg<RegSet, RegSetReader, RegSetWriter>& live_out_arg =
  ValueArg<RegSet, RegSetReader, RegSetWriter>::create("live_out")
  .usage("{ %rax %rsp ... }")
  .description("Registers live on exit")
  .default_val(RegSet::linux_call_return());

FlagArg& stack_out_arg =
  FlagArg::create("stack_out")
  .description("Is stack defined on exit?");

FlagArg& heap_out_arg =
  FlagArg::create("heap_out")
  .description("Is heap defined on exit?");

} // namespace stoke
