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
 * this application calls malloc and prints the result.
 */
#include <stdio.h>
#include <stdlib.h>
#include <string.h>


static void * my_malloc( size_t size )
{
    return malloc( size );
    
}


int main( int argc, char * argv[] )
{
    char * buffer1;
    char * buffer2;
    char * buffer3;
    char * buffer4;

    buffer1 = (char *)my_malloc( 64 );
    printf("little_malloc: 0x%lx\n", buffer1 );

    buffer2 = (char *)my_malloc( 128 );
    printf("little_malloc: 0x%lx\n", buffer2 );

    buffer3 = (char *)my_malloc( 256 );
    printf("little_malloc: 0x%lx\n", buffer3 );

    buffer4 = (char *)my_malloc( 512 );
    printf("little_malloc: 0x%lx\n", buffer4 );

    printf("little_malloc: freeing 0x%lx\n", buffer1 );
    free( buffer1 );
    printf("little_malloc: freeing 0x%lx\n", buffer2 );
    free( buffer2 );
    printf("little_malloc: freeing 0x%lx\n", buffer3 );
    free( buffer3 );
    printf("little_malloc: freeing 0x%lx\n", buffer4 );
    free( buffer4 );

    printf(" Test passed.\n" );

    return 0;
}


    
    
