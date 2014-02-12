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
#else
#define EXPORT_SYM extern
#endif

EXPORT_SYM void * Bar4( long one, long two )
{
    printf(" Hello from Bar4: one = %d, two = %d!\n ", one, two );

    return (void *)0xc0decafe00;
}

EXPORT_SYM void * Blue4( long one, long two )
{
    printf(" Hello from Blue4: one = %d, two = %d!\n ", one, two );
    
    return (void *)0xdeadbeef00;
}

EXPORT_SYM short Bar13(  short s1, short s2, unsigned short us1,
                         long l1, long l2, unsigned long ul1,
                         short s3, short s4, unsigned short us2,
                         long l3, long l4, unsigned long ul2 )
{
    printf(" Hello from Bar13: \n");
    printf(" s1 = %d, s2 = %d, us1 = %d\n ", s1, s2, us1 );
    printf(" s3 = %d, s4 = %d, us2 = %d\n ", s3, s4, us2 );
    printf(" l1 = %ld, l2 = %ld, ul1 = %ld\n ", l1, l2, ul1 );
    printf(" l3 = %ld, l4 = %ld, ul2 = %ld\n ", l3, l4, ul2 );

    return 1;
}


EXPORT_SYM short Green13( short s1, short s2, unsigned short us1,
                          long l1, long l2, unsigned long ul1,
                          short s3, short s4, unsigned short us2,
                          long l3, long l4, unsigned long ul2 )
{
    printf(" Green13: ");

    if ( s1 == SHRT_MIN &&
         s2 == SHRT_MAX &&
         us1 == USHRT_MAX &&
         l1 == LONG_MIN &&
         l2 == LONG_MAX &&
         ul1 == ULONG_MAX &&
         s3 == SHRT_MIN &&
         s4 == SHRT_MAX &&
         us2 == USHRT_MAX &&
         l3 == LONG_MIN &&
         l4 == LONG_MAX &&
         ul2 == ULONG_MAX )
    {
        printf(" Test passed\n" );
        return 1;
    }
    
    else
    {
        printf(" Test failed\n" );

        if ( s1 != SHRT_MIN )
            printf (" s1 != SHRT_MIN\n");
        
        if ( s2 != SHRT_MAX )
            printf(" s2 != SHRT_MIN\n");
        
        if ( us1 != USHRT_MAX )
            printf("  us1 != USHRT_MAX\n");
        
        if ( l1 != LONG_MIN )
            printf(" l1 != LONG_MIN\n");
        
        if ( l2 != LONG_MAX )
            printf(" l2 != LONG_MAX\n");

        if ( ul1 != ULONG_MAX )
            printf(" ul1 == ULONG_MAX\n");
        
        if ( s3 != SHRT_MIN )
            printf(" s3 != SHRT_MIN\n");
        
        if ( s4 != SHRT_MAX )
            printf(" s4 != SHRT_MAX\n");
        
        if ( us2 != USHRT_MAX )
            printf(" us2 != USHRT_MAX\n");
        
        if ( l3 != LONG_MIN )
            printf(" l3 != LONG_MIN\n");
        
        if ( l4 != LONG_MAX )
            printf(" l4 != LONG_MAX\n");
        
        if ( ul2 != ULONG_MAX )
            printf(" ul2 != LONG_MAX\n");
    }
    
    return 1;
}



