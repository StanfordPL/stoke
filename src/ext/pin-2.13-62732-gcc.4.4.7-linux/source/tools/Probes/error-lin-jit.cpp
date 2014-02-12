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
//
// This tool demonstrates how to get the value of the application's
// errno on linux in jit mode.
// 
// There are symbols called __errno_location in both libc and libpthread.
// This test captures the address of the __errno_location() function in
// one of the libraries and not in the other.   Today, the implementations
// in libc and libpthread point to the same actual location (in a TLS),
// but this assumption is fragile and may change at some time int he future.
//
// On FreeBSD, the function is called __error(). It suffers from the same problem
// (but the threading library in FreeBSD is libthr). The problem is more severe
// on FreeBSD because the function in libc and in libthr don't point to the same
// location (libthr point to TLS and libc to a static variable).  Also, on FreeBSD,
// libc and libpthr lack symbols, so the address of the function cannot be found.
// This tool is not supported on FreeBSD.


#include "pin.H"
#include <iostream>
#include <stdlib.h>
#include <errno.h>

using namespace std;

AFUNPTR pf_errno_location = 0;


/* ===================================================================== */
VOID ToolCheckError(  CONTEXT * ctxt )
{
    unsigned long err_loc;
    
    if ( *pf_errno_location != 0 )
    {
        cerr << "Tool: calling __errno_location()" << endl;
        
        PIN_CallApplicationFunction( ctxt, PIN_ThreadId(), CALLINGSTD_DEFAULT,
                                     pf_errno_location, PIN_PARG(unsigned long), &err_loc,
                                     PIN_PARG_END() );

        int err_value = *( reinterpret_cast< unsigned long *>(err_loc));
        
        cerr << "Tool: errno=" << err_value << endl;
    }
    else
        cerr << "Tool: __errno_location not found." << endl;
    
}

/* ===================================================================== */
VOID ImageLoad(IMG img, VOID *v)
{

    RTN errno_location_rtn = RTN_FindByName(img, "__errno_location");
    if (RTN_Valid(errno_location_rtn))
    {
        pf_errno_location = reinterpret_cast<AFUNPTR>(RTN_Address(errno_location_rtn));
        cerr << "Tool: Found __errno_location() at " << hex << (ADDRINT)pf_errno_location << "." << endl;
    }
    
    if ( IMG_IsMainExecutable( img ))
    {
        PROTO proto = PROTO_Allocate( PIN_PARG(void), CALLINGSTD_DEFAULT,
                                      "CheckError", PIN_PARG_END() );
        
        RTN rtn = RTN_FindByName(img, "CheckError");
        if (RTN_Valid(rtn))
        {
            cout << "Replacing " << RTN_Name(rtn) << " in " << IMG_Name(img) << endl;
            
            RTN_ReplaceSignature(rtn, AFUNPTR(ToolCheckError),
                                 IARG_PROTOTYPE, proto,
                                 IARG_CONTEXT,
                                 IARG_END);
            
        }    
        PROTO_Free( proto );
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


