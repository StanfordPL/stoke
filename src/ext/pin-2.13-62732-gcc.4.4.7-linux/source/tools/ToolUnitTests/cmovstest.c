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
//
// Code which includes examples of all the different cmov conditions.
//
#include <stdio.h>

static int executed = 0;
static int total = 0;

#define S1(s) #s
#define STRINGIZE(s) S1(s)

// In the tool we look for fnop and toggle counting, so that it only
// counts the cmov operations in this code, not elsewhere in the runtime.
static void toggleCollection()
{
    __asm__ __volatile__ ("fnop");
}

// Iterate over each CMOVcc instruction (there are more mnemonics than this,
// but they're all synonyms for one of these)
#define FOREACH_CMOV(expand)                    \
    expand(cmovb)                               \
    expand(cmovbe)                              \
    expand(cmovl)                               \
    expand(cmovle)                              \
    expand(cmovnb)                              \
    expand(cmovnbe)                             \
    expand(cmovnl)                              \
    expand(cmovnle)                             \
    expand(cmovno)                              \
    expand(cmovnp)                              \
    expand(cmovns)                              \
    expand(cmovnz)                              \
    expand(cmovo)                               \
    expand(cmovp)                               \
    expand(cmovs)                               \
    expand(cmovz)

#define DeclareCounter(movOp)                   \
   static int movOp##_total    = 0;             \
   static int movOp##_executed = 0;

FOREACH_CMOV(DeclareCounter)

#define CMOVFunction(res, comparison, movOp)                            \
{                                                                       \
    int one  = 1;                                                       \
    res = 0;                                                            \
    if (comparison)                                                     \
        __asm__ __volatile__ (STRINGIZE(movOp) " %1, %0" : "+r"(res) : "r"(one)); \
    else                                                                \
        __asm__ __volatile__ (STRINGIZE(movOp) " %1, %0" : "+r"(res) : "r"(one)); \
                                                                        \
    movOp##_total++;                                                    \
    movOp##_executed += res;                                            \
}

#define DefineTest(comparison, movOp)           \
     toggleCollection();                        \
     CMOVFunction(result, comparison, movOp)    \
     toggleCollection();                        \
     total++;                                   \
     if (result) { executed++; }

#define DefineEqual(movOp) DefineTest(a==b,movOp)

#define PrintStats(movOp)                                               \
     printf ("%-7s: %4d %4d\n", STRINGIZE(movOp), movOp##_total, movOp##_executed);

int main(int argc, char **argv)
{
    static int aValues[] = {-2,-1,0,1,2};
    static int bValues[] = {-2,-1,0,1,2};
    int aIndex;
    int bIndex;

    for (aIndex = 0; aIndex<sizeof(aValues)/sizeof(aValues[0]); aIndex++)
    {
        int a = aValues[aIndex];

        for (bIndex = 0; bIndex<sizeof(bValues)/sizeof(bValues[0]); bIndex++)
        {
            int b = bValues[bIndex];
            int result;

            FOREACH_CMOV (DefineEqual);
        }
    }

    printf ("Total : %d Executed : %d\n", total, executed);

    FOREACH_CMOV(PrintStats);
    
    return 0;
}
