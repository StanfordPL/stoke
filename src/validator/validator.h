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

#ifndef STOKE_SRC_VALIDATOR_VALIDATOR_H
#define STOKE_SRC_VALIDATOR_VALIDATOR_H

#include <iostream>
#include <vector>
#include <string>

#include "src/solver/smtsolver.h"
#include "src/validator/error.h"
#include "src/validator/handler.h"
#include "src/validator/handlers.h"
#include "src/verifier/verifier.h"


namespace stoke {

class Validator : public Verifier {

public:

  Validator(SMTSolver& solver) : solver_(solver),
    handler_(*(new ComboHandler())), free_handler_(true) {
    has_error_ = false;
    setup_support_table();
  }

  Validator(SMTSolver& solver, Handler& h) : solver_(solver), handler_(h), free_handler_(false) {
    has_error_ = false;
    setup_support_table();
  }

  virtual ~Validator() {
    if (free_handler_)
      delete &handler_;
  }

  /** Evalue if the target and rewrite are the same */
  virtual bool verify(const Cfg& target, const Cfg& rewrite) {
    return false;
  };

  /** Get the error message, and optionally metadata */
  virtual std::string get_error(size_t* line_no = NULL, std::string* file = NULL) {
    return "This is a default implementation";
  }

  /** Returns whether the last counterexample made sense */
  virtual size_t counter_examples_available() {
    return 0;
  }
  /** Gets the counterexample */
  virtual std::vector<CpuState> get_counter_examples() {
    return std::vector<CpuState>();
  }

  /** Returns whether this instruction is supported.  No error message. */
  bool is_supported(x64asm::Instruction& i) const;
  /** Returns whether an opcode is fully supported.  No error message. */
  bool is_supported(const x64asm::Opcode& op) const;

protected:

  /** Check that def-ins, live-outs match, and that non-control flow
   * instructions are supported.  Throws exception on error.*/
  void sanity_checks(const Cfg&, const Cfg&) const;

  /** Setup the memory manager (on invocation of the validator) */
  void init_mm() {
    memory_manager_ = SymMemoryManager();
    SymBitVector::set_memory_manager(&memory_manager_);
    SymBool::set_memory_manager(&memory_manager_);
  }
  /** Clean up the memory */
  void stop_mm() {
    memory_manager_.collect();
    SymBitVector::set_memory_manager(NULL);
    SymBool::set_memory_manager(NULL);
  }
  /** The memory manager */
  SymMemoryManager memory_manager_;

  /** SMT Solver to use */
  SMTSolver& solver_;
  /** The handler */
  Handler& handler_;
  /** Do we need to free the handler? */
  bool free_handler_;

  /** What opcodes do we fully support? */
  std::array<bool, X64ASM_NUM_OPCODES> support_table_;

  /** Code to setup the table to find support levels */
  void setup_support_table();

  /** File where error occurred */
  std::string error_file_;
  /** Line where error occurred */
  size_t error_line_;

};




} // namespace stoke



#endif
