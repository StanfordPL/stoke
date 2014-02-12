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

#if defined (TARGET_WINDOWS)
#define EXPORT_SYM __declspec( dllexport )
#else
#define EXPORT_SYM extern
#endif

EXPORT_SYM void first ( unsigned long arg );
EXPORT_SYM void second( unsigned long arg );
EXPORT_SYM void third ( unsigned long arg );
EXPORT_SYM void fourth( unsigned long arg );


int main()
{
    first(0xc0decafe);

    return 0;
}


EXPORT_SYM void first( unsigned long arg )
{
    printf( "first: 0x%x\n", arg);
    
    second( 0xdeadc0de );
}


EXPORT_SYM void second( unsigned long arg )
{
    printf( "second: 0x%x\n", arg );
    
    third( 0xc0ffee );
}


EXPORT_SYM void third( unsigned long arg )
{
    printf( "third: 0x%x\n", arg );
    
    fourth( 0xbeeffeed );
}


EXPORT_SYM void fourth( unsigned long arg )
{
    printf( "fourth: 0x%x\n", arg );
}



