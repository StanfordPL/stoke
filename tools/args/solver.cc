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

#include "tools/args/solver.h"

using namespace cpputil;

namespace stoke {

Heading& smt_heading =
  Heading::create("Formal Validator Options:");

ValueArg<Solver, SolverReader, SolverWriter>& solver_arg =
  ValueArg<Solver, SolverReader, SolverWriter>::create("solver")
  .usage("(cvc4|z3)")
  .description("SMT Solver backend")
  .default_val(Solver::CVC4);

ValueArg<uint64_t>& timeout_arg =
  ValueArg<uint64_t>::create("solver_timeout")
  .usage("<int>")
  .description("Timeout in milliseconds for SMT solver before giving up.  0 for no limit.")
  .default_val(0);


} // namespace stoke
