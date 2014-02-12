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
#include <stdio.h>
#include <stdlib.h>
#include <iostream>
#include <fstream>

using namespace std;
/* ===================================================================== */

KNOB<string> KnobOutputFile(KNOB_MODE_WRITEONCE, "pintool",
    "o", "forktool.out", "specify file name");

ofstream Out;
/* ===================================================================== */

INT32 Usage()
{
    cerr <<
        "This pin tool tests probe replacement.\n"
        "\n";
    cerr << KNOB_BASE::StringKnobSummary();
    cerr << endl;
    return -1;
}

pid_t activeProcessId = 0;
pid_t parentPid = 0;

void BeforeFork(UINT32 childPid, void *data)
{
	parentPid = PIN_GetPid();
    Out << "TOOL: Before fork.." << endl;
}

void AfterForkInParent(UINT32 childPid, void *data)
{
	activeProcessId = PIN_GetPid();
    Out << "TOOL: After fork in parent." << endl;
}

void AfterForkInChild(UINT32 childPid, void *data)
{
	activeProcessId = PIN_GetPid();
    Out << "TOOL: After fork in child." << endl;
}

BOOL FollowChild(CHILD_PROCESS childProcess, VOID * userData)
{
	if (PIN_GetPid() == parentPid)
	{
    	Out << "TOOL: At follow child callback in parent process." << endl;
	}
	else
	{
    	Out << "TOOL: At follow child callback in child process." << endl;
	}
	// Pin replaces vfork with fork. In this case the global variable
	// activeProcessId will receive the right value
    if (activeProcessId != PIN_GetPid())
	{
		fprintf(stderr, "vfork works incorrectly with -follow_execv\n");
		exit(-1);
	}
    return TRUE;
}


int main(int argc, CHAR *argv[])
{
    PIN_InitSymbols();

    if( PIN_Init(argc,argv) )
    {
        return Usage();
    }
	
    string outFileName = KnobOutputFile.Value() + string("_") + decstr(PIN_GetPid());
    Out.open(outFileName.c_str(), ios_base::app);
    if (!Out.is_open()) 
    {
        cerr << "Can't open file " <<  outFileName << endl;
        exit(-1);
    }
    cerr << "Open file " <<  outFileName << endl;

    PIN_AddForkFunctionProbed(FPOINT_BEFORE, BeforeFork, 0);
    PIN_AddForkFunctionProbed(FPOINT_AFTER_IN_CHILD, AfterForkInChild, 0);
    PIN_AddForkFunctionProbed(FPOINT_AFTER_IN_PARENT, AfterForkInParent, 0);
    PIN_AddFollowChildProcessFunction(FollowChild, 0);

    PIN_StartProgramProbed();

    return 0;
}
