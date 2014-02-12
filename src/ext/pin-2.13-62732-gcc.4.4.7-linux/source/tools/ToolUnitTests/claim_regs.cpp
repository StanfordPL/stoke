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
#include <stdio.h>
#include <stdlib.h>
#include "pin.H"

// Just test that we can allocate registers and fail when we expect to.

int main(int argc, char **argv)
{
    const int nScratch = REG_INST_TOOL_LAST-REG_INST_TOOL_FIRST+1;
    int seen[nScratch];
    bool failed = false;

    PIN_Init(argc, argv);

    for (int i=0; i<nScratch; i++)
        seen[i] = 0;

    // Claim all the registers we expect to be able to claim
    for (int i=0; i<nScratch; i++)
    {
        REG scratch = PIN_ClaimToolRegister();
        if (scratch < REG_INST_TOOL_FIRST ||
            scratch > REG_INST_TOOL_LAST)
        {
            printf ("Failed: got a non-scratch register (%d)\n", int(scratch));
            failed = true;
        }
        seen[scratch-REG_INST_TOOL_FIRST]++;
    }

    // Check that we fail when we try to allocate an extra one.
    if (PIN_ClaimToolRegister() != REG_INVALID())
    {
        printf ("Failed: got register when we shouldn't have\n");
        failed = true;
    }

    // Check that we got each register once
    for (int i=0; i<nScratch; i++)
    {
        if (seen[i] != 1)
        {
            printf ("Failed: saw REG_INST_G%d %d times\n", i, seen[i]);
            failed = true;
        }
    }

    if (!failed)
        printf ("Passed\n");
    
    // No need to run the code...
    exit(failed ? 1 : 0);
}
