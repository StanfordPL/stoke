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
  @ORIGINAL_AUTHOR: Elena Demikhovsky
*/

/* ===================================================================== */
/*! @file
 * We test two aspects:
   - tls value before and after PIN_Detach()
   - creation new threads while PIN is detached from application

 */

#include <stdio.h>
#include <pthread.h>
#include <stdlib.h>
#include <unistd.h>
#include <syscall.h>
#include <linux/unistd.h> 
#include <asm/prctl.h> 
#include <sys/prctl.h> 
#include <errno.h>
#include <string.h>
#include <sys/utsname.h>


#define NTHREADS 4

pthread_mutex_t mutex = PTHREAD_MUTEX_INITIALIZER;

unsigned int numOfThreadsReadyForDetach = 0;
unsigned long pinDetached = 0;

extern "C" void TellPinToDetach(unsigned long *updateWhenReady)
{
    return;
}

/* 
 * Compare FS_BASE values before and after detach.
 */
void * thread_func (void *arg)
{
    unsigned long thread_no = (unsigned long)arg+1;

    unsigned long fsBase = 0;
    int res = syscall(SYS_arch_prctl, ARCH_GET_FS, &fsBase);
    if (res != 0)
    {
        printf("SYS_arch_prctl failed with error: %s\n", strerror(errno));
        return 0;
    }

    pthread_mutex_lock(&mutex);
    numOfThreadsReadyForDetach++;
    pthread_mutex_unlock(&mutex);
    
    while (!pinDetached)
    {
        sched_yield();
    }
    
    unsigned long fsBaseAfterDetach = 0;
    res = syscall(SYS_arch_prctl, ARCH_GET_FS, &fsBaseAfterDetach);
    if (res != 0)
    {
        printf("SYS_arch_prctl failed with error: %s\n", strerror(errno));
        return (void*)1;
    }
    
    if (fsBase != fsBaseAfterDetach)
    {
        fprintf(stderr, "ERROR in thread %d: FS_BASE before detach 0x%lx; after detach 0x%lx\n",
                thread_no, fsBase, fsBaseAfterDetach);
        return (void*)1;
    }
    else
    {
        fprintf(stderr, "fs base in thread %d: 0x%lx\n", thread_no, fsBase);
    }
    return 0;
}

int main (int argc, char *argv[])
{
    pthread_t h[NTHREADS];

    unsigned long fsBase = 0;
    int res = syscall(SYS_arch_prctl, ARCH_GET_FS, &fsBase);
    if (res != 0)
    {
        printf("SYS_arch_prctl failed with error: %s\n", strerror(errno));
        return -1;
    }

    for (unsigned long i = 0; i < NTHREADS; i++)
    {
        pthread_create (&h[i], 0, thread_func, (void *)i);
    }
    
    /*
     * If the number of threads is big, some threads leave system call "clone"
     * while PIN is detached. This functionality is also tested here.
     */ 

    TellPinToDetach(&pinDetached);
    
    void * result[NTHREADS];
    for (unsigned long i = 0; i < NTHREADS; i++)
    {
        pthread_join (h[i], &(result[i]));
    }
    for (unsigned long i = 0; i < NTHREADS; i++)
    {
        if (result[i] != 0)
        {
            fprintf(stderr, "TEST FAILED\n");
            return -1;
        }
    }
    unsigned long fsBaseAfterDetach = 0;
    res = syscall(SYS_arch_prctl, ARCH_GET_FS, &fsBaseAfterDetach);
    
    if (fsBase != fsBaseAfterDetach)
    {
        fprintf(stderr, "ERROR in the main thread: FS_BASE before detach 0x%lx; after detach 0x%lx\n",
                fsBase, fsBaseAfterDetach);
        return -1;
    }    
    fprintf(stderr, "TEST PASSED\n");
    return 0;
}

