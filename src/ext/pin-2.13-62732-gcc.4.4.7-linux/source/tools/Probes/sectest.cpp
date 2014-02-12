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
/*
  @ORIGINAL_AUTHOR: Elena Demikhovsky
*/
/* ===================================================================== */

#include <stdlib.h>
#include <stdint.h>

#include <iostream>
#include <fstream>
#include <map>
#include <vector>

#include "pin.H"

ofstream outfile;

using namespace std;

void InstImage(IMG img, void *v)
{
    outfile << "-----------" << endl <<"Image name = " << IMG_Name(img) << endl << flush;
    ADDRINT mappedStart = IMG_StartAddress(img);
    ADDRINT mappedEnd = mappedStart + IMG_SizeMapped(img);
    
    outfile << hex << showbase;
    outfile << "mapped start " << mappedStart << " mapped end " << mappedEnd << endl;
    
    
    ADDRINT virtStart = IMG_LowAddress(img);
    ADDRINT virtEnd = IMG_HighAddress(img);
    
    outfile << "low addr " << virtStart << " high address " << virtEnd << endl;
    
    for (SEC sec = IMG_SecHead(img); SEC_Valid(sec); sec = SEC_Next(sec))
    {
        ADDRINT secData = reinterpret_cast <ADDRINT > (SEC_Data(sec));
        if (secData)
        {
            if ((secData < mappedStart) || (secData >= mappedEnd))
            {
                cout << "ERROR: Image " << IMG_Name(img) << " Section " << SEC_Name(sec) << " data wrong ptr: " << secData << endl;
                exit(-1);
            }
        }
        ADDRINT secAddr = SEC_Address(sec);
        if (secAddr)
        {
            if ((secAddr < virtStart) || (secAddr >= virtEnd))
            {
                cout << "ERROR: Image " << IMG_Name(img) << "Section " << SEC_Name(sec) << " address wrong ptr: " << secAddr << endl;
                exit(-1);
            }            
        }
        outfile << "Section \"";
        outfile.width(30);
        outfile << left << SEC_Name(sec) << "\"";
        outfile << " \t data ptr ";
        outfile.width(sizeof(ADDRINT)*2+4);
        outfile << left << secData << " addr ptr " << secAddr << endl;
    }        
}

/*!
 *  Print out help message.
 */
INT32 Usage()
{
    cerr << "Pintool Usage. " << endl;       
    cerr << KNOB_BASE::StringKnobSummary() << endl;

    return -1;
}

int main(int argc, char **argv)
{
    PIN_InitSymbols();
    
    if (PIN_Init(argc, argv))
    {
        return Usage();
    }
    
    outfile.open("sectest.out");
    
    IMG_AddInstrumentFunction(InstImage, 0);
    
    PIN_StartProgramProbed();
    return 0;
}
