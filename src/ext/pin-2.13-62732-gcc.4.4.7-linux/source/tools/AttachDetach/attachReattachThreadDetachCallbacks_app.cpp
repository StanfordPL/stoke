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
#include <stdlib.h>
#include <dlfcn.h>
#include <unistd.h>
#include <sys/types.h>
#include <sys/syscall.h>
#include <sched.h>
#include <pthread.h>

#define EXPORT_SYM extern "C"

#define NTHREADS 20

volatile bool loop;

EXPORT_SYM bool AfterAttach1();

EXPORT_SYM bool AfterAttach2();

static int MAX_SIZE = 128; /*maximum line size*/

enum ExitType {
    RES_SUCCESS = 0,      // 0
    RES_FORK_FAILED,      // 1
    RES_EXEC_FAILED,      // 2
    RES_LOAD_FAILED,      // 3
    RES_INVALID_ARGS      // 4
};

bool AfterAttach1()
{
    // Pin sets an anslysis function here to notify the application when Pin attaches to it.
    return false;
}

bool AfterAttach2()
{
    // Pin sets an anslysis function here to notify the application when Pin attaches to it.
    return false;
}

void * thread_func (void *arg)
{    
    while (loop)
    {
         sched_yield();
    }
    return 0;
}

/*
    Expected argv arguments:
    [1] pin executable
    [2] "slow asserts"
    [3] tool
    [4] output file
    [5] First imageName
	[6] Second imageName
*/
int main(int argc, char** argv)
{
    fprintf(stderr, "Start main\n");
	
    if(argc!=7)
    {
       fprintf(stderr, "Not enough arguments\n" );
       fflush(stderr);
       exit(RES_INVALID_ARGS);
    }

    loop  = true;

    int ret_val;
    pthread_t h[NTHREADS];
    for (unsigned long i = 0; i < NTHREADS; i++)
    {
        ret_val= pthread_create (&h[i], 0, thread_func, 0);
        if(ret_val) 
        {
            perror("ERROR, pthread_create failed");
            exit(1);
        }
    }
	
    pid_t parentPid = getpid();
    pid_t child = fork();
    if (child < 0)
    {
        perror("Fork failed while creating application process");
        exit(RES_FORK_FAILED);
    }

    if (child)
    { 
		while(!AfterAttach1())
        {
            sleep(1);
        }
        
		void *handle = dlopen(argv[5], RTLD_LAZY);
        if (!handle)
        {
            fprintf(stderr, " Failed to load: %s because: %s\n", argv[1], dlerror());
            fflush(stderr);
            exit(RES_LOAD_FAILED);
        }
        
		while(!AfterAttach2())
        {
            sleep(1);
        }

        handle = dlopen(argv[6], RTLD_LAZY);
        if (!handle)
        {
            fprintf(stderr, " Failed to load: %s because: %s\n", argv[2], dlerror());
            fflush(stderr);
            exit(RES_LOAD_FAILED);
        }
        
        while(1)
        {
            // expected to be stopped by tool.
            sleep(1);
        }
    }
	
    if ( child == 0 )
    {
        // Inside child
        char attachPid[MAX_SIZE];
        snprintf(attachPid ,MAX_SIZE , "%d", parentPid);
        execl(argv[1],argv[2],"-pid", attachPid, "-probe", "-t",  argv[3], "-o", argv[4], NULL);
        perror("execl failed while trying to attach Pin to the application\n");
        exit(RES_EXEC_FAILED);
    }
    return RES_SUCCESS;
}

