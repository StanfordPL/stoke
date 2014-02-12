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
 * ORIGINAL_AUTHOR: Ady Tal
 *
 *  This test checks bogus symbol size
 */

#include <iostream>
#include <fstream>
#include <stdio.h>
#include <stdlib.h>

#include "pin.H"

using namespace std;


KNOB<string> KnobOutputFile(KNOB_MODE_WRITEONCE,         "pintool",
                            "o", "elf_symsize.out", "specify output file name");

ofstream outfile;

VOID ImageLoad(IMG img, void *v)
{
    if (!IMG_IsMainExecutable(img))
    {
        outfile << "Ignoring image: " << IMG_Name(img) << endl;
        return;
    }

    outfile << "Parsing image: " << IMG_Name(img) << endl;
    for( SYM sym = IMG_RegsymHead(img); SYM_Valid(sym); sym = SYM_Next(sym) )
    {
        outfile << "Symbol " << SYM_Name(sym) << " address 0x" 
                << hex << SYM_Address(sym) << endl;

        RTN rtn = RTN_FindByName(img, SYM_Name(sym).c_str());
        if (!RTN_Valid(rtn))
        {
            outfile << "Routine not found, continue..." << endl;
            continue;
        }
        
        outfile << "Routine " << RTN_Name(rtn) << " address 0x" 
                << hex << RTN_Address(rtn) << " size 0x" 
                << hex << RTN_Size(rtn) << endl;
    }
}

VOID Fini(INT32 code, VOID *v)
{
    outfile << "Symbol test passed successfully" << endl;
    outfile.close();
}
/* ===================================================================== */
/* Print Help Message.                                                   */
/* ===================================================================== */

INT32 Usage()
{
    cerr << "This is the invocation pintool" << endl;
    cerr << endl << KNOB_BASE::StringKnobSummary() << endl;
    return -1;
}


/* ===================================================================== */
/* Main.                                                                 */
/* ===================================================================== */

int main(int argc, char * argv[])
{
    PIN_InitSymbols();
    if (PIN_Init(argc, argv)) return Usage();

    outfile.open(KnobOutputFile.Value().c_str());
    IMG_AddInstrumentFunction(ImageLoad, 0);
    PIN_AddFiniFunction(Fini, 0);

    PIN_StartProgram();
    return 0;
}



/* ================================================================== */
