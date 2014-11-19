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
#include "src/validator/c_interface.h"
#include "src/validator/error.h"
#include "src/validator/handler.h"
#include "src/validator/handlers.h"
#include "src/validator/SymState.h"

#define PAIR_INFO const std::pair<stoke::Bijection<std::string>,std::map<SS_Id, unsigned int> >&


std::string idToStr(SS_Id, PAIR_INFO I=all_state_info);
Expr regExpr(std::string, unsigned int size=V_UNITSIZE);
std::set<SS_Id> keys(std::map<SS_Id, unsigned int> dict);

#define REPORT_ERROR(m) report_error(m, __FILE__, __LINE__)

namespace stoke {

class Validator {
public:

  Validator(SMTSolver& solver) : solver_(solver) {
    has_error_ = false;
    set_ceg_prefered(true);
    set_mem_out(false);

    handlers_.push_back(new MoveHandler());
  }

  ~Validator() {
    for(auto it : handlers_)
      delete it;
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

  /** Set if the code being validated writes memory. */
  Validator& set_mem_out(bool b) {
    mem_out_ = b;
    return *this;
  }
  /** Set if we would like a counterexample */
  Validator& set_ceg_prefered(bool b) {
    ceg_prefered_ = b;
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
  static bool is_supported(x64asm::Instruction i);
  /** Returns whether this opcode is supported*/
  static bool is_supported(x64asm::Opcode o);

private:

  void generate_constraints(const stoke::Cfg&, const stoke::Cfg&, std::vector<SymBool>&) const;

  /** Get the 'result' cpustate (including constraints) from a piece of code */
  stoke::SymState build_circuit(const stoke::Cfg& cfg, const stoke::SymState& state);

  /* Build a CpuState from the solver's model. */
  stoke::CpuState model_to_cpustate(std::string name_suffix);

  /** Used to keep track of register names, IDs and stuff */
  std::pair<Bijection<std::string>,std::map<SS_Id, unsigned int> > state_info_;
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

  /** This is a list of the handlers, in prioritized order */
  std::vector<stoke::Handler*> handlers_;

  /** Report an error here */
  void report_error(std::string message, std::string file, size_t line) {
    error_message_ = message;
    error_file_ = file;
    error_line_ = line;
    has_error_ = true;
  }

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
