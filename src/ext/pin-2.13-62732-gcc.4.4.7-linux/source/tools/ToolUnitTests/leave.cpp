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
// leave.cpp -- testing  the leave instruction's memory address


#include "pin.H"
#include "portability.H"
extern "C" {
#include "xed-interface.h"
}
#include <iostream>
#include <iomanip>
#include <fstream>


class simple_test_t
{
  public:
    simple_test_t()
        : knob_output_file(KNOB_MODE_WRITEONCE,"pintool", "o", 
                           "leave.out", "specify profile file name")
    {
        out = 0;
    }

    ~simple_test_t()
    {
        if (out)
            out->close();
    }

    std::ofstream* out;
    KNOB<string> knob_output_file;
    
    void activate()
    {
        string filename =  knob_output_file.Value();
        out = new std::ofstream(filename.c_str());

        PIN_AddThreadStartFunction(reinterpret_cast<THREAD_START_CALLBACK>(thread_begin),
                                   this);
        PIN_AddThreadFiniFunction(reinterpret_cast<THREAD_FINI_CALLBACK>(thread_end),
                                 this);

        TRACE_AddInstrumentFunction(reinterpret_cast<TRACE_INSTRUMENT_CALLBACK>(instrument_trace), 
                                    this);
        *out << "tool activated" << endl;
    }


    static void thread_begin(THREADID tid, CONTEXT *ctxt, INT32 flags, simple_test_t* pthis)
    {
    }

    static void thread_end(THREADID tid, const CONTEXT *ctxt, INT32 code, simple_test_t* pthis)
    {
    }

    static void print_memop(ADDRINT memea, 
                            ADDRINT memsize,
                            ADDRINT pc,
                            THREADID tid,
                            simple_test_t* pthis ) {
        *pthis->out 
            << std::hex << std::setw(sizeof(ADDRINT)*2)
            << pc 
            << " TID: "
            << std::setw(2)
            << tid
            << " LEAVE memea: " 
            << std::setw(sizeof(ADDRINT)*2)
            << memea
            << " length " << memsize
            << std::endl;
    }

    void instrument_instruction(INS ins)
    {
        *out << "INSTRUMENT: "
             << std::setw(16)
             << std::hex 
             << INS_Address(ins) 
             << std::dec 
             << " "
             << INS_Disassemble(ins) << std::endl;
        
        INS_InsertCall(ins, IPOINT_BEFORE,
                       AFUNPTR(print_memop),
                       IARG_MEMORYREAD_EA,
                       IARG_MEMORYREAD_SIZE,
                       IARG_INST_PTR,
                       IARG_THREAD_ID,
                       IARG_PTR, this,
                       IARG_END);
    }
    

    
    static bool check_for_leave(INS ins, simple_test_t* pthis) {
        xed_iclass_enum_t iclass = static_cast<xed_iclass_enum_t>(INS_Opcode(ins));
        if (iclass == XED_ICLASS_LEAVE) 
            return true;
        return false;
    }

    static void instrument_trace(TRACE trace, simple_test_t* pthis) {
        for (BBL bbl = TRACE_BblHead(trace); BBL_Valid(bbl); bbl = BBL_Next(bbl))
            for (INS ins = BBL_InsHead(bbl); INS_Valid(ins); ins = INS_Next(ins))
                if (check_for_leave(ins, pthis))
                    pthis->instrument_instruction(ins);
    }


}; // class


int  usage()
{
    cerr << "Usage: ..." << endl;
    cerr << KNOB_BASE::StringKnobSummary() << endl;
    return 1;
}

int main(int argc, char * argv[])
{
    static simple_test_t  t; // must be before usage...

    PIN_InitSymbols();
    if (PIN_Init(argc, argv))
        return usage();

    t.activate();

    // Never returns
    PIN_StartProgram();
    
    return 0;
}
