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

#ifndef STOKE_TOOLS_ARGS_BOUNDED_VALIDATOR_INC
#define STOKE_TOOLS_ARGS_BOUNDED_VALIDATOR_INC

#include "src/ext/cpputil/include/command_line/command_line.h"

#include "src/solver/solver.h"
#include "tools/io/solver.h"

namespace stoke {

cpputil::Heading& bounded_validator_options =
  cpputil::Heading::create("Bounded Verifier Options:");

cpputil::ValueArg<size_t>& bound_arg =
  cpputil::ValueArg<size_t>::create("bound")
  .usage("<int>")
  .description("Maximum iterations through a loop")
  .default_val(2);

cpputil::ValueArg<std::string>& alias_strategy_arg =
  cpputil::ValueArg<std::string>::create("alias_strategy")
  .usage("(basic|string|string_antialias)")
  .description("How to handle aliasing")
  .default_val("string");

} // namespace stoke

#endif
