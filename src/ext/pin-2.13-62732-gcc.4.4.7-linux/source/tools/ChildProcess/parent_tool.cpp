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
using namespace std;

namespace WIND
{
#include <windows.h>
}
/* ===================================================================== */
/* Command line Switches */
/* ===================================================================== */

//General configuration - Pin and Tool full path
KNOB<string> KnobPinFullPath(KNOB_MODE_WRITEONCE,         "pintool",
                             "pin_path", "", "pin full path");

KNOB<string> KnobToolsFullPath(KNOB_MODE_WRITEONCE,         "pintool",
                               "tools_path", "", "grand parent tool full path");


//Parent configuration - Application and PinTool name
KNOB<string> KnobParentApplicationName(KNOB_MODE_WRITEONCE,         "pintool",
                                       "parent_app_name", "win_parent_process", "parent application name");

KNOB<string> KnobParentToolName(KNOB_MODE_WRITEONCE,         "pintool",
                                "parent_tool_name", "parent_tool", "parent tool full path");


//Child configuration - Application and PinTool name
KNOB<string> KnobChildApplicationName(KNOB_MODE_WRITEONCE,         "pintool",
                                      "child_app_name", "win_child_process", "child application name");

KNOB<string> KnobChildToolName(KNOB_MODE_WRITEONCE,         "pintool",
                               "child_tool_name", "follow_child_3gen_tool", "child tool full path");


// Current process id received by grand_parent tool
KNOB<OS_PROCESS_ID> KnobCurrentProcessId(KNOB_MODE_WRITEONCE,         "pintool",
                                  "process_id", "0", "current process id");

// Whether to check current process id received in KnobCurrentProcessId
KNOB<BOOL> KnobCheckCurrentProcessId(KNOB_MODE_WRITEONCE,         "pintool",
                                         "check_process_id", "0", "current process id");

// Whether to probe the child
KNOB<BOOL>   KnobProbeChild(KNOB_MODE_WRITEONCE,                "pintool",
                            "probe_child", "0", "probe the child process");

/* ===================================================================== */

BOOL FollowChild(CHILD_PROCESS childProcess, VOID * userData)
{
    BOOL res;
    INT appArgc;
    CHAR const * const * appArgv;

    OS_PROCESS_ID pid = CHILD_PROCESS_GetId(childProcess);

    CHILD_PROCESS_GetCommandLine(childProcess, &appArgc, &appArgv);
    
    //Inject only if the KnobChildApplicationName value is current child process application
    string childAppToInject = KnobChildApplicationName.Value();
    string childApp(appArgv[0]);
    string::size_type index = childApp.find(childAppToInject);
    if(index == string::npos)
    {
        return FALSE;
    }

    //Set Pin's command line for child process
    INT pinArgc = 0;
    CHAR const * pinArgv[10];

    string pin = KnobPinFullPath.Value() + "pin";
    pinArgv[pinArgc++] = pin.c_str();
    pinArgv[pinArgc++] = "-follow_execv";
    if (KnobProbeChild)
    {
        pinArgv[pinArgc++] = "-probe"; // pin in probe mode
    }
    pinArgv[pinArgc++] = "-t";
    string tool = KnobToolsFullPath.Value() + KnobChildToolName.Value();
    pinArgv[pinArgc++] = tool.c_str();
    pinArgv[pinArgc++] = "-pin_path";
    pinArgv[pinArgc++] = KnobPinFullPath.Value().c_str();
    pinArgv[pinArgc++] = "-tools_path";
    pinArgv[pinArgc++] = KnobToolsFullPath.Value().c_str();
    pinArgv[pinArgc++] = "--";

    CHILD_PROCESS_SetPinCommandLine(childProcess, pinArgc, pinArgv);

    return TRUE;
}



int main(INT32 argc, CHAR **argv)
{
    PIN_Init(argc, argv);

    cout << "In parent_tool PinTool is probed " << decstr(PIN_IsProbeMode()) << endl;


    PIN_AddFollowChildProcessFunction(FollowChild, 0);

    //Verify KnobCurrentProcessId is accurate
    if(KnobCheckCurrentProcessId == TRUE)
    {
        if(WIND::GetCurrentProcessId() != KnobCurrentProcessId)
        {
            cout << "Got wrong process id in KnobCurrentProcessId" << endl;
            exit(0);
        }
    }
 
    // Never returns
    if ( PIN_IsProbeMode() )
    {
        PIN_StartProgramProbed();
    }
    else
    {
        PIN_StartProgram();
    }

    return 0;
}
