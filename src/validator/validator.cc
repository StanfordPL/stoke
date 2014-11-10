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

#include "src/args/reg_set.h"
#include "src/ext/z3/include/z3++.h"

#include "src/symstate/bitvector.h"

#include "src/validator/c_interface.h"
#include "src/validator/legacy_handlers.h"
#include "src/validator/validator.h"

using namespace z3;
using namespace std;
using namespace stoke;


/* Takes an eflag and returns the name of the
   coresponding variable, if we support it. */
bool flagToString(Eflags eflag, string& elem) {

  /* Read the flag into a string */
  stringstream tmp;
  RegSetWriter rsw;
  rsw(tmp, RegSet::empty() + eflag);
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


Expr regExpr(VC& vc, string s, unsigned int size)
{
	return vc_varExpr(vc, s.c_str(), vc_bvType(vc, size));	
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
		case V_AF: return "AFLAG";
		case V_CF: return "CFLAG";
		case V_OF: return "OFLAG";
		case V_PF: return "PFLAG";						
		case V_SF: return "SFLAG";
		case V_ZF: return "ZFLAG";
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

//Generate a constraint saying lhs==rhs
Expr EqExpr(VC& vc, Expr lhs, Expr rhs)
{
	Expr retval = vc_eqExpr(vc, lhs, rhs);
	return retval;
}
set<SS_Id> keys(map<SS_Id, unsigned int> dict)
				{
	set<SS_Id> retval;
	map<SS_Id, unsigned int>::iterator iter;
	for( iter = dict.begin(); iter != dict.end(); iter++ )
		retval.insert(iter->first);
	return retval;
				}


set<SS_Id> modSet(PAIR_INFO state_info, const V_Node& n, string codenum, bool include_undef=true)
{
	set<SS_Id> retval;
	const x64asm::Instruction& instr = n.getInstr();
	
	if(instr.is_explicit_memory_dereference())
	{
    throw VALIDATOR_ERROR("memory not handled");
	}
	
	
	x64asm::RegSet modsetreg = instr.maybe_write_set();
	
	for(size_t i=0;i<x64asm::rls.size();i++)
	  if(modsetreg.contains(((x64asm::Rl)x64asm::rls[i])))
	    retval.insert(rls[i]);  
	    
	for(size_t i=0;i<x64asm::rbs.size();i++)
	  if(modsetreg.contains(((x64asm::Rb)x64asm::rbs[i])))
	    retval.insert(rbs[i]);  

	for(size_t i=0;i<x64asm::xmms.size();i++)
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
    RegSetWriter rsw;
    stringstream tmp;
    rsw(tmp, rs - supported);

    string message = 
      string("Validator only supporgs gps (excluding %ah-%dh), xmms and eflags COPSZ in live out.") +
      string("  Not supported: ") + tmp.str();
                   
    throw VALIDATOR_ERROR(message);
    return false;
  }
  return true;
}



//Constrain the initial registers in which code_num starts (RAX_1_0 == RAX) 
void addStartConstraint(VC& vc, string code_num, PAIR_INFO state_info, vector<Expr>& constraints, x64asm::RegSet def_ins)
{
	map<SS_Id, unsigned int>::iterator i;
	Bijection<string> bij = state_info.first;
	map<SS_Id, unsigned int> sizes = state_info.second;

  if(!regset_is_supported(def_ins))
    throw VALIDATOR_ERROR("RegSet not supported");


  /* Add constraints for the general purpose registers */
	for(size_t i=0;i<x64asm::r64s.size();i++)
	{
    int bitwidth;
	  auto op = x64asm::r64s[i];

    /* See if we have the 64, 32, 16, or 8 bit register in the set */
    if (def_ins.contains(op)) {
      bitwidth = 64;
    } else if (def_ins.contains(x64asm::r32s[i])) {
      bitwidth = 32;
    } else if (def_ins.contains(x64asm::r16s[i])) {
      bitwidth = 16;
    } else {
      // Need to think about the sub-16 bit situation carefully.
      if (i < 4) {

        // case for ah, bc, ch, dh
        if(def_ins.contains(x64asm::rhs[i]))
          throw VALIDATOR_ERROR("%ah, %bl, %ch, %dh not supported live-out yet.");

        // case for al, bl, cl, dl
        if(def_ins.contains(x64asm::rls[i]))
          bitwidth = 8;
        else
          continue;

      } else if (def_ins.contains(x64asm::rbs[i-4])) {
          //case for bpl, sil, dil, spl, r8b, r9b, ...
          bitwidth = 8;
      } else {
        // The register is not here, in any form.
        continue;
      }
    } 
     
    /* Get the string representation of this register */
    string elem = bij.toVal(op); 

    /* Build constraints asserting initial equality */
    Expr common = regExpr(vc, elem, V_UNITSIZE);
    Expr version0 = vc_bvExtract(vc, regExpr(vc, (elem + "_" + code_num + "_0"), V_UNITSIZE), bitwidth - 1, 0);
    Expr E_eq_final = EqExpr(vc, common, version0);
#ifdef DEBUG_VALIDATOR
    cout << "Printing query"; vc_printExpr(vc, E_eq_final); cout << endl ;
#endif

    /* Add the constraints. */
    constraints.push_back(E_eq_final);

	}

	for(size_t i=0;i<x64asm::xmms.size();i++)
	{
	  auto op = x64asm::xmms[i];
	  if(def_ins.contains(op))
	  {
			string elem = bij.toVal(XMM_BEG+op); 
			Expr E_state_elem_1 = regExpr(vc, elem, V_XMMUNIT);
			Expr E_state_elem_2 = regExpr(vc, (elem + "_" + code_num + "_0"),V_XMMUNIT);
			Expr E_eq_final = EqExpr(vc, E_state_elem_1, E_state_elem_2);
#ifdef DEBUG_VALIDATOR
			cout << "Printing query"; vc_printExpr(vc, E_eq_final); cout << endl ;
#endif
			constraints.push_back(E_eq_final);

	  }
	}

  for(size_t i = 0; i < eflags.size(); i++) {

    auto op = x64asm::eflags[i];
    if(def_ins.contains(op))
    {
      /* Get the name of this flag */
      string elem;
      
      if(!flagToString(eflags[i], elem))
        VALIDATOR_ERROR("The only eflags we support are ACOPSZ");


      /* Construct the constraint */
      Expr E_state_elem_1 = vc_varExpr(vc, (elem + "_" + code_num + "_0").c_str(), vc_boolType(vc));
      Expr E_state_elem_2 = vc_varExpr(vc, elem.c_str(), vc_boolType(vc));
      Expr E_eq_final = EqExpr(vc, E_state_elem_1, E_state_elem_2);
#ifdef DEBUG_VALIDATOR
			cout << "Printing query"; vc_printExpr(vc, E_eq_final); cout << endl ;
#endif
			constraints.push_back(E_eq_final);

    }
  }


}

//Constrain the final output registers to a known name (RAX_codenum_versionnumber == RAX_codenum_Final) 
Expr getFinalConstraint(VC& vc, const set<SS_Id>& state_elems, const VersionNumber& Vn, const map<SS_Id, unsigned int>& sizes_, string code_num, PAIR_INFO state_info)
{
	map<SS_Id, unsigned int> sizes = sizes_;
	Expr E_pre(*vc), E_post(*vc), E_flag(*vc);
	Expr retval = vc_trueExpr(vc);
	set<SS_Id>::iterator iter;
	::Type bool_type = vc_boolType(vc);
	for(iter = state_elems.begin(); iter != state_elems.end(); iter++)
	{	  
		SS_Id temp = *iter;
		string id_str = idToStr(temp,state_info);
		switch(sizes[temp])
		{
		case V_REGSIZE:
			E_pre = regExpr(vc, id_str + "_" + code_num + "_" + itoa(Vn.get(temp)),V_UNITSIZE);
			E_post = regExpr(vc, id_str + "_" + code_num + "_" + V_FSTATE, V_UNITSIZE);
			retval = vc_andExpr(vc, retval, EqExpr(vc, E_pre, E_post));
			break;
		case V_FLAGSIZE:
			E_flag = vc_iffExpr(vc,
					vc_varExpr(vc, (id_str+"_"+code_num+"_"+itoa(Vn.get(temp))).c_str(), bool_type),
					vc_varExpr(vc, (id_str+"_"+code_num+"_"+V_FSTATE).c_str(), bool_type));
			retval = vc_andExpr(vc, retval, E_flag);
			break;
		case V_XMMSIZE:
			E_pre = regExpr(vc, id_str + "_" + code_num + "_" + itoa(Vn.get(temp)),V_XMMUNIT);
			E_post = regExpr(vc, id_str + "_" + code_num + "_" + V_FSTATE, V_XMMUNIT);
			retval = vc_andExpr(vc, retval, EqExpr(vc, E_pre, E_post));
			break;
		default:  
      throw VALIDATOR_ERROR("Unexpected size " + to_string(sizes[temp]));
		}
	}
	

	return retval;
}

//Walk over the code and generate constraint for every instruction
VersionNumber C2C(VC& vc, Ebb& ebb, PAIR_INFO state_info, vector<Expr>& constraints, string code_num)
{
	Bijection<string> bij = state_info.first;
	map<SS_Id, unsigned int> sizes = state_info.second;
	set<SS_Id> state_elems = keys(sizes);
	VersionNumber Vn;
	Vn.Init(state_elems, 0);
	unsigned int i = 0;
	unsigned int j = 0;
	//unsigned int unused_memory = 0;
	for(i = 0; i< ebb.size(); i++, j++ )
	{
		V_Node& n = ebb.getNode(i);
		set<SS_Id> modset = modSet(state_info, n, code_num);
		set<SS_Id> X_mod = modset;
		VersionNumber Vnold(Vn); 
		Vn.Increment(X_mod, 1);
		VersionNumber Vnprime(Vn);
		ostringstream oss;
		oss <<  n.getInstr();

		n.setVN(Vnprime);
#ifdef DEBUG_VALIDATOR
		cout << "Creating constraint from instruction " << oss.str() <<"\n";
#endif
		instrnToConstraint(state_info, vc, n, Vnold, Vnprime, constraints, code_num, i, X_mod);		
		if(n.succSize() != 1)
		{
			Expr E_final_constraint = getFinalConstraint(vc, state_elems, Vnprime, state_info.second, code_num, state_info);
#ifdef DEBUG_VALIDATOR
			cout << "Adding final constraint\n";
			vc_printExpr(vc, E_final_constraint);
			cout << "\n\n";
#endif
			constraints.push_back(E_final_constraint);
		}
#ifdef DEBUG_VALIDATOR
		cout << "\n\nNode " << i << " ends\n\n";
#endif

	}
	return Vn;
	
}

//Get query constraint for registers and memory. The query constraints are missing for condition registers as they are not live out.
void getQueryConstraint(VC& vc, PAIR_INFO state_info, vector<Expr>& query, x64asm::RegSet liveout)
{
	
	//map<SS_Id, unsigned int>::iterator i;
	Bijection<string> bij = state_info.first;
	map<SS_Id, unsigned int> sizes = state_info.second;
	Expr retval = vc_trueExpr(vc);

  if(!regset_is_supported(liveout))
    throw VALIDATOR_ERROR("RegSet not supported");

  /* Add constraints for the general purpose registers */
	for(size_t i=0;i<x64asm::r64s.size();i++)
	{
    int bitwidth;
	  auto op = x64asm::r64s[i];

    /* See if we have the 64, 32, 16, or 8 bit register in the set */
    if (liveout.contains(op)) {
      bitwidth = 64;
    } else if (liveout.contains(x64asm::r32s[i])) {
      bitwidth = 32;
    } else if (liveout.contains(x64asm::r16s[i])) {
      bitwidth = 16;
    } else {
      // Need to think about the sub-16 bit situation carefully.
      if (i < 4) {

        // case for ah, bc, ch, dh
        if(liveout.contains(x64asm::rhs[i]))
          throw VALIDATOR_ERROR("%ah, %bl, %ch, %dh not supported live-out yet.");

        // case for al, bl, cl, dl
        if(liveout.contains(x64asm::rls[i]))
          bitwidth = 8;
        else
          continue;

      } else if (liveout.contains(x64asm::rbs[i-4])) {
          //case for bpl, sil, dil, spl, r8b, r9b, ...
          bitwidth = 8;
      } else {
        // The register is not here, in any form.
        continue;
      }
    } 
     
    /* Get the string representation of this register */
    string elem = bij.toVal(op); 

    /* Build constraints asserting final equality */
    Expr E_state_elem_1 = vc_bvExtract(vc, regExpr(vc, (elem + "_1_"+ V_FSTATE),V_UNITSIZE), bitwidth - 1, 0);
    Expr E_state_elem_2 = vc_bvExtract(vc, regExpr(vc, (elem + "_2_"+ V_FSTATE),V_UNITSIZE), bitwidth - 1, 0);
    Expr E_eq_final = EqExpr(vc, E_state_elem_1, E_state_elem_2);
#ifdef DEBUG_VALIDATOR
    cout << "Printing query"; vc_printExpr(vc, E_eq_final); cout << endl ;
#endif

    /* Add the constraints. */
    query.push_back(E_eq_final);

	}
	for(size_t i=0;i<x64asm::xmms.size();i++)
	{
	  auto op = x64asm::xmms[i];
	  if(liveout.contains(op))
	  {
			string elem = bij.toVal(XMM_BEG+op); 
			Expr E_state_elem_1 = regExpr(vc, (elem + "_1_"+ V_FSTATE),V_XMMUNIT);
			Expr E_state_elem_2 = regExpr(vc, (elem + "_2_"+ V_FSTATE),V_XMMUNIT);
			Expr E_eq_final = EqExpr(vc, E_state_elem_1, E_state_elem_2);
#ifdef DEBUG_VALIDATOR
			cout << "Printing query"; vc_printExpr(vc, E_eq_final); cout << endl ;
#endif
			query.push_back(E_eq_final);

	  }
	}

  for(size_t i = 0; i < eflags.size(); i++) {

    auto op = x64asm::eflags[i];
    if(liveout.contains(op))
    {
      /* Get the name of this flag */
      string elem;
      
      if(!flagToString(eflags[i], elem))
        VALIDATOR_ERROR("The only eflags we support are ACOPSZ");


      /* Construct the constraint */
      Expr E_state_elem_1 = vc_varExpr(vc, (elem + "_1_" + V_FSTATE).c_str(), vc_boolType(vc));
      Expr E_state_elem_2 = vc_varExpr(vc, (elem + "_2_" + V_FSTATE).c_str(), vc_boolType(vc));
      Expr E_eq_final = EqExpr(vc, E_state_elem_1, E_state_elem_2);
#ifdef DEBUG_VALIDATOR
			cout << "Printing query"; vc_printExpr(vc, E_eq_final); cout << endl ;
#endif
			query.push_back(E_eq_final);

    }
  }

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


vector<Expr> Validator::generate_constraints(const stoke::Cfg& f1, const stoke::Cfg& f2, vector<Expr>& constraints)
{

	//Get target and rewrite in my data-structure. Its a path with instructions at nodes.
	//the size is NOT including the return
	Ebb e1 = toEbb(vc_, f1, 10/*7*//*6*//*11*//*9*/, "1");
	Ebb e2 = toEbb(vc_, f2, 4/*4*//*4*//*6*//*3*/, "2");
	
	//Add start constraints for target i.e. codenum="1"
	addStartConstraint(vc_, "1", state_info_, constraints, f1.def_ins());
	addStartConstraint(vc_, "2", state_info_, constraints, f2.def_ins());

	//Convert code 1 i.e. target to constraints
	auto Vn1=C2C(vc_, e1, state_info_, constraints, "1");

	//ditto for code 2. Note we use the same mul as target.
	auto Vn2 = C2C(vc_, e2, state_info_, constraints, "2");

	vector<Expr> query;
	getQueryConstraint(vc_, state_info_, query, f1.live_outs());

  return query;
}


/* Returns the conjunction of several SymBools, starting with index */
SymBool conjunct(vector<SymBool*>& query, size_t index) {

  if(query.size() - index == 0) {
    return SymBool::_true();
  } else if(query.size() - index == 1) {
    return *query[index];
  } else {
    return (*query[index] & conjunct(query, index+1));
  }
}

/* Returns the negation of the conjunction of several SymBools */
SymBool conjunct_and_negate(vector<SymBool*>& query) {
  return !conjunct(query, 0);
}

/* Z3 to SymBool */
vector<SymBool*> z3_to_sym_bool(vector<Expr>& exprs) {

  vector<SymBool*> result;
  for(auto& it : exprs) {
    auto sb = SymBool::z3(it);
    result.push_back(&sb);
  }

  return result;
}

bool Validator::validate(const Cfg& target, const Cfg& rewrite, CpuState& counter_example)
{
#ifdef DEBUG_VALIDATOR
  std::cout << "Enter the dragon!" << std::endl;
#endif
  // State
  has_error_ = false;

  try {

    // Currently we need to use the same Z3 context for the legacy handlers and
    // for the symbolic state.  This means some ugly stuff has to happen...
    // basically, for now we're limitted to using Z3Solver.  That is, until we
    // rewrite everything.
    vc_ = (dynamic_cast<Z3Solver&>(solver_)).get_context();

    // Setup some necessary variables.
    state_info_ = InitStateMapping();

    // Generate constraints
    vector<Expr> constraints;
    vector<Expr> query = generate_constraints(target, rewrite, constraints);

    vector<SymBool*> sym_constraints = z3_to_sym_bool(constraints);
    vector<SymBool*> sym_query = z3_to_sym_bool(query);
    auto final_query = conjunct_and_negate(sym_query);

    sym_constraints.push_back(&final_query);

    // Run the solver
    bool is_sat = solver_.is_sat(sym_constraints);

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

