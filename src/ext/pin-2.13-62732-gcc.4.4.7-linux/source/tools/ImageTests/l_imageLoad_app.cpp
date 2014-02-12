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
#include <unistd.h>
#include <sys/types.h>
#include <stdlib.h>
#include <errno.h>
#include <dlfcn.h>

#define EXPORT_SYM extern "C"

EXPORT_SYM int AfterAttach();

static int MAX_SIZE = 128; /*maximum line size*/

enum ExitType {
    RES_SUCCESS = 0,      // 0
    RES_FORK_FAILED,      // 1
    RES_EXEC_FAILED,      // 2
    RES_LOAD_FAILED,      // 3
    RES_RES_INVALID_ARGS  // 4
};

void UnixOpen(char* filename)
{
    void* dlh = dlopen(filename, RTLD_LAZY);
    if( !dlh )
    {
        fprintf(stderr, " Failed to load: %s because: %s\n", filename, dlerror());
        fflush(stderr);
        exit(RES_LOAD_FAILED);
    }
    dlclose(dlh);
}

int AfterAttach()
{
    // Pin sets an anslysis function here to notify the application when Pin attaches to it.
    return 0;
}

/*
    Expected argv arguments:
    [1] first image to load
    [2] second image to load
    [3] pin executable
    [4] "-slow_asserts"
    [5] "-probe"
    [6] tool
    [7] "-o"
    [8] tool's output file
*/

int main(int argc, char** argv)
{
    if(argc < 9)
    {
        fprintf(stderr, "l_imageLoad_app received too few arguments. If you are running this test outside a kit test, you may need to add -slow-asserts right after the pin argument.\n" );
        exit(RES_RES_INVALID_ARGS);
    }
    if(argc > 9)
    {
        fprintf(stderr, "l_imageLoad_app received too many arguments\n" );
        exit(RES_RES_INVALID_ARGS);
    }

    UnixOpen(argv[1]);

    pid_t parentPid = getpid();
    pid_t child = fork();
    if (child < 0) {
        perror("fork failed while creating application process");
        exit(RES_FORK_FAILED);
    }
    if (child)
    {
        // inside parent
        while(!AfterAttach())
        {
            sleep(1);
        }

        UnixOpen(argv[2]);
    }
    if ( child == 0 )
    {
        // inside child
        char attachPid[MAX_SIZE];
        sprintf(attachPid, "%d", parentPid);
        execl(argv[3], argv[3], argv[4],argv[5],"-pid", attachPid, "-t", argv[6], argv[7], argv[8],  NULL);
        perror("execl failed while trying to attach Pin to the application\n");
        exit(RES_EXEC_FAILED);
    }
    return RES_SUCCESS;
}
