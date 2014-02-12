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
 * This test verifies that Pin properly saves and restores the applicaton's
 * XMM registers when emulating a delivered signal.  The application's main thread
 * simply does some string copy operations using the XMM registers while VTALRM
 * signals are handled.  The signal handler also uses the XMM registers to do some
 * string compares.  If Pin doesn't properly save/restore the XMM registers, the
 * handler will mess up the main thread's copy operations.
 *
 *********************************************************************************
 *
 * I have observed that this test occasionally fails on vs-lin64-4 (running SUSE10
 * on Intel64).  I can only make the problem occur on heavy load, for example
 * while running the signal tests with "make -j8".  However, the problem appears
 * to be unrelated to Pin, since I can make the same failure occur with the native
 * version of this test.
 *
 * Occasionally, the kernel enters the signal handler with an empty FP register
 * state saved in the signal context.  (I.e. all FP registers are reset as
 * though an FINIT instruction had been exectued.)  When the signal handler
 * returns, the empty FP state is restored, which corrupts the XMM registers
 * in the test's loop.  This is clearly not a Pin bug since it happens in a
 * native test.
 *
 * The IsBadKernel() function below disables this test on kernels that are known
 * to have this bug.
 */

#include <stdio.h>
#include <signal.h>
#include <stdlib.h>
#include <string.h>
#include <sys/time.h>
#include <sys/utsname.h>

// Virtual timers don't work well on Mac OS
#ifdef TARGET_MAC
#define TIMER ITIMER_REAL
#define SIGNAL SIGALRM
#else
#define TIMER ITIMER_VIRTUAL
#define SIGNAL SIGVTALRM
#endif

#define SIGCOUNT   1000
#define SIZEBIG    4096
#define SIZESMALL  32
#define ALIGN      16

volatile unsigned SigCount = 0;
char *SigBuf1;
char *SigBuf2;


static void XmmCheck();
static void CheckBuf(const char *, size_t);
static char *Allocate(size_t, size_t);
static void Handle1(int);
static void Handle2(int, siginfo_t *, void *);
static int IsBadKernel();

extern void CopyWithXmmDelay(char *, char *, int);
extern void CopyWithXmm(char *, char *, int);

int main()
{
    struct sigaction sigact;
    struct itimerval itval;
    int i;


    if (IsBadKernel())
        return 0;

    SigBuf1 = Allocate(SIZESMALL, ALIGN);
    SigBuf2 = Allocate(SIZESMALL, ALIGN);
    for (i = 0; i < SIZESMALL;  i++)
        SigBuf1[i] = (char)i;

    sigact.sa_handler = Handle1;
    sigact.sa_flags = 0;
    sigemptyset(&sigact.sa_mask);
    if (sigaction(SIGNAL, &sigact, 0) == -1)
    {
        fprintf(stderr, "Unable to set up handler\n");
        return 1;
    }

    itval.it_interval.tv_sec = 0;
    itval.it_interval.tv_usec = 10000;
    itval.it_value.tv_sec = 0;
    itval.it_value.tv_usec = 10000;
    if (setitimer(TIMER, &itval, 0) == -1)
    {
        fprintf(stderr, "Unable to set up timer\n");
        return 1;
    }

    XmmCheck();

    itval.it_value.tv_sec = 0;
    itval.it_value.tv_usec = 0;
    if (setitimer(TIMER, &itval, 0) == -1)
    {
        fprintf(stderr, "Unable to disable timer\n");
        return 1;
    }

    return 0;
}


static void XmmCheck()
{
    char *p1;
    char *p2;
    int i;

    p1 = Allocate(SIZEBIG, ALIGN);
    p2 = Allocate(SIZEBIG, ALIGN);
    memset(p2, 0, SIZEBIG);

    printf("src = %p - %p\n", p1, p1+SIZEBIG);
    printf("dst = %p - %p\n", p2, p2+SIZEBIG);

    for (i = 0;  i < SIZEBIG;  i++)
        p1[i] = "abcdefghijklmnopqrstuvwxyz"[i%26];

    while (SigCount < SIGCOUNT)
    {
        CopyWithXmmDelay(p2, p1, SIZEBIG);
        CheckBuf(p2, SIZEBIG);
    }
}


static void CheckBuf(const char *p, size_t size)
{
    int i;
    char c;
    int ok;

    ok = 1;
    for (i = 0;  i < size;  i++)
    {
        c = "abcdefghijklmnopqrstuvwxyz"[i%26];
        if (p[i] != c)
        {
            fprintf(stderr, "Element %d wrong: is '%c' (%d) should be '%c' (%d)\n", i, p[i], (int)p[i], c, (int)c);
            ok = 0;
        }
    }
    if (!ok)
        exit(1);
}


static char *Allocate(size_t size, size_t align)
{
    char *p;
    size_t low;

    p = malloc(size + (align-1));
    low = (size_t)p % align;
    if (low)
        return p + (align-low);
    else
        return p;
}


static void Handle1(int sig)
{
    SigCount++;
    CopyWithXmm(SigBuf2, SigBuf1, SIZESMALL);

    /*
     * After a while, switch to using a "siginfo" handler.  This exercises different
     * signal emulation paths within Pin.
     */
    if (SigCount > SIGCOUNT/2)
    {
        struct sigaction sigact;

        sigact.sa_sigaction = Handle2;
        sigact.sa_flags = SA_SIGINFO;
        sigemptyset(&sigact.sa_mask);
        if (sigaction(SIGNAL, &sigact, 0) == -1)
        {
            fprintf(stderr, "Unable to reset handler\n");
            exit(1);
        }
    }
}


static void Handle2(int sig, siginfo_t *i, void *v)
{
    SigCount++;
    CopyWithXmm(SigBuf2, SigBuf1, SIZESMALL);
}


/*
 * Returns True if the kernel version is known to be one that causes this test to fail.
 */
static int IsBadKernel()
{
    struct utsname info;

    if (uname(&info) == -1)
        return 1;
    if (strncmp(info.release, "2.6.16", sizeof("2.6.16")-1) == 0)
        return 1;
    return 0;
}
