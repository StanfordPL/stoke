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

#include "tools/args/sandbox.h"

using namespace cpputil;

namespace stoke {

Heading& sandbox_heading =
	Heading::create("Sandbox options:");

FlagArg& abi_check_arg = 
	FlagArg::create("abi_check")
	.description("Report SIGSEGV for abi violations");

ValueArg<size_t>& max_jumps_arg =
	ValueArg<size_t>::create("max_jumps")
  .usage("<int>")
  .description("Maximum jumps before exit due to infinite loop")
  .default_val(1024);

} // namespace stoke
