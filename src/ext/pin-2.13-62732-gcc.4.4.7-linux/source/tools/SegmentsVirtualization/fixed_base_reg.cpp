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
#include <stddef.h>
#include <pthread.h>
#include <stdlib.h>
#include <unistd.h>
#include <syscall.h>
#include <linux/unistd.h>
#include <asm/ldt.h>
#include <errno.h>
#include <string.h>

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


typedef struct {
    unsigned int  entry_number;
    unsigned int  base_addr;
    unsigned int  limit;
    unsigned int  seg_32bit:1;
    unsigned int  contents:2;
    unsigned int  read_exec_only:1;
    unsigned int  limit_in_pages:1;
    unsigned int  seg_not_present:1;
    unsigned int  useable:1;
}UserDesc;


# define TLS_GET_GS_REG() \
  ({ int __seg; __asm ("movw %%gs, %w0" : "=q" (__seg)); __seg & 0xffff; })

#  define TLS_SET_GS_REG(val) \
  __asm ("movw %w0, %%gs" :: "q" (val))

# define TLS_GET_FS_REG() \
  ({ int __seg; __asm ("movw %%fs, %w0" : "=q" (__seg)); __seg & 0xffff; })

#  define TLS_SET_FS_REG(val) \
  __asm ("movw %w0, %%fs" :: "q" (val))

typedef struct
{
    unsigned int d1;
    unsigned int d2;
}UserInfo;

extern "C" unsigned int MovsTest     (unsigned int offset, unsigned int* mem);
extern "C" void         MaskMovqTest (unsigned int offset, unsigned int value);
extern "C" unsigned int PushPopTest  (unsigned int offset, unsigned int value);
extern "C" void         CallTest     (unsigned int offset);

const unsigned int value1 = 5;
const unsigned int value2 = 18;

void CallTestCallback()
{
    printf("The \"CallTest\" test PASSED successfully\n");    
}

int main (int argc, char *argv[])
{
    int rc;
    int i;
    UserDesc tr;
    UserDesc set_tr;
    int syscall_res;

    tr.entry_number = 6;
    syscall_res = syscall(SYS_get_thread_area, &tr);
    if (syscall_res != 0)
    {
        printf("SYS_get_thread_area failed with error: %s\n", strerror(errno));
        return 0;
    }

    tr.entry_number = (unsigned)-1;
    tr.base_addr = (unsigned int)new UserInfo();
    ((UserInfo*)(tr.base_addr))->d1 = value1;
    ((UserInfo*)(tr.base_addr))->d2 = value2;


    syscall_res = syscall(SYS_set_thread_area, &tr);

    if (syscall_res != 0)
    {
        printf("SYS_set_thread_area failed with error: %s\n", strerror(errno));
        return 0;
    }

    TLS_SET_FS_REG((tr.entry_number << 3) + 3);

    /* ======== MovsTest =========== */
    unsigned int mem = 0;
    unsigned int res = MovsTest(offsetof(UserInfo, d2), &mem);
    if (res != value2)
    	printf("The \"movs\" test FAILED\n");
    else
    	printf("The \"movs\" test PASSED successfully\n");

    /* ======== MaskMovqTest =========== */
    
    MaskMovqTest(4, 0x9966);
    if (((UserInfo*)(tr.base_addr))->d2 != 0x9966)
    	printf("The \"maskmovq\" test FAILED\n");
    else
    	printf("The \"maskmovq\" test PASSED successfully\n");
    
    /* ======== PushPopTest =========== */
    
    if (PushPopTest(0, 0x7788) != 0x7788)
    {
        printf("The \"PushPopTest\" test FAILED\n");
    }
    else
    {
        printf("The \"PushPopTest\" test PASSED successfully\n");
    }
    
    /* ======== CallTest =========== */
    ((UserInfo*)(tr.base_addr))->d1 = (unsigned int)CallTestCallback;
    CallTest(0);
    

    return 0;

}

