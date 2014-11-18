#include "src/validator/SymState.h"
#include "src/ext/x64asm/include/x64asm.h"

#include <sstream>
using namespace std;
using namespace x64asm;


std::pair< stoke::Bijection <std::string>, std::map <SS_Id, unsigned int> > all_state_info = InitStateMapping();


//Map ids with their sizes. Registers get 64 and flags get 1.
pair<stoke::Bijection<string>, map<SS_Id, unsigned int> > InitStateMapping()
{
  stoke::Bijection<string> retbij;
  map<SS_Id, unsigned int> retsize;

  retsize[retbij.insert("RAX",rax)] = V_REGSIZE;
  retsize[retbij.insert("RCX",rcx)] = V_REGSIZE;
  retsize[retbij.insert("RDX",rdx)] = V_REGSIZE;
  retsize[retbij.insert("RBX",rbx)] = V_REGSIZE;

  retsize[retbij.insert("RSP",rsp)] = V_REGSIZE;
  retsize[retbij.insert("RBP",rbp)] = V_REGSIZE;
  retsize[retbij.insert("RSI",rsi)] = V_REGSIZE;
  retsize[retbij.insert("RDI",rdi)] = V_REGSIZE;

  retsize[retbij.insert("R8",r8)] = V_REGSIZE;
  retsize[retbij.insert("R9",r9)] = V_REGSIZE;
  retsize[retbij.insert("R10",r10)] = V_REGSIZE;
  retsize[retbij.insert("R11",r11)] = V_REGSIZE;
  retsize[retbij.insert("R12",r12)] = V_REGSIZE;
  retsize[retbij.insert("R13",r13)] = V_REGSIZE;
  retsize[retbij.insert("R14",r14)] = V_REGSIZE;
  retsize[retbij.insert("R15",r15)] = V_REGSIZE;


  retsize[retbij.insert("XMM0",XMM_BEG+xmm0)] = V_XMMSIZE;
  retsize[retbij.insert("XMM1",XMM_BEG+xmm1)] = V_XMMSIZE;
  retsize[retbij.insert("XMM2",XMM_BEG+xmm2)] = V_XMMSIZE;
  retsize[retbij.insert("XMM3",XMM_BEG+xmm3)] = V_XMMSIZE;
  retsize[retbij.insert("XMM4",XMM_BEG+xmm4)] = V_XMMSIZE;
  retsize[retbij.insert("XMM5",XMM_BEG+xmm5)] = V_XMMSIZE;
  retsize[retbij.insert("XMM6",XMM_BEG+xmm6)] = V_XMMSIZE;
  retsize[retbij.insert("XMM7",XMM_BEG+xmm7)] = V_XMMSIZE;

  retsize[retbij.insert("XMM8",XMM_BEG+xmm8)] = V_XMMSIZE;
  retsize[retbij.insert("XMM9",XMM_BEG+xmm9)] = V_XMMSIZE;
  retsize[retbij.insert("XMM10",XMM_BEG+xmm10)] = V_XMMSIZE;
  retsize[retbij.insert("XMM11",XMM_BEG+xmm11)] = V_XMMSIZE;
  retsize[retbij.insert("XMM12",XMM_BEG+xmm12)] = V_XMMSIZE;
  retsize[retbij.insert("XMM13",XMM_BEG+xmm13)] = V_XMMSIZE;
  retsize[retbij.insert("XMM14",XMM_BEG+xmm14)] = V_XMMSIZE;
  retsize[retbij.insert("XMM15",XMM_BEG+xmm15)] = V_XMMSIZE;


  retsize[retbij.insert("AFLAG", FLAG_BEG+0)] = V_FLAGSIZE;
  retsize[retbij.insert("CFLAG", FLAG_BEG+1)] = V_FLAGSIZE;
  retsize[retbij.insert("OFLAG", FLAG_BEG+2)] = V_FLAGSIZE;
  retsize[retbij.insert("PFLAG", FLAG_BEG+3)] = V_FLAGSIZE;
  retsize[retbij.insert("SFLAG", FLAG_BEG+4)] = V_FLAGSIZE;
  retsize[retbij.insert("ZFLAG", FLAG_BEG+5)] = V_FLAGSIZE;

  return pair<stoke::Bijection<string>, map<SS_Id, unsigned int> >(retbij, retsize);
}




namespace stoke {

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



}
