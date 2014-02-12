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
/*
 * This tool stresses Pin's ability to deliver signals during a "then" analysis routine.
 * It must be run with the "then-stress-app.cpp" application.
 */

#include <iostream>
#include <cstdlib>
#include "pin.H"


static VOID OnRoutine(RTN, VOID *);
static ADDRINT IfTrue();
static VOID ThenFunction();
static VOID OnExit(INT32, VOID *);

static BOOL GotThen = FALSE;


int main(int argc, char * argv[])
{
    PIN_Init(argc, argv);
    PIN_InitSymbols();

    RTN_AddInstrumentFunction(OnRoutine, 0);
    PIN_AddFiniFunction(OnExit, 0);

    PIN_StartProgram();
    return 0;
}

static VOID OnRoutine(RTN rtn, VOID *)
{
#if defined(TARGET_MAC)
    if (RTN_Name(rtn) == "_DoThenInstrumentation")
#else
    if (RTN_Name(rtn) == "DoThenInstrumentation")
#endif
    {
        RTN_Open(rtn);
        INS_InsertIfCall(RTN_InsHead(rtn), IPOINT_BEFORE, AFUNPTR(IfTrue), IARG_END);
        INS_InsertThenCall(RTN_InsHead(rtn), IPOINT_BEFORE, AFUNPTR(ThenFunction), IARG_END);
        RTN_Close(rtn);
    }
}

static ADDRINT IfTrue()
{
    return 1;
}


static VOID ThenFunction()
{
    // A big delay here makes it very likely that a signal will be delivered during this
    // "then" analysis routine.
    //
    GotThen = TRUE;
    for (volatile unsigned long i = 0;  i < 100000;  i++)
        ;
}


static VOID OnExit(INT32, VOID *)
{
    if (!GotThen)
    {
        std::cerr << "Analysis routine not exectued." << std::endl;
        std::exit(1);
    }
}
