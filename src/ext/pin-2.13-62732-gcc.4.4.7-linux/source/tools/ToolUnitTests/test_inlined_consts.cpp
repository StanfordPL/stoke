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
#include <iostream>
#include <fstream>
#include "pin.H"


const UINT32  val2 = 0xbaadf00d;
const ADDRINT val3 = 0xacdcacdcacdcacdc;


extern "C" ADDRINT uint32Glob = 0;
extern "C" ADDRINT addrIntGlob = 0;
int first = TRUE;



extern "C" VOID PIN_FAST_ANALYSIS_CALL GetConsts(UINT32 uint32, ADDRINT addrint, ADDRINT whereToSave);
/*
{ 
    uint32Glob = uint32; 
    addrIntGlob = addrint;
}
*/
    

VOID Trace(TRACE trace, VOID *v)
{
    if (first)
    {
        BBL_InsertCall(TRACE_BblHead(trace), IPOINT_BEFORE, AFUNPTR(GetConsts), IARG_FAST_ANALYSIS_CALL, 
                       IARG_UINT32, val2,
                       IARG_ADDRINT, val3,
                       IARG_END);
        first = FALSE;
    }
}


// This function is called when the application exits
VOID Fini(INT32 code, VOID *v)
{
    cout << hex << " uint32Glob " << uint32Glob << " addrIntGlob " << addrIntGlob << endl;
    if (uint32Glob != val2)
    {
        cout << "***ERROR uint32Glob" << endl; 
        exit(-1);
    }
    if (addrIntGlob != val3)
    {
        cout << "***ERROR addrIntGlob" << endl;
        exit(-1);
    }
}

// argc, argv are the entire command line, including pin -t <toolname> -- ...
int main(int argc, char * argv[])
{
    // Initialize pin
    PIN_Init(argc, argv);

    // Register Instruction to be called to instrument instructions
    TRACE_AddInstrumentFunction(Trace, 0);

    // Register Fini to be called when the application exits
    PIN_AddFiniFunction(Fini, 0);
    
    // Start the program, never returns
    PIN_StartProgram();
    
    return 0;
}
