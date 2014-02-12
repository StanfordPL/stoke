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
 * This application tests the behavior when a signal is delivered on a
 * bad application stack or when a signal handler returns from a bad
 * application stack.  In both cases, Pin (or the kernel) tries to
 * read or write a signal context frame from inaccessible memory, and
 * this causes an error.
 *
 * This application tests several variants if this situation.  See the
 * comments in the makefile, which describe each variant that is tested.
 */

// features.h does not exist on FreeBSD
#ifdef TARGET_LINUX
// features initializes the system's state, including the state of __USE_GNU
#include <features.h>
#endif

// If __USE_GNU is defined, we don't need to do anything.
// If we defined it ourselves, we need to undefine it later.
#ifndef __USE_GNU
    #define __USE_GNU
    #define APP_UNDEF_USE_GNU
#endif

#if defined(TARGET_MAC)
#include <sys/ucontext.h>
#elif defined(TARGET_ANDROID)
#include "android_ucontext.h"
#else
#include <ucontext.h>
#endif

// If we defined __USE_GNU ourselves, we need to undefine it here.
#ifdef APP_UNDEF_USE_GNU
    #undef __USE_GNU
    #undef APP_UNDEF_USE_GNU
#endif


#include <stdio.h>
#include <stdlib.h>
#include <signal.h>
#include <errno.h>
#include <string.h>


static void Usage();
static void Handle(int, siginfo_t *, void *);
extern void DoILLOnBadStack();
extern int DoSigreturnOnBadStack();

int DoSigill = 0;
int DoAltStack = 0;


int main(int argc, char **argv)
{
    struct sigaction act;
    stack_t ss;


    if (argc != 3)
    {
        Usage();
        return 1;
    }
    if (strcmp(argv[1], "sigill") == 0)
    {
        DoSigill = 1;
    }
    else if (strcmp(argv[1], "sigreturn") == 0)
    {
        DoSigill = 0;
    }
    else
    {
        Usage();
        return 1;
    }
    if (strcmp(argv[2], "altstack") == 0)
    {
        DoAltStack = 1;
    }
    else if (strcmp(argv[2], "noaltstack") == 0)
    {
        DoAltStack = 0;
    }
    else
    {
        Usage();
        return 1;
    }

    if (DoAltStack)
    {
        ss.ss_sp = malloc(SIGSTKSZ);
        ss.ss_flags = 0;
        ss.ss_size = SIGSTKSZ;
        if (sigaltstack(&ss, 0) != 0)
        {
            printf("Failed to set alternate stack\n");
            return 1;
        }
    }

    act.sa_sigaction = Handle;
    act.sa_flags = (DoAltStack) ? (SA_ONSTACK | SA_SIGINFO) : (SA_SIGINFO);
    sigemptyset(&act.sa_mask);
    if (sigaction(SIGSEGV, &act, 0) != 0)
    {
        printf("Unable to set SEGV handler\n");
        return 1;
    }

    if (DoSigill)
    {
        act.sa_sigaction = Handle;
#if defined(TARGET_MAC)
        act.sa_flags = (DoAltStack) ? (SA_ONSTACK | SA_SIGINFO) : (SA_SIGINFO);
#else
        act.sa_flags = SA_SIGINFO;
#endif
        sigemptyset(&act.sa_mask);
        if (sigaction(SIGILL, &act, 0) != 0)
        {
            printf("Unable to set ILL handler\n");
            return 1;
        }

        DoILLOnBadStack();
    }
    else
    {
        int err = DoSigreturnOnBadStack();
        switch (err)
        {
        case EFAULT:
            printf("Sigreturn returned EFAULT\n");
            break;
        default:
            printf("Sigreturn returned <error %d>\n", err);
            break;
        }
    }

    printf("Returning normally\n");
    return 0;
}


static void Usage()
{
    printf("Usage: bad-stack {sigill | sigreturn} {altstack | noaltstack}\n");
}


static void Handle(int sig, siginfo_t *info, void *v)
{
    ucontext_t *ctxt = v;

    switch (sig)
    {
    case SIGSEGV:
        printf("Got signal SEGV\n");
        break;
    case SIGILL:
        printf("Got signal ILL\n");
        break;
    default:
        printf("Got signal <%d>\n", sig);
        break;
    }

    if (DoSigill)
    {
        /*
         * Skip over the UD2 instruction.
         */
#if defined(TARGET_LINUX) && defined(TARGET_IA32)
        ctxt->uc_mcontext.gregs[REG_EIP] += 2;
#elif defined(TARGET_LINUX) && defined(TARGET_IA32E)
        ctxt->uc_mcontext.gregs[REG_RIP] += 2;
#elif defined(TARGET_BSD) && defined(TARGET_IA32)
        ctxt->uc_mcontext.mc_eip += 2;
#elif defined(TARGET_BSD) && defined(TARGET_IA32E)
        ctxt->uc_mcontext.mc_rip += 2;
#elif defined(TARGET_MAC) && defined(TARGET_IA32)
        ctxt->uc_mcontext->__ss.__eip += 2;
#elif defined(TARGET_MAC) && defined(TARGET_IA32E)
        ctxt->uc_mcontext->__ss.__rip += 2;
#else
#error "Undefined code"
#endif
    }
    else
    {
        exit(0);
    }
}
