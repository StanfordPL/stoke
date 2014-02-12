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
// The tool callapp9.cpp and application inner.c showed a bug with the way REG_INST_G0 
// is handled.  That register should have the value "1" when executing code
// from PIN_CallApplicationFunction() and the value "0" when executing other
// code. However, after execution returns from the replaced function, REG_INST_G0
// continued to have the value "1". The correct behavior is is for REG_INST_G0
// to have the value "0" when it returns from the replacement function.
//
// The correct output is:
// At Inner G0=0
// Calling replaced Replaced()
// REPLACE_Replaced: REG_INST_G0=1
// At Inner G0=1
// REPLACE_Replaced: REG_INST_G0=1
// Returning from replaced Replaced()
// i=2
// At Inner G0=0


#include <stdio.h>
#include "pin.H"

KNOB<BOOL> KnobUseIargConstContext(KNOB_MODE_WRITEONCE, "pintool",
                                   "const_context", "0", "use IARG_CONST_CONTEXT");

static REG scratchReg;

int REPLACE_Replaced(CONTEXT *context, THREADID tid, AFUNPTR func)
{
    int ret;

    printf("Calling replaced Replaced()\n");

    CONTEXT writableContext, *ctxt;
    if (KnobUseIargConstContext)
    { // need to copy the ctxt into a writable context
        PIN_SaveContext(context, &writableContext);
        ctxt = &writableContext;
    }
    else
    {
        ctxt = context;
    }

    PIN_SetContextReg(ctxt, scratchReg, 1);
    printf("REPLACE_Replaced: REG_INST_G0=0x%lx\n",  (unsigned long)PIN_GetContextReg(ctxt, scratchReg));

    PIN_CallApplicationFunction(ctxt, tid, CALLINGSTD_DEFAULT, func,
        PIN_PARG(int), &ret,
        PIN_PARG_END());
    
    printf("REPLACE_Replaced: REG_INST_G0=0x%lx\n",  (unsigned long)PIN_GetContextReg(ctxt, scratchReg));
    printf("Returning from replaced Replaced()\n");
    return ret;
}

void AtInner(ADDRINT g0)
{
    printf("At Inner G0=%d\n", (int)g0);
}

VOID Image(IMG img, void *v)
{
    RTN rtn = RTN_FindByName(img, "Replaced");
    if (RTN_Valid(rtn))
    {
        PROTO proto = PROTO_Allocate(PIN_PARG(int), CALLINGSTD_DEFAULT, "Replaced", PIN_PARG_END());
        RTN_ReplaceSignature(rtn, AFUNPTR(REPLACE_Replaced),
            IARG_PROTOTYPE, proto,
            (KnobUseIargConstContext)?IARG_CONST_CONTEXT:IARG_CONTEXT,
            IARG_THREAD_ID,
            IARG_ORIG_FUNCPTR,
            IARG_END);
        PROTO_Free(proto);
    }

    rtn = RTN_FindByName(img, "Inner");
    if (RTN_Valid(rtn))
    {
        RTN_Open(rtn);
        RTN_InsertCall(rtn, IPOINT_BEFORE, AFUNPTR(AtInner), IARG_REG_VALUE, scratchReg, IARG_END);
        RTN_Close(rtn);
    }
}

VOID OnThread(THREADID threadIndex, CONTEXT *ctxt, INT32 flags, VOID *v)
{
    PIN_SetContextReg(ctxt, scratchReg, 0);
}

int main(int argc, char **argv)
{
    PIN_Init(argc, argv);
    PIN_InitSymbols();

    scratchReg = PIN_ClaimToolRegister();
    if (!REG_valid(scratchReg))
    {
        fprintf (stderr, "Cannot allocate a scratch register.\n");
        return 1;
    }

    PIN_AddThreadStartFunction(OnThread, 0);
    IMG_AddInstrumentFunction(Image, 0);

    PIN_StartProgram();
    return 0;
}
