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
#include <pthread.h>
#include <stdlib.h>
#include <unistd.h>
#include <syscall.h>
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

void * thread_func (void *arg)
{
    unsigned long thread_no = (unsigned long)arg+1;

    unsigned int gs_value = TLS_GET_GS_REG();
    sprintf(buf[thread_no-1],"gs value for thread %ld is 0x%x\n", thread_no, gs_value );

	unsigned int gdtEntryMin = GdtFirstEntry();
	unsigned int gdtEntryMax = gdtEntryMin + GDT_NUM_OF_ENTRIES - 1;
	
    for (unsigned int i=gdtEntryMin; i<=gdtEntryMax+1; i++)
    {
        UserDesc thrDescr;
        thrDescr._entry_number = i;
        int res = syscall(SYS_get_thread_area, &thrDescr);
        if (res == 0)
        {
            if (thrDescr._base_addr != mainThreadAddress[i])
                sprintf(buf[thread_no-1],"%s thread %d: base addr for entry %d has been changed by clone()\n", 
                    buf[thread_no-1], thread_no, i);
            else
               sprintf(buf[thread_no-1],"%s thread %d: base addr for entry %d is equal to the same entry in main thread\n", 
                    buf[thread_no-1], thread_no, i); 
        }
        else
        {
           sprintf(buf[thread_no-1],"%s thread %d: SYS_get_thread_area failed for entry %d with error: %s\n", 
           buf[thread_no-1], thread_no, i, strerror(errno));
        }
        
    }

    return 0;
}

int main (int argc, char *argv[])
{
    UserDesc thrDescr;
    pthread_t h[NTHREADS];

    for (unsigned int i=0; i<8192; i++)
    {
        mainThreadAddress[i] = 0;
    }
    
    thrDescr._entry_number = GdtFirstEntry();
    int res = syscall(SYS_get_thread_area, &thrDescr);
    if (res != 0)
    {
        printf("SYS_get_thread_area failed with error: %s\n", strerror(errno));
        return 0;
    }
    else
    {
        mainThreadAddress[thrDescr._entry_number] = thrDescr._base_addr;
    }

    thrDescr._entry_number++;
    thrDescr._base_addr = 0x5555;
    res = syscall(SYS_set_thread_area, &thrDescr);
    if (res != 0)
    {
        printf("SYS_set_thread_area failed with error: %s\n", strerror(errno));
        return 0;
    }
    else
    {
        mainThreadAddress[thrDescr._entry_number] = thrDescr._base_addr;
    }

    //TLS_SET_GS_REG((7<<3)+3);
    for (unsigned long i = 0; i < NTHREADS; i++)
    {
        pthread_create (&h[i], 0, thread_func, (void *)i);
    }
    for (unsigned long i = 0; i < NTHREADS; i++)
    {
        pthread_join (h[i], 0);
    }
    for (unsigned long i = 0; i < NTHREADS; i++)
    {
        printf("%s", buf[i]);
    }
    return 0;
}

