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
#include <unistd.h>
#include <sys/mman.h>
#include <dlfcn.h>
#include <stdio.h>

#ifdef TARGET_MAC
#define ONE "libone.dylib"
#define TWO "libtwo.dylib"
#else
#define ONE "libone.so"
#define TWO "libtwo.so"
#endif

void Load(char *name, int expect)
{
    int val;
    double dval;
    
    void *handle;
    int (*sym)();
    double (*fsin)(double);
    
    handle = dlopen(name, RTLD_LAZY);
    if (handle == 0)
    {
        fprintf(stderr,"Load of %s failed\n",name);
        exit(1);
    }
    
    sym = (int(*)())dlsym(handle, "one");
    if (sym == 0)
    {
        fprintf(stderr,"Dlsym of %s failed\n",name);
        exit(1);
    }
        
    val = sym();
    if (val != expect)
        exit(1);

    dlclose(handle);
}

int main()
{
    int i;
    for(i = 0; i < 100; i++)
    {
        switch(1 + rand() % 2) {
        case 1:
            Load(ONE, 1);
            break;
        case 2:
            Load(TWO, 2);
            break;
        }
    }

    return 0;
}

