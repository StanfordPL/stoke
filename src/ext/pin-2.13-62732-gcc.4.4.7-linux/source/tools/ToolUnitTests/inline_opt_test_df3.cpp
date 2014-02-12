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
#include "pin.H"
#include <iostream>
#include <iomanip>
#include <cstdlib> // for atoi w/gcc4.3.x

extern "C" void MyMemCpy();

unsigned char src[128];
unsigned char dst[128];

    

VOID CheckCopyAndReset (unsigned char *src, unsigned char *dst)
{
    for (int i=0;i<128;i++)
    {
        if (src[i] != i)
        {
            cout << "***Error in copy of src to dst, src changed" << endl;
            exit (-1);
        }
        if (dst[i] != i)
        {
            cout << "***Error in tool copy of src to dst, unexpected value in dst" << endl;
            exit (-1);
        }
    }
    for (int i=0;i<128;i++)
    {
        src[i] = i;
        dst[i] = (i+1)&0xff;
    }
    for (int i=0;i<128;i++)
    {
        if (src[i] != i)
        {
            cout << "***Error in tool re-initialization of src" << endl;
            exit (-1);
        }
        if (dst[i] != ((i+1)&0xff))
        {
            cout << "***Error in tool re-initialization of dst" << endl;
            exit (-1);
        }
    }
}

VOID Instruction(INS ins, VOID *v)
{
    
    
    INS_InsertIfCall(ins, IPOINT_BEFORE, (AFUNPTR)MyMemCpy, IARG_PTR, &src,  IARG_PTR, &dst,  IARG_UINT32, 128, IARG_END);
    INS_InsertThenCall(ins, IPOINT_BEFORE, (AFUNPTR)CheckCopyAndReset, IARG_PTR, &src,  IARG_PTR, &dst, IARG_END);
       
}

int main(int argc, char * argv[])
{
    PIN_Init(argc, argv);

    for (int i=0;i<128;i++)
    {
        src[i] = i;
        dst[i] = (i+1)&0xff;
    }
   
    for (int i=0;i<128;i++)
    {
        if (src[i] != i)
        {
            cout << "***Error in tool initialization of src" << endl;
            exit (-1);
        }
        if (dst[i] != ((i+1)&0xff))
        {
            cout << "***Error in tool initialization of dst" << endl;
            exit (-1);
        }
    }

    INS_AddInstrumentFunction(Instruction, 0);
    
    // Never returns
    PIN_StartProgram();
    
    return 0;
}

