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
/*
 * This tool demonstrates the usage of the PIN_GetSourceLocation API from an instrumentation routine. You
 * may notice that there are no analysis routines in this example.
 *
 * Note: According to the Pin User Guide, calling PIN_GetSourceLocation from an analysis routine requires
 *       that the client lock be taken first.
 *
 */

#include <iostream>
#include <fstream>
#include "pin.H"

using std::cout;
using std::cerr;
using std::endl;
using std::ostream;
using std::ofstream;


/* ================================================================== */
// Global variables 
/* ================================================================== */


/* ===================================================================== */
// Command line switches
/* ===================================================================== */

KNOB<string> KnobOutputFile(KNOB_MODE_WRITEONCE,  "pintool",
    "o", "", "specify file name for the tool's output. If no filename is specified, the output will be directed to stdout.");


/* ===================================================================== */
// Utilities
/* ===================================================================== */

// Print out help message.
INT32 Usage() {
    cerr << "This tool demonstrates the usage of the PIN_GetSourceLocation API." << endl;
    cerr << endl << KNOB_BASE::StringKnobSummary() << endl;

    return -1;
}

// This is a utility function for acquiring and printing the source information.
static void output(ADDRINT address, ostream* printTo, INS ins = INS_Invalid()) {
    string filename;    // This will hold the source file name.
    INT32 line = 0;     // This will hold the line number within the file.

    // In this example, we don't print the column number so there is no reason to obtain it.
    // Simply pass a NULL pointer instead. Also, acquiring the client lock is not required in
    // instrumentation functions, only in analysis functions.
    //
    PIN_GetSourceLocation(address, NULL, &line, &filename);

    // Prepare the output strings.
    string asmOrFuncName;
    if (INS_Valid(ins)) {
        asmOrFuncName = INS_Disassemble(ins); // For an instruction, get the disassembly.
    }
    else {
        asmOrFuncName = RTN_FindNameByAddress(address); // For a routine, get its name.
    }

    // For output cleanliness, print only if source was found.
    if (!filename.empty()) {
        *printTo << "0x" << address << " " << asmOrFuncName << " #" << filename << ":" << line << endl;
    }
}


/* ===================================================================== */
// Instrumentation callbacks
/* ===================================================================== */

// IMG instrumentation routine - called once per image upon image load
static VOID ImageLoad(IMG img, VOID * v) {
    // For simplicity, instrument only the main image. This can be extended to any other image of course.
    if (IMG_IsMainExecutable(img)) {

        // To find all the instructions in the image, we traverse the sections of the image.
        for (SEC sec = IMG_SecHead(img); SEC_Valid(sec); sec = SEC_Next(sec)) {

            // For each section, process all RTNs.
            for (RTN rtn = SEC_RtnHead(sec); RTN_Valid(rtn); rtn = RTN_Next(rtn)) {

                // Many RTN APIs require that the RTN be opened first.
                RTN_Open(rtn);
                output(RTN_Address(rtn), static_cast<ostream*>(v)); // Calls PIN_GetSourceLocation for the RTN address.

                // Call PIN_GetSourceLocation for all the instructions of the RTN.
                for (INS ins = RTN_InsHead(rtn); INS_Valid(ins); ins = INS_Next(ins)) {
                    output(INS_Address(ins), static_cast<ostream*>(v), ins); // Calls PIN_GetSourceLocation for a single instruction.
                }
                RTN_Close(rtn); // Don't forget to close the RTN once you're done.
            }
        }
    }
}

// Adding fini function just to close the output file
VOID Fini(INT32 code, VOID *v)
{
    if (!KnobOutputFile.Value().empty() && v != NULL)
    {
		static_cast<ofstream*>(v)->close();
    }
}

/* ===================================================================== */
// main
/* ===================================================================== */

int main(INT32 argc, CHAR **argv) {
    PIN_InitSymbols();

    if(PIN_Init(argc,argv)) {
        return Usage();
    }

    ofstream outFile;
    if (!KnobOutputFile.Value().empty())
    {
		outFile.open(KnobOutputFile.Value().c_str());
    }

    IMG_AddInstrumentFunction(ImageLoad, (KnobOutputFile.Value().empty()) ? &cout : &outFile);

    // Register function to be called when the application exits
    PIN_AddFiniFunction(Fini, outFile);

    // Never returns
    PIN_StartProgram();

    return 0;
}
