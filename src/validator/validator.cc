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

#include "src/validator/c_interface.h"
#include "src/validator/legacy_handlers.h"
#include "src/validator/validator.h"

using namespace std;
using namespace stoke;


/* Takes an eflag and returns the name of the
   coresponding variable, if we support it. */
bool flagToString(Eflags eflag, string& elem) {

  /* Read the flag into a string */
  stringstream tmp;
  tmp << RegSet::empty() + eflag;
  string the_flag = tmp.str();

  /* Extract the letter corresponding to the flag. */
  char letter = the_flag.c_str()[3];
  if ('a' <= letter && letter <= 'z') {
    letter += ('A' - 'a');
  }

  if(the_flag.c_str()[4] != 'f') {
    return false;
  }


  if(the_flag.c_str()[5] != ' ') {
    return false;
  }


  /* Check if we handle this flag */
  if (letter != 'A' && letter != 'C' && letter != 'O' &&
      letter != 'P' && letter != 'S' && letter != 'Z')
    return false;

  /* Build the validator's name for this flag. */
  elem = "_FLAG";
  elem[0] = letter;
  return true;

}


Expr regExpr(string s, unsigned int size)
{
  return SymBitVector::var(size, s);
}

/* This produces a CpuState (that is, a stoke-readable
   recording of all the variables).  This function can be used to extract a
   counterexample (with name_suffix == ""), or to extract the expected output
   of a code after executing on the counterexample (with name_suffix ==
   "_1_Final" or "_2_Final") */
stoke::CpuState Validator::model_to_cpustate(string name_suffix) {

  map<SS_Id, unsigned int>::iterator iter;
  Bijection<string> bij = state_info_.first;
  map<SS_Id, unsigned int> sizes = state_info_.second;

  CpuState cs;

  for(auto iter = sizes.begin(); iter != sizes.end(); iter++) {

    string regname = bij.toVal(iter->first) + name_suffix;

    // Handle EFLAGS
    if (iter->second == V_FLAGSIZE) {

      bool value = solver_.get_model_bool(regname);
      //TODO: check for error in retrieving the bool.

      /* Figure out which flag this is.  A little slow, but it works. */
      for (size_t i = 0; i < eflags.size(); i++) {
        string tmp;
        if(flagToString(eflags[i], tmp)) {
          if (tmp + name_suffix == regname) {
            //set the counterexample
#ifdef DEBUG_VALIDATOR
            cout << "Setting " << tmp << " i.e. #" << eflags[i].index() << " to " << value << endl;
#endif
            cs.rf.set(eflags[i].index(), value);
          }
        }
      }
    }

    // GP Registers
    if (iter->second == V_REGSIZE) {
      cs.gp[iter->first] = solver_.get_model_bv(regname, 1);
      //TODO: check for error
    }

    // SSE Registers
    if (iter->second == V_XMMSIZE) {
      cpputil::BitVector xmm = solver_.get_model_bv(regname, 2);
      //TODO: check for error

      // need to extend the result from xmm register to ymm.
      cpputil::BitVector ymm = cpputil::BitVector(256);
      for(size_t i = 0; i < 2; ++i)
        ymm.get_fixed_quad(i) = xmm.get_fixed_quad(i);
      for(size_t i = 2; i < 4; ++i)
        ymm.get_fixed_quad(i) = 0;

      cs.sse[iter->first - XMM_BEG] = ymm;
    }
  }

  return cs;
}


string idToStr(SS_Id n, PAIR_INFO I)
{

  if(n < FLAG_BEG)
  {
    return I.first.toVal(n);
  }
  else if(n < MEM_BEG)
  {
    switch(n)
    {
    case V_AF:
      return "AFLAG";
    case V_CF:
      return "CFLAG";
    case V_OF:
      return "OFLAG";
    case V_PF:
      return "PFLAG";
    case V_SF:
      return "SFLAG";
    case V_ZF:
      return "ZFLAG";
    default:
      throw VALIDATOR_ERROR("Unexpected flag.");
    }

  }
  else
  {
    return I.first.toVal(n);
  }
  return "";
}

set<SS_Id> keys(map<SS_Id, unsigned int> dict)
{
  set<SS_Id> retval;
  map<SS_Id, unsigned int>::iterator iter;
  for( iter = dict.begin(); iter != dict.end(); iter++ )
    retval.insert(iter->first);
  return retval;
}


set<SS_Id> modSet(PAIR_INFO state_info, const Instruction instr, string codenum, bool include_undef=true)
{
  set<SS_Id> retval;

  if(instr.is_explicit_memory_dereference())
  {
    throw VALIDATOR_ERROR("memory not handled");
  }


  x64asm::RegSet modsetreg = instr.maybe_write_set();

  for(size_t i=0; i<x64asm::rls.size(); i++)
    if(modsetreg.contains(((x64asm::Rl)x64asm::rls[i])))
      retval.insert(rls[i]);

  for(size_t i=0; i<x64asm::rbs.size(); i++)
    if(modsetreg.contains(((x64asm::Rb)x64asm::rbs[i])))
      retval.insert(rbs[i]);

  for(size_t i=0; i<x64asm::xmms.size(); i++)
    if(modsetreg.contains(((x64asm::Xmm)x64asm::xmms[i])))
      retval.insert(i+XMM_BEG);

  if(modsetreg.contains(x64asm::eflags_cf))
    retval.insert(V_CF);
  if(modsetreg.contains(x64asm::eflags_of))
    retval.insert(V_OF);
  if(modsetreg.contains(x64asm::eflags_sf))
    retval.insert(V_SF);
  if(modsetreg.contains(x64asm::eflags_zf))
    retval.insert(V_ZF);
  if(modsetreg.contains(x64asm::eflags_pf))
    retval.insert(V_PF);
  if(modsetreg.contains(x64asm::eflags_af))
    retval.insert(V_AF);


  if(include_undef)
  {
    x64asm::RegSet flagsetreg = instr.maybe_undef_set();
    if(flagsetreg.contains(x64asm::eflags_cf))
      retval.insert(V_CF);
    if(flagsetreg.contains(x64asm::eflags_of))
      retval.insert(V_OF);
    if(flagsetreg.contains(x64asm::eflags_sf))
      retval.insert(V_SF);
    if(flagsetreg.contains(x64asm::eflags_zf))
      retval.insert(V_ZF);
    if(flagsetreg.contains(x64asm::eflags_pf))
      retval.insert(V_PF);
    if(flagsetreg.contains(x64asm::eflags_af))
      retval.insert(V_AF);



  }
#ifdef DEBUG_VALIDATOR
  cout << "Modset is: ";
  for(set<SS_Id>::iterator l=retval.begin(); l!=retval.end(); l++)
    cout << idToStr(*l,state_info) << " ";
  cout << endl ;
#endif
  return retval;
}


bool regset_is_supported(x64asm::RegSet rs) {

  /* Check to make sure all liveout are supported. */
  /* Right now we support gps, xmms, ACOPSZ eflags */
  RegSet supported = RegSet::empty() +
                     eflags_cf + eflags_of +
                     eflags_pf + eflags_sf + eflags_zf;

  // We don't want to add rhs, so we can't just use all_gps()
  for(size_t i = 0; i < x64asm::r64s.size(); i++) {
    supported += r64s[i];
    supported += r32s[i];
    supported += r16s[i];
    if ( i < 4 ) {
      supported += rls[i];
    } else {
      supported += rbs[i - 4];
    }
  }

  // We don't want to add ymms, so don't use all_xmms()
  for(size_t i = 0; i < xmms.size(); i++) {
    supported += xmms[i];
  }

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







bool Validator::is_supported(Opcode o) {
  // Use autogenerated lookup table.
  // Honestly, it would be better to use an array.
  switch(o) {
#include "supported.switch"
  }

  // If we couldn't find it above, then we definitely don't support it.
  return false;
}

bool Validator::is_supported(Instruction i) {

  return is_supported(i.get_opcode()) &&
         !i.is_memory_dereference();
}


void Validator::generate_constraints(const stoke::Cfg& f1, const stoke::Cfg& f2, vector<SymBool>& constraints) const {

  // Check to make sure def-ins/live-outs agree
  if (f1.def_ins() != f2.def_ins()) {
    throw VALIDATOR_ERROR("Def-ins of the two CFGs differ");
  }
  if (f1.live_outs() != f2.live_outs()) {
    throw VALIDATOR_ERROR("Live-outs of the two CFGs differ");
  }

  // Create a starting symbolic state
  SymState first_init("INIT_1");
  SymState second_init("INIT_2");

  // Assert equality of the starting states
  for(auto it : first_init.equality_constraints(second_init, f1.def_ins()))
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

}

SymState Validator::build_circuit(const Cfg& cfg, const SymState& start) const {

  SymState state = start;
  Code code = cfg.get_code();

  for(size_t i = 0; i < code.size(); ++i) {

    /* For now, we don't handle any control flow */
    if(code[i].is_any_jump() || code[i].is_any_call()) {
      stringstream ss;
      ss << "Control flow unsupported: " << code[i];
      throw VALIDATOR_ERROR(ss.str());
    }

    /* If it's a return statement, then we're done. */
    if(code[i].is_any_return())
      break;

    /* Find the best handler for this instruction */
    Handler* best_handler = NULL;
    auto level = Handler::SupportLevel::NONE;
    for(auto h : handlers_) {
      auto cur_level = h->get_support(code[i]);

      if(cur_level != level && (cur_level | level == cur_level)) {
        best_handler = h;
        level = cur_level;
      }
    }

    /* If we didn't find a handler, give an error */
    if (!best_handler) {
      stringstream ss;
      ss << "Unsupported instruction: " << code[i];
      throw VALIDATOR_ERROR(ss.str());
    }

    /* Otherwise, run the handler and check for errors */
    best_handler->build_circuit(code[i], state);

    if(best_handler->has_error()) {
      stringstream ss;
      ss << "Error building circuit for: " << code[i] << ".";
      ss << "Handler says: " << best_handler->error();
      throw VALIDATOR_ERROR(ss.str());
    }

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

    // Setup some necessary variables.
    state_info_ = InitStateMapping();

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
      counterexample_ =      model_to_cpustate("");
      target_final_state_  = model_to_cpustate("_1_Final");
      rewrite_final_state_ = model_to_cpustate("_2_Final");

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

