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
 * This tool mimics the behavior of TPSS on Linux by adding probes to various libncurses functions.
 * However, in this tool these probes are merely empty wrappers that call the original functions.
 * The objective of the test is to verify that probe generation and insertion don't cause Pin
 * to crash.
 */

#include "pin.H"
#include <iostream>
#include <fstream>

ofstream OutFile;

/* ===================================================================== */
/* Commandline Switches                                                  */
/* ===================================================================== */

KNOB<string> KnobOutputFile(KNOB_MODE_WRITEONCE, "pintool",
    "o", "tpss_lin_libcurses.txt", "specify tool log file name");

/* ===================================================================== */
/* Utility functions                                                     */
/* ===================================================================== */

// Print help information
INT32 Usage()
{
    cerr << "This tool mimics the behavior of TPSS on Linux by adding probes to various libcurses functions." << endl;
    cerr << KNOB_BASE::StringKnobSummary();
    cerr << endl;
    return 1;
}

// Utility function to return the time
string CurrentTime()
{
    char tmpbuf[128];
    time_t thetime = time(NULL);
    ctime_r(&thetime, tmpbuf);
    return tmpbuf;
}

/* ===================================================================== */
/* Function signatures - these functions will be probed                  */
/* ===================================================================== */

int (*fptrgetch)(void);

int (*fptrmvgetch)(int y, int x);

/* ===================================================================== */
/* Probes - implementation of the wrapper functions                      */
/* ===================================================================== */

int mygetch(void)
{
   OutFile << CurrentTime() << "mygetch called " << endl;
   OutFile.flush();
   int res = fptrgetch();

   return res;
}

int mymvgetch(int y, int x)
{
   OutFile << CurrentTime() << "mymvgetch called " << endl;
   OutFile.flush();
   int res = fptrmvgetch(y, x);

   return res;
}

/* ===================================================================== */
/* Instrumnetation functions                                             */
/* ===================================================================== */

// Image load callback - inserts the probes.
void ImgLoad(IMG img, void *v)
{
    // Called every time a new image is loaded

    if ( (IMG_Name(img).find("libncurses.so") != string::npos) ||
         (IMG_Name(img).find("LIBNCURSES.SO") != string::npos) ||
         (IMG_Name(img).find("LIBNCURSES.so") != string::npos) )
    {
        RTN rtngetch = RTN_FindByName(img, "getch");
        if (RTN_Valid(rtngetch) && RTN_IsSafeForProbedReplacement(rtngetch))
        {
            OutFile << CurrentTime() << "Inserting probe for getch at " << RTN_Address(rtngetch) << endl;
            OutFile.flush();
            AFUNPTR fptr = (RTN_ReplaceProbed(rtngetch, AFUNPTR(mygetch)));
            fptrgetch = (int (*)())fptr;
        }

        RTN rtnmvgetch = RTN_FindByName(img, "mvgetch");
        if (RTN_Valid(rtnmvgetch) && RTN_IsSafeForProbedReplacement(rtnmvgetch))
        {
            OutFile << CurrentTime() << "Inserting probe for mvgetch at " << RTN_Address(rtnmvgetch) << endl;
            OutFile.flush();
            AFUNPTR fptr = (RTN_ReplaceProbed(rtnmvgetch, AFUNPTR(mymvgetch)));
            fptrmvgetch = (int (*)(int, int))fptr;
        }
    }
    // finished instrumentation
}

/* ===================================================================== */
/* Main function                                                         */
/* ===================================================================== */

int main(int argc, char *argv[])
{
    // Initialize Pin
    PIN_InitSymbols();
    if (PIN_Init(argc,argv))
    {
        return Usage();
    }

    OutFile.open(KnobOutputFile.Value().c_str());
    OutFile << hex;
    OutFile.setf(ios::showbase);
    OutFile << CurrentTime() << "started!" << endl;
    OutFile.flush();

    // Register the instrumentation callback
    IMG_AddInstrumentFunction(ImgLoad, 0);

    // Start the application
    PIN_StartProgramProbed(); // never returns

    return 0;
}
