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

// This little application tests calling application functions.
//
#include <stdio.h>
#include <limits.h>
 
#if defined (TARGET_WINDOWS)
#define EXPORT_SYM __declspec( dllexport )
#define FAST_CALL   __fastcall
#define STD_CALL   __stdcall
#else
#define EXPORT_SYM extern
#define FAST_CALL
#define STD_CALL
#endif
     
EXPORT_SYM void Bar()
{
    printf(" Hello from Bar!\n ");
}


EXPORT_SYM void Blue()
{
    printf(" Hello from Blue!\n");
}


EXPORT_SYM int Bar9( int one, int two, int three, int four, int five,
                      int six, int seven, int eight, int nine )
{
    int sum=0;
     
    printf(" Hello from Bar10: one = %d, two = %d\n ", one, two );
    printf(" three = %d, four = %d, five = %d, six = %d\n ", three, four, five, six );
    printf(" seven = %d, eight = %d, nine = %d \n ", seven, eight, nine );
 
    sum = one + two + three + four + five + six + seven + eight + nine;
 
    printf(" sum = %d\n", sum );
 
    return sum;
}


EXPORT_SYM int Bar10( int one, int two, int three, int four, int five,
                      int six, int seven, int eight, int nine, int zero )
{
    int sum=0;
     
    printf(" Hello from Bar10: one = %d, two = %d\n ", one, two );
    printf(" three = %d, four = %d, five = %d, six = %d\n ", three, four, five, six );
    printf(" seven = %d, eight = %d, nine = %d, zero = %d\n ", seven, eight, nine, zero );
 
    sum = one + two + three + four + five + six + seven + eight + nine + zero;
 
    printf(" sum = %d\n", sum );
 
    return sum;
}

#if defined (TARGET_WINDOWS) && defined (TARGET_IA32)

extern  __declspec( dllexport ) int FAST_CALL FastBar10(
                                     int one, int two, int three, int four, int five,
                                     int six, int seven, int eight, int nine, int zero )
{
    int sum;

    printf(" Hello from FastBar10: one = %d, two = %d\n ", one, two );
    printf(" three = %d, four = %d, five = %d, six = %d\n ", three, four, five, six );
    printf(" seven = %d, eight = %d, nine = %d, zero = %d\n ", seven, eight, nine, zero );

    sum = one + two + three + four + five + six + seven + eight + nine + zero;

    printf(" sum = %d\n", sum );

    return sum;
}


extern __declspec( dllexport ) int STD_CALL StdBar10(
                                  int one, int two, int three, int four, int five,
                                  int six, int seven, int eight, int nine, int zero )
{
    int sum;

    printf(" Hello from StdBar10: one = %d, two = %d\n ", one, two );
    printf(" three = %d, four = %d, five = %d, six = %d\n ", three, four, five, six );
    printf(" seven = %d, eight = %d, nine = %d, zero = %d\n ", seven, eight, nine, zero );

    sum = one + two + three + four + five + six + seven + eight + nine + zero;

    printf(" sum = %d\n", sum );

    return sum;
}



#endif

