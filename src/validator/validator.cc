#include <ctime>
#include <fstream>
#include <string>
#include <iostream>
#include <sstream>
#include <vector>
#include <map>
#include <list>
#include <set>
#include <string>
#include <cassert>
#include <tr1/unordered_set>
#include <locale>
#include <initializer_list>
#include <unistd.h>

#include "src/ext/z3/include/z3++.h"

#include "src/validator/aliasing.h"
#include "src/validator/c_interface.h"
#include "src/validator/extras.h"
#include "src/validator/handlers.h"
#include "src/validator/validator.h"

using namespace z3;
using namespace std;
using namespace stoke;
static bool mem_out;

Validator::Validator(bool b)
{
  mem_out = b;
}

std::pair<stoke::Bijection<std::string>,std::map<SS_Id, unsigned int> > all_state_info;

Meminfo MemoryData::deref(uint line_no, bool is_target) const
{
  cout << "Dereferencing line " << line_no << " of " << (is_target ? "target" : "rewrite") << endl;
  string retval = "";
  for(const auto& info : _minfo)
  {
    if(line_no == info._line_no && is_target == info._is_target_info)
      return info;    
  }
  assert(false);
  return Meminfo();
}



std::string MemoryData::name_deref(uint line_no, bool is_target) const
{
  string retval = "";
  for(const auto& info : _minfo)
  {
    if(line_no == info._line_no && is_target == info._is_target_info)
      return info.getName();
    
  }
  assert(false);
  return retval;
}

void demorgan() {

    std::cout << "de-Morgan example\n";
    context* c = new context();

    expr x = c->bool_const("x");

    expr y = c->bool_const("y");

    expr conjecture = !(x && y) == (!x || !y);


    solver s(*c);

    // adding the negation of the conjecture as a constraint.

    s.add(!conjecture);

    std::cout << s << "\n";

    switch (s.check()) {

    case unsat:   std::cout << "de-Morgan is valid\n"; break;

    case sat:     std::cout << "de-Morgan is not valid\n"; break;

    case unknown: std::cout << "unknown\n"; break;

    }
}

uint64_t parentRegister(uint64_t t){return t;}

Expr regExpr(VC& vc, string s, unsigned int size)
{
	return vc_varExpr(vc, s.c_str(), vc_bvType(vc, size));	
}

//Initialize the counter-example trace
void InitCex(VC& vc, model& wcex, PAIR_INFO state_info,stoke::CpuState& counter_example)
{
  cout << "Printing Counterexample " << endl;
//	 ofstream ofs("CEX.txt");
	//vc_printCounterExample(vc);
	//WholeCounterExample wcex = vc_getWholeCounterExample(vc);
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
		cout << regname <<":" << endl;
		//ofs << regname <<" " ;
		Expr REG1INIT = vc_bvExtract(vc,regExpr(vc, (regname+"_1_0"),iter->second*V_UNITSIZE),31,0);
		Expr REG2INIT = vc_bvExtract(vc,regExpr(vc, (regname+"_2_0"),iter->second*V_UNITSIZE),31,0);
		Expr REG1FINAL = vc_bvExtract(vc,regExpr(vc, (regname+"_1_Final"),iter->second*V_UNITSIZE),31,0);
		Expr REG2FINAL = vc_bvExtract(vc,regExpr(vc, (regname+"_2_Final"),iter->second*V_UNITSIZE),31,0);
		Expr vali1 = wcex.eval(REG1INIT,true);
		Expr vali2 = wcex.eval(REG2INIT,true);
		Expr val1 = wcex.eval( REG1FINAL,true);
		Expr val2 = wcex.eval( REG2FINAL,true);
		vc_printExpr(vc, vali1);cout << "\t"; vc_printExpr(vc, vali2); cout << "\n"; vc_printExpr(vc, val1);cout << "\t"; vc_printExpr(vc, val2); cout << endl << endl;
//		ofs << wcex.eval(to_expr(*vc, Z3_mk_bv2int(*vc, REG1FINAL, false))) << " " << wcex.eval(to_expr(*vc, Z3_mk_bv2int(*vc, REG2FINAL, false))) << endl;
		//Expr regval = to_expr(*vc, Z3_mk_bv2int(*vc, val, false));
		//cout << "\n\t" << regval << "\n";    	
	}
	for(iter = sizes.begin(); iter != sizes.end(); iter++)
	{
		if(iter->second != V_REGSIZE )
			continue;
		regname = bij.toVal(iter->first);
		Expr REG1INIT = regExpr(vc, regname,V_UNITSIZE);
		cout << regname << " is expr " << REG1INIT;
		long long int val;
		Z3_get_numeral_int64(*vc,wcex.eval(to_expr(*vc, Z3_mk_bv2int(*vc, REG1INIT, true))), &val); 	
		cout << " with value " << val << endl; 
		counter_example.gp[iter->first].get_fixed_quad(0) = val;
	}

}

bool z3Solve(VC& vc, vector<Expr>& constraints, vector<Expr>& query,PAIR_INFO state_info,stoke::CpuState& counter_example)
{
  solver s(*vc);
  Expr full_expr = vc_trueExpr(vc);
  for(unsigned int i = 0; i < constraints.size(); i++)
	{
		cout << "Asserting constraint:\n";
		vc_printExpr(vc, constraints[i]);
		cout << endl;
		s.add(constraints[i]);
		full_expr = vc_andExpr(vc, full_expr,constraints[i]);
	}
	int result;
		{
		  ofstream ofs;
		  ofs.open("debug.smt2");
		  ofs << "(set-logic UFBV)" << endl;
		  Z3_set_ast_print_mode(*vc,Z3_PRINT_SMTLIB2_COMPLIANT);
		  string str = Z3_benchmark_to_smtlib_string (*vc,"", "","","",0,0,full_expr);
		  ofs << str.erase(0,23);
		  ofs.close();
		}
	//result =  (s.check()==unsat);
	/*
	s.push();
	//Is Constraints => False? If yes then we enumerated contradictory constraints.  
	result =  (s.check()==unsat);
	//cout << "Query executed! with result" << result << "\n";
	if( result == 1 )
	{
		cout << endl << endl << "Debugging hell" << endl << endl;
		exit(0);
		assert(false && "Debugging hell");
	}
	s.pop();*/
	{
		//Construct a single query expression by taking conjunction of all queries.
		//For some programs, asking queries one at a time might be the way to go.
		Expr bigQueryExpr = vc_trueExpr(vc);
		for(unsigned int i = 0; i< query.size(); i++)
		{
cout << "Conjoining for bigqueryexpr "; vc_printExpr(vc,query[i]); cout << endl;
			bigQueryExpr = vc_andExpr(vc, bigQueryExpr, query[i]);
		}
		full_expr = vc_andExpr(vc, full_expr, !bigQueryExpr);
		//Push, query Constraints=>bigQueryExpression?
		{
		  ofstream ofs;
		  ofs.open("vc.smt2");
		  ofs << "(set-logic UFBV)" << endl;
		  Z3_set_ast_print_mode(*vc,Z3_PRINT_SMTLIB2_COMPLIANT);
		  ofs << ((string)Z3_benchmark_to_smtlib_string (*vc,"", "","","",0,0,full_expr)).erase(0,23);
		  ofs.close();
		}
		cout << "Printing of SMT2 compliant benchmark complete" << endl;
        cout << "query is "; vc_printExpr(vc, bigQueryExpr); cout << endl ;
		s.add(!bigQueryExpr);
		clock_t start = clock();
		auto z3_says = s.check();
    result = z3_says == unsat;
		assert(z3_says !=unknown && "Z3 gave up");
		clock_t end = clock();
		clock_t elapsed =  end -start;
		cout << "time was" << elapsed <<" i.e. " << (elapsed)/(1.0*CLOCKS_PER_SEC) << " seconds\n";

		cout << "Query executed! with result" << result << "\n";
		if( result == 0 )
		{
			model m=s.get_model();
			//If validation failed then obtain the counter-example. Gives some useless thing if multiplications are uninterpreted.
			cout << "Model is " << endl << m; 
			InitCex(vc,m,state_info, counter_example);
		}
		if(result == 1) { 
		  cerr << "Success" << endl ;
		}
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
		default:  cout << "Strange flag"; assert(false && "AF?");
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
	
	for(uint i=0;i<x64asm::rls.size();i++)
	  if(modsetreg.contains(((x64asm::Rl)x64asm::rls[i])))
	    retval.insert(rls[i]);  
	    
	for(uint i=0;i<x64asm::rbs.size();i++)
	  if(modsetreg.contains(((x64asm::Rb)x64asm::rbs[i])))
	    retval.insert(rbs[i]);  
	/*for(RegSet::r8_iterator i = modsetreg.r8_begin(); i!=modsetreg.r8_end(); i++)
	{
	  //cout << "HAHA " << endl;
	  retval.insert(parentRegister(*i));
	}*//*
	for(uint i=0;i<x64asm::rbs.size();i++)
	  if(modsetreg.contains(((x64asm::Rb)x64asm::rbs[i])))
	    retval.insert(i);  
	  */
	/*for(RegSet::gp_reg_iterator i = modsetreg.gp_begin(WORD); i!=modsetreg.gp_end(WORD); i++)
		retval.insert(parentRegister(*i));
	for(RegSet::gp_reg_iterator i = modsetreg.gp_begin(DOUBLE); i!=modsetreg.gp_end(DOUBLE); i++)
		retval.insert(parentRegister(*i));
	for(RegSet::gp_reg_iterator i = modsetreg.gp_begin(QUAD); i!=modsetreg.gp_end(QUAD); i++)
		retval.insert(parentRegister(*i));*/

	for(uint i=0;i<x64asm::xmms.size();i++)
	  if(modsetreg.contains(((x64asm::Xmm)x64asm::xmms[i])))
	    retval.insert(i+XMM_BEG);  

/*    	for(int i=0;i<xmms.size();i++)
	  if(modsetreg.contains(((XMM)xmms[i])))
	    retval.insert(i+XMM_BEG);  

*/	  
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

	//for(RegSet::xmm_iterator i = modsetreg.xmm_begin(); i!=modsetreg.xmm_end(); i++)
	//	retval.insert(parentRegister(*i)+XMM_BEG);
	/*for(RegSet::cond_reg_iterator i = modsetreg.cond_begin(); i!=modsetreg.cond_end(); i++)
		retval.insert(parentRegister(*i)+FLAG_BEG);*/
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
	cout << "Modset is: ";
	for(set<SS_Id>::iterator l=retval.begin(); l!=retval.end(); l++)
	  cout << idToStr(*l,state_info) << " ";
	cout << endl ;
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
#define boolType (vc_boolType(vc))
		unsigned int bitwidth = i->second;
		if(bitwidth == V_REGSIZE )
		{
			string elem = bij.toVal(i->first); 
			Expr E_state_elem_common = regExpr(vc, elem, V_UNITSIZE);
			Expr E_state_elem_initial = regExpr(vc, (elem + "_" + code_num + "_0"), V_UNITSIZE);
			Expr E_eq_initial = EqExpr(vc, E_state_elem_common, E_state_elem_initial);
			cout << "Register constraint is:\n";
			vc_printExpr(vc, E_eq_initial);
			cout << "\n";
			constraints.push_back(E_eq_initial);
		}
		else if(bitwidth == V_FLAGSIZE)
		{
			string elem = bij.toVal(i->first);			
			Expr E_state_elem_common = vc_varExpr(vc, elem.c_str(),  boolType);
			Expr E_state_elem_initial = vc_varExpr(vc, (elem + "_" + code_num + "_0").c_str(), boolType);
			Expr E_eq_initial = vc_iffExpr(vc, E_state_elem_common, E_state_elem_initial);
			cout << "Flag constraint is:\n";
			vc_printExpr(vc, E_eq_initial);
			cout << "\n";
			constraints.push_back(E_eq_initial);			
		}
		
		else if(bitwidth == V_XMMSIZE )
		{
			//if(i->first==XMM_BEG+1 || i->first == XMM_BEG+2) continue; //HACK for LR2
			string elem = bij.toVal(i->first); 
			Expr E_state_elem_common = regExpr(vc, elem, V_XMMUNIT);
			Expr E_state_elem_initial = regExpr(vc, (elem + "_" + code_num + "_0"), V_XMMUNIT);
			Expr E_eq_initial =  EqExpr(vc, E_state_elem_common, E_state_elem_initial); 
			cout << "XMM Register constraint is:\n";
			vc_printExpr(vc, E_eq_initial);
			cout << "\n";
			constraints.push_back(E_eq_initial);
		}
		/*else if(bitwidth == V_MEMSIZE)
		{
			//do nothing: unconstrained memory, Handle misaligned accesses here
		}*/
		else 
		  assert(false && "Unknown size!!");
#undef boolType
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
		default:  cout << "A strange size " << sizes[temp] << "\n"; 
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
		cout << "Creating constraint from instruction " << oss.str() <<"\n";
		instrnToConstraint(mem, state_info, vc, n, Vnold, Vnprime, constraints, code_num, i, X_mod);		
		if(n.succSize() != 1)
		{
			Expr E_final_constraint = getFinalConstraint(vc, state_elems, Vnprime, state_info.second, code_num, mem,state_info);
			cout << "Adding final constraint\n";
			vc_printExpr(vc, E_final_constraint);
			cout << "\n\n";
			constraints.push_back(E_final_constraint);
		}
		cout << "\n\nNode " << i << " ends\n\n";

	}
	return Vn;
	
}
//Get query constraint for registers and memory. The query constraints are missing for condition registers as they are not live out.
void getQueryConstraint(VC& vc, PAIR_INFO state_info, vector<Expr>& query, MemoryData& mem, x64asm::RegSet liveout)
{
	
	//map<SS_Id, unsigned int>::iterator i;
	Bijection<string> bij = state_info.first;
	map<SS_Id, unsigned int> sizes = state_info.second;
	Expr retval = vc_trueExpr(vc);

	for(uint i=0;i<x64asm::r64s.size();i++)
	{
	  auto op = x64asm::r64s[i];
	  if(liveout.contains(op))
	  {
	        if(op==x64asm::rsp || op==x64asm::rbp) continue;
			string elem = bij.toVal(op); 
			Expr E_state_elem_1 = vc_bvExtract(vc, regExpr(vc, (elem + "_1_"+ V_FSTATE),V_UNITSIZE), 31, 0);
			Expr E_state_elem_2 = vc_bvExtract(vc, regExpr(vc, (elem + "_2_"+ V_FSTATE),V_UNITSIZE), 31, 0);
			Expr E_eq_final = EqExpr(vc, E_state_elem_1, E_state_elem_2);
			cout << "Printing query"; vc_printExpr(vc, E_eq_final); cout << endl ;
			query.push_back(E_eq_final);

	  }
	}
	for(uint i=0;i<x64asm::xmms.size();i++)
	{
	  auto op = x64asm::xmms[i];
	  if(liveout.contains(op))
	  {
			string elem = bij.toVal(XMM_BEG+op); 
			Expr E_state_elem_1 = vc_bvExtract(vc, regExpr(vc, (elem + "_1_"+ V_FSTATE),V_XMMUNIT), 31, 0);
			Expr E_state_elem_2 = vc_bvExtract(vc, regExpr(vc, (elem + "_2_"+ V_FSTATE),V_XMMUNIT), 31, 0);
			Expr E_eq_final = EqExpr(vc, E_state_elem_1, E_state_elem_2);
			cout << "Printing query"; vc_printExpr(vc, E_eq_final); cout << endl ;
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
			cout << "Printing query"; vc_printExpr(vc, E_eq_final); cout << endl ;
			query.push_back(E_eq_final);
			}
	}
	}

}

MemoryData getMemoryInfo(string filename, pair<Bijection<string>,map<SS_Id, unsigned int> >& state_info)
{
  MemoryData retval;
  string line, name;
  int numrows,size;
  ifstream myfile (filename);
  if (myfile.is_open())
  {
    myfile >> numrows;

    for(int i=0;i<numrows;i++)
    {
      myfile >> name >> size;
      cout << "Read " << name << " " << size << endl;
      state_info.second[state_info.first.insert(name,MEM_BEG+i)]=size;      
    }
    myfile >> name >> numrows;
    for(int i=0;i<numrows;i++)
    {
      int line_no;
      string locname;
      int beg;
      int end;
      myfile >> line_no >> locname >> beg >> end;
      retval.insert(true,line_no,locname,beg,end,state_info.second[state_info.first.valToId(locname)]);
    }
    myfile >> name >> numrows;
    for(int i=0;i<numrows;i++)
    {
      int line_no;
      string locname;
      int beg;
      int end;
      myfile >> line_no >> locname >> beg >> end;
      retval.insert(false,line_no,locname,beg,end,state_info.second[state_info.first.valToId(locname)]);
    }    
    myfile.close();
  }
  return retval;
}

enum axiom_enum {
  add_float_zero_right, //0
  add_float_zero_left, //1
  add_float_comm, //2
  add_float_assoc, //3
  add_double_zero_right, //4 
  add_double_zero_left, //5
  add_double_comm, //6
  add_double_assoc, //7
  mul_float_zero_right, //8 
  mul_float_zero_left, //9
  mul_float_one_right, //10
  mul_float_one_left, //11
  mul_float_comm, //12
  mul_float_assoc, //13
  mul_double_zero_right, //14 
  mul_double_zero_left, //15
  mul_double_one_right, //16
  mul_double_one_left, //17
  mul_double_comm, //18
  mul_double_assoc,  //19
  double_mul_dist_add,   //20
  sub_strange,          //21
  addf_strange,          //22
};

void addAxiom(context& ctx, vector<Expr>& constraints, axiom_enum idx )
{
      
Z3_sort D = ctx.bv_sort(32);
 Z3_sort Q = ctx.bv_sort(64);
    

    Z3_symbol mulf_name;
    Z3_sort mulf_domain[2];
    Z3_func_decl mulf;
        
    mulf_name      = Z3_mk_string_symbol(ctx, "mulf");
    mulf_domain[0] = D;
    mulf_domain[1] = D;
    mulf= Z3_mk_func_decl(ctx, mulf_name, 2, mulf_domain, D);
    
    Z3_symbol muld_name;
    Z3_sort muld_domain[2];
    Z3_func_decl muld;
        
    muld_name      = Z3_mk_string_symbol(ctx, "muld");
    muld_domain[0] = Q;
    muld_domain[1] = Q;
    muld= Z3_mk_func_decl(ctx, muld_name, 2, muld_domain, Q);
    
    Z3_symbol addf_name;
    Z3_sort addf_domain[2];
    Z3_func_decl addf;
        
    addf_name      = Z3_mk_string_symbol(ctx, "addf");
    addf_domain[0] = D;
    addf_domain[1] = D;
    addf= Z3_mk_func_decl(ctx, addf_name, 2, addf_domain, D);
    
    Z3_symbol addd_name;
    Z3_sort addd_domain[2];
    Z3_func_decl addd;
        
    addd_name      = Z3_mk_string_symbol(ctx, "addd");
    addd_domain[0] = Q;
    addd_domain[1] = Q;
    addd= Z3_mk_func_decl(ctx, addd_name, 2, addd_domain, Q);
    
    Z3_symbol subd_name;
    Z3_sort subd_domain[2];
    Z3_func_decl subd;
        
    subd_name      = Z3_mk_string_symbol(ctx, "subd");
    subd_domain[0] = Q;
    subd_domain[1] = Q;
    subd= Z3_mk_func_decl(ctx, subd_name, 2, subd_domain, Q);
    
    Z3_sort t;
    Z3_symbol f_name,g_name,  t_name;
    Z3_ast q;
    f_name = Z3_mk_string_symbol(ctx, "f");    
    g_name = Z3_mk_string_symbol(ctx, "g");   
    Z3_symbol fun_name_arr[2] = {f_name, g_name}; 
    Z3_func_decl fun_muld_addd_arr[2] = {muld, addd};
    t_name = Z3_mk_string_symbol(ctx, "T");

    Z3_func_decl fun_muld_subd_arr[2] = {muld, subd};


    switch(idx)
    {
      case   add_float_zero_right:
	    {

    t = Z3_get_range(ctx, addf);
    Z3_parse_smtlib_string(ctx, 
                           "(benchmark comm :formula (forall (x T)  (= (f x bv0[32])  x)))",
                           1, &t_name, &t,
                           1, &f_name, &addf);
    }
	break;
      case   add_float_zero_left:
	    {
 
    t = Z3_get_range(ctx, addf);
       

    Z3_parse_smtlib_string(ctx, 
                           "(benchmark comm :formula (forall (x T)  (= (f  bv0[32] x)  x)))",
                           1, &t_name, &t,
                           1, &f_name, &addf);
    }
	break;
      case   add_float_comm:
	    {
    t = Z3_get_range(ctx, addf);
    Z3_parse_smtlib_string(ctx, 
                           "(benchmark comm :formula (forall (x T) (y T) (= (f x y) (f y x))))",
                           1, &t_name, &t,
                           1, &f_name, &addf);
    }
	break;
    case   add_float_assoc:
	    {
    t = Z3_get_range(ctx, addf);
    Z3_parse_smtlib_string(ctx, 
                           "(benchmark comm :formula (forall (x T) (y T) (z T) (= (f (f x y) z) (f x (f y z)))))",
                           1, &t_name, &t,
                           1, &f_name, &addf);
    }
	break;
	      case   mul_float_zero_right:
	    {

    t = Z3_get_range(ctx, mulf);
    Z3_parse_smtlib_string(ctx, 
                           "(benchmark comm :formula (forall (x T)  (= (f x bv0[32])  bv0[32])))",
                           1, &t_name, &t,
                           1, &f_name, &mulf);
    }
	break;
      case   mul_float_zero_left:
	    {
 
    t = Z3_get_range(ctx, mulf);
       

    Z3_parse_smtlib_string(ctx, 
                           "(benchmark comm :formula (forall (x T)  (= (f  bv0[32] x)  bv0[32])))",
                           1, &t_name, &t,
                           1, &f_name, &mulf);
    }
    break;
	      case   mul_float_one_right:
	    {

    t = Z3_get_range(ctx, mulf);
    Z3_parse_smtlib_string(ctx, 
                           "(benchmark comm :formula (forall (x T)  (= (f x bv1[32])  x)))",
                           1, &t_name, &t,
                           1, &f_name, &mulf);
    }
	break;
      case   mul_float_one_left:
	    {
 
    t = Z3_get_range(ctx, mulf);
       

    Z3_parse_smtlib_string(ctx, 
                           "(benchmark comm :formula (forall (x T)  (= (f  bv1[32] x)  x)))",
                           1, &t_name, &t,
                           1, &f_name, &mulf);
    }
	break;
      case   mul_float_comm:
	    {
    t = Z3_get_range(ctx, mulf);
    Z3_parse_smtlib_string(ctx, 
                           "(benchmark comm :formula (forall (x T) (y T) (= (f x y) (f y x))))",
                           1, &t_name, &t,
                           1, &f_name, &mulf);
    }
	break;
    case   mul_float_assoc:
	    {
    t = Z3_get_range(ctx, mulf);
    Z3_parse_smtlib_string(ctx, 
                           "(benchmark comm :formula (forall (x T) (y T) (z T) (= (f (f x y) z) (f x (f y z)))))",
                           1, &t_name, &t,
                           1, &f_name, &mulf);
    }
	break;
	      case   add_double_zero_right:
	    {

    t = Z3_get_range(ctx, addd);
    Z3_parse_smtlib_string(ctx, 
                           "(benchmark comm :formula (forall (x T)  (= (f x bv0[64])  x)))",
                           1, &t_name, &t,
                           1, &f_name, &addd);
    }
	break;
      case   add_double_zero_left:
	    {
 
    t = Z3_get_range(ctx, addd);
       

    Z3_parse_smtlib_string(ctx, 
                           "(benchmark comm :formula (forall (x T)  (= (f  bv0[64] x)  x)))",
                           1, &t_name, &t,
                           1, &f_name, &addd);
    }
	break;
      case   add_double_comm:
	    {
    t = Z3_get_range(ctx, addd);
    Z3_parse_smtlib_string(ctx, 
                           "(benchmark comm :formula (forall (x T) (y T) (= (f x y) (f y x))))",
                           1, &t_name, &t,
                           1, &f_name, &addd);
    }
	break;
    case   add_double_assoc:
	    {
    t = Z3_get_range(ctx, addd);
    Z3_parse_smtlib_string(ctx, 
                           "(benchmark comm :formula (forall (x T) (y T) (z T) (= (f (f x y) z) (f x (f y z)))))",
                           1, &t_name, &t,
                           1, &f_name, &addd);
    }
	break;
	      case   mul_double_zero_right:
	    {

    t = Z3_get_range(ctx, muld);
    Z3_parse_smtlib_string(ctx, 
                           "(benchmark comm :formula (forall (x T)  (= (f x bv0[64])  bv0[64])))",
                           1, &t_name, &t,
                           1, &f_name, &muld);
    }
	break;
      case   mul_double_zero_left:
	    {
 
    t = Z3_get_range(ctx, muld);
       

    Z3_parse_smtlib_string(ctx, 
                           "(benchmark comm :formula (forall (x T)  (= (f  bv0[64] x)  bv0[64])))",
                           1, &t_name, &t,
                           1, &f_name, &muld);
    }
    break;
	      case   mul_double_one_right:
	    {

    t = Z3_get_range(ctx, muld);
    Z3_parse_smtlib_string(ctx, 
                           "(benchmark comm :formula (forall (x T)  (= (f x bv1[64])  x)))",
                           1, &t_name, &t,
                           1, &f_name, &muld);
    }
	break;
      case   mul_double_one_left:
	    {
 
    t = Z3_get_range(ctx, muld);
       

    Z3_parse_smtlib_string(ctx, 
                           "(benchmark comm :formula (forall (x T)  (= (f  bv1[64] x)  x)))",
                           1, &t_name, &t,
                           1, &f_name, &muld);
    }
	break;
      case   mul_double_comm:
	    {
    t = Z3_get_range(ctx, muld);
    Z3_parse_smtlib_string(ctx, 
                           "(benchmark comm :formula (forall (x T) (y T) (= (f x y) (f y x))))",
                           1, &t_name, &t,
                           1, &f_name, &muld);
    }
	break;
    case   mul_double_assoc:
	    {
    t = Z3_get_range(ctx, muld);
    Z3_parse_smtlib_string(ctx, 
                           "(benchmark comm :formula (forall (x T) (y T) (z T) (= (f (f x y) z) (f x (f y z)))))",
                           1, &t_name, &t,
                           1, &f_name, &muld);
    }
	break;
  case   double_mul_dist_add:
    {
    t = Z3_get_range(ctx, muld);
    Z3_parse_smtlib_string(ctx, 
                           "(benchmark comm :formula (forall (x T) (y T) (z T) (= (f (g x y) z) (g (f x z) (f y z)))))",
                           1, &t_name, &t,
                           2, fun_name_arr, fun_muld_addd_arr);
    }
	break;
  case   sub_strange:
    {
    t = Z3_get_range(ctx, subd);
    Z3_parse_smtlib_string(ctx, 
                           "(benchmark comm :formula (forall (x T) (= (f (g bv0[64] x) (g bv0[64] x)) (f x x))  ))",
                           1, &t_name, &t,
                           2, fun_name_arr, fun_muld_subd_arr);
    }
    break;
          case   addf_strange:
	    {

    t = Z3_get_range(ctx, addf);
    Z3_parse_smtlib_string(ctx, 
                           "(benchmark comm :formula (forall (a T) (b T) (c T) (d T) (e T) (f1 T) (g T) (h T) (i T)  (= (f i (f (f (f (f (f (f (f a b) c) d) e) f1) g) h))  (f i (f (f (f b f1) (f d h)) (f (f a e) (f c g)))))))",
                           1, &t_name, &t,
                           1, &f_name, &addf);
    }
	break;
  default:
	assert(false && "Unrecognized Axiom");
    }
    ctx.check_error();
        q = Z3_get_smtlib_formula(ctx, 0);
    printf("assert axiom:\n%s\n", Z3_ast_to_string(ctx, q));
    Z3_assert_cnstr(ctx, q);
    constraints.push_back(to_expr(ctx,q));


  
}

void addAxioms(context& ctx, vector<Expr>& constraints )
{
  vector<int> axioms;
  uint numrows,axiom_idx;
  ifstream myfile ("axioms");
  if (myfile.is_open())
  {
    myfile >> numrows;

    for(uint i=0;i<numrows;i++)
    {
      myfile >> axiom_idx;
      cout << "Read axiom  " << axiom_idx << endl;
      axioms.push_back(axiom_idx);
    }
    myfile.close();
  }
  for(const uint axiom : axioms)
  {
    cout << " Adding axiom " << axiom << endl;
    addAxiom(ctx, constraints, (axiom_enum)axiom);
    cout << " Added " << axiom << endl;
  }
}


bool EqualReadInv(const stoke::Cfg& f1, const stoke::Cfg& f2,stoke::CpuState& counter_example)
{
	VC vc = vc_createValidityChecker();
	vector<Expr> constraints;
	//demorgan(vc);
	pair<Bijection<string>,map<SS_Id, unsigned int> > state_info = InitStateMapping();
	MemoryData mem = getMemoryInfo("aliasing", state_info);
        all_state_info = state_info; 
	//Get target and rewrite in my data-structure. Its a path with instructions at nodes.
	//the size is NOT including the return
	Ebb e1 = toEbb(vc, f1, 10/*7*//*6*//*11*//*9*/, "1");
	Ebb e2 = toEbb(vc, f2, 4/*4*//*4*//*6*//*3*/, "2");
	
	e1.print();
	e2.print();

	//Add start constraints for target i.e. codenum="1"
	addStartConstraint(vc, "1", state_info, constraints);
	addStartConstraint(vc, "2", state_info, constraints);

	//Convert code 1 i.e. target to constraints
	auto Vn1=C2C(vc, e1, state_info, constraints, "1", mem);

	//ditto for code 2. Note we use the same mul as target.
	
	auto Vn2 = C2C(vc, e2, state_info, constraints, "2", mem);

	 addAxioms(*vc, constraints);
	 addExtraConstraints(vc, constraints, "pre");
	//Add expert constraints. If necessary.
	//addExpertConstraints(*vc, constraints);
	vector<Expr> query;
	getQueryConstraint(vc, state_info, query, mem, f1.live_outs());
	addExtraConstraints(vc, query, "post");

	return z3Solve(vc, constraints, query,state_info, counter_example);
}


namespace stoke{
bool Validator::validate(const Cfg& target, const Cfg& rewrite, 
    const std::vector<CpuState>& testcases,CpuState& counter_example)
{
  generateAliasing(target, rewrite, testcases);
  std::cout << "Enter the dragon!" << std::endl;
  return EqualReadInv(target, rewrite, counter_example);
}
}
