// Copyright 2013-2015 Stanford University
//
// Licensed under the Apache License, Version 2.0 (the License);
// you may not use this file except in compliance with the License.
// You may obtain a copy of the License at
//
//     http://www.apache.org/licenses/LICENSE-2.0
//
// Unless required by applicable law or agreed to in writing, software
// distributed under the License is distributed on an AS IS BASIS,
// WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
// See the License for the specific language governing permissions and
// limitations under the License.

#ifndef STOKE_SRC_VALIDATOR_STRAIGHT_LINE_H
#define STOKE_SRC_VALIDATOR_STRAIGHT_LINE_H

#include <iostream>
#include <vector>
#include <string>

#include "src/cfg/cfg.h"
#include "src/ext/x64asm/include/x64asm.h"
#include "src/state/cpu_state.h"
#include "src/solver/smtsolver.h"
#include "src/symstate/memory/deprecated.h"
#include "src/symstate/memory_manager.h"
#include "src/symstate/state.h"
#include "src/validator/error.h"
#include "src/validator/handler.h"
#include "src/validator/handlers.h"
#include "src/validator/validator.h"


namespace stoke {

class StraightLineValidator : public Validator {

public:

  StraightLineValidator(SMTSolver& solver) : Validator(solver) {}

  ~StraightLineValidator() {}

  /** Evalue if the target and rewrite are the same */
  bool verify(const Cfg& target, const Cfg& rewrite);

  /** Get the error message, and optionally metadata */
  std::string get_error(size_t* line_no = NULL, std::string* file = NULL) {
    if(!has_error_)
      return "";

    if(line_no)
      *line_no = error_line_;
    if(file)
      *file = error_file_;
    return error_;
  }

  /** Returns whether the last counterexample made sense */
  size_t counter_examples_available() {
    return counterexample_valid_ ? 1 : 0;
  }
  /** Gets the counterexample */
  std::vector<CpuState> get_counter_examples() {
    std::vector<CpuState> cegs;
    if(counter_examples_available()) {
      cegs.push_back(counterexample_);
    }
    return cegs;
  }
  /** Gets the target's final state in counterexample. */
  CpuState get_target_final_state() {
    return target_final_state_;
  }
  /** Gets the rewrite's final state in counterexample. */
  CpuState get_rewrite_final_state() {
    return rewrite_final_state_;
  }


  /** Extracts a counterexample from a model.  Assumes that you've constructed
   * constraints the same way the validator does and know what you're doing.
   * This would be private were it not for the need to be accessible from
   * testing classes (where friendship doesn't work properly).*/
  static CpuState state_from_model(SMTSolver& smt, const std::string& name_suffix,
                                   const DeprecatedMemory* memory = NULL,
                                   const DeprecatedMemory* memory2 = NULL);

private:

  /** Take two codes and generate constraints asserting their equivalence.
   * Also return final symbolic states (that have information about memory
   * which is useful for generating counterexamples) */
  void generate_constraints(const stoke::Cfg&, const stoke::Cfg&,
                            SymState&, SymState&, std::vector<SymBool>&) const;

  /** Get the 'result' cpustate (including constraints) from a piece of code.  Throws an error
      on failure. */
  void build_circuit(const Cfg& cfg, SymState& state) const;
  /** Build a circuit for a single instruction (trashing the starting state).  Throws an error
      on failure. */
  void build_circuit(const x64asm::Instruction& i, SymState& state) const;

  /** Was the last counterexample sensible? */
  bool counterexample_valid_;
  /** The counterexample */
  CpuState counterexample_;
  /** If a counterexample existed, what was final state of target? */
  CpuState target_final_state_;
  /** If a counterexample existed, what was final state of rewrite? */
  CpuState rewrite_final_state_;

  /** File where error occurred */
  std::string error_file_;
  /** Line where error occurred */
  size_t error_line_;
};




} // namespace stoke



#endif
