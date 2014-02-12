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
 * A test which includes a large number of different push instructions.
 *
 * The idea is that we validate their behaviour here, so that we can check 
 * that they're still working correctly when we rewrite their addressing
 * with Pin.
 *
 * Code assumes Gcc inline asm, so won't run on Windows.
 * This shouldn't matter, since none of the rewriting is OS dependent.
 */

#include <stdio.h>
extern void * pushIW_(void *stack);

typedef long int addrint;

/* Macros for building test routines. */
#define switchStack(newSP) \
    __asm__ ("mov  %0,%%esp": :"r"(newSP): "%esp")

#define readStack(SP) \
    __asm__ ("mov  %%esp,%0": "=r"(SP) :: "%esp")

static void * pushI(void *stack)
{
    // Don't use anything on the stack, since we're about to switch esp.
    // (Since they're normally addressed relative to ebp locals should be OK,
    // but this is safest)
    register void * sp  asm("%ebx");
    register void * osp asm("%ecx");

    readStack(sp);
    switchStack (stack);
    __asm__ ("pushl $99");
    readStack(osp);
    switchStack(sp);
    
    return osp;
}

static void * pushIW(void *stack)
{
    // Don't use anything on the stack, since we're about to switch esp.
    // (Since they're normally addressed relative to ebp locals should be OK,
    // but this is safest)
    register void * sp  asm("%ebx");
    register void * osp asm("%ecx");

    readStack(sp);
    switchStack (stack);
    __asm__ ("pushw $-5");
    readStack(osp);
    switchStack(sp);
    
    return osp;
}

static void * pushSP(void *stack)
{
    register void * sp  asm("%ebx");
    register void * osp asm("%ecx");

    readStack(sp);
    switchStack (stack);
    __asm__ ("pushl %esp");
    readStack(osp);
    switchStack(sp);
    
    return osp;
}

static void * pushSPIndirect(void *stack)
{
    register void * sp  asm("%ebx");
    register void * osp asm("%ecx");

    readStack(sp);
    switchStack (stack);
    __asm__ ("pushl (%esp)");
    readStack(osp);
    switchStack(sp);
    
    return osp;
}

/* Can't easily check the results for this one, but at least we can 
 * see that the correct number of things were pushed.
 */
static void * pushA(void *stack)
{
    register void * sp  asm("%ebx");
    register void * osp asm("%ecx");

    readStack(sp);
    switchStack (stack);
    __asm__ ("pusha");
    readStack(osp);
    switchStack(sp);
    
    return osp;
}

/* Can't easily check the results for this one, but at least we can 
 * see that the correct number of things were pushed.
 */
static void * pushF(void *stack)
{
    register void * sp  asm("%ebx");
    register void * osp asm("%ecx");

    readStack(sp);
    switchStack (stack);
    __asm__ ("pushf");
    readStack(osp);
    switchStack(sp);
    
    return osp;
}

static unsigned char xlat(unsigned char * base, unsigned char index)
{
    register unsigned char result asm ("%al") = index;
    register unsigned char * b asm ("%ebx") = base;

    __asm__ ("xlat" : "=a"(result) : "a"(result), "r"(b));

    return result;
}

static int xlatTest()
{
    unsigned char notV[256];
    unsigned char xlated[256];
    int i;
    int failures = 0;
    for (i=0;i<256; i++)
    {
        notV[i] = (unsigned char)~i;
    }

    for (i=0;i<256;i++)
    {
        xlated[i] = xlat(notV, (unsigned char)i);
    }

    for (i=0; i<256; i++)
    {
        if (xlated[i] != notV[i])
        {
            printf("XLAT failed : got %02x expected %02x\n", xlated[i], notV[i]);
            failures++;
        }
    }

    printf ("XLAT test %s\n", failures ? "FAILED" : "Passed");
    return failures;
}

struct result
{
    void *  before;
    void *  after;
    addrint expected;
    addrint seen;
};

int printResult (const char * test, struct result *r)
{
    printf ("%-8s %p %p  %4ld   %010p %010p %7ld\n",
            test, r->before, r->after, 
            (int)(((char *)r->after) - (char *)r->before),
            (void *) r->expected, (void *)r->seen, r->seen - r->expected);

    return (r->expected != r->seen);
}

int main (int argc, char ** argv)
{
    struct result r;
    addrint stack[32];
    addrint * stackp = &stack[32];
    int failures = xlatTest();

    printf ("              Stack Pointer                   Value\n");
    printf ("Test     Before     After      Delta   Expect     See          Delta\n");

    r.before = stackp;
    r.after  = pushI(stackp);
    r.expected = 99;
    r.seen   = stack[31];
    failures += printResult ("I",&r);

    r.before = stackp;
    r.after  = pushIW_(stackp); // Since ICC 11 is not supporting pushw in it's inline asm, the pushIW changed to an asm version pushIW_
    r.expected = -5;
    r.seen   = *(short *)(((char *)stackp)-2);
    failures += printResult ("IW",&r);

    r.before = stackp;
    r.after  = pushSP(stackp);
    r.expected = (addrint)stackp;                   /* push esp is an interesting case. See esp before decrement. */
    r.seen     = stack[31];
    failures += printResult ("%esp",&r);

    stack[31] = 101;
    r.before   = stackp-1;
    r.after  = pushSPIndirect(r.before);
    r.expected = 101;
    r.seen   = stack[30];
    failures += printResult("(%esp)", &r);
    
    r.before = stackp;
    r.after  = pushA(stackp);
    r.expected = 0;
    r.seen     = 0;
    failures += printResult ("pusha",&r);

    printf ("Flags result varies, not counted as a failure\n");
    r.before = stackp;
    r.after  = pushF(stackp);
    r.expected = 0x286;
    r.seen     = stack[31];
    printResult ("pushf",&r);

    printf ("Done\n");

    return failures;
}

