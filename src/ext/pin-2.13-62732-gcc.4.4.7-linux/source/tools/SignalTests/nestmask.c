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
 * Verifies that handles the application's signal mask correctly even when
 * one signal interrupts another signal's handler.
 */

#include <stdlib.h>
#include <stdio.h>
#include <stdarg.h>
#include <signal.h>


static void HandleUSR1(int);
static void HandleUSR2(int);
static int CheckMask(int, ...);


main()
{
	struct sigaction sigact;

	sigact.sa_handler = HandleUSR1;
	sigemptyset(&sigact.sa_mask);
	sigact.sa_flags = 0;
	if (sigaction(SIGUSR1, &sigact, 0) == -1) {
		fprintf(stderr, "Unable handle signal USR1\n");
		return 1;
	}
	sigact.sa_handler = HandleUSR2;
	if (sigaction(SIGUSR2, &sigact, 0) == -1) {
		fprintf(stderr, "Unable handle signal USR2\n");
		return 1;
	}

    raise(SIGUSR1);

    if (!CheckMask(0))
        return 1;
    return 0;
}


static void HandleUSR1(int sig)
{
    if (!CheckMask(SIGUSR1, 0))
        exit(1);
    raise(SIGUSR2);
}


static void HandleUSR2(int sig)
{
    if (!CheckMask(SIGUSR1, SIGUSR2, 0))
        exit(1);
}


static int CheckMask(int sig, ...)
{
    sigset_t curMask;
    sigset_t checkMask;
    va_list ap;
    int ret;

    sigprocmask(SIG_SETMASK, 0, &curMask);

    sigemptyset(&checkMask);
    if (sig != 0)
    {
        sigaddset(&checkMask, sig);

        va_start(ap, sig);
        while ((sig = va_arg(ap, int)))
            sigaddset(&checkMask, sig);
        va_end(ap);
    }

    ret = 1;
    for (sig = 1;  sig < 32;  sig++)
    {
        if (!sigismember(&curMask, sig) && sigismember(&checkMask, sig))
        {
            fprintf(stderr, "Mask missing signal %d\n", sig);
            ret = 0;
        }
        if (sigismember(&curMask, sig) && !sigismember(&checkMask, sig))
        {
            fprintf(stderr, "Mask unexpectedly has signal %d\n", sig);
            ret = 0;
        }
    }

    return ret;
}
