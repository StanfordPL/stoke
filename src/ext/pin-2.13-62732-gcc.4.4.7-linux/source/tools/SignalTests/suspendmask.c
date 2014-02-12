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
 * This test verifies that the signal mask is set correctly in
 * a handler when the signal interrupts a sigsuspend() call.
 * The test should have the same output when run natively or
 * under Pin.
 */

#include <stdio.h>
#include <signal.h>
#include <unistd.h>

#ifdef TARGET_ANDROID
#include "android_ucontext.h"
#else
#include <sys/ucontext.h>
#endif

static void Handle(int sig, siginfo_t *info, void *vctxt);
static void CheckSigs(sigset_t *ss, const char *mesg);


int main()
{
    struct sigaction act;
    sigset_t ss;

    act.sa_sigaction = Handle;
    act.sa_flags = SA_SIGINFO;
    sigemptyset(&act.sa_mask);
    if (sigaction(SIGUSR1, &act, 0) != 0)
    {
        fprintf(stderr,"unable to set SIGUSR1 handler\n");
        return 1;
    }
    sigemptyset(&act.sa_mask);
    if (sigaction(SIGUSR2, &act, 0) !=0)
    {
        fprintf(stderr,"unable to set SIGUSR2 handler\n");
        return 1;
    }
    sigfillset(&ss);
    sigprocmask(SIG_SETMASK, &ss, 0);
    kill(getpid(), SIGUSR1);
    kill(getpid(), SIGUSR2);

    sigdelset(&ss, SIGUSR1);
    sigdelset(&ss, SIGUSR2);
    sigdelset(&ss, SIGSEGV);
    sigsuspend(&ss);

    sigprocmask(SIG_SETMASK, 0, &ss);
    CheckSigs(&ss, "After signal");
    return 0;
}

static void Handle(int sig, siginfo_t *info, void *vctxt)
{
    ucontext_t *ctxt = vctxt;
    sigset_t ss;

    printf("Received %s\n", (sig == SIGUSR1) ? "USR1" : "USR2");
    sigprocmask(SIG_SETMASK, 0, &ss);
    CheckSigs(&ss, "In handler");
    CheckSigs(&ctxt->uc_sigmask, "Previous mask");
}

static void CheckSigs(sigset_t *ss, const char *mesg)
{
    printf("%s:\n", mesg);
    if (sigismember(ss, SIGUSR1))
        printf(" USR1 is blocked\n");
    else
        printf(" USR1 is not blocked\n");
    if (sigismember(ss, SIGUSR2))
        printf(" USR2 is blocked\n");
    else
        printf(" USR2 is not blocked\n");
    if (sigismember(ss, SIGSEGV))
        printf(" SEGV is blocked\n");
    else
        printf(" SEGV is not blocked\n");
}
