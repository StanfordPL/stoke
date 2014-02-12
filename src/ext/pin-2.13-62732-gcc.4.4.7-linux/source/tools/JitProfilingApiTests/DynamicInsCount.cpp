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

/* ================================================================== */
// Global variables
/* ================================================================== */

UINT64 insNativeDiscoveredCount = 0;  //number of discovered native instructions
UINT64 insDynamicDiscoveredCount = 0; //number of discovered dynamic instructions
UINT64 insNoRtnDiscoveredCount = 0;   //number of discovered instructions without any known routine

UINT64 insNativeExecutedCount = 0;  //number of executed native instructions
UINT64 insDynamicExecutedCount = 0; //number of executed dynamic instructions
UINT64 insNoRtnExecutedCount = 0;   //number of executed instructions without any known routine

std::ostream * out = &cerr;

/* ===================================================================== */
// Command line switches
/* ===================================================================== */

KNOB<string> KnobOutputFile(KNOB_MODE_WRITEONCE,  "pintool", "o", "", "specify file name for output");

/* ===================================================================== */
// Utilities
/* ===================================================================== */

/*!
 *  Print out help message.
 */
INT32 Usage()
{
    cerr << "This tool prints out the number of native and dynamic instructions" << endl;
    cerr << KNOB_BASE::StringKnobSummary() << endl;
    return -1;
}

/* ===================================================================== */
// Analysis routines
/* ===================================================================== */

// This function is called before every native instruction is executed
VOID InsNativeCount()
{
    ++insNativeExecutedCount;
}

// This function is called before every dynamic instruction is executed
VOID InsDynamicCount()
{
    ++insDynamicExecutedCount;
}

// This function is called before every instruction without any known routine is executed
VOID InsNoRtnCount()
{
    ++insNoRtnExecutedCount;
}

/* ===================================================================== */
// Instrumentation callbacks
/* ===================================================================== */

// Pin calls this function every time a new instruction is encountered
VOID Instruction(INS ins, VOID *v)
{
    RTN rtn = INS_Rtn(ins);
    if (!RTN_Valid(rtn))
    {
        ++insNoRtnDiscoveredCount;
        INS_InsertCall(ins, IPOINT_BEFORE, (AFUNPTR)InsNoRtnCount, IARG_END);
    }
    else if (RTN_IsDynamic(rtn))
    {
        ++insDynamicDiscoveredCount;
        INS_InsertCall(ins, IPOINT_BEFORE, (AFUNPTR)InsDynamicCount, IARG_END);
    }
    else
    {
        ++insNativeDiscoveredCount;
        INS_InsertCall(ins, IPOINT_BEFORE, (AFUNPTR)InsNativeCount, IARG_END);
    }
}

/*!
 * Print out analysis results.
 * This function is called when the application exits.
 * @param[in]   code            exit code of the application
 * @param[in]   v               value specified by the tool in the
 *                              PIN_AddFiniFunction function call
 */
VOID Fini(INT32 code, VOID *v)
{
    *out <<  "===============================================" << endl;
    *out <<  "Number of executed native instructions: " << insNativeExecutedCount << endl;
    *out <<  "Number of executed dynamic instructions: " << insDynamicExecutedCount << endl;
    *out <<  "Number of executed instructions without any known routine: " << insNoRtnExecutedCount << endl;
    *out <<  "===============================================" << endl;
    *out <<  "Number of discovered native instructions: " << insNativeDiscoveredCount << endl;
    *out <<  "Number of discovered dynamic instructions: " << insDynamicDiscoveredCount << endl;
    *out <<  "Number of discovered instructions without any known routine: " << insNoRtnDiscoveredCount << endl;
    *out <<  "===============================================" << endl;

    string fileName = KnobOutputFile.Value();
    if (!fileName.empty())
    {
        delete out;
    }
}

/*!
 * The main procedure of the tool.
 * This function is called when the application image is loaded but not yet started.
 * @param[in]   argc            total number of elements in the argv array
 * @param[in]   argv            array of command line arguments,
 *                              including pin -t <toolname> -- ...
 */
int main(int argc, char *argv[])
{
    // Initialize symbol processing
    PIN_InitSymbols();

    // Initialize PIN library. Print help message if -h(elp) is specified
    // in the command line or the command line is invalid
    if(PIN_Init(argc,argv))
    {
        return Usage();
    }

    string fileName = KnobOutputFile.Value();

    if (!fileName.empty())
    {
        out = new std::ofstream(fileName.c_str());
    }

    // Register Instruction to be called to instrument instructions
    INS_AddInstrumentFunction(Instruction, NULL);

    // Register function to be called when the application exits
    PIN_AddFiniFunction(Fini, NULL);

    // Start the program, never returns
    PIN_StartProgram();

    return 0;
}

/* ===================================================================== */
/* eof */
/* ===================================================================== */
