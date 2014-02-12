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
 * This application must be run with Pin tool "change_syscall.cpp".  That tool
 * changes the system calls that this application executes, and the test only
 * passes if that happens.
 */

#include <stdio.h>
#include <unistd.h>
#include <sys/types.h>
#include <signal.h>
#include <fcntl.h>


int main()
{
    struct sigaction sa;
    int ret;

    /*
     * The tool should change "open" to "getpid".  This tests that a non-emulated
     * system call can be changed to another non-emulated system call.
     */
    ret = open("does-not-exist1", 0);
    if (ret != getpid())
    {
        printf("open() system call not changed, ret = %d\n", ret);
        return 1;
    }

    /*
     * The tool should change "sigaction" to "getpid".  This tests that an
     * emulated system call can be changed to a non-emulated system call.
     */
    sa.sa_handler = 0;
    sa.sa_flags = 0;
    sigemptyset(&sa.sa_mask);
    ret = sigaction(SIGUSR1, &sa, 0);
    if (ret != getpid())
    {
        printf("sigaction() system call not changed, ret = %d\n", ret);
        return 1;
    }

    /*
     * The tool should change "open" to "exit(0)".  This tests that a non-emulated
     * system call can be changed into an emulated one.
     */
    open("does-not-exist2", 0);

    printf("open was not changed to exit\n");
    return 1;
}
