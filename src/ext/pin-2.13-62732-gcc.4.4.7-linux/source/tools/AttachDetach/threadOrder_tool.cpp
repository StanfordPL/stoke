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
#include <cstdio>
#include <linux/unistd.h>
#include <sched.h>
#include <cassert>
#ifdef TARGET_ANDROID
#include <sys/syscall.h>
#endif

FILE* master = NULL;
FILE* generated = NULL;
pid_t masterPid;

pid_t GetTid()
{
     return syscall(__NR_gettid);
}

VOID onImageLoad(IMG img, VOID *v)
{
    if (IMG_IsMainExecutable(img)) {
        fprintf(generated, "1\n");
    }
}

// This is done under the Pin client lock so there is no race on the global FILE* generated.
VOID onAppStart(VOID *v)
{
    fprintf(generated, "2\n");
}

// This is done under the Pin client lock so there is no race on the global variables.
VOID onThreadAttach(VOID *sigset, VOID *v)
{
    pid_t tid = GetTid(); // The master thread's tid is the same as the pid of the entire process.
    if (tid == masterPid) { // This is the master thread which should be first.
        fprintf(generated, "3\n");
    }
    else { // This is the second thread which should be last, therefore close the file and exit.
           // If this happens before the master thread then there is a problem and the test should fail.
           // This failure will be discovered while comparing the two files.
        fprintf(generated, "4\n");
        fclose(generated);
        PIN_ExitProcess(0);
    }
}

VOID buildMasterFile()
{
    master = fopen("threadOrder_master.out", "w");
    assert(master != NULL);
    fprintf(master, "1\n2\n3\n4\n");
    fclose(master);
}

int main(int argc, char** argv)
{
    if (!PIN_Init(argc, argv))
    {
        masterPid = getpid();
        
        buildMasterFile();
        generated = fopen("threadOrder_generated.out", "w");
        assert(generated != NULL);
        
        IMG_AddInstrumentFunction(onImageLoad, 0);
        PIN_AddThreadAttachProbedFunction(onThreadAttach, 0);
        PIN_AddApplicationStartFunction(onAppStart, 0);

        PIN_StartProgramProbed();
    }

    return(1);
}
