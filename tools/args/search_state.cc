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

#include "tools/args/search_state.h"

#include "src/ext/x64asm/include/x64asm.h"

using namespace cpputil;
using namespace x64asm;

namespace stoke {

Heading& search_state_heading =
  Heading::create("Search State Options:");

FileArg<TUnit, TUnitReader, TUnitWriter>& current_arg =
  FileArg<TUnit, TUnitReader, TUnitWriter>::create("current")
  .usage("<path/to/file.s>")
  .description("Current rewrite; used with --init previous")
.default_val({"current", {{RET}}});

FileArg<TUnit, TUnitReader, TUnitWriter>& best_yet_arg =
  FileArg<TUnit, TUnitReader, TUnitWriter>::create("best_yet")
  .usage("<path/to/file.s>")
  .description("Best rewrite; used with --init previous")
.default_val({"best_yet", {{RET}}});

FileArg<TUnit, TUnitReader, TUnitWriter>& best_correct_arg =
  FileArg<TUnit, TUnitReader, TUnitWriter>::create("best_correct")
  .usage("<path/to/file.s>")
  .description("Best correct rewrite; used with --init previous")
.default_val({"best_correct", {{RET}}});

} // namespace stoke
