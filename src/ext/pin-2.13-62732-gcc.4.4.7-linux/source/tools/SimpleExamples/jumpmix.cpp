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
  @ORIGINAL_AUTHOR: Robert Muth
*/

/* ===================================================================== */
/*! @file
 *  This file contains an ISA-portable PIN tool for tracing instructions
 */



#include "pin.H"
#include "portability.H"
#include <iostream>
#include <iomanip>
#include <fstream>
#include <map>

/* ===================================================================== */
/* Commandline Switches */
/* ===================================================================== */

KNOB<string> KnobOutputFile(KNOB_MODE_WRITEONCE,         "pintool",
                            "o", "jumpmix.out", "specify profile file name");

KNOB<BOOL>   KnobPid(KNOB_MODE_WRITEONCE,                "pintool",
                     "i", "0", "append pid to output");

/* ===================================================================== */
/* Print Help Message                                                    */
/* ===================================================================== */

static INT32 Usage()
{
    cerr << "This pin tool collects a profile of jump/branch/call instructions for an application\n";

    cerr << KNOB_BASE::StringKnobSummary();

    cerr << endl;
    return -1;
}

/* ===================================================================== */
/* Global Variables */
/* ===================================================================== */



class COUNTER
{
  public:
    UINT64 _call;
    UINT64 _call_indirect;
    UINT64 _return;
    UINT64 _syscall;
    UINT64 _branch;
    UINT64 _branch_indirect;    

    COUNTER() : _call(0),_call_indirect(0), _return(0), _branch(0), _branch_indirect(0)   {}

    UINT64 Total()
    {
        return _call + _call_indirect + _return + _syscall + _branch + _branch_indirect;
    }
};

COUNTER CountSeen;
COUNTER CountTaken;


#define INC(what) VOID inc ## what (INT32 taken) { CountSeen. what ++; if( taken) CountTaken. what ++;}

INC(_call)
INC(_call_indirect)
INC(_branch)
INC(_branch_indirect)
INC(_syscall)
INC(_return)

    


/* ===================================================================== */

VOID Instruction(INS ins, void *v)
{
    if( INS_IsRet(ins) )
    {
        INS_InsertCall(ins, IPOINT_BEFORE, (AFUNPTR) inc_return, IARG_BRANCH_TAKEN,  IARG_END);
    }
    else if( INS_IsSyscall(ins) )
    {
        INS_InsertCall(ins, IPOINT_BEFORE, (AFUNPTR) inc_syscall, IARG_BRANCH_TAKEN,  IARG_END);
    }
    else if (INS_IsDirectBranchOrCall(ins))
    {
        if( INS_IsCall(ins) )
            INS_InsertCall(ins, IPOINT_BEFORE, (AFUNPTR) inc_call, IARG_BRANCH_TAKEN,  IARG_END);
        else
            INS_InsertCall(ins, IPOINT_BEFORE, (AFUNPTR) inc_branch, IARG_BRANCH_TAKEN,  IARG_END);
    }
    else if( INS_IsIndirectBranchOrCall(ins) )
    {
        if( INS_IsCall(ins) )
            INS_InsertCall(ins, IPOINT_BEFORE, (AFUNPTR) inc_call_indirect, IARG_BRANCH_TAKEN,  IARG_END);
        else
            INS_InsertCall(ins, IPOINT_BEFORE, (AFUNPTR) inc_branch_indirect, IARG_BRANCH_TAKEN,  IARG_END);
    }

}

/* ===================================================================== */

#define OUT(n, a, b) *out << n << " " << a << setw(16) << CountSeen. b  << " " << setw(16) << CountTaken. b << endl

static std::ofstream* out = 0;

VOID Fini(int n, void *v)
{
    SetAddress0x(1);


    *out << "# JUMPMIX\n";
    *out << "#\n";
    *out << "# $dynamic-counts\n";
    *out << "#\n";
    

    
    *out << "4000 *total "  << setw(16) << CountSeen.Total() << " " << setw(16) << CountTaken.Total() << endl;
    
        
    OUT(4010, "call            ",_call);
    OUT(4011, "indirect-call   ",_call_indirect);
    OUT(4012, "branch          ",_branch);
    OUT(4013, "indirect-branch ",_branch_indirect);
    OUT(4014, "syscall         ",_syscall);
    OUT(4015, "return          ",_return);

    *out << "#\n";
    *out << "# eof\n";
    out->close();
    
}



/* ===================================================================== */
/* Main                                                                  */
/* ===================================================================== */

int main(int argc, char *argv[])
{
    
    if( PIN_Init(argc,argv) )
    {
        return Usage();
    }
    
    string filename =  KnobOutputFile.Value();
    if( KnobPid )        filename += "." + decstr( getpid_portable() );
    out = new std::ofstream(filename.c_str());

        
    INS_AddInstrumentFunction(Instruction, 0);
    PIN_AddFiniFunction(Fini, 0);

    // Never returns

    PIN_StartProgram();
    
    return 0;
}

/* ===================================================================== */
/* eof */
/* ===================================================================== */
