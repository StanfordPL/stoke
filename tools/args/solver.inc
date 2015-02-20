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

#ifndef STOKE_TOOLS_ARGS_SOLVER_INC
#define STOKE_TOOLS_ARGS_SOLVER_INC

#include "src/ext/cpputil/include/command_line/command_line.h"

#include "src/solver/solver.h"
#include "tools/io/solver.h"

namespace stoke {

cpputil::Heading& smt_heading =
  cpputil::Heading::create("Formal Validator Options:");

cpputil::ValueArg<Solver, SolverReader, SolverWriter>& solver_arg =
  cpputil::ValueArg<Solver, SolverReader, SolverWriter>::create("solver")
  .usage("(cvc4|z3)")
  .description("SMT Solver backend")
  .default_val(Solver::CVC4);

cpputil::ValueArg<uint64_t>& timeout_arg =
  cpputil::ValueArg<uint64_t>::create("solver_timeout")
  .usage("<int>")
  .description("Timeout in milliseconds for SMT solver before giving up.  0 for no limit.")
  .default_val(0);

} // namespace stoke

#endif
