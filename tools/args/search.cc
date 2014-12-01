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

#include "tools/args/search.h"

#include "src/ext/x64asm/include/x64asm.h"

using namespace cpputil;
using namespace std;

namespace stoke {

Heading& search_heading =
  Heading::create("Search Options:");

ValueArg<size_t>& instruction_mass_arg =
  ValueArg<size_t>::create("instruction_mass")
  .usage("<int>")
  .description("Instruction move proposal mass")
  .default_val(1);

ValueArg<size_t>& opcode_mass_arg =
  ValueArg<size_t>::create("opcode_mass")
  .usage("<int>")
  .description("Opcode move proposal mass")
  .default_val(1);

ValueArg<size_t>& operand_mass_arg =
  ValueArg<size_t>::create("operand_mass")
  .usage("<int>")
  .description("Operand move proposal mass")
  .default_val(1);

ValueArg<size_t>& local_swap_mass_arg =
  ValueArg<size_t>::create("local_swap_mass")
  .usage("<int>")
  .description("Local swap move proposal mass")
  .default_val(1);

ValueArg<size_t>& global_swap_mass_arg =
  ValueArg<size_t>::create("global_swap_mass")
  .usage("<int>")
  .description("Global swap move proposal mass")
  .default_val(1);

ValueArg<size_t>& resize_mass_arg =
  ValueArg<size_t>::create("resize_mass")
  .usage("<int>")
  .description("Resize move proposal mass")
  .default_val(1);

ValueArg<size_t>& extension_mass_arg =
  ValueArg<size_t>::create("extension_mass")
  .usage("<int>")
  .description("Extension move proposal mass")
  .default_val(0);

ValueArg<size_t>& timeout_itr_arg =
  ValueArg<size_t>::create("timeout")
  .alternate("timeout_itr")
  .usage("<int>")
  .description("Number of proposals to execute before giving up")
  .default_val(1000000);

ValueArg<size_t>& timeout_sec_arg =
  ValueArg<size_t>::create("timeout_time")
  .alternate("timeout_sec")
  .usage("<int>")
  .description("Maximum runtime (in seconds) before giving up")
  .default_val(1800);

ValueArg<double>& beta_arg =
  ValueArg<double>::create("beta")
  .usage("<double>")
  .description("Annealing constant")
  .default_val(1.0);

ValueArg<size_t>& max_instrs_arg =
  ValueArg<size_t>::create("max_instrs")
  .usage("<int>")
  .description("The maximum number of instructions allowed in a rewrite")
  .default_val(16);

ValueArg<Init, InitReader, InitWriter>& init_arg =
  ValueArg<Init, InitReader, InitWriter>::create("init")
  .usage("(empty|zero|target|previous|extension)")
  .description("Initial search state")
  .default_val(Init::EMPTY);

} // namespace stoke

