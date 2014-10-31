#ifndef STOKE_SRC_VALIDATOR_VALIDATOR_H
#define STOKE_SRC_VALIDATOR_VALIDATOR_H

#include <iostream>
#include <vector>
#include <string>

#include "src/cfg/cfg.h"
#include "src/ext/x64asm/include/x64asm.h"
#include "src/state/cpu_state.h"
#include "src/validator/c_interface.h"
#include "src/validator/error.h"
#include "src/validator/SymState.h"

#define PAIR_INFO const std::pair<stoke::Bijection<std::string>,std::map<SS_Id, unsigned int> >&


std::string idToStr(SS_Id, PAIR_INFO I=all_state_info);
Expr regExpr(VC&, std::string, unsigned int size=V_UNITSIZE);
Expr EqExpr(VC&, Expr, Expr);  
std::set<SS_Id> keys(std::map<SS_Id, unsigned int> dict);  


  
namespace stoke {

class Validator {
	public:

    /* Evalue if the target and rewrite are the same */
	  bool validate(const Cfg& target, const Cfg& rewrite, 
	                CpuState& counter_example);

    /* Check for an error in the last operation */
    bool has_error() {
      return has_error_;
    }
    /* Get the error message, and optionally metadata */
    std::string get_error(size_t* line_no = NULL, std::string* file = NULL) {
      if(!has_error_)
        return "";

      if(line_no)
        *line_no = error_line_;
      if(file)
        *file = error_file_;
      return error_message_;
    }

    /* Set if the code being validated writes memory. */
    Validator& set_mem_out(bool b) {
      mem_out_ = b;
      return *this;
    }
    /* Set the amount of time the validator runs before giving up. */
    Validator& set_timeout(uint64_t time) {
      timeout_ = time;
      return *this;
    }

    /* Returns whether the last counterexample made sense */
    bool is_counterexample_valid() {
      return counterexample_valid_;
    }
    /* Gets the counterexample */
    CpuState get_counterexample() {
      return counterexample_;
    }
    /* Gets the target's final state in counterexample. */
    CpuState get_target_final_state() {
      return target_final_state_;
    }
    /* Gets the rewrite's final state in counterexample. */
    CpuState get_rewrite_final_state() {
      return rewrite_final_state_;
    }

    /* Returns whether this instruction is supported */
    static bool is_supported(x64asm::Instruction i);
    /* Returns whether this opcode is supported*/
    static bool is_supported(x64asm::Opcode o);

    /** @todo Need a data structure for abductions if we ever write this. */
    std::ostream& print_abduction(std::ostream& os);

  private:

    std::vector<Expr> generate_constraints(const stoke::Cfg&, const stoke::Cfg&, std::vector<Expr>&);

    /* Validity checker; needed for just about everything */
    VC vc_;
    /* Time to spend running z3 */
    uint64_t timeout_;
    /* Used to keep track of register names, IDs and stuff */
    std::pair<Bijection<std::string>,std::map<SS_Id, unsigned int> > state_info_;
    /* Will the code write memory? */
    bool mem_out_;

    /* Was the last counterexample sensible? */
    bool counterexample_valid_;
    /* The counterexample */
    CpuState counterexample_;
    /* If a counterexample existed, what was final state of target? */
    CpuState target_final_state_;
    /* If a counterexample existed, what was final state of rewrite? */
    CpuState rewrite_final_state_;

    /* Was an error encountered? */
    bool has_error_;
    /* What was the message? */
    std::string error_message_;
    /* File where error occurred */
    std::string error_file_;
    /* Line where error occurred */
    size_t error_line_;
};




} // namespace stoke



#endif
