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
#include <assert.h>
#include <stdio.h>
#include <stdlib.h>
#include "pin.H"
/*
Test to assure no stack leak in IARG_CONST_CONTEXT. Must be run with the stress_const_context_app
*/

UINT32 numCallsToStressTestConstContextToolFunc = 0;
VOID StressTestConstContextToolFunc (ADDRINT *fer0, ADDRINT *fer1, ADDRINT *fer2, ADDRINT *fer3, ADDRINT *fer4, ADDRINT *fer5,
                                     ADDRINT returnIP, ADDRINT stackPointer, ADDRINT threadID, CONTEXT* ctxt)
{
    numCallsToStressTestConstContextToolFunc++;
    if ((numCallsToStressTestConstContextToolFunc % 100000)==0)
    {
        printf ("%d calls to StressTestConstContextToolFunc\n", numCallsToStressTestConstContextToolFunc);
        fflush(stdout);
    }
}


// When an image is loaded, check for a MyAlloc function
VOID Image(IMG img, VOID *v)
{
    //fprintf(stderr, "Loading %s\n",IMG_name(img));
    
    for (SEC sec = IMG_SecHead(img); SEC_Valid(sec); sec = SEC_Next(sec))
    {
        //fprintf(stderr, "  sec %s\n", SEC_name(sec).c_str());
        for (RTN rtn = SEC_RtnHead(sec); RTN_Valid(rtn); rtn = RTN_Next(rtn))
        {
            //fprintf(stderr, "    rtn %s\n", RTN_Name(rtn).c_str());
            
            if (RTN_Name(rtn) == "StressTestConstContextAppFunc")    
            {
                RTN_Open(rtn);

                RTN_InsertCall(rtn, IPOINT_BEFORE,
                    (AFUNPTR)StressTestConstContextToolFunc,
                    IARG_FUNCARG_ENTRYPOINT_REFERENCE, 0,
                    IARG_FUNCARG_ENTRYPOINT_REFERENCE, 1,
                    IARG_FUNCARG_ENTRYPOINT_REFERENCE, 2,
                    IARG_FUNCARG_ENTRYPOINT_REFERENCE, 3,
                    IARG_FUNCARG_ENTRYPOINT_REFERENCE, 4,
                    IARG_FUNCARG_ENTRYPOINT_REFERENCE, 5,
                    IARG_RETURN_IP, // address of inst after caller
                    IARG_REG_VALUE, REG_STACK_PTR,
                    IARG_REG_VALUE, REG_THREAD_ID,
                    IARG_CONST_CONTEXT,
                    IARG_END);

                RTN_Close(rtn);
            }
        }
    }
}


VOID Fini(INT32 code, VOID *v)
{
    if (numCallsToStressTestConstContextToolFunc < 4000000)
    {
        printf ("expetced 4000000 calls to StressTestConstContextToolFunc, had only %u\n", numCallsToStressTestConstContextToolFunc);
        fflush(stdout);
        exit (-1);
    }
}

int main(int argc, char * argv[])
{
    PIN_InitSymbols();
    PIN_Init(argc, argv);

    IMG_AddInstrumentFunction(Image, 0);
    PIN_AddFiniFunction(Fini, 0);
    
    // Never returns
    PIN_StartProgram();
    
    return 0;
}
