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
  Insert a call to an analysis routine in probe mode.  From the analysis
  routine, call an application function using a function pointer.
*/

/* ===================================================================== */
#include "pin.H"
#include <iostream>
#include <stdlib.h>

using namespace std;

/* ===================================================================== */

int myBlue( CONTEXT * ctxt, AFUNPTR pf_Blue, int one, int two )
{
    cout << " myBlue: Jitting Blue6() at address " << hexstr(ADDRINT(pf_Blue)) << endl;
    
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
VOID ImageLoad(IMG img, VOID *v)
{
    if ( IMG_IsMainExecutable( img ))
    {
        PROTO protoBlue = PROTO_Allocate( PIN_PARG(int), CALLINGSTD_DEFAULT,
                                          "Blue6", PIN_PARG(int), PIN_PARG(int),
                                          PIN_PARG_END() );
        
        RTN blueRtn = RTN_FindByName( img, "Blue6" );
        if ( ! RTN_Valid(blueRtn) )
        {
            cout << "Blue6 cannot be found." << endl;
            exit(1);
        }
        
        
        RTN rtn = RTN_FindByName(img, "main");
        if (RTN_Valid(rtn))
        {
            RTN_Open(rtn);
            
            for( INS ins = RTN_InsHead(rtn); INS_Valid(ins); ins = INS_Next(ins) )
            {
                if ( INS_IsCall(ins) )
                {
                    INS_InsertCall(
                        ins, IPOINT_BEFORE, AFUNPTR(myBlue),
                        IARG_PROTOTYPE, protoBlue,
                        IARG_CONTEXT,
                        IARG_ADDRINT, AFUNPTR( RTN_Address(blueRtn) ),
                        IARG_UINT32, 1,
                        IARG_UINT32, 2,
                        IARG_END);

                    cout << " Instrumenting " << RTN_Name(rtn) << " at address "
                         << hexstr(INS_Address(ins)) << endl;
                }
            }
            
            
            RTN_Close(rtn);
        }    
        PROTO_Free( protoBlue );
    }
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
