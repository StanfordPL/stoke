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
 * This test causes and handles access violations/bus errors in 
   instructions that use the ebx register implicitly.
   The relevant instructions are cmpxchg8b and xlat (which uses ebx as
   a base register)
 */

#include <stdio.h>
#include <stdlib.h>
#include <assert.h>
#include <setjmp.h>
#include <signal.h>
#include <errno.h>
#include <iostream>
#include <sstream>
#include <iomanip>
#include <fstream>
#include <cstdlib>
#ifdef TARGET_ANDROID
#include "android_ucontext.h"
#endif
using namespace std;

extern "C" unsigned int GetInstructionLenAndDisasm (unsigned char *ip, string *str);
extern "C" int TestAccessViolations();
extern "C" void InitXed();
int numExceptions = 0;

void PrintSignalContext(int sig, const siginfo_t *info, void *vctxt)
{
    ucontext_t *ctxt = (ucontext_t *)vctxt;
    unsigned long rip;
    long int trapno;

#if defined(TARGET_LINUX) && defined(TARGET_IA32E)
    rip = (unsigned long)ctxt->uc_mcontext.gregs[REG_RIP];
    trapno = (long int)ctxt->uc_mcontext.gregs[REG_TRAPNO];
#elif defined(TARGET_LINUX) && defined(TARGET_IA32)
    rip = (unsigned long)ctxt->uc_mcontext.gregs[REG_EIP];
    trapno = (long int)ctxt->uc_mcontext.gregs[REG_TRAPNO];
#elif defined(TARGET_MAC) && defined(TARGET_IA32E)
    rip = (unsigned long)ctxt->uc_mcontext->__ss.__rip;
    trapno = (long int)ctxt->uc_mcontext->__es.__trapno;
#elif defined(TARGET_MAC) && defined(TARGET_IA32)
    rip = (unsigned long)ctxt->uc_mcontext->__ss.__eip;
    trapno = (long int)ctxt->uc_mcontext->__es.__trapno;
#endif

    fprintf(stderr, "  PrintSignal: sig %d, pc=0x%lx, si_errno=%d, trap_no=%ld",
        sig,
        rip,
        (int)info->si_errno,
        trapno);

    fprintf(stderr, "\n");
}

static void Handle(int sig, siginfo_t *info, void *v)
{
    fprintf (stderr, "Handle\n");
    fflush (stderr);

    ucontext_t *ctxt = (ucontext_t *)v;

    PrintSignalContext(sig, info, v);
    numExceptions++;

    unsigned int * ipToContinueAt = (unsigned int *)
#if defined(TARGET_LINUX) && defined(TARGET_IA32)
        ctxt->uc_mcontext.gregs[REG_EIP];
#elif defined(TARGET_LINUX) && defined(TARGET_IA32E)
        ctxt->uc_mcontext.gregs[REG_RIP];
#elif defined(TARGET_MAC) && defined(TARGET_IA32)
        ctxt->uc_mcontext->__ss.__eip;
#elif defined(TARGET_MAC) && defined(TARGET_IA32E)
        ctxt->uc_mcontext->__ss.__rip;
#else
#error "Undefined code"
#endif
    string str;
    unsigned int instructionLen = GetInstructionLenAndDisasm((unsigned char *)ipToContinueAt, &str);
    if (0 == instructionLen)
    {
        fprintf (stderr, "***Error 0 length instruction at ip %p\n", ipToContinueAt);
        exit (1);
    }
    fprintf (stderr,"segv at: %s\n", str.c_str());
    ipToContinueAt 
        = (unsigned int *)((unsigned char *)ipToContinueAt + instructionLen);
    fprintf (stderr, " setting resume ip to %p\n", ipToContinueAt);
    instructionLen = GetInstructionLenAndDisasm((unsigned char *)ipToContinueAt, &str);
    if (0 == instructionLen)
    {
        fprintf (stderr, "***Error 0 length instruction at ip %p\n", ipToContinueAt);
        exit (1);
    }
    fprintf (stderr,"  resume instruction is %s\n", str.c_str());
#if defined(TARGET_LINUX) && defined(TARGET_IA32)
        ctxt->uc_mcontext.gregs[REG_EIP] =
#elif defined(TARGET_LINUX) && defined(TARGET_IA32E)
        ctxt->uc_mcontext.gregs[REG_RIP] =
#elif defined(TARGET_MAC) && defined(TARGET_IA32)
        ctxt->uc_mcontext->__ss.__eip =
#elif defined(TARGET_MAC) && defined(TARGET_IA32E)
        ctxt->uc_mcontext->__ss.__rip =
#else
#error "Undefined code"
#endif
                (unsigned long)(ipToContinueAt);

}



int main(int argc, char **argv)
{
    struct sigaction sigact;
 
    InitXed();
    sigact.sa_sigaction = Handle;
    sigemptyset(&sigact.sa_mask);
    sigact.sa_flags = SA_SIGINFO;
    if (sigaction(SIGSEGV, &sigact, 0) == -1)
    {
        fprintf(stderr, "Unable handle SIGSEGV\n");
        return 1;
    }
    if (sigaction(SIGBUS, &sigact, 0) == -1)
    {
        fprintf(stderr, "Unable handle SIGBUS\n");
        return 1;
    }

    fprintf (stderr, "calling TestAccessViolations\n");
    int retVal = TestAccessViolations();

    if (!retVal || numExceptions!=3)
    {
        fprintf (stderr, "***Error\n");
        exit (1);
    }
    
}





