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

#include "src/validator/aliasing.h"
#include "src/validator/c_interface.h"
#include "src/validator/extras.h"
#include "src/validator/handlers.h"
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
  
  /* Check if we handle this flag */
  if (letter != 'A' && letter != 'C' && letter != 'O' &&
      letter != 'P' && letter != 'S' && letter != 'Z')
    return false;

  /* Build the validator's name for this flag. */
  elem = "_FLAG";
  elem[0] = letter;
  return true;

}


Meminfo MemoryData::deref(uint line_no, bool is_target) const
{
#ifdef DEBUG_VALIDATOR
  cout << "Dereferencing line " << line_no << " of " << (is_target ? "target" : "rewrite") << endl;
#endif
  string retval = "";
  for(const auto& info : _minfo)
  {
    if(line_no == info._line_no && is_target == info._is_target_info)
      return info;    
  }
  throw VALIDATOR_ERROR("error from validator assert");
}



std::string MemoryData::name_deref(uint line_no, bool is_target) const
{
  string retval = "";
  for(const auto& info : _minfo)
  {
    if(line_no == info._line_no && is_target == info._is_target_info)
      return info.getName();
    
  }
  throw VALIDATOR_ERROR("error from validator assert");
  return retval;
}


uint64_t parentRegister(uint64_t t){return t;}

Expr regExpr(VC& vc, string s, unsigned int size)
{
	return vc_varExpr(vc, s.c_str(), vc_bvType(vc, size));	
}

//Initialize the counter-example trace
void InitCex(VC& vc, model& wcex, PAIR_INFO state_info,stoke::CpuState& counter_example, bool& counterexample_valid)
{
  if(wcex.num_funcs() > 0)
    counterexample_valid = false;
  else
    counterexample_valid = true;

#ifdef DEBUG_VALIDATOR
  cout << "Printing Counterexample " << endl;
#endif
	string regname;
	map<SS_Id, unsigned int>::iterator iter;
	Bijection<string> bij = state_info.first;
	map<SS_Id, unsigned int> sizes = state_info.second;

	//Print initial values of registers, final values of registers by code 1, final values of registers by code 2
	for(iter = sizes.begin(); iter != sizes.end(); iter++)
	{
		if(iter->second == V_FLAGSIZE )
			continue;
		regname = bij.toVal(iter->first);
#ifdef DEBUG_VALIDATOR
		cout << regname << ":" << endl;
#endif
		Expr REG1INIT = vc_bvExtract(vc,regExpr(vc, (regname+"_1_0"),iter->second*V_UNITSIZE),31,0);
		Expr REG2INIT = vc_bvExtract(vc,regExpr(vc, (regname+"_2_0"),iter->second*V_UNITSIZE),31,0);
		Expr REG1FINAL = vc_bvExtract(vc,regExpr(vc, (regname+"_1_Final"),iter->second*V_UNITSIZE),31,0);
		Expr REG2FINAL = vc_bvExtract(vc,regExpr(vc, (regname+"_2_Final"),iter->second*V_UNITSIZE),31,0);
		Expr vali1 = wcex.eval(REG1INIT,true);
		Expr vali2 = wcex.eval(REG2INIT,true);
		Expr val1 = wcex.eval( REG1FINAL,true);
		Expr val2 = wcex.eval( REG2FINAL,true);
#ifdef DEBUG_VALIDATOR
		vc_printExpr(vc, vali1);
    cout << "\t"; vc_printExpr(vc, vali2); 
    cout << "\n"; vc_printExpr(vc, val1);
    cout << "\t"; vc_printExpr(vc, val2); 
    cout << endl << endl;
#endif
	}

	for(iter = sizes.begin(); iter != sizes.end(); iter++)
	{
		regname = bij.toVal(iter->first);
    if (iter->second == V_FLAGSIZE) {

      /* This is the boolean variable corresponding to the flag */
			Expr flag  = vc_varExpr(vc, regname.c_str(),  vc_boolType(vc));

      /* Lookup from the model */
      Expr e = wcex.eval(to_expr(*vc, flag));
      int n = Z3_get_bool_value(*vc, e);
      bool value;

      if (n == 1) {
        value = true;
      } else if (n == -1) {
        value = false;
      } else {
        throw VALIDATOR_ERROR("Z3 returned invalid boolean value for ceg");
      }

      /* Figure out which flag this is.  A little slow, but it works. */
      for (size_t i = 0; i < eflags.size(); i++) {
        string tmp;
        if(flagToString(eflags[i], tmp)) {
          if (tmp == regname) {
            //set the counterexample
            cout << "Setting " << tmp << " i.e. #" << i << " to " << value << endl;
            counter_example.rf.set(eflags[i].index(), value);
          }
        }
      }
    }
    if (iter->second == V_REGSIZE) {
      long long int val;
		  Expr REG1INIT = regExpr(vc, regname,V_UNITSIZE);
      Z3_get_numeral_int64(*vc,wcex.eval(to_expr(*vc, Z3_mk_bv2int(*vc, REG1INIT, true))), &val); 	
#ifdef DEBUG_VALIDATOR
		  cout << regname << " is expr " << REG1INIT;
      cout << " with value " << val << endl; 
#endif
      counter_example.gp[iter->first].get_fixed_quad(0) = val;

    } else if (iter->second == V_XMMSIZE) {

      // Get the expression for this register
      Expr xmm_reg = regExpr(vc, regname, 128);

      // Get the low and high quadwords
      Expr low = vc_bvExtract(vc, xmm_reg, 63, 0);
      Expr high = vc_bvExtract(vc, xmm_reg, 127, 64);

      // Convert to quadwords
      long long int low_n;
      long long int high_n;
      Z3_get_numeral_int64(*vc, wcex.eval(to_expr(*vc, Z3_mk_bv2int(*vc, low, true))), &low_n);
      Z3_get_numeral_int64(*vc, wcex.eval(to_expr(*vc, Z3_mk_bv2int(*vc, high, true))), &high_n);
      
      // Place into counterexample
      counter_example.sse[iter->first - XMM_BEG].get_fixed_quad(1) = high_n;
      counter_example.sse[iter->first - XMM_BEG].get_fixed_quad(0) = low_n;

    }
	}

}

bool z3Solve(VC& vc, vector<Expr>& constraints, vector<Expr>& query,PAIR_INFO state_info,stoke::CpuState& counter_example, bool& counterexample_valid)
{
  solver s(*vc);
  Expr full_expr = vc_trueExpr(vc);
  for(unsigned int i = 0; i < constraints.size(); i++)
	{
#ifdef DEBUG_VALIDATOR
		cout << "Asserting constraint:\n";
#endif
		vc_printExpr(vc, constraints[i]);
#ifdef DEBUG_VALIDATOR
		cout << endl;
#endif
		s.add(constraints[i]);
		full_expr = vc_andExpr(vc, full_expr,constraints[i]);
	}
	int result;
		{
#ifdef DEBUG_VALIDATOR
		  ofstream ofs;
		  ofs.open("debug.smt2");
		  ofs << "(set-logic UFBV)" << endl;
		  Z3_set_ast_print_mode(*vc,Z3_PRINT_SMTLIB2_COMPLIANT);
		  string str = Z3_benchmark_to_smtlib_string (*vc,"", "","","",0,0,full_expr);
		  ofs << str.erase(0,23);
		  ofs.close();
#endif
		}
	{
		//Construct a single query expression by taking conjunction of all queries.
		//For some programs, asking queries one at a time might be the way to go.
		Expr bigQueryExpr = vc_trueExpr(vc);
		for(unsigned int i = 0; i< query.size(); i++)
		{
#ifdef DEBUG_VALIDATOR
cout << "Conjoining for bigqueryexpr "; vc_printExpr(vc,query[i]); cout << endl;
#endif
			bigQueryExpr = vc_andExpr(vc, bigQueryExpr, query[i]);
		}
		full_expr = vc_andExpr(vc, full_expr, !bigQueryExpr);
		//Push, query Constraints=>bigQueryExpression?
		{
#ifdef DEBUG_VALIDATOR
		  ofstream ofs;
		  ofs.open("vc.smt2");
		  ofs << "(set-logic UFBV)" << endl;
		  Z3_set_ast_print_mode(*vc,Z3_PRINT_SMTLIB2_COMPLIANT);
		  ofs << ((string)Z3_benchmark_to_smtlib_string (*vc,"", "","","",0,0,full_expr)).erase(0,23);
		  ofs.close();
#endif
		}
#ifdef DEBUG_VALIDATOR
		cout << "Printing of SMT2 compliant benchmark complete" << endl;
#endif
#ifdef DEBUG_VALIDATOR
        cout << "query is "; vc_printExpr(vc, bigQueryExpr); cout << endl ;
#endif
		s.add(!bigQueryExpr);
		clock_t start = clock();
		auto z3_says = s.check();
    result = z3_says == unsat;
    if ( z3_says == unknown ) {
      throw VALIDATOR_ERROR("z3 gave up.");
    }
		clock_t end = clock();
		clock_t elapsed =  end -start;
#ifdef DEBUG_VALIDATOR
		cout << "time was" << elapsed <<" i.e. " << (elapsed)/(1.0*CLOCKS_PER_SEC) << " seconds\n";
#endif

#ifdef DEBUG_VALIDATOR
		cout << "Query executed! with result" << result << "\n";
#endif
		if( result == 0 )
		{
			model m=s.get_model();
			//If validation failed then obtain the counter-example. Gives some useless thing if multiplications are uninterpreted.
//#ifdef DEBUG_VALIDATOR
			cout << "Model is " << endl << m; 
//#endif
			InitCex(vc,m,state_info, counter_example, counterexample_valid);
		}
#ifdef DEBUG_VALIDATOR
		if(result == 1) { 
		  cerr << "Success" << endl ;
		}
#endif
	}


	return result==1;  
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
      throw VALIDATOR_ERROR("Unexpected flag, possibly AF");
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


set<SS_Id> modSet(PAIR_INFO state_info, const V_Node& n, MemoryData& mem, string codenum, bool include_undef=true)
{
	set<SS_Id> retval;
	const x64asm::Instruction& instr = n.getInstr();
	
	if(instr.derefs_mem())
	{
	  if(instr.maybe_write(instr.mem_index()))
	    retval.insert(state_info.first.valToId(mem.name_deref(n.getInsNo(),!codenum.compare("1"))));	  
	}
	
	
	x64asm::RegSet modsetreg = instr.maybe_write_set();
       // if(modsetreg.is_set(dx)) cout << "found dx " << endl;
	
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

	  
	}
#ifdef DEBUG_VALIDATOR
	cout << "Modset is: ";
	for(set<SS_Id>::iterator l=retval.begin(); l!=retval.end(); l++)
	  cout << idToStr(*l,state_info) << " ";
	cout << endl ;
#endif
	return retval;
}		
					
				
//Constrain the initial registers in which code_num starts (RAX_1_0 == RAX) 
void addStartConstraint(VC& vc, string code_num, PAIR_INFO state_info, vector<Expr>& constraints)
{
	map<SS_Id, unsigned int>::iterator i;
	Bijection<string> bij = state_info.first;
	map<SS_Id, unsigned int> sizes = state_info.second;


	for(i = sizes.begin(); i != sizes.end(); i++)
	{
		unsigned int bitwidth = i->second;
		if(bitwidth == V_REGSIZE )
		{
			string elem = bij.toVal(i->first); 
			Expr E_state_elem_common = regExpr(vc, elem, V_UNITSIZE);
			Expr E_state_elem_initial = regExpr(vc, (elem + "_" + code_num + "_0"), V_UNITSIZE);
			Expr E_eq_initial = EqExpr(vc, E_state_elem_common, E_state_elem_initial);
#ifdef DEBUG_VALIDATOR
			cout << "Register constraint is: " << endl << E_eq_initial << endl;
#endif
			constraints.push_back(E_eq_initial);
		}
		else if(bitwidth == V_FLAGSIZE)
		{
			string elem = bij.toVal(i->first);			
			Expr E_state_elem_common = vc_varExpr(vc, elem.c_str(), vc_boolType(vc));
			Expr E_state_elem_initial = vc_varExpr(vc, (elem + "_" + code_num + "_0").c_str(), vc_boolType(vc));
			Expr E_eq_initial = vc_iffExpr(vc, E_state_elem_common, E_state_elem_initial);
#ifdef DEBUG_VALIDATOR
			cout << "Flag constraint is: " << endl << E_eq_initial << endl;
#endif
			constraints.push_back(E_eq_initial);			
		}
		
		else if(bitwidth == V_XMMSIZE )
		{
			string elem = bij.toVal(i->first); 
			Expr E_state_elem_common = regExpr(vc, elem, V_XMMUNIT);
			Expr E_state_elem_initial = regExpr(vc, (elem + "_" + code_num + "_0"), V_XMMUNIT);
			Expr E_eq_initial =  EqExpr(vc, E_state_elem_common, E_state_elem_initial); 
#ifdef DEBUG_VALIDATOR
			cout << "XMM Register constraint is:" << endl << E_eq_initial << endl;
#endif
			constraints.push_back(E_eq_initial);
		}
		else 
      throw VALIDATOR_ERROR("Unexpected bitwidth for register");
	}
}

//Constrain the final output registers to a known name (RAX_codenum_versionnumber == RAX_codenum_Final) 
Expr getFinalConstraint(VC& vc, const set<SS_Id>& state_elems, const VersionNumber& Vn, const map<SS_Id, unsigned int>& sizes_, string code_num, MemoryData& mem, PAIR_INFO state_info)
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
VersionNumber C2C(VC& vc, Ebb& ebb, PAIR_INFO state_info, vector<Expr>& constraints, string code_num, MemoryData& mem)
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
		set<SS_Id> modset = modSet(state_info, n, mem, code_num);
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
		instrnToConstraint(mem, state_info, vc, n, Vnold, Vnprime, constraints, code_num, i, X_mod);		
		if(n.succSize() != 1)
		{
			Expr E_final_constraint = getFinalConstraint(vc, state_elems, Vnprime, state_info.second, code_num, mem,state_info);
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
void getQueryConstraint(VC& vc, PAIR_INFO state_info, vector<Expr>& query, MemoryData& mem, x64asm::RegSet liveout, bool mem_out)
{
	
	//map<SS_Id, unsigned int>::iterator i;
	Bijection<string> bij = state_info.first;
	map<SS_Id, unsigned int> sizes = state_info.second;
	Expr retval = vc_trueExpr(vc);

  /* Check to make sure all liveout are supported. */
  /* Right now we support gps, xmms, ACOPSZ eflags */
  RegSet supported = RegSet::empty() +
                     eflags_af + eflags_cf + eflags_of +
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
  if((supported & liveout) != liveout) {
    RegSetWriter rsw;
    stringstream tmp;
    rsw(tmp, liveout - supported);

    string message = 
      string("Validator only supporgs gps (excluding %ah-%dh), xmms and eflags ACOPSZ in live out.") +
      string("  Not supported: ") + tmp.str();
                   
    throw VALIDATOR_ERROR(message);
  }

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

  if(mem_out)
  {
    for(const auto& id : keys(sizes))
    {
      if(id>=MEM_BEG)
      {
        string elem = bij.toVal(id); 
        int size = sizes[id]*64;
        Expr E_state_elem_1 = regExpr(vc, (elem + "_1_"+ V_FSTATE),size);
        Expr E_state_elem_2 = regExpr(vc, (elem + "_2_"+ V_FSTATE),size);
        Expr E_eq_final = EqExpr(vc, E_state_elem_1, E_state_elem_2);
#ifdef DEBUG_VALIDATOR
        cout << "Printing query"; vc_printExpr(vc, E_eq_final); cout << endl ;
#endif
        query.push_back(E_eq_final);
      }
    }
  }

}


       
bool Validator::is_supported(Instruction i) {
  // Use autogenerated lookup table.
  // Honestly, it would be better to use an array.
  switch(i.get_opcode()) {
    #include "supported.switch"
  }

  // If we couldn't find it above, then we definitely don't support it.
  return false;
}


vector<Expr> Validator::generate_constraints(const stoke::Cfg& f1, const stoke::Cfg& f2, vector<Expr>& constraints)
{
	MemoryData mem;

	//Get target and rewrite in my data-structure. Its a path with instructions at nodes.
	//the size is NOT including the return
	Ebb e1 = toEbb(vc_, f1, 10/*7*//*6*//*11*//*9*/, "1");
	Ebb e2 = toEbb(vc_, f2, 4/*4*//*4*//*6*//*3*/, "2");
	
	//Add start constraints for target i.e. codenum="1"
	addStartConstraint(vc_, "1", state_info_, constraints);
	addStartConstraint(vc_, "2", state_info_, constraints);

	//Convert code 1 i.e. target to constraints
	auto Vn1=C2C(vc_, e1, state_info_, constraints, "1", mem);

	//ditto for code 2. Note we use the same mul as target.
	auto Vn2 = C2C(vc_, e2, state_info_, constraints, "2", mem);

	vector<Expr> query;
	getQueryConstraint(vc_, state_info_, query, mem, f1.live_outs(), mem_out_);

  return query;
}


bool Validator::validate(const Cfg& target, const Cfg& rewrite, CpuState& counter_example)
{
#ifdef DEBUG_VALIDATOR
  std::cout << "Enter the dragon!" << std::endl;
#endif

  // Setup some necessary variables.
  vc_ = vc_createValidityChecker();
  state_info_ = InitStateMapping();

  // Generate constraints
  vector<Expr> constraints;
  vector<Expr> query = generate_constraints(target, rewrite, constraints);

  // Specify timeout for Z3
  vc_->set("timeout", (int)timeout_);

  // Run the solver
	return z3Solve(vc_, constraints, query, state_info_, counter_example, counterexample_valid_);
}

