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
#include <stdlib.h>
#include <iostream>
#include <fstream>
#include <string.h>
#include <map>
#include <utility>
using namespace std;

int howmany = 2;
bool continue_ = true;
VOID Routine(RTN rtn, void * v)
{
    if (continue_ )
    {
        RTN_Open(rtn);
        if(strcmp(RTN_Name(rtn).c_str(),"main")==0)
        {
            cout << "RTN = " << RTN_Name(rtn) << endl;
            for ( INS ins=RTN_InsHead(rtn) ; INS_Valid(ins) && continue_; ins=INS_Next(ins) )
            {
                if ( howmany > 0 )
                {
                    cout << ": " << INS_Disassemble(ins) << endl;
                    -- howmany;
                }
                else
                    continue_=false;
            }
        }
        RTN_Close(rtn);
    }
}

VOID Image(IMG img, void * v)
{
    for( SEC sec=IMG_SecHead(img); SEC_Valid(sec) && continue_; sec=SEC_Next(sec) )
    {
        if ( SEC_IsExecutable(sec) )
        {
            for( RTN rtn=SEC_RtnHead(sec); RTN_Valid(rtn) && continue_; rtn=RTN_Next(rtn) )
                Routine(rtn,v);
        }
    }
}

int main(int argc, char ** argv)
{
    KNOB<string> KnobSetSyntax(KNOB_MODE_WRITEONCE, "pintool",
        "setsyntax", "3", "specify disassem syntax");

    if ( PIN_Init(argc,argv) )
    {
        cerr << "Cannot init PIN" << endl;
        return 1;
    }

    int setSyntax = atoi(KnobSetSyntax.Value().c_str());
    switch(setSyntax)
    {
        case 0:PIN_SetSyntaxIntel();break;
        case 1:PIN_SetSyntaxATT();break;
        case 2:PIN_SetSyntaxXED();break;
    }
    PIN_InitSymbols();

    IMG_AddInstrumentFunction(Image,0);

    PIN_StartProgram();
    return 0;
}
