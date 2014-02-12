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
#include <fstream>

VOID PrintArgs(INT32 arg1, INT32 arg2, INT32 arg3, INT32 arg4, INT32 arg5, INT32 arg6, INT32 arg7, INT32 arg8)
{ 
    ofstream out("args.output");
    out << arg1 << endl;
    out << arg2 << endl;
    out << arg3 << endl;
    out << arg4 << endl;
    out << arg5 << endl;
    out << arg6 << endl;
    out << arg7 << endl;
    out << arg8 << endl;
}
    
VOID CheckIp(ADDRINT ip1,
             ADDRINT ip2,
             ADDRINT ip3,
             ADDRINT ip4,
             ADDRINT ip5,
             ADDRINT ip6,
             ADDRINT ip7,
             ADDRINT ip8,
             ADDRINT ip9,
             ADDRINT ip10
)
{
    if (ip1 != ip2)
        fprintf(stderr,"ip1 %p ip2 %p\n", (void*)ip1, (void*)ip2);
    
    ASSERTX(ip1 == ip2);
    ASSERTX(ip1 == ip3);
    ASSERTX(ip1 == ip4);
    ASSERTX(ip1 == ip5);
    ASSERTX(ip1 == ip6);
    ASSERTX(ip1 == ip7);
    ASSERTX(ip1 == ip8);
    ASSERTX(ip1 == ip9);
    ASSERTX(ip1 == ip10);
}

    
VOID PIN_FAST_ANALYSIS_CALL CheckIpFast(ADDRINT ip1,
                                        ADDRINT ip2,
                                        ADDRINT ip3,
                                        ADDRINT ip4,
                                        ADDRINT ip5,
                                        ADDRINT ip6,
                                        ADDRINT ip7,
                                        ADDRINT ip8,
                                        ADDRINT ip9,
                                        ADDRINT ip10
)
{
    CheckIp(ip1, ip2, ip3, ip4, ip5, ip6, ip7, ip8, ip9, ip10);
}


VOID Instruction(INS ins, VOID *v)
{
    static INT32 count = 0;
    
    if (count % 64 == 0)
    {
        INS_InsertCall(ins, IPOINT_BEFORE, AFUNPTR(CheckIp),
                       IARG_INST_PTR,
                       IARG_ADDRINT, INS_Address(ins),
                       IARG_ADDRINT, INS_Address(ins),
                       IARG_ADDRINT, INS_Address(ins),
                       IARG_ADDRINT, INS_Address(ins),
                       IARG_ADDRINT, INS_Address(ins),
                       IARG_ADDRINT, INS_Address(ins),
                       IARG_ADDRINT, INS_Address(ins),
                       IARG_ADDRINT, INS_Address(ins),
                       IARG_ADDRINT, INS_Address(ins),
                       IARG_END);
        INS_InsertCall(ins, IPOINT_BEFORE, AFUNPTR(CheckIpFast),
                       IARG_FAST_ANALYSIS_CALL,
                       IARG_INST_PTR,
                       IARG_ADDRINT, INS_Address(ins),
                       IARG_ADDRINT, INS_Address(ins),
                       IARG_ADDRINT, INS_Address(ins),
                       IARG_ADDRINT, INS_Address(ins),
                       IARG_ADDRINT, INS_Address(ins),
                       IARG_ADDRINT, INS_Address(ins),
                       IARG_ADDRINT, INS_Address(ins),
                       IARG_ADDRINT, INS_Address(ins),
                       IARG_ADDRINT, INS_Address(ins),
                       IARG_END);
    }
    

    if (count == 0)
    {
        INS_InsertCall(ins, IPOINT_BEFORE, AFUNPTR(PrintArgs),
                       IARG_UINT32, 1,
                       IARG_UINT32, 2,
                       IARG_UINT32, 3,
                       IARG_UINT32, 4,
                       IARG_UINT32, 5,
                       IARG_UINT32, 6,
                       IARG_UINT32, 7,
                       IARG_UINT32, 8,
                       IARG_END);
    }

    count++;
}

int main(int argc, char * argv[])
{
    PIN_Init(argc, argv);

    INS_AddInstrumentFunction(Instruction, 0);
    
    // Never returns
    PIN_StartProgram();
    
    return 0;
}
