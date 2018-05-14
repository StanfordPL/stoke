// Copyright 2013-2016 Stanford University
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

#include "src/ext/cpputil/include/container/bit_vector.h"
#include "src/solver/smtsolver.h"
#include "src/validator/error.h"
#include "src/validator/obligation_checker.h"
#include "src/verifier/verifier.h"


namespace stoke {

class Validator : public Verifier {

public:

  Validator(ObligationChecker& checker) :
    checker_(checker) 
  {
    has_error_ = false;
    setup_support_table();
  }

  /** Copy constructor: the goal is to create a new Validator
    that shares any configuration of the original one, but can safely be used
    in a different thread.  They can share pointers to memory, but only if that
    memory is only read.  */
  Validator(const Validator& rhs) : 
    Verifier(),
    checker_(rhs.checker_),
    support_table_(rhs.support_table_),
    error_file_(""),
    error_line_(0)
   {
     has_error_ = false;
  }

  virtual ~Validator() {
  }

  /** Set that a range of input locations must be pointers */
  Verifier& add_pointer_range(x64asm::M8 begin, x64asm::M8 end) {
    pointer_ranges_.push_back({begin, end});
    return *this;
  }

  /** Evalue if the target and rewrite are the same */
  virtual bool verify(const Cfg& target, const Cfg& rewrite) {
    return false;
  };

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

  /** Useful helper.  Extracts a counterexample from a model.  Assumes that
   * you've constructed constraints the same way the validator does and know
   * what you're doing.  Ignores memory. */
  static CpuState state_from_model(SMTSolver& smt, const std::string& name_suffix,
                                   std::vector<std::string> shadow_vars = {});

protected:

  /** Check that def-ins, live-outs match, and that non-control flow
   * instructions are supported.  Throws exception on error.*/
  void sanity_checks(const Cfg&, const Cfg&) const;

  /** SMT Solver to use */
  ObligationChecker& checker_;

  /** What opcodes do we fully support? */
  std::array<bool, X64ASM_NUM_OPCODES> support_table_;

  /** Code to setup the table to find support levels */
  void setup_support_table();

  /** File where error occurred */
  std::string error_file_;
  /** Line where error occurred */
  size_t error_line_;

  /** Range of input values that must be pointers */
  std::vector<std::pair<x64asm::M8, x64asm::M8>> pointer_ranges_;
};




} // namespace stoke



#endif
