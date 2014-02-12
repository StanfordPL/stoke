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
 * See "swizzleapp.c" for a description of this test.
 */

#include <sys/mman.h>
#include <stdlib.h>
#include <unistd.h>

ADDRINT page_mask;
ADDRINT page_offset_mask;
ADDRINT swizzle_space = 0;
ADDRINT target_space = 0;

static void make_swizzle_space(ADDRINT val)
{
    int page_size = getpagesize();
    page_offset_mask = page_size-1;
    page_mask = ~page_offset_mask;
    // Get swizzle space by allocating memory and rounding up
    ADDRINT mem = (ADDRINT)malloc(2 * page_size);
    swizzle_space = (mem + page_size - 1) & page_mask;
    if (0 != mprotect((void*)swizzle_space, page_size, 0))
    {
        perror("mprotect");
        exit(1);
    }
    target_space = val & page_mask;
#if defined(DEBUG_OUTPUT)
    fprintf(stderr,"page mask %p page_offset_mask %p swizzle_space %p target_space %p\n",
            (void*)page_mask,(void*)page_offset_mask,(void*)swizzle_space,(void*)target_space);
#endif
}

static VOID SwizzleRef(ADDRINT *val)
{
#if defined(DEBUG_OUTPUT)
    fprintf(stderr,"swizzle: in %p\n",(void*)*val);
#endif
    if (target_space == 0)
    {
        make_swizzle_space(*val);
    }
    
    if ((*val & page_mask) != target_space)
    {
        fprintf(stderr,"Multiple target space pages\n");
        exit(1);
    }
    *val = swizzle_space | (*val & page_offset_mask);
#if defined(DEBUG_OUTPUT)
    fprintf(stderr,"  out %p\n",(void*)*val);
#endif
}

static ADDRINT Unswizzle(ADDRINT val)
{
    if (page_mask == 0)
        return val;
    
#if defined(DEBUG_OUTPUT)
    fprintf(stderr,"unswizzle: in %p\n",(void*)val);
#endif
    if ((val & page_mask) == swizzle_space)
        val = target_space | (val & page_offset_mask);
#if defined(DEBUG_OUTPUT)
    fprintf(stderr,"  out %p\n",(void*)val);
#endif
    return val;
}

static void UnswizzleRef(ADDRINT * val)
{
    *val = Unswizzle(*val);
}

