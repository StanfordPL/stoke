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
Application for testing the correctness of "INS_MemoryDisplacement(INS ins)". 
INS_MemoryDisplacement computes the memory displacement, which is a sign number. 
Tested only on 64 Linux architecture.
When running the application with the tool: "memory_displacement.cpp", the output, which is the displacement value, should be -24.
When running the application natively( without the tool), the output for the IA-32 architecture, which is the displacement value, should be 4.
When running the application natively( without the tool), the output for the IA-32 architecture, which is the displacement value, should be 7.
*/

#include <stdio.h>
#include <stdint.h>
#include <stdlib.h>

template<class T> void allocateBuffer(T buffer[])
{
    T i;
    for(i=0;i<20;i++)
        buffer[i]=i;
}

extern "C" int neg_disp(void *p);

enum ExitType {
    RES_SUCCESS = 0,                // 0
    RES_INVALID_ARGS,               // 1
    RES_INVALID_DISPLACEMENT_TYPE   // 2
};

/*
    Expected argv arguments:
    [1] Displacement type
*/
int main(int argc, char *argv[] )
{
    if(argc!=2)
    {
        fprintf(stderr, "invalid number of arguments %d, expecting only one\n", argc);
        fflush(stderr);
        exit(RES_INVALID_ARGS);
    }

    int ans;
    switch( atoi(argv[1]) )
    {
        case 0:
        {
            int64_t buffer_int64[20], disp=10;
            allocateBuffer<int64_t>(buffer_int64); 

            //neg_disp computes the memory displacement
            ans = neg_disp(buffer_int64+disp);
            printf("n: %d\n", ans);
            break;
        }
        case 1:
        {
            uint64_t buffer_uint64[20], disp=10;
            allocateBuffer<uint64_t>(buffer_uint64); 
            
            //neg_disp computes the memory displacement
            ans = neg_disp(buffer_uint64 + disp);
            printf("n: %d\n", ans);
            break;
        }
        case 2:
        {
            int32_t buffer_int32[20], disp=10;
            allocateBuffer<int32_t>(buffer_int32); 

            //neg_disp computes the memory displacement
            ans= neg_disp(buffer_int32 + disp);
            printf("n: %d\n", ans);
            break;
        }

        default:
            exit(RES_INVALID_DISPLACEMENT_TYPE);
            break;
    }

    return RES_SUCCESS;
}
