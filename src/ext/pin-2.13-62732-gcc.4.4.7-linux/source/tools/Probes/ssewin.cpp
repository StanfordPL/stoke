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
#include "pin.H"
#include <iostream>
#include <fstream>
#include <stdlib.h>
#include <malloc.h>
#include <string.h>
namespace WIND
{
#include <windows.h>
}


using namespace std;


/* ===================================================================== */
/* Commandline Switches */
/* ===================================================================== */

KNOB<string> KnobOutputFile(KNOB_MODE_WRITEONCE, "pintool",
                            "o", "ssewin.outfile", "specify trace file name");

/* ===================================================================== */

INT32 Usage()
{
    cerr <<
        "This pin tool replaces SetSystemError().\n"
        "\n";
    cerr << KNOB_BASE::StringKnobSummary();
    cerr << endl;
    cerr.flush();
    return -1;
}

/* ===================================================================== */
/* Global Variables */
/* ===================================================================== */

ofstream TraceFile;

typedef void ( *FUNCPTR_SET_SYSTEM_ERROR )(WIND::DWORD);

static void ( *fp_setSystemError )(WIND::DWORD);

ADDRINT mainImgEntry = 0;

/* ===================================================================== */

void ReplacedSetSystemErrorProbed(FUNCPTR_SET_SYSTEM_ERROR origFunc,  WIND::DWORD errorCode)
{
    // exercise heavy use of stack inside PinTool
    char useTheStack[0x8765];
    useTheStack[0] = 'a';    
    
    fprintf(stderr,"SetSystemError(%d)\n", errorCode);
    
    origFunc(errorCode);   
}

void ReplacedSetSystemErrorJit(CONTEXT * context, AFUNPTR origFunc, WIND::DWORD errorCode)
{    
    fprintf(stderr,"SetSystemError(%d)\n", errorCode);
    
    PIN_CallApplicationFunction( context, PIN_ThreadId(),
                                 CALLINGSTD_DEFAULT, origFunc,
                                 PIN_PARG(void),
                                 PIN_PARG(int), errorCode,
                                 PIN_PARG_END() );

}


VOID ImageLoad(IMG img, VOID *v)
{
    TraceFile << "Processing " << IMG_Name(img) << endl;
    TraceFile.flush();        
        
	const char * name = "SetSystemError";
    PROTO proto_funcptr = PROTO_Allocate(PIN_PARG(void),
                                             CALLINGSTD_DEFAULT,  name,
                                             PIN_PARG(WIND::DWORD),
                                             PIN_PARG_END() );
        
    // Get the function pointer for the executable SetSystemError()
    RTN rtnSse = RTN_FindByName(img, "SetSystemError");
    if ( RTN_Valid(rtnSse))
	{
	   fprintf(stderr,"Found SetSystemError RTN\n")	;		
         
        if (PIN_IsProbeMode()) 
            RTN_ReplaceSignatureProbed(rtnSse,
                                       AFUNPTR(ReplacedSetSystemErrorProbed),
                                       IARG_PROTOTYPE, proto_funcptr,
                                       IARG_ORIG_FUNCPTR,
                                       IARG_FUNCARG_ENTRYPOINT_VALUE, 0,
                                       IARG_END);
		else
            RTN_ReplaceSignature(rtnSse,
                                 AFUNPTR(ReplacedSetSystemErrorJit),
                                 IARG_PROTOTYPE, proto_funcptr,
                                 IARG_CONTEXT,
                                 IARG_ORIG_FUNCPTR,
                                 IARG_FUNCARG_ENTRYPOINT_VALUE, 0,
                                 IARG_END);
		
    }
}



int main(int argc, CHAR *argv[])
{
    PIN_InitSymbols();
    
    if( PIN_Init(argc,argv) )
    {
        return Usage();
    }
    
    TraceFile.open(KnobOutputFile.Value().c_str());
    TraceFile << hex;
    TraceFile.setf(ios::showbase);
    
    IMG_AddInstrumentFunction(ImageLoad, 0);
    
    if (PIN_IsProbeMode()) {
        PIN_StartProgramProbed();
    } else {
        PIN_StartProgram();
    }
    
    return 0;
}

