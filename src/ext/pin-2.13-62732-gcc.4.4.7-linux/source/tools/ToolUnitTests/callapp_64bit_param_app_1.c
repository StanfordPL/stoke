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
// This little application is used to test calling application functions with 64bit parameters.
//
#include <stdio.h>


#ifdef TARGET_WINDOWS
#include <windows.h>
typedef  __int64 i64_type;
#endif

extern void Bar();

union  union_64{
    double _doub;
    unsigned char _uint8[8];
    i64_type i64;
} UNION_64;

int main()
{
    union  union_64 param1, param2;

    param1._uint8[0]=0xde;
    param1._uint8[1]=0xad;
    param1._uint8[2]=0xbe;
    param1._uint8[3]=0xef;
    param1._uint8[4]=0xde;
    param1._uint8[5]=0xad;
    param1._uint8[6]=0xbe;
    param1._uint8[7]=0xef;

    param2._uint8[0]=0xde;
    param2._uint8[1]=0xad;
    param2._uint8[2]=0xbe;
    param2._uint8[3]=0xef;
    param2._uint8[4]=0xde;
    param2._uint8[5]=0xad;
    param2._uint8[6]=0xbe;
    param2._uint8[7]=0x7f;

    Bar(param1.i64, param2.i64);

    return 0;
}
