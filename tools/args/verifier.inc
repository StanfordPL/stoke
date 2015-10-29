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
  cpputil::Heading::create("Verifier Options:");

cpputil::ValueArg<std::string>& strategy_arg =
  cpputil::ValueArg<std::string>::create("strategy")
  .usage("(none|bounded|hold_out|straight_line)")
  .description("Verification strategy")
  .default_val("hold_out");

cpputil::FlagArg& no_try_sign_extend_arg =
  cpputil::FlagArg::create("no_try_sign_extend")
  .description("Do not try to find invariants using sign extension");

cpputil::FlagArg& no_ddec_bv_arg =
  cpputil::FlagArg::create("no_ddec_bv")
  .description("Do not use the bounded validator to refine DDEC invariants.");



} // namespace stoke

#endif
