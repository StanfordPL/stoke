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
 * Simple tool to test extended commands.
 */

#include <iostream>
#include "pin.H"

bool GotPinCommand = false;
bool GotOurCommand = false;

static bool OnCommand(THREADID, CONTEXT *, const std::string &, std::string *, VOID *);
static void OnExit(INT32, VOID *);


int main(int argc, char * argv[])
{
    PIN_Init(argc, argv);

    PIN_AddDebugInterpreter(OnCommand, 0);
    PIN_AddFiniFunction(OnExit, 0);
    PIN_StartProgram();
    return 0;
}


static bool OnCommand(THREADID, CONTEXT *, const std::string &cmd, std::string *reply, VOID *)
{
    if (cmd == "pin foo")
    {
        // Pin Reserves all command that start with "pin ", so the tool should never see this.
        //
        std::cerr << "Did not expect \"pin\" command\n";
        GotPinCommand = true;
        return true;
    }
    if (cmd == "mycommand")
    {
        *reply = "Got mycommand\n";
        GotOurCommand = true;
        return true;
    }
    return false;
}

static void OnExit(INT32, VOID *)
{
    if (!GotOurCommand)
    {
        std::cerr << "Did not receive \"mycommand\"\n";
        PIN_ExitProcess(1);
    }
    if (GotPinCommand)
    {
        PIN_ExitProcess(1);
    }
}
