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
 * This test verifies that the functionality of realloc() function.  It
 * also verifies that the memory allocated by realloc() can be freed by
 * Pin's free() function.
 */

#include <iostream>
#include <vector>
#include <stdlib.h>
#include "pin.H"

extern "C" void *memalign(size_t, size_t);
extern "C" void *realloc(void *, size_t);

static BOOL TestRealloc(void *, size_t);

int main(int argc, char * argv[])
{
    PIN_Init(argc, argv);


    // Test realloc to larger and smaller sizes
    
    void * ptr1 = malloc(20);
    if (ptr1 == NULL) 
    {
        std::cerr << "Malloc failed\n";
        exit(-1);
    }

    std::cerr << "Malloc : " << hex << ptr1 << dec << std::endl;
    
    if (TestRealloc(ptr1, 20)) 
    {
        std::cerr << "Realloc of simple malloc failed\n";
        return -1;
    }

    // Test realloc of small chunk aligned at small value
    void * ptr2 = memalign(32, 400);
    if (ptr2 == NULL) 
    {
        std::cerr << "Memalign failed\n";
        exit(-1);
    }
    
    std::cerr << "Memalign : " << hex << ptr2 << dec << std::endl;

    if (TestRealloc(ptr2, 400)) 
    {
        std::cerr << "Realloc of small chunk aligned at small boundary failed\n";
        return -1;
    }

    
    // Test realloc of small chunk aligned at large value
    void * ptr3 = memalign(2048, 400);
    if (ptr3 == NULL) 
    {
        std::cerr << "Memalign failed\n";
        exit(-1);
    }
    
    std::cerr << "Memalign : " << hex << ptr3 << dec << std::endl;

    if (TestRealloc(ptr3, 400)) 
    {
        std::cerr << "Realloc of small chunk aligned at large boundary failed\n";
        return -1;
    }
    
    // Test realloc of large chunk aligned at large value
    void * ptr4 = memalign(2048, 400000);
    if (ptr4 == NULL) 
    {
        std::cerr << "Memalign failed\n";
        exit(-1);
    }
    
    std::cerr << "Memalign : " << hex << ptr4 << dec << std::endl;
    
    if (TestRealloc(ptr4, 400000)) 
    {
        std::cerr << "Realloc of large chunk aligned at large boundary failed\n";
        return -1;
    }
    
    // Never returns
    PIN_StartProgram();
    
}

BOOL TestRealloc(void * ptr, size_t sz) 
{
    // Reallocate ptr to a larger size
    void * tmp = realloc(ptr, sz+21000);
    if (tmp == NULL) 
    {
        std::cerr << "Realloc to larger size failed\n";
        return 1;
    }
    ptr = tmp;
    std::cerr << "Realloc to larger size : " << hex << ptr << dec << std::endl;

    // Reallocate ptr to a half the original size
    tmp = realloc(ptr, sz/2);
    if (tmp == NULL) 
    {
        std::cerr << "Realloc to smaller size failed\n";
        return 1;
    }
    ptr = tmp;
    std::cerr << "Realloc to smaller size : " << hex << ptr << dec << std::endl;
    free(ptr);
    
    return 0;
}

