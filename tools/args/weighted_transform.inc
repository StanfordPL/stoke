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

#ifndef STOKE_TOOLS_ARGS_WEIGHTED_TRANSFORM_INC
#define STOKE_TOOLS_ARGS_WEIGHTED__INC

#include "src/ext/cpputil/include/command_line/command_line.h"

#include "src/search/init.h"
#include "tools/io/init.h"

namespace stoke {

cpputil::Heading& transform_weight_heading =
  cpputil::Heading::create("Transform Weight Options:");

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

cpputil::ValueArg<size_t>& rotate_mass_arg =
  cpputil::ValueArg<size_t>::create("rotate_mass")
  .usage("<int>")
  .description("Rotate move proposal mass (previously called \"resize\")")
  .default_val(1);

} // namespace stoke

#endif
