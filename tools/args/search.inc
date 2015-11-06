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

#ifndef STOKE_TOOLS_ARGS_SEARCH_INC
#define STOKE_TOOLS_ARGS_SEARCH_INC

#include "src/ext/cpputil/include/command_line/command_line.h"

#include "src/search/init.h"
#include "tools/io/init.h"

namespace stoke {

cpputil::Heading& search_heading =
  cpputil::Heading::create("Search Options:");

cpputil::ValueArg<double>& beta_arg =
  cpputil::ValueArg<double>::create("beta")
  .usage("<double>")
  .description("Annealing constant")
  .default_val(1.0);

cpputil::ValueArg<size_t>& max_instrs_arg =
  cpputil::ValueArg<size_t>::create("initial_instruction_number")
  .usage("<int>")
  .description("The initial number of instructions in the rewrite.  If the rewrite does not already ahve this many instructions, than NOPs will be added to pad to this number.  Note that some transformations can chance the number of instructions, while many others do not.")
  .default_val(16);

cpputil::ValueArg<Init, InitReader, InitWriter>& init_arg =
  cpputil::ValueArg<Init, InitReader, InitWriter>::create("init")
  .usage("(empty|zero|target|previous|extension)")
  .description("Initial search state")
  .default_val(Init::ZERO);

} // namespace stoke

#endif
