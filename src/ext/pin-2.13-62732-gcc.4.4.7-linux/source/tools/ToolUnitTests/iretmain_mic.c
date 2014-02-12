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
/* 
 * Call the iret assembler stubs.
 */

#include <stdlib.h>
#include <stdio.h>
#include <signal.h>
#ifndef __USE_GNU
# define __USE_GNU
#endif
#include <ucontext.h>

typedef unsigned long UINT64;
typedef signed long   INT64;
typedef unsigned int  UINT32;
typedef unsigned short UINT16;

extern INT64 iretdTest();
extern INT64 iretqTest();

#if (0)
/* Enable this if you're trying to debug failure of the iret instruction! 
 * Not enabled all the time becuase the details are OS version dependent,
 * and we don't actually need it for the purposes of the test.
 */
static void segvHandler(int sigNo, siginfo_t *si, void * extra)
{
    ucontext_t * uctx = (ucontext_t *)extra;
    UINT32 * rsp = (UINT32 *)uctx->uc_mcontext.gregs[REG_RSP];
    int i;

    fprintf (stderr, "SEGV: RIP %p, fault address 0x%lx, RSP %p\n",
             uctx->uc_mcontext.gregs[REG_RIP], 
             si->si_addr, rsp);

    for (i=0; i<3; i++)
    {
        fprintf (stderr, "%p: %08x, %08x, %08x, %08x\n", rsp, rsp[0], rsp[1], rsp[2], rsp[3]);
        rsp += 4;
    }
    exit(-1);
}

static UINT64 altStack[16384];

static void registerSegvHandler()
{
    struct sigaction sa;
    stack_t sigStack;

    sigStack.ss_flags = 0;
    sigStack.ss_sp    = &altStack[0];
    sigStack.ss_size  = sizeof(altStack);

    if (sigaltstack(&sigStack, 0))
    {
        fprintf (stderr, "sigaltsack failed\n");
    }
    else
    {
        fprintf (stderr, "Altstack established\n");
    }

    if (sigaction (SIGSEGV, 0, &sa))
    {
        fprintf(stderr, "sigaction read failed\n");
    }
    else
    {
        fprintf (stderr, "sigaction read OK\n");
    }
    sa.sa_sigaction = segvHandler;
    sa.sa_flags     = SA_SIGINFO | SA_ONSTACK;

    if (sigaction (SIGSEGV, &sa, 0))
    {
        fprintf(stderr, "sigaction write failed\n");
    }
    else
    {
        fprintf (stderr, "sigaction write OK\n");
    }
}
#else
# define registerSegvHandler() ((void)0)
#endif

int main (int argc, char ** argv)
{
    INT64 result;
    int ok = 0;
    int tests = 0;

    registerSegvHandler();

    tests++;
    fprintf(stderr, "Calling iretq\n");
    result = iretqTest();
    fprintf(stderr, "iretq result = %d %s\n", result, result == -2 ? "OK" : "***ERROR***");

    ok += (result == -2);

#if (0)
    /* Don't try iretd since I havent' been able to find a coherent description of
     * what it is supposed to do.
     */
    tests++;
    fprintf(stderr, "Calling iretd\n");
    result = iretdTest();
    fprintf(stderr, "iretd result = %d %s\n", result, result == -1 ? "OK" : "***ERROR***");

    ok += (result == -1);
#endif

    return (ok == tests) ? 0 : -1;
}
