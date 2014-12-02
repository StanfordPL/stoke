// Copyright 2013-2015 Eric Schkufza, Rahul Sharma, Berkeley Churchill, Stefan Heule
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

#include "src/validator/legacy/c_interface.h"
#include "src/validator/legacy/legacy_handlers.h"
#include "src/validator/legacy/validator.h"

using namespace std;
using namespace stoke;


Expr regExpr(string s, unsigned int size)
{
  return SymBitVector::var(size, s);
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
      return "%af";
    case V_CF:
      return "%cf";
    case V_OF:
      return "%of";
    case V_PF:
      return "%pf";
    case V_SF:
      return "%sf";
    case V_ZF:
      return "%zf";
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



