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
#include <sys/syscall.h>
#include <linux/unistd.h> 
#include <asm/ldt.h> 
#include <errno.h>
#include <string.h>
#include <sys/utsname.h>

#ifndef __NR_set_thread_area
#   define __NR_set_thread_area 243
#endif
#ifndef __NR_get_thread_area
#   define __NR_get_thread_area 244
#endif
#ifndef SYS_set_thread_area
#   define SYS_set_thread_area __NR_set_thread_area
#endif
#ifndef SYS_get_thread_area
#   define SYS_get_thread_area __NR_get_thread_area
#endif

#define NTHREADS 4

pthread_mutex_t mutex = PTHREAD_MUTEX_INITIALIZER;

unsigned int numOfThreadsReadyForDetach = 0;
unsigned long pinDetached = 0;

/* This function is replaced by Pin tool */
extern "C" void TellPinToDetach(unsigned long *updateWhenReady)
{
    return;
}

struct UserDesc
{
    UserDesc(): _entry_number(0), _base_addr(0), _val1(0), _val2(0) {}
    unsigned int  _entry_number;
    unsigned int  _base_addr;
    unsigned int  _val1;
    unsigned int  _val2;
};


# define TLS_GET_GS_REG() \
  ({ int __seg; __asm ("movw %%gs, %w0" : "=q" (__seg)); __seg & 0xffff; })

#  define TLS_SET_GS_REG(val) \
  __asm ("movw %w0, %%gs" :: "q" (val))

# define TLS_GET_FS_REG() \
  ({ int __seg; __asm ("movw %%fs, %w0" : "=q" (__seg)); __seg & 0xffff; })

#  define TLS_SET_FS_REG(val) \
  __asm ("movw %w0, %%fs" :: "q" (val))

char buf[NTHREADS][3000];
unsigned int mainThreadAddress[8192];

#define GDT_NUM_OF_ENTRIES   3
#define GDT_ENTRIES 16


unsigned int GdtFirstEntry()
{
    static int first = 0;
    if (first) return first;

    UserDesc thrDescr;

    for (int i=0; i< GDT_ENTRIES; i++)
    {
        thrDescr._entry_number = i;
        int res = syscall(SYS_get_thread_area, &thrDescr);
        if ((res == 0) || (errno != EINVAL))
        { 
            first = i;
            return first;
        }
    }
    fprintf(stderr, "First GDT entry is not found\n");
    exit(-1);
}

/* Check that TLS remains the same after Pin is detached
 * 
 */
void * thread_func (void *arg)
{
    unsigned long thread_no = (unsigned long)arg+1;

    unsigned int gs_value = TLS_GET_GS_REG();

	unsigned int gdtEntryMin = GdtFirstEntry();
	unsigned int gdtEntryMax = gdtEntryMin + GDT_NUM_OF_ENTRIES - 1;
	
    UserDesc thrDescr[GDT_NUM_OF_ENTRIES];
    for (unsigned int i=gdtEntryMin; i<=gdtEntryMax; i++)
    {
        unsigned int ind = i-gdtEntryMin;
        thrDescr[ind]._entry_number = i;
        int res = syscall(SYS_get_thread_area, &(thrDescr[ind]));
        if (res != 0)
        {
            fprintf(stderr, "SYS_get_thread_area failed for entry %d with error: %s\n", 
                    thrDescr[ind]._entry_number, strerror(errno));
            return (void*)1;
        }
        
    }
    
    while (!pinDetached)
    {
        sched_yield();
    }
    fprintf(stderr, "thread %d runs native\n", thread_no);
    
    UserDesc thrDescrAfter[GDT_NUM_OF_ENTRIES];
    for (unsigned int i=gdtEntryMin; i<=gdtEntryMax; i++)
    {
        unsigned int ind = i-gdtEntryMin;
        thrDescrAfter[ind]._entry_number = i;
        int res = syscall(SYS_get_thread_area, &(thrDescrAfter[ind]));
        if (res != 0)
        {
            fprintf(stderr, "SYS_get_thread_area failed for entry %d with error: %s\n", 
                    thrDescrAfter[ind]._entry_number, strerror(errno));
            return (void*)1;
        }
        
        if (thrDescrAfter[ind]._base_addr != thrDescr[ind]._base_addr)
        {            
            fprintf(stderr, "ERROR in thread %d: base addr of entry %d before detach 0x%lx; after detach 0x%lx\n",
                    thread_no, i, thrDescrAfter[ind]._base_addr, thrDescr[ind]._base_addr);
            return (void*)1;
        }
            
    }
    return 0;

}

int main (int argc, char *argv[])
{
    pthread_t h[NTHREADS];

	unsigned int gdtEntryMin = GdtFirstEntry();
	unsigned int gdtEntryMax = gdtEntryMin + GDT_NUM_OF_ENTRIES - 1;
	
    UserDesc thrDescr[GDT_NUM_OF_ENTRIES];
    for (unsigned int i=gdtEntryMin; i<=gdtEntryMax; i++)
    {
        unsigned int ind = i-gdtEntryMin;
        thrDescr[ind]._entry_number = i;
        int res = syscall(SYS_get_thread_area, &thrDescr[ind]);
        if (res != 0)
        {
            fprintf(stderr, "SYS_get_thread_area failed for entry %d with error: %s\n", 
                    thrDescr[ind]._entry_number, strerror(errno));
            return -1;
        }
        
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
    
    fprintf(stderr, "main thread runs native\n");
    for (unsigned long i = 0; i < NTHREADS; i++)
    {
        if (result[i] != 0)
        {
            fprintf(stderr, "TEST FAILED\n");
            return -1;
        }
    }

    UserDesc thrDescrAfter[GDT_NUM_OF_ENTRIES];
    for (unsigned int i=gdtEntryMin; i<=gdtEntryMax; i++)
    {
        unsigned int ind = i-gdtEntryMin;
        thrDescrAfter[ind]._entry_number = i;
        int res = syscall(SYS_get_thread_area, &thrDescrAfter[ind]);
        if (res != 0)
        {
            fprintf(stderr, "SYS_get_thread_area failed for entry %d with error: %s\n", 
                    thrDescrAfter[ind]._entry_number, strerror(errno));
            return -1;
        }
        
        if (thrDescrAfter[ind]._base_addr != thrDescr[ind]._base_addr)
        {            
            fprintf(stderr, "ERROR in the main thread: base addr of entry %d before detach 0x%lx; after detach 0x%lx\n",
                    i, thrDescr[ind]._base_addr, thrDescrAfter[ind]._base_addr);
            fprintf(stderr, "TEST FAILED\n");
            return -1;
        }
    }
    fprintf(stderr, "TEST PASSED\n");
    return 0;
}

