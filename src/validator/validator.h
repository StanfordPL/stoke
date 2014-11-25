#ifndef STOKE_SRC_VALIDATOR_VALIDATOR_H
#define STOKE_SRC_VALIDATOR_VALIDATOR_H

#include <iostream>
#include <vector>
#include <string>

#include "src/cfg/cfg.h"
#include "src/ext/x64asm/include/x64asm.h"
#include "src/state/cpu_state.h"
#include "src/solver/smtsolver.h"
#include "src/symstate/state.h"
#include "src/validator/error.h"
#include "src/validator/handler.h"
#include "src/validator/handlers.h"


namespace stoke {

class Validator {
public:

  Validator(SMTSolver& solver) : solver_(solver),
    handler_(*(new ComboHandler())), free_handler_(true) {
    has_error_ = false;
    set_mem_out(false);
  }

  Validator(SMTSolver& solver, Handler& h) : solver_(solver), handler_(h), free_handler_(false) {
    has_error_ = false;
    set_mem_out(false);
  }

  ~Validator() {
    if (free_handler_)
      delete &handler_;
  }

  /** Evalue if the target and rewrite are the same */
  bool validate(const Cfg& target, const Cfg& rewrite,
                CpuState& counter_example);

  /** Check for an error in the last operation */
  bool has_error() {
    return has_error_;
  }
  /** Get the error message, and optionally metadata */
  std::string get_error(size_t* line_no = NULL, std::string* file = NULL) {
    if(!has_error_)
      return "";

    if(line_no)
      *line_no = error_line_;
    if(file)
      *file = error_file_;
    return error_message_;
  }

  /** Set whether to evaluate equivalence of memory */
  Validator& set_mem_out(bool b) {
    mem_out_ = b;
    return *this;
  }

  /** Returns whether the last counterexample made sense */
  bool is_counterexample_valid() {
    return counterexample_valid_;
  }
  /** Gets the counterexample */
  CpuState get_counterexample() {
    return counterexample_;
  }
  /** Gets the target's final state in counterexample. */
  CpuState get_target_final_state() {
    return target_final_state_;
  }
  /** Gets the rewrite's final state in counterexample. */
  CpuState get_rewrite_final_state() {
    return rewrite_final_state_;
  }

  /** Returns whether this instruction is supported */
  bool is_supported(x64asm::Instruction& i);

private:

  void generate_constraints(const stoke::Cfg&, const stoke::Cfg&, std::vector<SymBool>&) const;

  /** Get the 'result' cpustate (including constraints) from a piece of code.  Throws an error
      on failure. */
  SymState build_circuit(const Cfg& cfg, const SymState& state) const;
  /** Build a circuit for a single instruction (trashing the starting state).  Throws an error
      on failure. */
  void build_circuit(const x64asm::Instruction& i, SymState& state) const;

  /* Build a CpuState from the solver's model. */
  stoke::CpuState model_to_cpustate(std::string name_suffix);

  /** Will the code write memory? */
  bool mem_out_;
  /** Do we want to get a counterexample? */
  bool ceg_prefered_;
  /** SMT Solver to use */
  SMTSolver& solver_;

  /** Was the last counterexample sensible? */
  bool counterexample_valid_;
  /** The counterexample */
  CpuState counterexample_;
  /** If a counterexample existed, what was final state of target? */
  CpuState target_final_state_;
  /** If a counterexample existed, what was final state of rewrite? */
  CpuState rewrite_final_state_;

  /** This is the handler used */
  stoke::Handler& handler_;
  /** Whether we're responsible for freeing the memory of this handler */
  const bool free_handler_;

  /** Was an error encountered? */
  bool has_error_;
  /** What was the message? */
  std::string error_message_;
  /** File where error occurred */
  std::string error_file_;
  /** Line where error occurred */
  size_t error_line_;
};




} // namespace stoke



#endif
