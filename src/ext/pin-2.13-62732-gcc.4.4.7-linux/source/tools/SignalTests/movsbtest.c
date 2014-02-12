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
 * This test checks that we can get precise register state in a signal handler
 * if a string instruction faults midway through a REP prefix.
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
#include <unistd.h>
#include <signal.h>
#include <sys/mman.h>


#ifndef MAP_ANONYMOUS
 #ifdef MAP_ANON
  #define MAP_ANONYMOUS MAP_ANON
 #endif
#endif


#if defined(TARGET_IA32)
#   define REG_CX   REG_ECX
#elif defined(TARGET_IA32E) || defined(TARGET_MIC)
#   define REG_CX   REG_RCX
#else
#   error "No target defined"
#endif

extern void CopyWithMovsb(void *, void *, size_t);


static void *Map1Page();
static void *Map2Pages();
static int SetupHandler();
static void HandleSegv(int, siginfo_t *, void *);


size_t PageSize;

int main()
{
    void *ptr1;
    void *ptr2;

    PageSize = getpagesize();
    ptr1 = Map1Page();
    ptr2 = Map2Pages();
    if (!ptr1 || !ptr2)
        return 1;

    if (!SetupHandler())
        return 1;

    CopyWithMovsb(ptr2, ptr1, 2*PageSize);
    return 0;
}


static void *Map1Page()
{
    char *ptr;

    ptr = mmap(0, 2*PageSize, (PROT_READ | PROT_WRITE), (MAP_PRIVATE | MAP_ANONYMOUS), -1, 0);
    if (ptr == MAP_FAILED)
    {
        fprintf(stderr, "mmap failed\n");
        return 0;
    }

    if (mprotect(ptr + PageSize, PageSize, PROT_NONE) == -1)
    {
        fprintf(stderr, "mprotect failed\n");
        return 0;
    }
    return ptr;
}


static void *Map2Pages()
{
    char *ptr;

    ptr = mmap(0, 2*PageSize, (PROT_READ | PROT_WRITE), (MAP_PRIVATE | MAP_ANONYMOUS), -1, 0);
    if (ptr == MAP_FAILED)
    {
        fprintf(stderr, "mmap failed\n");
        return 0;
    }
    return ptr;
}


static int SetupHandler()
{
    struct sigaction act;

    act.sa_sigaction = HandleSegv;
    act.sa_flags = SA_SIGINFO;
    sigemptyset(&act.sa_mask);

// FreeBSD 6 (and Mac OS - from what I read) send sigbus instead of sigsegv on the failure we catch 
// here, however, FreeBSD 8 and Linux send sigsegv. therefore - we catch both...

    if (sigaction(SIGBUS, &act, 0) == -1)
    {
        fprintf(stderr, "sigaction failed\n");
        return 0;
    }

    if (sigaction(SIGSEGV, &act, 0) == -1)
    {
        fprintf(stderr, "sigaction failed\n");
        return 0;
    }
    return 1;
}


static void HandleSegv(int sig, siginfo_t *info, void *vctxt)
{
    ucontext_t *ctxt = vctxt;
#if defined(TARGET_BSD)
    size_t cx = ctxt->uc_mcontext.mc_rcx;
#elif defined(TARGET_MAC) && defined(TARGET_IA32E)
    size_t cx = ctxt->uc_mcontext->__ss.__rcx;
#elif defined(TARGET_MAC) && defined(TARGET_IA32)
    size_t cx = ctxt->uc_mcontext->__ss.__ecx;
#else
    size_t cx = ctxt->uc_mcontext.gregs[REG_CX];
#endif
    if (cx != PageSize)
    {
        fprintf(stderr, "%%ecx is %lx, expected %lx\n", (long)cx, (long)PageSize);
        exit(1);
    }
    exit(0);
}
