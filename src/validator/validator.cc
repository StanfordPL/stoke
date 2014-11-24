#include <ctime>
#include <fstream>
#include <string>
#include <iostream>
#include <sstream>
#include <vector>
#include <map>
#include <list>
#include <set>
#include <cassert>
#include <tr1/unordered_set>
#include <locale>
#include <initializer_list>
#include <unistd.h>

#include "src/symstate/bitvector.h"
#include "src/validator/validator.h"

using namespace std;
using namespace stoke;
using namespace x64asm;


/* This produces a CpuState (that is, a stoke-readable
   recording of all the variables).  This function can be used to extract a
   counterexample (with name_suffix == ""), or to extract the expected output
   of a code after executing on the counterexample (with name_suffix ==
   "_1_Final" or "_2_Final") */
stoke::CpuState Validator::model_to_cpustate(string name_suffix) {

  CpuState cs;
  for(size_t i = 0; i < r64s.size(); ++i) {
    stringstream name;
    name << r64s[i] << name_suffix;
    cs.gp[r64s[i]] = solver_.get_model_bv(name.str(), 1);
  }
  for(size_t i = 0; i < ymms.size(); ++i) {
    stringstream name;
    name << ymms[i] << name_suffix;
    cs.sse[ymms[i]] = solver_.get_model_bv(name.str(), 4);
  }
  for(size_t i = 0; i < eflags.size(); ++i) {
    if(!cs.rf.is_status(eflags[i].index()))
      continue;

    stringstream name;
    name << eflags[i] << name_suffix;
    cs.rf.set(eflags[i].index(), solver_.get_model_bool(name.str()));
  }

  return cs;
}


bool regset_is_supported(x64asm::RegSet rs) {

  /* Check to make sure all liveout are supported. */
  /* Right now we support gps, xmms, ACOPSZ eflags */
  RegSet supported = (RegSet::all_gps() | RegSet::all_ymms()) +
                     eflags_cf + eflags_of +
                     eflags_pf + eflags_sf + eflags_zf;

  // Do the check.
  if((supported & rs) != rs) {
    stringstream tmp;
    tmp << (rs - supported);

    string message =
      string("Validator only supporgs gps (excluding %ah-%dh), xmms and eflags COPSZ in live out.") +
      string("  Not supported: ") + tmp.str();

    throw VALIDATOR_ERROR(message);
    return false;
  }
  return true;
}


bool Validator::is_supported(Instruction& i) {

  SymState s("");
  try {

    build_circuit(i, s);
    return true;

  } catch (validator_error e) {
    has_error_ = true;
    error_message_ = e.get_message();
    error_file_ = e.get_file();
    error_line_ = e.get_line();
    return false;
  }

  return false;
}


void Validator::generate_constraints(const stoke::Cfg& f1, const stoke::Cfg& f2, vector<SymBool>& constraints) const {

  // Check to make sure def-ins/live-outs agree
  if (f1.def_ins() != f2.def_ins()) {
    throw VALIDATOR_ERROR("Def-ins of the two CFGs differ");
  }
  if (f1.live_outs() != f2.live_outs()) {
    throw VALIDATOR_ERROR("Live-outs of the two CFGs differ");
  }
  // Check that the regsets are supported, throw an error otherwise
  regset_is_supported(f1.def_ins());
  regset_is_supported(f1.live_outs());

  // Create a starting symbolic state
  SymState init("");

  SymState first_init("1_INIT");
  SymState second_init("2_INIT");

  for(auto it : first_init.equality_constraints(init, f1.def_ins()))
    constraints.push_back(it);

  for(auto it : second_init.equality_constraints(init, f1.def_ins()))
    constraints.push_back(it);

  // Build the circuits
  SymState first_final = build_circuit(f1, first_init);
  SymState second_final = build_circuit(f2, second_init);

  for(auto it : first_final.constraints)
    constraints.push_back(it);
  for(auto it : second_final.constraints)
    constraints.push_back(it);

  // Assert inequality of the final states
  SymBool inequality = SymBool::_false();
  for(auto it : first_final.equality_constraints(second_final, f1.live_outs()))
    inequality = inequality | !it;

  constraints.push_back(inequality);

  // Create states to track the final values on each side
  // (this is to get a counterexample)
  SymState first_outputs("1_FINAL");
  SymState second_outputs("2_FINAL");

  for(auto it : first_outputs.equality_constraints(first_final, f1.live_outs()))
    constraints.push_back(it);
  for(auto it : second_outputs.equality_constraints(second_final, f1.live_outs()))
    constraints.push_back(it);

  /*
  cout << endl;
  cout << "============= CONSTRAINTS =====================" << endl;
  for(auto it : constraints)
    cout << it << endl;
  */
}

void Validator::build_circuit(const Instruction& instr, SymState& state) const {

  /* For now, we don't handle any control flow */
  if(instr.is_any_jump() || instr.is_any_call() || instr.is_any_return()) {
    stringstream ss;
    ss << "Control flow unsupported: " << instr;
    throw VALIDATOR_ERROR(ss.str());
  }

  /* Find the best handler for this instruction */
  Handler* best_handler = NULL;
  auto level = Handler::SupportLevel::NONE;
  for(auto h : handlers_) {
    auto cur_level = h->get_support(instr);

    if(cur_level != level && (cur_level | level == cur_level)) {
      best_handler = h;
      level = cur_level;
    }
  }

  /* If we didn't find a handler, give an error */
  if (!best_handler) {
    stringstream ss;
    ss << "Unsupported instruction: " << instr;
    throw VALIDATOR_ERROR(ss.str());
  }

  /* Otherwise, run the handler and check for errors */
  best_handler->build_circuit(instr, state);

  if(best_handler->has_error()) {
    stringstream ss;
    ss << "Error building circuit for: " << instr << ".";
    ss << "Handler says: " << best_handler->error();
    throw VALIDATOR_ERROR(ss.str());
  }

  /*
  cout << endl;
  cout << "====== STATE AFTER INSTRUCTION " << instr << endl;
  for(size_t i = 0; i < r64s.size(); ++i) {
    cout << r64s[i] << ": " << state[r64s[i]] << endl;
  }
  */
}

SymState Validator::build_circuit(const Cfg& cfg, const SymState& start) const {

  SymState state = start;
  Code code = cfg.get_code();

  for(size_t i = 0; i < code.size(); ++i) {

    if(code[i].is_any_return())
      break;

    build_circuit(code[i], state);
  }

  return state;
}


bool Validator::validate(const Cfg& target, const Cfg& rewrite, CpuState& counter_example)
{
#ifdef DEBUG_VALIDATOR
  std::cout << "Enter the dragon!" << std::endl;
#endif
  // State
  has_error_ = false;

  try {

    // Generate constraints
    vector<SymBool> constraints;
    generate_constraints(target, rewrite, constraints);

    // Run the solver
    bool is_sat = solver_.is_sat(constraints);

    if(solver_.has_error())
      throw VALIDATOR_ERROR("solver: " + solver_.get_error());

    // Do we have a counterexample?
    if (is_sat && solver_.has_model()) {

      counterexample_valid_ = true;
      counterexample_ =      model_to_cpustate("_");
      target_final_state_  = model_to_cpustate("_1_FINAL");
      rewrite_final_state_ = model_to_cpustate("_2_FINAL");

      counter_example = counterexample_;

    } else {
      counterexample_valid_ = false;
    }

    return !is_sat;

  } catch(validator_error e) {

    has_error_ = true;
    error_message_ = e.get_message();
    error_file_ = e.get_file();
    error_line_ = e.get_line();
    counterexample_valid_ = false;

    return 0;
  }
}

