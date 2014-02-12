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

#define __annotation_init() \
    asm (".section MyAnnot, \"wa\"\n"); \
    asm (".text")

#ifdef TARGET_IA32
#define __annotation_mark(LABEL) \
    __asm__ __volatile__ ("." #LABEL ": .byte 0x0F, 0x1F, 0x44, 0x00, 0x00\n")

#define __annotation_add(LABEL, VALUE) \
    asm (".pushsection MyAnnot\n\t" \
    ".long ." #LABEL ", " #VALUE "\n\t" \
    ".popsection")

#else
#define __annotation_mark(LABEL) \
    __asm__ __volatile__ ("." #LABEL ": .byte 0x0F, 0x1F, 0x80, 0x00, 0x00, 0x00, 0x00\n")

#define __annotation_add(LABEL, VALUE) \
    asm (".pushsection MyAnnot\n\t" \
    ".quad ." #LABEL ", " #VALUE "\n\t" \
    ".popsection")
#endif

// Use to function to write to the output file (stdout in this case).
// The test tool will call this function to make sure that ithe tool's
// output lines are interleaved with the test function output lines.
void write_line(char *line)
{
    fprintf(stdout, "%s\n", line);
}

// create the annotation section
__annotation_init();

void TestFunc()
{
    write_line("Before first notification");
    __annotation_mark(loc1);
    write_line("Before second notification");
    __annotation_mark(loc2);
    write_line("After second notification");
}

// add the annotations to the section
__annotation_add(loc1, 0x1234);
__annotation_add(loc2, 0x5678);

int main()
{
    write_line("Calling test function");
    TestFunc();
    write_line("After test function");
    return 0;
}
