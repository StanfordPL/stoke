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
//
// Pin doesn't allow calling PIN API functions before the tool's "main"
// function is been called. But mmap has special handling. This test
// calls mmap from a constructor of a static object, hence it is called
// when the tool is loaded (i.e. before pin has a chance to call "main").
//

#include <iostream>
#include <errno.h>
#include <sys/mman.h>
#include "pin.H"

static void *gptr = 0;

class TestMMap {
public:
    TestMMap() 
    {
        gptr = mmap(0, 4*1024, PROT_READ, MAP_PRIVATE|MAP_ANON, -1, 0);
    }
};

static TestMMap testMmap;


int main(INT32 argc, CHAR **argv)
{
    PIN_Init(argc, argv);

    void *p = mmap(0, 4*1024, PROT_READ, MAP_PRIVATE|MAP_ANON, -1, 0);
    if (p == MAP_FAILED || gptr == MAP_FAILED)
    {
        std::cerr << "mmap has failed" << std::endl;
        return 1;
    }

    if (gptr == 0)
    {
        std::cerr << "ctor was not called" << std::endl;
        return 1;
    }

    PIN_StartProgram();
    return 0;
}
