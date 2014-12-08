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

#include "src/ext/x64asm/include/x64asm.h"
#include "src/validator/legacy/sym_state.h"

#include <sstream>
using namespace std;
using namespace x64asm;


std::pair< stoke::Bijection <std::string>, std::map <SS_Id, unsigned int> > all_state_info = InitStateMapping();


//Map ids with their sizes. Registers get 64 and flags get 1.
pair<stoke::Bijection<string>, map<SS_Id, unsigned int> > InitStateMapping()
{
  stoke::Bijection<string> retbij;
  map<SS_Id, unsigned int> retsize;

  retsize[retbij.insert("%rax",rax)] = V_REGSIZE;
  retsize[retbij.insert("%rcx",rcx)] = V_REGSIZE;
  retsize[retbij.insert("%rdx",rdx)] = V_REGSIZE;
  retsize[retbij.insert("%rbx",rbx)] = V_REGSIZE;

  retsize[retbij.insert("%rsp",rsp)] = V_REGSIZE;
  retsize[retbij.insert("%rbp",rbp)] = V_REGSIZE;
  retsize[retbij.insert("%rsi",rsi)] = V_REGSIZE;
  retsize[retbij.insert("%rdi",rdi)] = V_REGSIZE;

  retsize[retbij.insert("%r8",r8)] = V_REGSIZE;
  retsize[retbij.insert("%r9",r9)] = V_REGSIZE;
  retsize[retbij.insert("%r10",r10)] = V_REGSIZE;
  retsize[retbij.insert("%r11",r11)] = V_REGSIZE;
  retsize[retbij.insert("%r12",r12)] = V_REGSIZE;
  retsize[retbij.insert("%r13",r13)] = V_REGSIZE;
  retsize[retbij.insert("%r14",r14)] = V_REGSIZE;
  retsize[retbij.insert("%r15",r15)] = V_REGSIZE;


  retsize[retbij.insert("%xmm0",XMM_BEG+ymm0)] = V_XMMSIZE;
  retsize[retbij.insert("%xmm1",XMM_BEG+ymm1)] = V_XMMSIZE;
  retsize[retbij.insert("%xmm2",XMM_BEG+ymm2)] = V_XMMSIZE;
  retsize[retbij.insert("%xmm3",XMM_BEG+ymm3)] = V_XMMSIZE;
  retsize[retbij.insert("%xmm4",XMM_BEG+ymm4)] = V_XMMSIZE;
  retsize[retbij.insert("%xmm5",XMM_BEG+ymm5)] = V_XMMSIZE;
  retsize[retbij.insert("%xmm6",XMM_BEG+ymm6)] = V_XMMSIZE;
  retsize[retbij.insert("%xmm7",XMM_BEG+ymm7)] = V_XMMSIZE;

  retsize[retbij.insert("%xmm8",XMM_BEG+ymm8)] = V_XMMSIZE;
  retsize[retbij.insert("%xmm9",XMM_BEG+ymm9)] = V_XMMSIZE;
  retsize[retbij.insert("%xmm10",XMM_BEG+ymm10)] = V_XMMSIZE;
  retsize[retbij.insert("%xmm11",XMM_BEG+ymm11)] = V_XMMSIZE;
  retsize[retbij.insert("%xmm12",XMM_BEG+ymm12)] = V_XMMSIZE;
  retsize[retbij.insert("%xmm13",XMM_BEG+ymm13)] = V_XMMSIZE;
  retsize[retbij.insert("%xmm14",XMM_BEG+ymm14)] = V_XMMSIZE;
  retsize[retbij.insert("%xmm15",XMM_BEG+ymm15)] = V_XMMSIZE;


  retsize[retbij.insert("%af", FLAG_BEG+0)] = V_FLAGSIZE;
  retsize[retbij.insert("%cf", FLAG_BEG+1)] = V_FLAGSIZE;
  retsize[retbij.insert("%of", FLAG_BEG+2)] = V_FLAGSIZE;
  retsize[retbij.insert("%pf", FLAG_BEG+3)] = V_FLAGSIZE;
  retsize[retbij.insert("%sf", FLAG_BEG+4)] = V_FLAGSIZE;
  retsize[retbij.insert("%zf", FLAG_BEG+5)] = V_FLAGSIZE;

  return pair<stoke::Bijection<string>, map<SS_Id, unsigned int> >(retbij, retsize);
}




namespace stoke {

void VersionNumber::Init(int n) {

  // build a set with all the SS_Ids
  set<SS_Id> all_ssid;

  // get the SS_Id -> unsigned int map.
  auto mapping = all_state_info.second;
  for(auto p : mapping)
    all_ssid.insert(p.first);

  Init(all_ssid, n);


}

void VersionNumber::Init(set<SS_Id> vars, int n)
{
  set<SS_Id>::iterator iter;
  for(iter = vars.begin(); iter != vars.end(); iter++)
    VN_[ *iter ] = n;
}

void VersionNumber::Increment(std::set<SS_Id> X, unsigned int n)
{
  set<SS_Id>::iterator iter;
  for( iter = X.begin(); iter != X.end(); iter++) {
    VN_[*iter] += n;
  }
}



} //namespace STOKE
