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

#ifndef STOKE_TOOLS_ARGS_VERIFIER_INC
#define STOKE_TOOLS_ARGS_VERIFIER_INC

#include "src/ext/cpputil/include/command_line/command_line.h"

#include "src/solver/solver.h"
#include "tools/io/solver.h"

namespace stoke {

cpputil::Heading& verifier_heading =
  cpputil::Heading::create("Verification Options:");

cpputil::ValueArg<std::string>& strategy_arg =
  cpputil::ValueArg<std::string>::create("strategy")
  .usage("(none|bounded|ddec|hold_out)")
  .description("Verification strategy")
  .default_val("hold_out");

cpputil::Heading& validator_heading =
  cpputil::Heading::create("Common Formal Validation Options:");

cpputil::ValueArg<std::string>& alias_strategy_arg =
  cpputil::ValueArg<std::string>::create("alias_strategy")
  .usage("(basic|string|string_antialias|flat)")
  .description("How to handle aliasing")
  .default_val("flat");

cpputil::FlagArg& verify_nacl_arg =
  cpputil::FlagArg::create("verify_nacl")
  .description("add constraints to bound index registers away from 32-bit boundary");

cpputil::FlagArg& fixpoint_up_arg =
  cpputil::FlagArg::create("fixpoint_up")
  .description("Instead of directly proving obligation, use a fixpoint");



} // namespace stoke

#endif
