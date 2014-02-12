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

/*! @file
 *  A pin tool that intercepts exception and verifies the exception context.
 *  It works in pair with the win_exception_context application, that raises two 
 *  exceptions. The context of the second exception should have a predefined FP 
 *  state: all FPn and XMMn registers have value <n> in their first byte. 
 *  This is verified by the tool.
 */

#include <stdio.h>
#include <string>
#include <iostream>
#include <memory.h>
#include "pin.H"

using namespace std;


/*
 * Verify the FP state of the exception context
 */
KNOB<BOOL> KnobCheckFp(KNOB_MODE_WRITEONCE, "pintool", "checkfp", "0", "Check FP state");





/*!
 * Exit with the specified error message
 */
static void Abort(const char * msg)
{
    cerr << msg << endl;
    exit(1);
}

/*!
 * Check to see that FP/XMM registers in the specified context have predefined
 * values assigned by the application: FPn and XMMn registers have value <n> in 
 * their first byte. 
 */
static bool CheckMyFpContext(const CONTEXT * pContext)
{
	unsigned char fpContextSpaceForXsave[sizeof (FPSTATE)+ FPSTATE_ALIGNMENT];
    FPSTATE *fpState= 
		reinterpret_cast<FPSTATE *>
		(( reinterpret_cast<ADDRINT>(fpContextSpaceForXsave) + (FPSTATE_ALIGNMENT - 1)) & (-1*FPSTATE_ALIGNMENT));

    PIN_GetContextFPState(pContext, fpState);

    for (unsigned i = 0;  i < 8;  ++i)
    {
        if (fpState->fxsave_legacy._sts[i]._raw._lo != i)
            return false;
        if (fpState->fxsave_legacy._sts[i]._raw._hi != 0)
            return false;
    }

    unsigned numXmms = sizeof(fpState->fxsave_legacy._xmms) / sizeof(fpState->fxsave_legacy._xmms[0]);
    for (unsigned i = 0;  i < numXmms;  ++i)
    {
        if (fpState->fxsave_legacy._xmms[i]._vec64[0] != i)
            return false;
        if (fpState->fxsave_legacy._xmms[i]._vec64[1] != 0)
            return false;
    }

    return true;
}

static int hadException = FALSE;
static void OnException(THREADID threadIndex, 
                  CONTEXT_CHANGE_REASON reason, 
                  const CONTEXT *ctxtFrom,
                  CONTEXT *ctxtTo,
                  INT32 info, 
                  VOID *v)
{
    if (reason == CONTEXT_CHANGE_REASON_EXCEPTION)
    {
		hadException = TRUE;
        static bool first = true;

        if (first)
        {
            first = false;
        }
        else
        {
            if (KnobCheckFp && !CheckMyFpContext(ctxtFrom))
            {
                Abort("Tool: Mismatch in the FP context");
            }
        }
    }
}

VOID Fini(INT32 code, VOID *v)
{
	if (!hadException)
	{
		Abort("Did not detect exception");
		exit(-1);
	}
}

int main(INT32 argc, CHAR **argv)
{
    if (PIN_Init(argc, argv))
    {
        Abort("Tool: Invalid arguments");
    }

    PIN_AddContextChangeFunction(OnException, 0);

	PIN_AddFiniFunction(Fini, 0);

    // Never returns
    PIN_StartProgram();

    return 0;
}
