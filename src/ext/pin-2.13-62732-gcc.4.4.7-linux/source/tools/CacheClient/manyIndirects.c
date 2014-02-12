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
 * This test application is intended to expose memory leaks in handling indirect branches
 * and code cache flushes.
 * Run it with the flush_leaks tool:
 * pin -t flush_leaks -- manyIndirects
 */

#if defined (TARGET_WINDOWS)
#define EXPORT_SYM __declspec( dllexport )
#else
#define EXPORT_SYM extern
#endif

#define NUM_FUNS 100
#define DEF_FUNS()  FUN100(foo, 0)
#define INIT_FUNS() INITFUN100(foo, 0)
#define CALL_FUNS() CALLFUN100()

typedef void (* FPTR) ();
FPTR fptrs[NUM_FUNS];

#define A_SIZE 2
int a[A_SIZE];

int numFlushes = 0;
int initIndex = 0;
int callIndex = 0;

/*---------------------------------------------------------------------------------------*/

#define FUN(name, number)                           \
void name##number()                                 \
{                                                   \
    int i;                                          \
    for (i = 0; i < A_SIZE; i++)                    \
    {                                               \
        a[i] = i + 2;                               \
    }                                               \
}

#define FUN10(name, number)  \
    FUN(name, number##0)     \
    FUN(name, number##1)     \
    FUN(name, number##2)     \
    FUN(name, number##3)     \
    FUN(name, number##4)     \
    FUN(name, number##5)     \
    FUN(name, number##6)     \
    FUN(name, number##7)     \
    FUN(name, number##8)     \
    FUN(name, number##9)

#define FUN100(name, number)   \
    FUN10(name, number##0)     \
    FUN10(name, number##1)     \
    FUN10(name, number##2)     \
    FUN10(name, number##3)     \
    FUN10(name, number##4)     \
    FUN10(name, number##5)     \
    FUN10(name, number##6)     \
    FUN10(name, number##7)     \
    FUN10(name, number##8)     \
    FUN10(name, number##9)

#define FUN1000(name, number)   \
    FUN100(name, number##0)     \
    FUN100(name, number##1)     \
    FUN100(name, number##2)     \
    FUN100(name, number##3)     \
    FUN100(name, number##4)     \
    FUN100(name, number##5)     \
    FUN100(name, number##6)     \
    FUN100(name, number##7)     \
    FUN100(name, number##8)     \
    FUN100(name, number##9)

/*---------------------------------------------------------------------------------------*/

#define INITFUN(name, number)  fptrs[initIndex++] = name##number; 

#define INITFUN10(name, number)     \
    INITFUN(name, number##0)        \
    INITFUN(name, number##1)        \
    INITFUN(name, number##2)        \
    INITFUN(name, number##3)        \
    INITFUN(name, number##4)        \
    INITFUN(name, number##5)        \
    INITFUN(name, number##6)        \
    INITFUN(name, number##7)        \
    INITFUN(name, number##8)        \
    INITFUN(name, number##9)

#define INITFUN100(name, number)      \
    INITFUN10(name, number##0)        \
    INITFUN10(name, number##1)        \
    INITFUN10(name, number##2)        \
    INITFUN10(name, number##3)        \
    INITFUN10(name, number##4)        \
    INITFUN10(name, number##5)        \
    INITFUN10(name, number##6)        \
    INITFUN10(name, number##7)        \
    INITFUN10(name, number##8)        \
    INITFUN10(name, number##9)

#define INITFUN1000(name, number)      \
    INITFUN100(name, number##0)        \
    INITFUN100(name, number##1)        \
    INITFUN100(name, number##2)        \
    INITFUN100(name, number##3)        \
    INITFUN100(name, number##4)        \
    INITFUN100(name, number##5)        \
    INITFUN100(name, number##6)        \
    INITFUN100(name, number##7)        \
    INITFUN100(name, number##8)        \
    INITFUN100(name, number##9)

/*---------------------------------------------------------------------------------------*/

#define CALLFUN()  fptrs[(callIndex++) % NUM_FUNS]();

#define CALLFUN10()  \
    CALLFUN()        \
    CALLFUN()        \
    CALLFUN()        \
    CALLFUN()        \
    CALLFUN()        \
    CALLFUN()        \
    CALLFUN()        \
    CALLFUN()        \
    CALLFUN()        \
    CALLFUN()

#define CALLFUN100()   \
    CALLFUN10()        \
    CALLFUN10()        \
    CALLFUN10()        \
    CALLFUN10()        \
    CALLFUN10()        \
    CALLFUN10()        \
    CALLFUN10()        \
    CALLFUN10()        \
    CALLFUN10()        \
    CALLFUN10()

#define CALLFUN1000()   \
    CALLFUN100()        \
    CALLFUN100()        \
    CALLFUN100()        \
    CALLFUN100()        \
    CALLFUN100()        \
    CALLFUN100()        \
    CALLFUN100()        \
    CALLFUN100()        \
    CALLFUN100()        \
    CALLFUN100()

/*---------------------------------------------------------------------------------------*/

DEF_FUNS()

/*---------------------------------------------------------------------------------------*/

EXPORT_SYM void DoFlush()
{
    /* Pin tool intercepts this function and flushes the code cache. */
    numFlushes++;
}

/*---------------------------------------------------------------------------------------*/

int main()
{
    int it;
    
    initIndex = 0;
    INIT_FUNS()
    
    for (it = 0; it < 100; it++)
    {
        int k;
        for (k = 0; k < 10; k++)
        {
            callIndex = it + k; 
            CALL_FUNS()
        }
        DoFlush();
   }
    
    return 0;
}

