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
 * This test verifies that Pin correctly emulates the error returns from the
 * various signal related system calls.
 */

#include <stdio.h>
#include <errno.h>
#include <signal.h>


int main()
{
    struct sigaction act;
    sigset_t set;
    stack_t stack;

    errno = 0;
    if (sigaction(0x12345678, &act, 0) != -1 || errno != EINVAL)
    {
        fprintf(stderr, "sigaction: Expected EINVAL, but got %d\n", errno);
        return 1;
    }

    errno = 0;
    if (sigprocmask(0x12345678, &set, 0) != -1 || errno != EINVAL)
    {
        fprintf(stderr, "sigprocmask: Expected EINVAL, but got %d\n", errno);
        return 1;
    }

    errno = 0;
    stack.ss_sp = 0;
    stack.ss_size = 0;
    stack.ss_flags = 0x12345678;
    if (sigaltstack(&stack, 0) != -1 || (errno != EINVAL && errno != ENOMEM))
    {
        fprintf(stderr, "sigaltstack: Expected EINVAL or ENOMEM, but got %d\n", errno);
        return 1;
    }

    return 0;
}
