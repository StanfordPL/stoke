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
#include <unistd.h>
#include <stdint.h>
#include <stdio.h>
#include <stdlib.h>

intptr_t target_space;
intptr_t swizzle_space;
intptr_t page_mask;

int Swizzled(void *ptr)
{
    return ((intptr_t)ptr & page_mask) == swizzle_space;
}

void MyFree(void * p)
{
	if (Swizzled(p)) {
		fprintf (stderr, "Error MyFree got swizzled %p\n", p);
        fflush (stderr);
	}
}

void * MyAlloc(void *ptr)
{
    return ptr; // returned value will be swizzled
}

void * mmemcpy(void * to, const void * from, size_t n, void ** toout, void **fromout)
{
void * d0, *d1, *d2;
__asm__ __volatile__(
	"cld; rep ; movsl; testb $2,%b4; je 1f; movsw;"
	"1:testb $1,%b4;je 2f;"
	"movsb;"
	"2:"
	: "=&c" (d0), "=&D" (d1), "=&S" (d2):"0" (n/4), "q" (n),"1" ((long) to),"2" ((long) from) : "memory");
  *toout = d1;
  *fromout = d2;

return (to);
}

void memindex(void * ad)
{
    void * ptr = 0;
    __asm__ __volatile__("movl $0,(%0,%1,1)" :: "r"(ptr),"r"(ad));
}

int n = 8;

int main()
{
    char buffer2[20];
    char buffer3[20];
    void * al;
    void *toout,*fromout;
    int page_size = getpagesize();
    page_mask = ~((intptr_t)page_size-1);
    // Get some page aligned memory
    void * x = malloc(page_size * 2);
    target_space = ((intptr_t)x + page_size - 1) & page_mask;
    void * mm = (void*)target_space;

    al = MyAlloc(mm); // cause the swizzle
    swizzle_space = (intptr_t)al & page_mask;
    
    if (swizzle_space == target_space)
    {
        fprintf (stderr,"Error al not swizzled\n");
    }

    ((char*)al)[0] = 1;
    
    buffer2[0] = 2;
    buffer3[0] = 3;

    mmemcpy(buffer2, al, n, &toout, &fromout);
    
    fprintf(stderr, "al[0] %d buffer2[0] %d  toout - to %lx fromout - from %lx\n",
           ((char*)al)[0], buffer2[0], 
           (unsigned long)toout - (unsigned long)buffer2, (unsigned long)fromout- (unsigned long)al);
    if (!Swizzled (al)) {
        fprintf (stderr,"Error1 al not swizzled\n");
    }
    if (!Swizzled (fromout)) {
        fprintf (stderr,"Error2 fromout not swizzled\n");
    }

    mmemcpy(al, buffer3, n, &toout, &fromout);
    if (!Swizzled (al)) {
        fprintf (stderr,"Error3 al not swizzled\n");
        fflush (stderr);
    }
    if (!Swizzled (toout)) {
        fprintf (stderr,"Error4 toout not swizzled\n");
        fflush (stderr);
    }
    fprintf(stderr, "al[0] %d  buffer3[0] %d  toout - to %lx fromout - from %lx\n",((char*)al)[0],
            buffer3[0], (unsigned long)toout-(unsigned long)al, (unsigned long)fromout - (unsigned long)buffer3);
    fflush (stderr);
    
    memindex(al);
    
    MyFree(al);
    
    return 0;
}
    

