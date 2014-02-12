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
#include <iostream>

#include "pin.H"
#include "instlib.H"

using namespace INSTLIB;


#if defined(__GNUC__)
#  if defined(__APPLE__)
#    define ALIGN_LOCK __attribute__ ((aligned(16))) /* apple only supports 16B alignment */
#  else
#    define ALIGN_LOCK __attribute__ ((aligned(64)))
#  endif
#else
# define ALIGN_LOCK __declspec(align(64))
#endif

LOCALVAR PIN_LOCK  ALIGN_LOCK output_lock; 

// Track the number of instructions executed
ICOUNT icount;

// Contains knobs and instrumentation to recognize start/stop points
CONTROL control("controller_");

VOID Handler(CONTROL_EVENT ev, VOID * v, CONTEXT * ctxt, VOID * ip, THREADID tid)
{
    PIN_GetLock(&output_lock, tid+1);

    std::cout << "tid: " << tid << " ";
    std::cout << "ip: "  << ip << " " << icount.Count() ;

    switch(ev)
    {
      case CONTROL_START:
        std::cout << "Start" << endl;
        break;

      case CONTROL_STOP:
        std::cout << "Stop" << endl;
        break;


      case CONTROL_THREADID:
        std::cout << "ThreadID" << endl;
        break;

      default:
        ASSERTX(false);
        break;
    }
    PIN_ReleaseLock(&output_lock);
}
    
INT32 Usage()
{
    cerr <<
        "This pin tool demonstrates use of CONTROL to identify start/stop points in a program\n"
        "\n";

    cerr << KNOB_BASE::StringKnobSummary() << endl;
    return -1;
}

// argc, argv are the entire command line, including pin -t <toolname> -- ...
int main(int argc, char * argv[])
{
    if( PIN_Init(argc,argv) )
    {
        return Usage();
    }

    PIN_InitLock(&output_lock);
    icount.Activate();
    
    // Activate alarm, must be done before PIN_StartProgram
    control.RegisterHandler(Handler, 0, FALSE);
    control.Activate();

    // Start the program, never returns
    PIN_StartProgram();
    
    return 0;
}


