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
/*! @file
  Replace an original function with a custom function defined in the tool. The
  new function can have either the same or different signature from that of its
  original function.
*/

/* ===================================================================== */
#include "pin.H"
#include <iostream>

using namespace std;

/* ===================================================================== */

int myBlue( CONTEXT * ctxt, AFUNPTR pf_Blue, int one, int two )
{
    cout << " myBlue: Jitting Blue6()" << endl;

    int res;
    
    PIN_CallApplicationFunction( ctxt, PIN_ThreadId(),
                                 CALLINGSTD_DEFAULT, pf_Blue,
                                 PIN_PARG(int), &res,
                                 PIN_PARG(int), one,
                                 PIN_PARG(int), two,
                                 PIN_PARG_END() );
    
    cout << " myBlue: Returned from Blue6(); res = " << res << endl;

    return res;
}

/* ===================================================================== */

int myBar( CONTEXT * ctxt, AFUNPTR pf_Bar, int one, int two )
{
    cout << " myBar: Jitting Bar6()" << endl;
    
    int res;
    
    PIN_CallApplicationFunction( ctxt, PIN_ThreadId(),
                                 CALLINGSTD_DEFAULT, pf_Bar,
                                 PIN_PARG(int), &res,
                                 PIN_PARG(int), one,
                                 PIN_PARG(int), two,
                                 PIN_PARG_END() );
    
    cout << " myBar: Returned from Bar6(); res = " << res << endl;

    return res;
}


/* ===================================================================== */
VOID ImageLoad(IMG img, VOID *v)
{
    PROTO protoBar = PROTO_Allocate( PIN_PARG(int), CALLINGSTD_DEFAULT,
                                      "Bar6", PIN_PARG(int), PIN_PARG(int),
                                      PIN_PARG_END() );
    
    PROTO protoBlue = PROTO_Allocate( PIN_PARG(int), CALLINGSTD_DEFAULT,
                                       "Blue6", PIN_PARG(int), PIN_PARG(int),
                                       PIN_PARG_END() );
    
    RTN rtn = RTN_FindByName(img, "Bar6");
    if (RTN_Valid(rtn))
    {
        cout << " Replacing " << RTN_Name(rtn) << " in " << IMG_Name(img) << endl;

        RTN_ReplaceSignature(
            rtn, AFUNPTR(myBar),
            IARG_PROTOTYPE, protoBar,
            IARG_CONTEXT,
            IARG_ORIG_FUNCPTR,
            IARG_UINT32, 1,
            IARG_UINT32, 2,
            IARG_END);
    }    

    rtn = RTN_FindByName(img, "Blue6");
    if (RTN_Valid(rtn))
    {
        cout << " Replacing " << RTN_Name(rtn) << " in " << IMG_Name(img) << endl;

        RTN_ReplaceSignature(
            rtn, AFUNPTR(myBlue),
            IARG_PROTOTYPE, protoBlue,
            IARG_CONTEXT,
            IARG_ORIG_FUNCPTR,
            IARG_FUNCARG_ENTRYPOINT_VALUE, 0,
            IARG_FUNCARG_ENTRYPOINT_VALUE, 1,
            IARG_END);
    }    

    PROTO_Free( protoBar );
    PROTO_Free( protoBlue );
}

/* ===================================================================== */
int main(INT32 argc, CHAR *argv[])
{
    PIN_InitSymbols();

    PIN_Init(argc, argv);

    IMG_AddInstrumentFunction(ImageLoad, 0);
    
    PIN_StartProgram();

    return 0;
}

/* ===================================================================== */
/* eof */
/* ===================================================================== */
