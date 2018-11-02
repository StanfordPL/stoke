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
#include "src/state/cpu_states.h"
#include "tools/io/cpu_states.h"
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

cpputil::ValueArg<std::string>& class_checker_arg =
  cpputil::ValueArg<std::string>::create("class_checker")
  .usage("<string>")
  .description("How to check equivalence classes.")
  .default_val("local");

cpputil::FlagArg& handhold_arg =
  cpputil::FlagArg::create("handhold")
  .description("Use a handhold.txt file to pick the equivalence class to verifhy");

cpputil::FileArg<CpuStates, CpuStatesReader, CpuStatesWriter>& rodata =
  cpputil::FileArg<CpuStates, CpuStatesReader, CpuStatesWriter>::create("rodata");

cpputil::ValueArg<std::string>& alignment_predicate_arg = 
  cpputil::ValueArg<std::string>::create("alignment_predicate")
  .usage("<string>")
  .description("Specify an alignment predicate to try")
  .default_val("");

cpputil::FlagArg& alignment_predicate_heap_arg =
  cpputil::FlagArg::create("alignment_predicate_heap")
  .description("Add heap equality to specified alignment predicate");


} // namespace stoke

#endif
