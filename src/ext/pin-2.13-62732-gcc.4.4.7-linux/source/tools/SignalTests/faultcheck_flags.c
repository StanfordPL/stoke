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
 * This test verifies the flags are correctly delivered at exceptions 
 */
#define _GNU_SOURCE
#include <signal.h>
#ifdef TARGET_ANDROID
#include "android_ucontext.h"
#else
#include <sys/ucontext.h>
#endif
#include <stdio.h>
#include <setjmp.h>
#include <assert.h>
#include <sys/mman.h>


static sigjmp_buf JumpBuffer;
static unsigned int TestNumber = 0;



extern int GetFlags_asm();
// from faultcheck_flags_ia32_asm.s
extern int SetAppFlagsAndSegv_asm();
extern int ClearAppFlagsAndSegv_asm();
int DoTest(unsigned int tnum)
{

    switch (tnum)
    {
        case 0:
        printf ("AllFlagsSet\n");
        SetAppFlagsAndSegv_asm();
        return (1);

        case 1:
        printf ("AllFlagsClear\n");
        ClearAppFlagsAndSegv_asm();
        return (1);

        default:
        return (0);
    }
}

void PrintEflagsAtSignal(int sig, const siginfo_t *info, void *vctxt)
{
    ucontext_t *ctxt = vctxt;
    // note that the resume flag is turned on when exception occurs,
    // but if pin needs to retrieve the flags from memory then the 
    // resume flag will not be there - so we test only the lower 16 bits
#if defined(TARGET_MAC)
    unsigned long flags = (unsigned long)ctxt->uc_mcontext->__ss.__eflags&0xffff;
#else
    unsigned long flags = (unsigned long)ctxt->uc_mcontext.gregs[REG_EFL]&0xffff;
#endif
    printf("  Signal %d, eflags=0x%lx\n", sig, flags);
}

static void Handle(int sig, siginfo_t* info, void* ctxt)
{
    PrintEflagsAtSignal(sig, info, ctxt);
    TestNumber++;
    siglongjmp(JumpBuffer, 1);
}

int main()
{
    struct sigaction sigact;

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

    sigsetjmp(JumpBuffer, 1);
    
    for (;;)
    {
        if (!DoTest(TestNumber))
        {
            printf("Last test\n");
            break;
        }
        printf("Failed to raise signal\n");
        TestNumber++;
    }

    
    return 0;
}

