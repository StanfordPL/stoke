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
 * @ORIGINAL_AUTHOR: Yael Weiss
 */

/* ===================================================================== */
/*! @file
 * This application is part of the test: "fork_vm_lock.test" which checks that no deadlock has occured when  
 * a child process tries to acquire the VM lock in a post fork callback.
 */
 
#include "pin.H"
#include <iostream>
#include <fstream>
#include <sys/syscall.h>


/* ===================================================================== */
/* Print Help Message                                                    */
/* ===================================================================== */
 
INT32 Usage()
{
    cerr <<
        "This tool calls a post fork callback in a child process. It comes to check" 
        "that no deadlock has occured when a child tries to acquire the VM lock in a post fork callback.\n";
    
    cerr << endl;

    return -1;
}


/* ===================================================================== */
/* Instrumentation function                                              */
/* ===================================================================== */

void fork_func(THREADID threadid, const CONTEXT * ctxt, VOID * v)
{
    /*
     * The function: "CODECACHE_FlushCache()" requires from the calling thread to hold the VM lock.
     */
    CODECACHE_FlushCache(); 
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
  
    PIN_AddForkFunction(FPOINT_AFTER_IN_CHILD, fork_func, 0);
  
    PIN_StartProgram();
  
    return 0;
}

/* ===================================================================== */
/* eof */
/* ===================================================================== */
