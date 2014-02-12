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
#if !defined(_ALIGNCHK_H_)
#define _ALIGNCHK_H_
#include <iostream>
#include <iomanip>
#include "pin_isa.H"


#ifndef ALIGNMENT_CHECK_KNOB_DEFAULT
# define ALIGNMENT_CHECK_KNOB_DEFAULT "1"
#endif

namespace INSTLIB
{
using namespace std;

class ALIGN_CHECK
{
  public:
    ALIGN_CHECK():
        enableKnob(KNOB_MODE_WRITEONCE, "pintool", "alignchk",
                   ALIGNMENT_CHECK_KNOB_DEFAULT,
                   "Check alignment of data for movdqa instructions.")
    {
    }
    
    bool IsActive()
    {
        return enableKnob;
    }

    INT32 Activate()
    {
        if (enableKnob == 0)
        {
            return 0;
        }

        // Register Instruction to be called to instrument instructions
        TRACE_AddInstrumentFunction(InstrumentTrace, this);
    
        return 1;
    }
  private:

    KNOB<BOOL>  enableKnob;

    // Pin calls this function every time a new trace is encountered
    // Goal: Check alignment of MOVDQA instructions
    // NOTE: We are using TRACE instrumentation because it has higher
    // precedence than INS instrumentation.

    static VOID 
    InstrumentTrace(TRACE trace, VOID *v)
    {
        ALIGN_CHECK* xthis = reinterpret_cast<ALIGN_CHECK*>(v);
        if (xthis->enableKnob)
        {
            for (BBL bbl = TRACE_BblHead(trace); BBL_Valid(bbl); bbl = BBL_Next(bbl))
            {
                for (INS ins = BBL_InsHead(bbl); INS_Valid(ins); ins = INS_Next(ins))
                {
                    xed_iclass_enum_t iclass = static_cast<xed_iclass_enum_t>(INS_Opcode(ins));
                    if (iclass == XED_ICLASS_MOVDQA)
                    {
                        if (INS_IsMemoryWrite(ins))
                        {
                            INS_InsertCall(ins, IPOINT_BEFORE, (AFUNPTR)check_alignment, 
                                           IARG_MEMORYWRITE_EA, 
                                           IARG_INST_PTR,
                                           IARG_UINT32, 0,
                                           IARG_END);
                        }
                        else if (INS_IsMemoryRead(ins))
                        {
                            INS_InsertCall(ins, IPOINT_BEFORE, (AFUNPTR)check_alignment, 
                                           IARG_MEMORYREAD_EA, 
                                           IARG_INST_PTR,
                                           IARG_UINT32, 1,
                                           IARG_END);
                        }
                    }
                }
            }
        }
    }

    ////////////////////////////////////////////////////////////////////////////
    

    static VOID
    check_alignment(ADDRINT memaddr, ADDRINT pc, UINT32 read)
    {
        // movdqa's must be 16b aligned. So the low 4 bits of the address
        // MUST be zero.
        // cerr << "Checking " << hex << memaddr << " @ " << pc << dec << endl;
        if ((memaddr & 0xF) != 0)
        {
            // misaligned
            cerr << "Misaligned MOVDQA at instruction address: "
                 << hex 
                 << pc
                 << "   "
                 << (read ? "read" : "write")
                 << " data address: " 
                 << memaddr 
                 << dec
                 << endl;
            exit(1);
        }
    }
};

} // namespace INSTLIB
#endif
