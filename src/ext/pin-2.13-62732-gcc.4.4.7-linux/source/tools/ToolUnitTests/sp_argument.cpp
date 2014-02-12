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
/* ===================================================================== */
/*
  @ORIGINAL_AUTHOR: Vladimir Vladimirov
*/

/* ===================================================================== */
/*! @file
  Replace an original function with a custom function defined in the tool.
  Its purpose is to check delivery of original SP value.
*/

/* ===================================================================== */
#include "pin.H"


/* ===================================================================== */
// Replaces original function. Returns 0 if all SP values are valid.
int check_sp_value( void* arg0,
                    ADDRINT gsp, ADDRINT esp, ADDRINT sp )
{
    ADDRINT orig_sp = (ADDRINT)arg0;

    if ((orig_sp == gsp) &&
        ((unsigned int)orig_sp == esp) &&
        ((unsigned short)orig_sp == sp))
    {
        return 0;
    }
    return 1;
}


/* ===================================================================== */
VOID ImageLoad(IMG img, VOID *v)
{
    if (!IMG_IsMainExecutable(img))
    {
        return;
    }

    const char * name = "check_sp_value";
 
    RTN rtn = RTN_FindByName(img, name);
    if (RTN_Valid(rtn))
    {
        PROTO proto = PROTO_Allocate(PIN_PARG(int),
                                     CALLINGSTD_DEFAULT,  name,
                                     PIN_PARG(void*),
                                     PIN_PARG_END() );

        if ( ! PIN_IsProbeMode() )
        {
            RTN_ReplaceSignature(
                rtn, AFUNPTR(check_sp_value),
                IARG_PROTOTYPE, proto,
                IARG_FUNCARG_ENTRYPOINT_VALUE, 0,
                IARG_REG_VALUE, REG_STACK_PTR,
                IARG_REG_VALUE, REG_ESP,
                IARG_REG_VALUE, REG_SP,
                IARG_END);
        }
        else if (RTN_IsSafeForProbedReplacement(rtn))
        {
            RTN_ReplaceSignatureProbed(
                rtn, AFUNPTR(check_sp_value),
                IARG_PROTOTYPE, proto,
                IARG_FUNCARG_ENTRYPOINT_VALUE, 0,
                IARG_REG_VALUE, REG_STACK_PTR,
                IARG_REG_VALUE, REG_ESP,
                IARG_REG_VALUE, REG_SP,
                IARG_END);
        }

        PROTO_Free( proto);
    }
}

/* ===================================================================== */
int main(int argc, char *argv[])
{
    PIN_InitSymbols();

    PIN_Init(argc, argv);

    IMG_AddInstrumentFunction(ImageLoad, 0);
    
    if ( PIN_IsProbeMode() )
        PIN_StartProgramProbed();
    else
        PIN_StartProgram();
    
    return 0;
}
/* ===================================================================== */
/* eof */
/* ===================================================================== */
