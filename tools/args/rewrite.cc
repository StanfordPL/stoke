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

#include "tools/args/rewrite.h"

using namespace cpputil;
using namespace x64asm;

namespace stoke {

Heading& rewrite_heading = 
	Heading::create("Rewrite options:");

FileArg<TUnit, TUnitReader, TUnitWriter>& rewrite_arg = 
	FileArg<TUnit, TUnitReader, TUnitWriter>::create("rewrite")
  .usage("<path/to/file.s>")
  .description("Rewrite code")
	.default_val({"anon", {{RET}}});

} // namespace stoke
