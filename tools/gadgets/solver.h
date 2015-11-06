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

#ifndef STOKE_TOOLS_GADGETS_SOLVER_H
#define STOKE_TOOLS_GADGETS_SOLVER_H

#include "src/solver/smtsolver.h"
#include "src/solver/cvc4solver.h"
#include "src/solver/z3solver.h"
#include "tools/args/solver.inc"

namespace stoke {

class SolverGadget : public SMTSolver {
public:
  SolverGadget() : SMTSolver() {

    switch (solver_arg) {
    case Solver::Z3:
      solver_ = new Z3Solver();
      break;
    case Solver::CVC4:
      solver_ = new Cvc4Solver();
      break;
    default:
      assert(false);
    }

    set_timeout(timeout_arg);
  }

  SMTSolver& set_timeout(uint64_t ms) {
    solver_->set_timeout(ms);
    return *this;
  }
  bool is_sat(const std::vector<SymBool>& constraints) {
    return solver_->is_sat(constraints);
  }
  bool has_model() const {
    return solver_->has_model();
  }
  cpputil::BitVector get_model_bv(const std::string& var, uint16_t octs) {
    return solver_->get_model_bv(var, octs);
  }
  bool get_model_bool(const std::string& var) {
    return solver_->get_model_bool(var);
  }
  bool has_error() const {
    return solver_->has_error();
  }
  std::string get_error() {
    return solver_->get_error();
  }

private:

  SMTSolver* solver_;
};

} // namespace stoke

#endif
