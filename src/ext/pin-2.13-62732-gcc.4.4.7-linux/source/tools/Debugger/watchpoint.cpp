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
 * @ORIGINAL_AUTHOR: Greg Lueck
 *
 * A sample tool that extends GDB by adding a "watchpoint" command, which stops
 * at a breakpoint when a specified memory address is written.
 */

#include <sstream>
#include "pin.H"

KNOB<BOOL> KnobUseIargConstContext(KNOB_MODE_WRITEONCE, "pintool",
                                   "const_context", "0", "use IARG_CONST_CONTEXT");

static VOID Instruction(INS, VOID *);
static ADDRINT OnMemWriteIf(ADDRINT);
static VOID DoBreakpoint(CONTEXT *, THREADID);
static BOOL DebugInterpreter(THREADID, CONTEXT *, const string &, string *, VOID *);

static ADDRINT WatchAddr = 0;
static bool SkipOne = false;


int main(int argc, char *argv[])
{
    if (PIN_Init(argc, argv))
        return 1;

    PIN_AddDebugInterpreter(DebugInterpreter, 0);
    INS_AddInstrumentFunction(Instruction, 0);

    PIN_StartProgram();
    return 0;
}


static VOID Instruction(INS ins, VOID *)
{
    if (INS_IsMemoryWrite(ins))
    {
        INS_InsertIfCall(ins, IPOINT_BEFORE, (AFUNPTR)OnMemWriteIf, IARG_MEMORYWRITE_EA, IARG_END);
        INS_InsertThenCall(ins, IPOINT_BEFORE, (AFUNPTR)DoBreakpoint, 
                           (KnobUseIargConstContext)?IARG_CONST_CONTEXT:IARG_CONTEXT,
                           // IARG_CONST_CONTEXT has much lower overhead 
                           // than IARG_CONTEX for passing the CONTEXT* 
                           // to the analysis routine. Note that IARG_CONST_CONTEXT
                           // passes a read-only CONTEXT* to the analysis routine 
                           IARG_THREAD_ID, IARG_END);
    }
}


static ADDRINT OnMemWriteIf(ADDRINT addr)
{
    bool skipOne = SkipOne;
    SkipOne = false;
    return ((WatchAddr == addr) && !skipOne);
}


static VOID DoBreakpoint(CONTEXT *ctxt, THREADID tid)
{
    SkipOne = true;

    std::ostringstream os;
    os << "Watchpoint triggered at 0x" << std::hex << WatchAddr;
    PIN_ApplicationBreakpoint(ctxt, tid, FALSE, os.str());
}


static BOOL DebugInterpreter(THREADID, CONTEXT *ctxt, const string &cmd, string *res, VOID *)
{
    if (cmd.find("watch") == 0)
    {
        std::istringstream is(&cmd.c_str()[sizeof("watch")-1]);
        ADDRINT addr;
        is >> std::hex >> addr;
        if (is)
        {
            WatchAddr = addr;
            std::ostringstream os;
            os << "Watching address 0x" << std::hex << addr << "\n";
            *res = os.str();
        }
        return TRUE;
    }
    return FALSE;
}
