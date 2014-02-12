/*BEGIN_LEGAL 
Intel Open Source License 

Copyright (c) 2002-2013 Intel Corporation. All rights reserved.
 
Redistribution and use in source and binary forms, with or without
modification, are permitted provided that the following conditions are
met:

Redistributions of source code must retain the above copyright notice,
this list of conditions and the following disclaimer.  Redistributions
in binary form must reproduce the above copyright notice, this list of
conditions and the following disclaimer in the documentation and/or
other materials provided with the distribution.  Neither the name of
the Intel Corporation nor the names of its contributors may be used to
endorse or promote products derived from this software without
specific prior written permission.
 
THIS SOFTWARE IS PROVIDED BY THE COPYRIGHT HOLDERS AND CONTRIBUTORS
``AS IS'' AND ANY EXPRESS OR IMPLIED WARRANTIES, INCLUDING, BUT NOT
LIMITED TO, THE IMPLIED WARRANTIES OF MERCHANTABILITY AND FITNESS FOR
A PARTICULAR PURPOSE ARE DISCLAIMED. IN NO EVENT SHALL THE INTEL OR
ITS CONTRIBUTORS BE LIABLE FOR ANY DIRECT, INDIRECT, INCIDENTAL,
SPECIAL, EXEMPLARY, OR CONSEQUENTIAL DAMAGES (INCLUDING, BUT NOT
LIMITED TO, PROCUREMENT OF SUBSTITUTE GOODS OR SERVICES; LOSS OF USE,
DATA, OR PROFITS; OR BUSINESS INTERRUPTION) HOWEVER CAUSED AND ON ANY
THEORY OF LIABILITY, WHETHER IN CONTRACT, STRICT LIABILITY, OR TORT
(INCLUDING NEGLIGENCE OR OTHERWISE) ARISING IN ANY WAY OUT OF THE USE
OF THIS SOFTWARE, EVEN IF ADVISED OF THE POSSIBILITY OF SUCH DAMAGE.
END_LEGAL */
#include <iostream>
#include <vector>
#include "pin.H"
#include "CallStack.H"

///////////////////////////////////////////////////////////////////////////////
////////// class Activation
///////////////////////////////////////////////////////////////////////////////

VOID
CallStack::CreateActivation(ADDRINT current_sp, ADDRINT target)
{
  // push activation  -- note this is sp at the callsite
  _activations.push_back(Activation(_activations.size(), current_sp, target));
}

//
// roll back stack if we got here from a longjmp
// Note stack grows down and register stack grows up.
//
VOID
CallStack::AdjustStack(ADDRINT current_sp)
{
  _stackGeneration += 1;
  
  if( _activations.size() == 0 ) return;

  // TIPP: I changed this from > to >= ...not sure it's right, but works better
  while( current_sp >= _activations.back().current_sp() ) {
    // debug having hit the assertion below...
    if (_activations.size() == 1) {
      cerr << "AdjustStack(" << current_sp << ") bottomed out" << endl;
      cerr << "    last activation at " << _activations.back().current_sp() 
	   << endl;
      
      _activations.pop_back();    // pop activation
      return;
    }
    _activations.pop_back();    // pop activation
    ASSERTX(_activations.size() > 0);
  }
}

///////////////////////////////////////////////////////////////////////////////
////////// class CallStack
///////////////////////////////////////////////////////////////////////////////

static bool
isOpaqueLib(const string& lib) {
  return 0 && (lib == "/lib/tls/libc.so.6"
	  || lib == "/lib/ld-linux.so.2");
}

static bool
isOpaqueRtn(const string& rtn) {
  return 0 && (rtn == "malloc@@GLIBC_2.0"
	  || rtn.find("GLIBC") != string::npos);
}

//
// standard call
VOID 
CallStack::ProcessCall(ADDRINT current_sp, ADDRINT target)
{
  // check if we got here from a longjmp.
  AdjustStack(current_sp);
  
  if( _activations.size() >= _main_entry_depth 
      && (_enter_opaque_lib_entry == 0 
	  || _activations.size() <= _enter_opaque_lib_entry) ) {
    //cout << _activations.size() << ":" << _Target2RtnName(target) 
      //<< "@0x" << hex << target << dec
      //<< " in " << _Target2LibName(target) 
    // << endl;
  }
  if(_activations.size() >= _main_entry_depth 
     && !_enter_opaque_lib_entry
     && (isOpaqueLib(_Target2LibName(target))
	 || isOpaqueRtn(_Target2RtnName(target))) ) {

    _enter_opaque_lib_entry = _activations.size();
  }
  
  CreateActivation(current_sp, target);
}

//
// standard call
VOID 
CallStack::ProcessMainEntry(ADDRINT current_sp, ADDRINT target)
{
  // check if we got here from a longjmp.
  AdjustStack(current_sp);

  //cout << _activations.size() << ":" << _Target2RtnName(target)
    //<< " in " << _Target2LibName(target)
  //<< endl;
  _main_entry_depth = _activations.size();
  CreateActivation(current_sp, target);
}

//
// standard return
VOID 
CallStack::ProcessReturn(ADDRINT current_sp, bool prevIpDoesPush)
{

#if defined(TARGET_IA32) && defined (TARGET_WINDOWS)
  if (prevIpDoesPush)
  {
      // on ia-32 windows to identify 
      // push 
      // ret
      // and ignore it, in order to process callstack correctly
      return;
  }
#endif
  // check if we got here from a longjmp.
  AdjustStack(current_sp);
  if( _enter_opaque_lib_entry == _activations.size() ) {
    _enter_opaque_lib_entry = 0;
  }

#if defined(TARGET_IA32) && defined (TARGET_WINDOWS)
  if(_activations.size() == 0)
  {
      return;
  }
#else
  ASSERTX(_activations.size());
#endif

  // pop activation
  _activations.pop_back();
}

VOID 
CallStack::DumpStack(ostream *o)
{
  vector<Activation>::reverse_iterator i;
  int level = _activations.size() - 1;
  string last;
  bool repeated = false;
  bool first = true;
  for(i = _activations.rbegin(); i != _activations.rend(); i++) {
    string cur = _Target2RtnName(i->target());
    if( cur != last ) {
      if( !first ) {*o << endl;}
      *o << level << ": " << cur;
    } else {
      if( !repeated ) {
	*o << "(repeated)";
      }
      repeated = true;
    }
    first = false;
    last = cur;
    level--;
  }
  *o << endl;

  //cout << _activations.size() << ":" << _Target2RtnName(target) 
  //<< "@0x" << hex << target << dec
  //<< " in " << _Target2LibName(target) 
  // << endl;  
}
