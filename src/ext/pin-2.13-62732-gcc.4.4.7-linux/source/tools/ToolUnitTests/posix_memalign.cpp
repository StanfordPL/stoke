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
 * This test verifies that the posix_memalign() function returns correctly aligned pointers.  
 * It also verifies that the memory returned by posix_memalign() can be freed by Pin's free()
 * function.
 */

#include <iostream>
#include <vector>
#include <stdlib.h>
#include <errno.h>
#include "pin.H"

extern "C" int posix_memalign(void **memptr, size_t alignment, size_t size);

static BOOL TestAlign(size_t alignment, size_t size);


typedef std::vector<void *> POINTER_CONTAINER;
POINTER_CONTAINER Pointers;


int main(int argc, char * argv[])
{
    PIN_Init(argc, argv);

    // Test alignment of "small chunks"
    for (int i = 0;  i < 10;  i++)
    {
        for (size_t align = 1;  align <= 8192;  align <<= 1)
        {
            if (!TestAlign(align, 4))
                return 1;
        }
    }

    // Test alignment of "big chunks" that are larger than 1 page but smaller than 2 pages
    for (int i = 0;  i < 10;  i++)
    {
        for (size_t align = 1;  align <= 8192;  align <<= 1)
        {
            if (!TestAlign(align, 1700))
                return 1;
        }
    }


    // Test alignment of "big chunks" larger than one page in size and alignment larger than one page
    for (int i = 0;  i < 10;  i++)
    {
        for (size_t align = 1024;  align < 16*1024;  align <<= 1)
        {
            if (!TestAlign(align, (i+1)*100000))
                return 1;
        }
    }

    // Free the memory allocated by posix_memalign().
    for (POINTER_CONTAINER::iterator it = Pointers.begin();  it != Pointers.end();  ++it) 
        free(*it);


    // Error testing
    std::cerr << "Error testing: expect an error message here." << std::endl;
    TestAlign( 555, 4096 );
        
        
    // Never returns
    PIN_StartProgram();
    return 0;
}


static BOOL TestAlign(size_t align, size_t size)
{
    void *p;

    int err = posix_memalign(&p, align, size);

    if ( err == EINVAL )
    {
        std::cerr << "Invalid alignment value: " << align << std::endl;
        return FALSE;
    }

    if ( err == ENOMEM )
    {
        std::cerr << "Allocation failed due to insufficient memory." << std::endl;
        return FALSE;
    }
    
    ADDRINT addr = reinterpret_cast<ADDRINT>(p);

    if ( addr == 0x0 )
    {
        std::cerr << "Error: NULL value returned." << std::endl;
        return FALSE;
    }

    Pointers.push_back(p);

    if (addr & (align-1))
    {
        std::cerr << "Incorrect alignment for " << align << " (p=" << p << ")" << std::endl;
        return FALSE;
    }

    std::cout << "Alignment " << align << " : Size : " << size << " " << p << std::endl;
    return TRUE;
}
