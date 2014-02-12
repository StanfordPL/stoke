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



LOCALVAR std::ofstream log_inl;

KNOB<string> KnobOutputFile(KNOB_MODE_WRITEONCE,         "pintool",
    "o", "inlined-stack-arg2.out", "output file");

#if defined(__cplusplus)
extern "C"
#endif
VOID Analysis_func (ADDRINT param);

#if defined(__cplusplus)
extern "C"
#endif
VOID Analysis_func_immed (ADDRINT immed);

#if defined(__cplusplus)
extern "C"
#endif
VOID Analysis_func_reg_overwrite (ADDRINT param);




INT32 Usage()
{
    cerr <<
        "This tests if the stack arguments are optimized as expected"
        "\n";

    cerr << endl;

    return -1;
}

VOID Instruction(INS ins, VOID *v)
{
    INS_InsertCall(ins, IPOINT_BEFORE, (AFUNPTR)Analysis_func,
#ifdef TARGET_IA32E // 4 dummy params in regs on Intel64
		           IARG_ADDRINT, 1,
				   IARG_ADDRINT, 2,
				   IARG_ADDRINT, 3,
				   IARG_ADDRINT, 4,
#endif
                   IARG_REG_VALUE, REG_GDX, 
				   IARG_END);

    INS_InsertCall(ins, IPOINT_BEFORE, (AFUNPTR)Analysis_func_immed,
#ifdef TARGET_IA32E // 4 dummy params in regs on Intel64
		           IARG_ADDRINT, 1,
				   IARG_ADDRINT, 2,
				   IARG_ADDRINT, 3,
				   IARG_ADDRINT, 4,
#endif
                   IARG_ADDRINT, 0xdeadbeef, 
				   IARG_END);

    INS_InsertCall(ins, IPOINT_BEFORE, (AFUNPTR)Analysis_func_immed,
#ifdef TARGET_IA32E // 4 dummy params in regs on Intel64
		           IARG_ADDRINT, 1,
				   IARG_ADDRINT, 2,
				   IARG_ADDRINT, 3,
				   IARG_ADDRINT, 4,
#endif
                   IARG_ADDRINT, 0x7eadbeef, 
				   IARG_END);

    INS_InsertCall(ins, IPOINT_BEFORE, (AFUNPTR)Analysis_func_reg_overwrite,
#ifdef TARGET_IA32E // 4 dummy params in regs on Intel64
		           IARG_ADDRINT, 1,
				   IARG_ADDRINT, 2,
				   IARG_ADDRINT, 3,
				   IARG_ADDRINT, 4,
#endif
                   IARG_REG_VALUE, REG_GSI, 
				   IARG_END);
}

VOID Fini(INT32 code, VOID *v)
{
    log_inl  <<  "SUCCESS\n";
    log_inl.close();
}

int main(int argc, char *argv[])
{
    if( PIN_Init(argc,argv) )
    {
        return Usage();
    }

    string logfile =  KnobOutputFile.Value();

    log_inl.open(logfile.c_str());

    INS_AddInstrumentFunction(Instruction, 0);
    PIN_AddFiniFunction(Fini, 0);

    // Never returns
    PIN_StartProgram();
    
    return 0;
}

/* ===================================================================== */
/* eof */
/* ===================================================================== */
