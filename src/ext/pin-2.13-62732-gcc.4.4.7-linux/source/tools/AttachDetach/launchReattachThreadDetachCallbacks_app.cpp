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
#include <pthread.h>

#define EXPORT_SYM extern "C"

#define NTHREADS 20


volatile bool loop;

EXPORT_SYM bool AfterAttach2();

bool AfterAttach2()
{
    // Pin sets an anslysis function here to notify the application when Pin attaches to it.
    return false;
}

enum ExitType {
    RES_SUCCESS = 0,      // 0
    RES_LOAD_FAILED,      // 1
    RES_INVALID_ARGS      // 2    
};



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
    [1]	First image to load	
    [2]	Second image to load
*/
int main (int argc, char *argv[])
{
    if(argc!=3)
    {
       fprintf(stderr, "Not enough arguments\n" );
       fflush(stderr);
       exit(RES_INVALID_ARGS);
    }

    loop = true;
	
    pthread_t h[NTHREADS];
    int ret_val;
    for (unsigned long i = 0; i < NTHREADS; i++)
    {
        ret_val= pthread_create (&h[i], 0, thread_func, 0);
        if(ret_val) 
        {
            perror("ERROR, pthread_create failed");
            exit(1);
        }
    }

	void *handle = dlopen(argv[1], RTLD_LAZY);
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
    
    handle = dlopen(argv[2], RTLD_LAZY);
    if (!handle)
    {
        fprintf(stderr, " Failed to load: %s because: %s\n", argv[2], dlerror());
        fflush(stderr);
        exit(RES_LOAD_FAILED);
    }

    for (unsigned long i = 0; i < NTHREADS; i++)
    {
        pthread_join (h[i], 0);
    }

    return RES_SUCCESS;
}


