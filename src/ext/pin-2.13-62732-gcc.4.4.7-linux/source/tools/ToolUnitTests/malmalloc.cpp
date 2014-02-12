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

char * data[100];
INT32 sizeindex[100];

INT32 sizes[] = 
{
    100, 4000, 30, 20, 6000, 24000, 0
};
               
VOID mal(INT32 id)
{
    char * d = data[id];
    INT32 size = sizes[sizeindex[id]];

    if (d)
    {
        for (INT32 i = 0; i < size; i++)
        {
            if (d[i] != id)
            {
                fprintf(stderr,"Bad data id %d data %d\n", id, d[i]);
                exit(1);
            }
        }
        free(d);
    }

    sizeindex[id]++;

    if (sizes[sizeindex[id]] == 0)
        sizeindex[id] = 0;
    size = sizes[sizeindex[id]];

    ASSERTX(size != 0);
    
    
    data[id] = (char*)malloc(size);
    d = data[id];
    for (INT32 i = 0; i < size; i++)
    {
        d[i] = id;
    }
}

VOID Tr(TRACE trace, VOID *)
{
    TRACE_InsertCall(trace, IPOINT_BEFORE, AFUNPTR(mal), IARG_THREAD_ID, IARG_END);
}

int main(INT32 argc, CHAR **argv)
{
    PIN_Init(argc, argv);
    
    TRACE_AddInstrumentFunction(Tr, 0);
    
    // Never returns
    PIN_StartProgram();
    
    return 0;
}
