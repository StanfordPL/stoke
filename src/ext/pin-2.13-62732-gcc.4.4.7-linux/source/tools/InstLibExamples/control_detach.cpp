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
#include <stdio.h>
#include "pin.H"
#include <iostream>
#include "instlib.H"


using namespace INSTLIB;


//
// This test case combines detach.cpp and control.pp
// It calls PIN_Detach() whenever a specified region is reached.
// You can specify regions by "-skip, -start_address, -ppfile" etc.
//


// Contains knobs and instrumentation to recognize start/stop points
CONTROL control;

VOID Handler(CONTROL_EVENT ev, VOID * v, CONTEXT * ctxt, VOID * ip , THREADID tid)
{

    switch(ev)
    {
      case CONTROL_START:
        if (ip == 0)
        {
            std::cerr << " IP zero before detach; use -skip/-ppfile/-start_address to specify detach location." << endl;
            ASSERTX(false);
        }
        std::cerr << "Start : Detaching at IP: " << hex << ip << endl;
        PIN_Detach();
        break;
    
      case CONTROL_STOP:
        std::cerr << "Stop" << endl;
        break;

      default:
        ASSERT(false, "Received control event " + decstr(ev) + "\n");
        break;
    }
}

VOID helloWorld(VOID *v)
{
    fprintf(stdout, "Hello world!\n");
}

VOID byeWorld(VOID *v)
{
    fprintf(stdout, "Byebye world!\n");
}


INT32 Usage()
{
    cerr <<
        "This pin tool demonstrates uses CONTROL to identify start points in a program and does a PIN_Detach() at those points. \n"
        "\n";

    cerr << KNOB_BASE::StringKnobSummary() << endl;
    return -1;
}


int main(int argc, char * argv[])
{
    if( PIN_Init(argc,argv) )
    {
        return Usage();
    }

    // Activate alarm, must be done before PIN_StartProgram
    control.RegisterHandler(Handler, 0, FALSE);
    control.Activate();
    
    // Callback function "byeWorld" is invoked
    // right before Pin releases control of the application
    // to allow it to return to normal execution
    PIN_AddDetachFunction(helloWorld, 0);
    PIN_AddDetachFunction(byeWorld, 0);

    // Never returns
    PIN_StartProgram();
    
    return 0;
}
