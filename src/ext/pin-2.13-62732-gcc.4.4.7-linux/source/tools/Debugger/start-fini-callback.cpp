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
#include <fstream>
#include "pin.H"

KNOB<std::string> KnobOut(KNOB_MODE_WRITEONCE, "pintool", "o",
    "start-fini-callback.out", "Output file");

std::ofstream Out;

static void OnThreadStart(THREADID, CONTEXT *, INT32, VOID *);
static void OnThreadFini(THREADID, const CONTEXT *, INT32, VOID *);
static void OnExit(INT32, VOID *);


int main(int argc, char * argv[])
{
    PIN_Init(argc, argv);

    Out.open(KnobOut.Value().c_str());

    PIN_AddThreadStartFunction(OnThreadStart, 0);
    PIN_AddThreadFiniFunction(OnThreadFini, 0);
    PIN_AddFiniFunction(OnExit, 0);
    PIN_StartProgram();
    return 0;
}


static void OnThreadStart(THREADID tid, CONTEXT *, INT32, VOID *)
{
    Out << "OnThreadStart for thread " << tid << std::endl;
}

static void OnThreadFini(THREADID tid, const CONTEXT *, INT32, VOID *)
{
    Out << "OnThreadFini for thread " << tid << std::endl;
}

static void OnExit(INT32, VOID *)
{
    Out << "OnExit" << std::endl;
}
