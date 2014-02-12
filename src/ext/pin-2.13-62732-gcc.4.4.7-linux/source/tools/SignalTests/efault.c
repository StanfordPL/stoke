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
 * This test verifies that Pin correctly returns EFAULT when emulating a system call
 * that has an invalid pointer parameter.  For example, Pin must not crash when
 * reading through an invalid pointer that is passed in from the application.
 *
 * Note, this test must invoke the system calls directly with syscall() instead of
 * using the libc wrappers.  The libc wrappers don't check for invalid pointers, so
 * passing an invalid pointer can cause a crash in libc!
 */

#include <stdio.h>
#include <errno.h>
#include <signal.h>
#include <unistd.h>
#include <sys/syscall.h>


int main()
{
    int ret;

#ifdef SYS_rt_sigsuspend
    ret = syscall(SYS_rt_sigsuspend, -1, 8);
    if (ret != -1 || errno != EFAULT)
    {
        printf("SYS_rt_sigsuspend did not return EFAULT: ret=%d, errno=%d\n", ret, errno);
        return 1;
    }
#endif

#ifdef SYS_sigsuspend
    ret = syscall(SYS_sigsuspend, -1);
    if (ret != -1 || errno != EFAULT)
    {
        printf("SYS_sigsuspend did not return EFAULT: ret=%d, errno=%d\n", ret, errno);
        return 1;
    }
#endif

#ifdef SYS_rt_sigprocmask
    ret = syscall(SYS_rt_sigprocmask, SIG_SETMASK, -1, -1, 8);
    if (ret != -1 || errno != EFAULT)
    {
        printf("SYS_rt_sigprocmask did not return EFAULT: ret=%d, errno=%d\n", ret, errno);
        return 1;
    }
#endif

#ifdef SYS_sigprocmask
    ret = syscall(SYS_sigprocmask, SIG_SETMASK, -1, -1);
    if (ret != -1 || errno != EFAULT)
    {
        printf("SYS_sigprocmask did not return EFAULT: ret=%d, errno=%d\n", ret, errno);
        return 1;
    }
#endif

#ifdef SYS_rt_sigaction
    ret = syscall(SYS_rt_sigaction, SIGUSR1, -1, -1, 8);
    if (ret != -1 || errno != EFAULT)
    {
        printf("SYS_rt_sigaction did not return EFAULT: ret=%d, errno=%d\n", ret, errno);
        return 1;
    }
#endif

#ifdef SYS_sigaction
    ret = syscall(SYS_sigaction, SIGUSR1, -1, -1);
    if (ret != -1 || errno != EFAULT)
    {
        printf("SYS_sigaction did not return EFAULT: ret=%d, errno=%d\n", ret, errno);
        return 1;
    }
#endif

    return 0;
}
