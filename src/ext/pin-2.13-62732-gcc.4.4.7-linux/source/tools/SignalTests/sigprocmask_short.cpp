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
 * This test verifies that Pin does not write beyond the end of the
 * sigset_t parameter to sigprocmask().  The Linux kernel really treats
 * these parameters as pointers to 64-bit words, which is smaller than
 * libc's sigset_t.  A noncompliant program might pass the address of a 64-bit
 * word as a parameter and it would still work OK.  This test verifies
 * that such noncompliant programs also work under Pin.
 *
 * FreeBSD note: the FreeBSD sigset size is 128 bit.
 */

#include <stdio.h>
#include <signal.h>
#include <stdint.h>

/*
 * This is an abbreviated signal set that matches the size really
 * accessed by the kernel.  It is SMALLER than libc's sigset_t.
 */
struct kernel_sigset
{
#ifdef TARGET_BSD
    uint32_t sig[4];
#else
    uint32_t sig[2];
#endif
};


int main()
{
    struct
    {
        kernel_sigset current;
        unsigned long dummy;
    } foo;

    /* This sentinal checks whether Pin overwrites beyond the end of 'current'. */
    foo.dummy = 0xdeadbeef;

    sigprocmask(SIG_SETMASK, 0, reinterpret_cast<sigset_t *>(&foo.current));

    if (foo.dummy != 0xdeadbeef)
    {
        printf("The stack dummy is CORRUPTED!\n");
        return 1;
    }
    return 0;
}
