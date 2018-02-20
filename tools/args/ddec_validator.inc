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

#ifndef STOKE_TOOLS_ARGS_DDEC_VALIDATOR_INC
#define STOKE_TOOLS_ARGS_DDEC_VALIDATOR_INC

#include "src/ext/cpputil/include/command_line/command_line.h"

#include "src/solver/solver.h"
#include "tools/io/solver.h"

namespace stoke {

cpputil::Heading& ddec_validator_options =
  cpputil::Heading::create("DDEC Verifier Options:");

cpputil::ValueArg<size_t>& target_bound_arg =
  cpputil::ValueArg<size_t>::create("target_bound")
  .usage("<int>")
  .description("Bound on loop iterations from one DDEC cutpoint to the next in the target.")
  .default_val(5);

cpputil::ValueArg<size_t>& rewrite_bound_arg =
  cpputil::ValueArg<size_t>::create("rewrite_bound")
  .usage("<int>")
  .description("Bound on loop iterations from one DDEC cutpoint to the next in the rewrite.")
  .default_val(2);

cpputil::ValueArg<int>& ddec_thread_count =
  cpputil::ValueArg<int>::create("ddec_threads")
  .usage("<int>")
  .description("How many threads to use for DDEC.")
  .default_val(1);


} // namespace stoke

#endif
