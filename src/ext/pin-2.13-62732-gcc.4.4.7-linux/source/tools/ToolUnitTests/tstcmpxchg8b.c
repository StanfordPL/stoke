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
#include <stdlib.h>
#include <stdio.h>
#if defined(__GNUC__)
# include <stdlib.h>
#endif

extern int cmpxchg8_base(int *buff);
extern int cmpxchg8_plus8(int *buff);
extern int cmpxchg8_esp(int *buff);

main()
{
    int arr[4];
    int res;
    arr[0] = 1;
    arr[1] = 1;
    printf("calling cmpxchg with base array\n");
    res = cmpxchg8_base(arr);
    if (res != 1 || arr[0] != 2 || arr[1] != 2)
    {
        printf("cmpxchg function failed: expected (2,2) got (%d,%d)\n", arr[0], arr[1]);
        exit(1);
    }

    printf("cmpxchg function ok (%d,%d)\n", arr[0], arr[1]);

    arr[2] = 1;
    arr[3] = 1;
    printf("calling cmpxchg with base plus 8\n");
    res = cmpxchg8_plus8(arr);
    if (res != 1 || arr[2] != 2 || arr[3] != 2)
    {
        printf("cmpxchg function failed: expected (2,2) got (%d,%d)\n", arr[2], arr[3]);
        exit(1);
    }

    printf("cmpxchg function ok (%d,%d)\n", arr[2], arr[3]);

    arr[2] = 1;
    arr[3] = 1;
    printf("calling cmpxchg with base esp\n");
    res = cmpxchg8_esp(arr);
    if (res != 1)
    {
        printf("cmpxchg function failed: expected (2,2) got (%d,%d)\n", arr[2], arr[3]);
        exit(1);
    }

    printf("cmpxchg function ok\n");
    exit(0);
}
