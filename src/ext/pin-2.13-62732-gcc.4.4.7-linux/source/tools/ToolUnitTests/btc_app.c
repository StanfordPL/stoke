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
 * Expanded from just testing ret far to include tests for 
 * a number of other instructions with implicit registers
 */
#include <stdio.h>

typedef unsigned long long UINT64;
typedef signed long long INT64;
typedef unsigned int UINT32;
typedef unsigned short UINT16;

extern int btc (char *, UINT32);

static int bitValue(char * buffer, UINT32 index)
{
    UINT32 byteOffs = index>>3;
    UINT32 bitNo    = index&7;

    return (buffer[byteOffs] & (1<<bitNo)) != 0;
}

int main()
{
    char buffer[128];
    int i;
    int bitNo;
    int errors = 0;

    for (i=0; i<128; i++)
    {
        buffer[i] = (char)-1;
    }

    // Flip the bits to zero using btc
    for (bitNo = 128*8-1; bitNo >= 0; bitNo-=63)
    {
        int res = btc(&buffer[0], bitNo);
        
        if (res & 2)
        {
            fprintf (stderr, "Bit index register corrupted by btc\n");
            errors++;
        }
        if (res & 1)
        {
            if (bitValue(&buffer[0], bitNo) != 0)
            {
                fprintf (stderr, "Bit %d not cleared by btc\n", bitNo);
                errors++;
            }
        }
        else
        {
            errors++;
            fprintf (stderr, "Bit %d not seen as set by btc\n", bitNo);
        }
    }

    // Flip the bits back to one using bts
    for (bitNo = 128*8-1; bitNo >= 0; bitNo-=63)
    {
        if (bts(&buffer[0], bitNo) == 0)
        {
            if (bitValue(&buffer[0], bitNo) != 1)
            {
                fprintf (stderr, "Bit %d not set by bts\n", bitNo);
                errors++;
            }
        }
        else
        {
            errors++;
            fprintf (stderr, "Bit %d not seen as clear by bts\n", bitNo);
        }
    }

    // Flip the bits back to zero using btr
    for (bitNo = 128*8-1; bitNo >= 0; bitNo-=63)
    {
        if (btr(&buffer[0], bitNo) == 1)
        {
            if (bitValue(&buffer[0], bitNo) != 0)
            {
                fprintf (stderr, "Bit %d not cleared by btr\n", bitNo);
                errors++;
            }
        }
        else
        {
            errors++;
            fprintf (stderr, "Bit %d not seen as set by btr\n", bitNo);
        }
    }

    // Check that they are zero using bt
    for (bitNo = 128*8-1; bitNo >= 0; bitNo-=63)
    {
        if (bt(&buffer[0], bitNo) != 0)
        {
            errors++;
            fprintf (stderr, "Bit %d not seen as clear by bt\n", bitNo);
        }
    }

    if (errors == 0)
    {
        fprintf(stderr, "All OK\n");
        return 0;
    }
    else
    {
        fprintf(stderr, "%d errors\n", errors);
        return errors;
    }
}

