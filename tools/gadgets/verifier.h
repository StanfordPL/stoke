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

#ifndef STOKE_TOOLS_GADGETS_VERIFIER_H
#define STOKE_TOOLS_GADGETS_VERIFIER_H

#include "src/cost/cost_function.h"
#include "src/solver/cvc4solver.h"
#include "src/solver/z3solver.h"
#include "src/verifier/hold_out.h"
#include "src/verifier/strategy.h"
#include "src/verifier/verifier.h"
#include "src/validator/straight_line.h"
#include "tools/args/verifier.inc"

namespace stoke {

class VerifierGadget : public Verifier {
public:
  VerifierGadget(Sandbox& sandbox) : Verifier() {

    switch(strategy_arg) {
    case Strategy::HOLD_OUT:
      verifier_ = new HoldOutVerifier();
      break;

    case Strategy::STRAIGHT_LINE:
      solver_ = new SolverGadget();
      verifier_ = new StraightLineValidator(*solver_);
      break;

    case Strategy::NONE:
      verifier_ = new Verifier();
      break;
    }
    verifier_->set_sandbox(&sandbox);
  }

  Verifier& set_sandbox(Sandbox* sb) {
    verifier_->set_sandbox(sb);
    return *this;
  }

  inline bool verify(const Cfg& target, const Cfg& rewrite) {
    return verifier_->verify(target, rewrite);
  }

  inline size_t counter_examples_available() {
    return verifier_->counter_examples_available();
  }

  std::vector<CpuState> get_counter_examples() {
    return verifier_->get_counter_examples();
  }

  bool has_error() {
    return verifier_->has_error();
  }

  std::string error() {
    return verifier_->error();
  }

private:

  Verifier* verifier_;
  SMTSolver* solver_;
};

} // namespace stoke

#endif
