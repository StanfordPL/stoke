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
// This tool test RTN_InsHead RTN_InsHeadOnly and RTN_InsertCall (before)


#include <stdio.h>
#include <iostream>
#include <iomanip>
#include <fstream>
#include "pin.H"

ofstream OutFile;

VOID AtRtn1(VOID* name, UINT64 tsc, ADDRINT pc)
{
    OutFile << std::left << std::setw(32) << reinterpret_cast<CHAR *>(name) << "," << hex << tsc << "," << hex << pc << endl;
}

VOID PIN_FAST_ANALYSIS_CALL AtRtn2(VOID* name, UINT64 tsc, ADDRINT pc)
{
    OutFile << std::left << std::setw(32) << reinterpret_cast<CHAR *>(name) << "," << hex << tsc << "," << hex << pc  << endl;
}


VOID Image(IMG img, void *v)
{
    for (SEC sec = IMG_SecHead(img); SEC_Valid(sec); sec = SEC_Next(sec))
    {
        for (RTN rtn = SEC_RtnHead(sec); RTN_Valid(rtn); rtn = RTN_Next(rtn))
        {
            RTN_Open(rtn);

            RTN_InsertCall( rtn, IPOINT_BEFORE, AFUNPTR(AtRtn1),  IARG_PTR, RTN_Name(rtn).c_str(), IARG_TSC, IARG_INST_PTR , IARG_END);
            RTN_InsertCall( rtn, IPOINT_BEFORE, AFUNPTR(AtRtn2), IARG_FAST_ANALYSIS_CALL, IARG_PTR, RTN_Name(rtn).c_str(), IARG_TSC, IARG_INST_PTR , IARG_END);

            RTN_Close(rtn);
        }
    }
}

VOID Fini (INT32 code, VOID *v)
{
    OutFile.close();
}

int main(int argc, char **argv)
{
    PIN_Init(argc, argv);
    PIN_InitSymbols();

    OutFile.open("iarg_tsc2.out");

    IMG_AddInstrumentFunction(Image, 0);
    PIN_AddFiniFunction(Fini, 0);

    PIN_StartProgram();
    return 0;
}
