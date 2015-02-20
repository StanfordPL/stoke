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

cpputil::ValueArg<size_t>& instruction_mass_arg =
  cpputil::ValueArg<size_t>::create("instruction_mass")
  .usage("<int>")
  .description("Instruction move proposal mass")
  .default_val(1);

cpputil::ValueArg<size_t>& opcode_mass_arg =
  cpputil::ValueArg<size_t>::create("opcode_mass")
  .usage("<int>")
  .description("Opcode move proposal mass")
  .default_val(1);

cpputil::ValueArg<size_t>& operand_mass_arg =
  cpputil::ValueArg<size_t>::create("operand_mass")
  .usage("<int>")
  .description("Operand move proposal mass")
  .default_val(1);

cpputil::ValueArg<size_t>& local_swap_mass_arg =
  cpputil::ValueArg<size_t>::create("local_swap_mass")
  .usage("<int>")
  .description("Local swap move proposal mass")
  .default_val(1);

cpputil::ValueArg<size_t>& global_swap_mass_arg =
  cpputil::ValueArg<size_t>::create("global_swap_mass")
  .usage("<int>")
  .description("Global swap move proposal mass")
  .default_val(1);

cpputil::ValueArg<size_t>& resize_mass_arg =
  cpputil::ValueArg<size_t>::create("resize_mass")
  .usage("<int>")
  .description("Resize move proposal mass")
  .default_val(1);

cpputil::ValueArg<size_t>& extension_mass_arg =
  cpputil::ValueArg<size_t>::create("extension_mass")
  .usage("<int>")
  .description("Extension move proposal mass")
  .default_val(0);

cpputil::ValueArg<size_t>& timeout_itr_arg =
  cpputil::ValueArg<size_t>::create("timeout")
  .alternate("timeout_itr")
  .usage("<int>")
  .description("Number of proposals to execute before giving up")
  .default_val(1000000000);

cpputil::ValueArg<size_t>& timeout_sec_arg =
  cpputil::ValueArg<size_t>::create("timeout_time")
  .alternate("timeout_sec")
  .usage("<int>")
  .description("Maximum runtime (in seconds) before giving up")
  .default_val(1800);

cpputil::ValueArg<double>& beta_arg =
  cpputil::ValueArg<double>::create("beta")
  .usage("<double>")
  .description("Annealing constant")
  .default_val(1.0);

cpputil::ValueArg<size_t>& max_instrs_arg =
  cpputil::ValueArg<size_t>::create("max_instrs")
  .usage("<int>")
  .description("The maximum number of instructions allowed in a rewrite")
  .default_val(16);

cpputil::ValueArg<Init, InitReader, InitWriter>& init_arg =
  cpputil::ValueArg<Init, InitReader, InitWriter>::create("init")
  .usage("(empty|zero|target|previous|extension)")
  .description("Initial search state")
  .default_val(Init::ZERO);

} // namespace stoke

#endif
