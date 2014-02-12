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
#include <stdlib.h>
#include <iostream>
#include "pin.H"

#if 0
#define DBG_PRINT(a) (a)
#else
#define DBG_PRINT(a)
#endif

UINT64 count_ins = 0;
UINT64 count_bbl_ins = 0;

VOID docount_ins(void * pc)
{
    count_ins++;
    DBG_PRINT(printf("Anal: docount_ins: %lld at pc %p\n", count_ins, pc));
}

VOID docount_bbl_ins(void * pc, INT32 icount)
{
    count_bbl_ins += icount;
    DBG_PRINT(printf("Anal: docount_bbl_ins(%d): %lld at pc %p\n", icount, count_bbl_ins, pc));
    if (count_ins != count_bbl_ins)
    {
        std::cerr << "mismatch: count_ins " << count_ins << " != count_bbl_ins "
                  << count_bbl_ins << " at pc " << pc << endl;
        exit(1);
    }
}
    
VOID Trace(TRACE trace, VOID *v)
{
    for (BBL bbl = TRACE_BblHead(trace); BBL_Valid(bbl); bbl = BBL_Next(bbl))
    {
        DBG_PRINT(printf("Inst: Sequence address %p\n",(CHAR*)(INS_Address(BBL_InsHead(bbl)))));
        for (INS ins = BBL_InsHead(bbl); INS_Valid(ins); ins = INS_Next(ins))
        {
            DBG_PRINT(printf("Inst:   %p\n",(CHAR*)(INS_Address(ins))));
            INS_InsertCall(ins, IPOINT_BEFORE, AFUNPTR(docount_ins), IARG_INST_PTR, IARG_END);
        }
        
        INT32 icount = BBL_NumIns(bbl);
        DBG_PRINT(printf("Inst:     -> control flow change (bbl size %d)\n", icount));
        INS_InsertCall(BBL_InsTail(bbl), IPOINT_BEFORE, AFUNPTR(docount_bbl_ins), IARG_INST_PTR, IARG_UINT32, icount, IARG_END);
    }
}

VOID Fini(INT32 code, VOID *v)
{
    std::cerr << "Count (ins) " << count_ins << ",  (bbl_ins) " << count_bbl_ins << endl;
}

int main(INT32 argc, CHAR **argv)
{
    PIN_Init(argc, argv);
    TRACE_AddInstrumentFunction(Trace, 0);
    PIN_AddFiniFunction(Fini, 0);
    
    // Never returns
    PIN_StartProgram();
    
    return 0;
}
