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
// @ORIGINAL_AUTHOR: Elena Demikhovsky

/*! @file
 *  Test detaching Pin from running process on Linux
 */

#include <stdio.h>
#include <pthread.h>
#include <stdlib.h>
#include <unistd.h>
#include <errno.h>
#include <string.h>
#include <dlfcn.h>
#include <sys/types.h>
#include <linux/unistd.h>
#ifdef TARGET_ANDROID
#include <sys/syscall.h>
#endif

#define NTHREADS 20

/*
 * Get thread Id
 */
pid_t GetTid()
{
     return syscall(__NR_gettid);
}

extern "C" void TellPinToDetach(unsigned long *updateWhenReady)
{
    return;
}

volatile bool loop2 = true;
void * thread_func (void *arg)
{    
    while (loop2)
    {
        void *space = malloc(300);
        sleep(1);
        free(space);
    }
    return 0;

}

volatile bool loop1 = true;
typedef  double (*SIN_FUNC)(double x);

void * thread_dlopen_func (void *arg)
{    
	double number = 0.2;
    while (loop1)
    {
        void *handle = dlopen("libm.so", RTLD_LAZY);
        if (handle)
        {
            SIN_FUNC sin_fptr = (SIN_FUNC)dlsym(handle, "sin");
            if (sin_fptr)
            {
                double val = (*sin_fptr)(number);
                printf("val = %.4f\n", val);
            }
            sleep(2);
            dlclose(handle);
        }
		number += 0.01;
    }
        
    return 0;

}

int main (int argc, char *argv[])
{
    pthread_t h[NTHREADS];
    
    pthread_create (&h[0], 0, thread_dlopen_func, 0);
    for (unsigned long i = 1; i < NTHREADS; i++)
    {
        pthread_create (&h[i], 0, thread_func, 0);
    }
    
	unsigned long pinDetached = false;
    TellPinToDetach(&pinDetached);
    
	while (!pinDetached)
	{
    	sleep(2);
	}
    
    loop1 = false;
    loop2 = false;
    
    for (unsigned long i = 0; i < NTHREADS; i++)
    {
        pthread_join (h[i], 0);
    }
    printf("All threads exited. The test PASSED\n");    
    return 0;
}

