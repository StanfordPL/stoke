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

#ifdef HAVE_CONFIG_H
#include <config.h>
#endif

#include <iostream>
#include <cstdlib>

#ifdef TARGET_LINUX
#define DATA_SECTION(secName) __attribute__ ((section (secName)))
#define SECTION_END

#else
#define PUSH_SECTIONS__ __pragma(code_seg(push)) __pragma(data_seg(push)) __pragma(const_seg(push))
#define POP_SECTIONS__  __pragma(code_seg(pop))  __pragma(data_seg(pop))  __pragma(const_seg(pop))

#define DATA_SECTION(secName) PUSH_SECTIONS__  __pragma(data_seg(secName))
#define SECTION_END           POP_SECTIONS__
#endif 

using namespace std;

static int Proc1();
static int Proc2();

int main(int argc, char *argv[])
{
  cout << "Hello, world!" << endl;
  
  Proc1();
  Proc2();

  return EXIT_SUCCESS;
}

// We will use probes on the following functions, so their first BBL
// should be long enough to avoid jumps to our trampoline code, even
// when the compiler uses optimizations.
int Proc1()
{
    int n = 15;
    int i = 0;
    for (; i<10; i++)
    {
        cout << ".";
        n--;
    }
    cout << endl;
    return i + n;
}

int Proc2()
{
    int n = 15;
    int i = 0;
    for (; i<10; i++)
    {
        cout << ".";
        n++;
    }
    cout << endl;
    return n - i;
}



DATA_SECTION(".fTable")
const char *ptr[2] = { (const char *)&Proc1, (const char *)&Proc2 };
SECTION_END
