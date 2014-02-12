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
 * This test verifies that the application can set up an alternate stack for
 * its signal handler.
 */

#include <stdio.h>
#include <signal.h>
#include <stdlib.h>

char Stack[SIGSTKSZ];

static void Handle(int);


int main()
{
    struct sigaction act;
    stack_t ss;

    ss.ss_sp = Stack;
    ss.ss_size = sizeof(Stack);
    ss.ss_flags = 0;
    if (sigaltstack(&ss, 0) != 0)
    {
        fprintf(stderr, "Unable to set alternate stack\n");
        return 1;
    }
    printf("Alternate stack is %p - %p\n", Stack, &Stack[SIGSTKSZ]);

    act.sa_handler = Handle;
    act.sa_flags = SA_ONSTACK;
    sigemptyset(&act.sa_mask);
    if (sigaction(SIGUSR1, &act, 0) != 0)
    {
        fprintf(stderr, "Unable to set up USR1 handler\n");
        return 1;
    }

    raise(SIGUSR1);
    return 0;
}


static void Handle(int sig)
{
    char *sp = (char *)&sig;

    printf("Got signal %d with SP=%p\n", sig, sp);
    if (sp < Stack || sp > &Stack[SIGSTKSZ])
    {
        fprintf(stderr, "Handler not running on alternate stack\n");
        exit(1);
    }
}
