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
// This tool is used to test performance affects of inserting a call in probe mode


#include <stdio.h>
#include <iostream>
#include <iomanip>
#include <fstream>
#include "pin.H"

ofstream OutFile;


VOID AtRtn(VOID* name, UINT64 tsc)
{
    OutFile << std::left << std::setw(32) << reinterpret_cast<CHAR *>(name) << "," << hex << tsc << endl;
}

VOID Image(IMG img, VOID * v)
{
    if ( (IMG_Name(img).find("ntdll.dll") != string::npos) ||
       (IMG_Name(img).find("NTDLL.DLL") != string::npos) ||
       (IMG_Name(img).find("NTDLL.dll") != string::npos) ) 

    {
        return;
    }
    if ( (IMG_Name(img).find("MSVCR") != string::npos) ||
       (IMG_Name(img).find("msvcr") != string::npos) ) 

    { // _NLG_Return2 causes problems
        return;
    }
   
    for (SEC sec = IMG_SecHead(img); SEC_Valid(sec); sec = SEC_Next(sec))
    {
        for (RTN rtn = SEC_RtnHead(sec); RTN_Valid(rtn); rtn = RTN_Next(rtn))
        {


            if (RTN_Name(rtn).find(".text") != string::npos) 
            {
                continue;
            }

            BOOL canBeProbed = RTN_IsSafeForProbedInsertion(rtn);
            if (canBeProbed && RTN_Name(rtn)[0] != '_' && RTN_Name(rtn)[0] != '.')
            {
                RTN_InsertCallProbed( rtn, IPOINT_BEFORE,  AFUNPTR(AtRtn), IARG_PTR, RTN_Name(rtn).c_str(), IARG_TSC, IARG_END);
            }
        }
    }
}

int main(int argc, char **argv)
{
    PIN_Init(argc, argv);
    PIN_InitSymbols();

    OutFile.open("iarg_tsc_probed1.out");

    IMG_AddInstrumentFunction(Image, 0);

    PIN_StartProgramProbed();
    return 0;
}
