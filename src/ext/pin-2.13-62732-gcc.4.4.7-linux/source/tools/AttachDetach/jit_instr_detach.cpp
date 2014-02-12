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
#include <stdio.h>
#include "pin.H"
#include <iostream>
#include <assert.h>

using namespace std;

UINT64 icount = 0;


UINT32 insCountBeforeDetach = 0;
UINT32 insMax = 100;
INT32 threadCounter = 0;
PIN_LOCK lock;
UINT32 runtimeCount = 0;

VOID docount()
{
    runtimeCount++;
}

    
VOID Instruction(INS ins, VOID *v)
{
    ++insCountBeforeDetach;
	if (threadCounter >= 2)
	{
		PIN_Detach();
	}
    INS_InsertCall(ins, IPOINT_BEFORE, (AFUNPTR)docount, IARG_END);
}

VOID Detach(VOID *arg)
{
	std::cerr << "Pin detached after " << insCountBeforeDetach << " instrumented instructions" << endl;
    std::cerr << "Pin detached after " << runtimeCount << " executed instructions" << endl;
}



VOID ThreadStart(THREADID threadid, CONTEXT *ctxt, INT32 flags, VOID *v)
{
    PIN_GetLock(&lock, PIN_GetTid());
    ++threadCounter;
    PIN_ReleaseLock(&lock);

}

VOID ThreadEnd(THREADID threadid, const CONTEXT *ctxt, INT32 code, VOID *v)
{
    PIN_GetLock(&lock, PIN_GetTid());
    assert(threadCounter > 0);
    --threadCounter;
    PIN_ReleaseLock(&lock);

}

int main(int argc, char * argv[])
{
    PIN_Init(argc, argv);


    INS_AddInstrumentFunction(Instruction, 0);
    PIN_AddThreadStartFunction(ThreadStart, 0);
    PIN_AddThreadFiniFunction(ThreadEnd, 0);
    PIN_AddDetachFunction(Detach, &insMax);
    
    // Never returns
    PIN_StartProgram();
    
    return 0;
}
