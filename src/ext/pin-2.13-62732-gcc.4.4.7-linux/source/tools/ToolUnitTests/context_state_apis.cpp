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
#include <stdlib.h>
#include <stdio.h>
#include "pin.H"


extern "C" BOOL ProcessorSupportsAvx();



VOID  CheckContextState(CONTEXT *ctxt) 
{
    printf ("context contains PROCESSOR_STATE_X87 %d\n", PIN_ContextContainsState(ctxt, PROCESSOR_STATE_X87));
    fflush (stdout);
    if (!PIN_ContextContainsState(ctxt, PROCESSOR_STATE_X87))
    {
        printf ("***Error context does NOT contain PROCESSOR_STATE_X87\n");
        exit (-1);
    }
    printf ("context contains PROCESSOR_STATE_XMM %d\n", PIN_ContextContainsState(ctxt, PROCESSOR_STATE_XMM));
    if (!PIN_ContextContainsState(ctxt, PROCESSOR_STATE_XMM))
    {
        printf ("***Error context does NOT contain PROCESSOR_STATE_XMM\n");
        exit (-1);
    }
    printf ("context contains PROCESSOR_STATE_YMM %d\n", PIN_ContextContainsState(ctxt, PROCESSOR_STATE_YMM));
    if (!PIN_ContextContainsState(ctxt, PROCESSOR_STATE_YMM) && ProcessorSupportsAvx())
    {
        printf ("***Error context does NOT contain PROCESSOR_STATE_YMM\n");
        exit (-1);
    }
    if (PIN_ContextContainsState(ctxt, PROCESSOR_STATE_YMM) && !ProcessorSupportsAvx())
    {
        printf ("***Error context contains PROCESSOR_STATE_YMM, but processor does NOT support Ymm\n");
        exit (-1);
    }
}
    
VOID Instruction(INS ins, VOID *v)
{
    static BOOL firstTime = true;
    if (firstTime)
    {
        firstTime = FALSE;
        INS_InsertCall(ins, IPOINT_BEFORE, (AFUNPTR)CheckContextState, IARG_CONTEXT, IARG_END);
    }
}



/* ===================================================================== */
/* Print Help Message                                                    */
/* ===================================================================== */

INT32 Usage()
{
    return -1;
}

/* ===================================================================== */
/* Main                                                                  */
/* ===================================================================== */

int main(int argc, char * argv[])
{
    // Initialize pin
    if (PIN_Init(argc, argv)) return Usage();

    printf ("Pin supports PROCESSOR_STATE_X87 %d\n", PIN_SupportsProcessorState(PROCESSOR_STATE_X87));
    if (!PIN_SupportsProcessorState(PROCESSOR_STATE_X87))
    {
        printf ("***Error Pin does NOT support PROCESSOR_STATE_X87\n");
        exit (-1);
    }
    printf ("Pin supports PROCESSOR_STATE_XMM %d\n", PIN_SupportsProcessorState(PROCESSOR_STATE_XMM));
    if (!PIN_SupportsProcessorState(PROCESSOR_STATE_XMM))
    {
        printf ("***Error Pin does NOT support PROCESSOR_STATE_XMM\n");
        exit (-1);
    }
    printf ("Pin supports PROCESSOR_STATE_YMM %d\n", PIN_SupportsProcessorState(PROCESSOR_STATE_YMM));
    if (!PIN_SupportsProcessorState(PROCESSOR_STATE_YMM) && ProcessorSupportsAvx())
    {
        printf ("***Error Pin does NOT support PROCESSOR_STATE_YMM\n");
        exit (-1);
    }
    if (PIN_SupportsProcessorState(PROCESSOR_STATE_YMM) && !ProcessorSupportsAvx())
    {
        printf ("***Error Pin does support PROCESSOR_STATE_YMM, but processor does not\n");
        exit (-1);
    }
    // Register Instruction to be called to instrument instructions
    INS_AddInstrumentFunction(Instruction, 0);
    
    // Start the program, never returns
    PIN_StartProgram();
    
    return 0;
}
