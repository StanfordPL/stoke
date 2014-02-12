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
//  ORIGINAL_AUTHOR: Gail Lyons
//
//  This tool tests the functionality if CODECACHE::GetOriginalAddress();
//

#include "pin.H"
#include "utils.H"
#include "portability.H"
#include <iostream>
#include <fstream>



using namespace std;

/* ================================================================== */
/* Global Variables                                                   */
/* ================================================================== */
ofstream TraceFile;

KNOB<string> KnobOutputFile(KNOB_MODE_WRITEONCE, "pintool",
    "o", "orig_address.out", "specify trace file name");
KNOB<BOOL>  KnobPid(KNOB_MODE_WRITEONCE, "pintool",
    "p", "0", "append pid to output");

/* ===================================================================== */
/* Commandline Switches */
/* ===================================================================== */

/* ================================================================== */
/*
 This routine is called once at the start of the cache.
*/
VOID OpenFile()
{
    string logFileName = KnobOutputFile.Value();
    if( KnobPid )
        logFileName += "." + decstr( getpid_portable() );
    TraceFile.open(logFileName.c_str());
}

/* ================================================================== */
/*
 Print details of traces as they are inserted
*/
VOID Trace(TRACE trace, VOID *v)
{
    for (BBL bbl = TRACE_BblHead(trace); BBL_Valid(bbl); bbl = BBL_Next(bbl))
    {
        for (INS ins = BBL_InsHead(bbl); INS_Valid(ins); ins = INS_Next(ins))
        {
            ADDRINT cache_pc = INS_CodeCacheAddress(ins);

            if ( cache_pc != 0x0 )
            {
                ADDRINT orig_pc = CODECACHE_OriginalAddress(cache_pc);

                TraceFile << "Code cache: ";
                TraceFile << "\tcache pc=0x" << hex << cache_pc;
                TraceFile << "\torig pc=0x" << hex << orig_pc;

                if ( INS_IsOriginal(ins) ) 
                {
                    if ( INS_Address(ins) == orig_pc )
                        TraceFile << "\tSuccess." << endl;
                    else 
                    {
                        TraceFile << "\tFailure." << endl;
                        TraceFile << IMG_Name( SEC_Img (RTN_Sec (INS_Rtn (ins) )));
                        TraceFile << ": \tINS_Address(ins)=0x" << hex << INS_Address(ins);
                        TraceFile << "\tCODECACHE_GetOriginalAddress=0x" << hex << orig_pc << endl;
                    }
                }
                else
                    TraceFile << "\t\tNot original." << endl;
            }
        }
    }
}


/* ================================================================== */
/*
 This routine is called once at the end.
*/
VOID CloseFile(INT32 c, VOID *v)
{
    TraceFile << "#eof" << endl;
    TraceFile.close();
}

/* ================================================================== */
/*
 Initialize and begin program execution under the control of Pin
*/
int main(INT32 argc, CHAR **argv)
{
    //if (PIN_Init(argc, argv) || KnobHelp) return Usage();
    if (PIN_Init(argc, argv) ) return Usage();

    // Register a routine that gets called at the start
    CODECACHE_AddCacheInitFunction(OpenFile, 0);

    // Register a routine that gets called when a trace is
    //  inserted into the codecache
    CODECACHE_AddTraceInsertedFunction(Trace, 0);
    
    // Register a routine that gets called when the program ends
    PIN_AddFiniFunction(CloseFile, 0);
    
    PIN_StartProgram();  // Never returns
    
    return 0;
}
