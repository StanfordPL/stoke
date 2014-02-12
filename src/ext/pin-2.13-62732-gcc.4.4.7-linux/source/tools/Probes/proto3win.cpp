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
  @ORIGINAL_AUTHOR: Vijay Janapa Reddi
*/

/* ===================================================================== */
/*! @file
  Replace an original function with a custom function defined in the tool. The
  new function can have either the same or different signature from that of its
  original function.
*/

/* ===================================================================== */
#include "pin.H"
#include <iostream>

namespace WIND
{
    #include <windows.h>
}

using namespace std;

typedef VOID * (*FUNCPTR_MALLOC)(size_t);

/* ===================================================================== */
VOID * Jit_Malloc_IA32( CONTEXT * context, FUNCPTR_MALLOC orgFuncptr,
                        size_t arg0,
                        ADDRINT returnIp, ADDRINT esp, ADDRINT ebp )
{
    cout << "Jit_Malloc_IA32 ("
         << hex << (ADDRINT) orgFuncptr << ", " 
         << hex << arg0 << ", "		
         << hex << returnIp << ","
         << hex << esp << ", "
         << hex << ebp << ")" 
         << endl << flush;
    
    VOID * ret;
    
    PIN_CallApplicationFunction( context, PIN_ThreadId(),
                                 CALLINGSTD_DEFAULT, AFUNPTR(orgFuncptr),
                                 PIN_PARG(void *), &ret,
                                 PIN_PARG(size_t), arg0,
                                 PIN_PARG_END() );


    cout << "Jit_Malloc_IA32: ret = " << hex << (ADDRINT)ret << dec << endl;
    return ret;
}

/* ===================================================================== */
VOID * Probe_Malloc_IA32( FUNCPTR_MALLOC  orgFuncptr,
                          size_t arg0,
                          ADDRINT returnIp, ADDRINT esp, ADDRINT ebp )
{
    cout << "Probe_Malloc_IA32 ("
         << hex << (ADDRINT) orgFuncptr << ", " 
         << hex << arg0 << ", "		
         << hex << returnIp << ","
         << hex << esp << ", "
         << hex << ebp << ")" 
         << endl << flush;
    
    VOID * ret;
    
    ret = orgFuncptr( arg0 );
    
    cout << "Probe_Malloc_IA32: ret = " << hex << (ADDRINT)ret << dec << endl;
    return ret;
}

/* ===================================================================== */
VOID ImageLoad(IMG img, VOID *v)
{
    const char * name = "malloc";
 
    RTN rtn = RTN_FindByName(img, name);
    if (RTN_Valid(rtn))
    {
        PROTO proto_malloc = PROTO_Allocate(PIN_PARG(WIND::LPVOID),
                                             CALLINGSTD_DEFAULT,  name,
                                             PIN_PARG(size_t),
                                             PIN_PARG_END() );

        cout << "Replacing " << name << " in " << IMG_Name(img) << endl;

        if ( ! PIN_IsProbeMode() )
        {
            RTN_ReplaceSignature(
                rtn, AFUNPTR(Jit_Malloc_IA32),
                IARG_PROTOTYPE, proto_malloc,
                IARG_CONTEXT,
                IARG_ORIG_FUNCPTR,
                IARG_FUNCARG_ENTRYPOINT_VALUE, 0,
                IARG_RETURN_IP,
                IARG_REG_VALUE, REG_ESP,
                IARG_REG_VALUE, REG_EBP,
                IARG_END);
        }
        else if (RTN_IsSafeForProbedReplacement(rtn))
        {
            RTN_ReplaceSignatureProbed(
                rtn, AFUNPTR(Probe_Malloc_IA32),
                IARG_PROTOTYPE, proto_malloc,
                IARG_ORIG_FUNCPTR,
                IARG_FUNCARG_ENTRYPOINT_VALUE, 0,
                IARG_RETURN_IP,
                IARG_REG_VALUE, REG_ESP,
                IARG_REG_VALUE, REG_EBP,
                IARG_END);
        }

        PROTO_Free( proto_malloc);
    }
}

/* ===================================================================== */
int main(INT32 argc, CHAR *argv[])
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
