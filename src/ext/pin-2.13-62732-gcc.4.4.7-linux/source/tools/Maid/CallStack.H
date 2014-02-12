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
#ifndef _CALLSTACK_H_
#define _CALLSTACK_H_

class Activation {
private:
  int _vector_index;             // index into Activations
  ADDRINT _current_sp;
  ADDRINT _target;
  UINT32 _depth;

public:    
  ADDRINT current_sp() const { return _current_sp; }
  int vector_index() const { return _vector_index; }
    
  Activation(int index, ADDRINT current_sp, ADDRINT target):
    _vector_index(index),
    _current_sp(current_sp),
    _target(target)
  { }

  bool operator==( const Activation& a) const {
    return(current_sp() == a.current_sp());
  }
  
  ADDRINT target() {return _target;}
};

class CallStack {
private:
  UINT64 _stackGeneration;
  UINT64 _main_entry_depth;
  UINT64 _enter_opaque_lib_entry;
  vector<Activation> _activations;
  ADDRINT _stackLastPrint;
  const string& (*_Target2RtnName)(ADDRINT);
  const string& (*_Target2LibName)(ADDRINT);
  VOID CreateActivation(ADDRINT current_sp, ADDRINT target);
  VOID AdjustStack(ADDRINT current_sp);

public:

  CallStack(const string& (*t2r)(ADDRINT), const string& (*t2l)(ADDRINT)) :
    _stackGeneration(0),
    _main_entry_depth(~0x0),
    _enter_opaque_lib_entry(0x0),
    _stackLastPrint(~0x0),
    _Target2RtnName(t2r),
    _Target2LibName(t2l)
  {}
  
  UINT64 Depth() {return _activations.size();}
  VOID ProcessCall(ADDRINT current_sp, ADDRINT target);
  VOID ProcessMainEntry(ADDRINT current_sp, ADDRINT target);
  VOID ProcessReturn(ADDRINT current_sp, bool prevIpDoesPush);
  VOID DumpStack(ostream *o);
};

#endif
