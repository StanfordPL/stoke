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
  @MAJOR_REWRITE: Gail Lyons
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
#include <stdlib.h>

using namespace std;

/* ===================================================================== */
/* Arrays needed for multiple replacements. */ 
/* ===================================================================== */

typedef VOID * (*FUNCPTR_MALLOC)(size_t);

/* ===================================================================== */
/* ===================================================================== */
/* Replacement routine support  */
/* ===================================================================== */


VOID * Malloc_IA32( FUNCPTR_MALLOC orgFuncptr, UINT32 arg0, ADDRINT returnIp,
                    ADDRINT esp, ADDRINT ebp, ADDRINT ebx)
{
    cout << "Malloc_IA32 " << "(" << hex << (ADDRINT) orgFuncptr << ", " 
         << hex << arg0 << ", " 
         << hex << returnIp << ", "
         << hex << ebx << ", "
         << hex << esp << ", "
         << hex << ebp << ")" 
         << endl << flush;
    
    VOID * v = orgFuncptr(arg0);

    cout << "Return value = " << hex << (ADDRINT) v << dec << endl << flush;
    
    return v;
}


/* ===================================================================== */
/* ===================================================================== */
/* Instrumentation routine support  */
/* ===================================================================== */

VOID ImageLoad(IMG img, VOID *v)
{
    cout << IMG_Name(img) << endl;

#if defined (TARGET_IA32)
    PROTO proto_malloc = PROTO_Allocate( PIN_PARG(void *), CALLINGSTD_CDECL,
                                  "malloc", PIN_PARG(int), PIN_PARG_END() );

#elif defined (TARGET_IA32E)
    PROTO proto_malloc = PROTO_Allocate( PIN_PARG(void *), CALLINGSTD_DEFAULT,
                                  "malloc", PIN_PARG(int), PIN_PARG_END() );
#endif

    RTN rtn = RTN_FindByName(img, "malloc");
    if (RTN_Valid(rtn))
    {
        if ( ! RTN_IsSafeForProbedReplacement( rtn ) )
        {
            cout << "Cannot replace malloc in " << IMG_Name(img) << endl;
            exit(1);
        }
        
        cout << "Replacing malloc in " << IMG_Name(img) << endl;

#if defined ( TARGET_IA32 )
        RTN_ReplaceSignatureProbed(
            rtn, AFUNPTR(Malloc_IA32),
            IARG_PROTOTYPE, proto_malloc,
            IARG_ORIG_FUNCPTR,
            IARG_FUNCARG_ENTRYPOINT_VALUE, 0,
            IARG_RETURN_IP,
            IARG_REG_VALUE, REG_ESP,
            IARG_REG_VALUE, REG_EBP,
            IARG_REG_VALUE, REG_EBX,
            IARG_END);
#else
        RTN_ReplaceSignatureProbed(
            rtn, AFUNPTR(Malloc_IA32),
            IARG_PROTOTYPE, proto_malloc,
            IARG_ORIG_FUNCPTR,
            IARG_FUNCARG_ENTRYPOINT_VALUE, 0,
            IARG_RETURN_IP,
            IARG_REG_VALUE, REG_RSP,
            IARG_REG_VALUE, REG_RBP,
            IARG_REG_VALUE, REG_R15,
            IARG_END);
#endif
    }
    


    PROTO_Free( proto_malloc );
}

/* ===================================================================== */
int main(INT32 argc, CHAR *argv[])
{
    PIN_InitSymbols();

    PIN_Init(argc, argv);

    IMG_AddInstrumentFunction(ImageLoad, 0);
    
    PIN_StartProgramProbed();

    return 0;
}

/* ===================================================================== */
/* eof */
/* ===================================================================== */
