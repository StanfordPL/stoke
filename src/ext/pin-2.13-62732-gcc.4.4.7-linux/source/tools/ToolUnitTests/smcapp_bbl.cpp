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

/*! @file
 *  An example of SMC inside a basic block. 
 *  To run this application under pin, specify -smc_strict option. 
 */
#include "smc_util.h"
#include "sys_memory.h"

#if !defined(TARGET_IA32) || !defined(TARGET_WINDOWS)
#error This must be a 32-bit Windows program.
#endif

#define CODE_SECTION(name)          __pragma(code_seg(name))
#define SECTION_END                 __pragma(code_seg())

/*!
 * A function whose single basic block modifies its own code. 
 * The function copies "bar" string into the specified buffer. If in-BBL SMC
 * is not handled, the output string is "foo".
 * To simplify calculation of the size of this function, it is placed in a special 
 * code section along with the immediately following foo2barEnd() function.
 */
CODE_SECTION("foo2bar_code")
static void foo2bar(char * result)
{
    __asm
    {
        // Modify immediate operands in smc* instructions
        mov byte ptr [offset smc1 + 2], 'b'; 
        mov byte ptr [offset smc2 + 2], 'a';
        mov byte ptr [offset smc3 + 2], 'r';

        mov eax, dword ptr [result];

        smc1: mov byte ptr [eax], 'f'; // *result++ = 'f'
        inc eax;

        smc2: mov byte ptr [eax], 'o'; // *result++ = 'o'
        inc eax;

        smc3: mov byte ptr [eax], 'o'; // *result++ = 'o'
        inc eax;

        mov byte ptr [eax], 0; // *result = 0
    }
}
SECTION_END

CODE_SECTION("foo2bar_code")
static void foo2barEnd(char * str) {}
SECTION_END

/*!
 * Exit with the specified error message
 */
static void Abort(string msg)
{
    cerr << msg << endl;
    exit(1);
}

/*!
 * The main procedure of the application.
 */
int main(int argc, char *argv[])
{
    // Set read-write-execute protection for the code of the foo2bar() function
    size_t pageSize = GetPageSize();
    const char * start = CastPtr<char>(foo2bar);
    const char * end = CastPtr<char>(foo2barEnd);
    char * firstPage = (char *)(((size_t)start) & ~(pageSize - 1));
    char * endPage = (char *)(((size_t)end + pageSize - 1) & ~(pageSize - 1));
    if (!MemProtect(firstPage, endPage - firstPage, MEM_READ_WRITE_EXEC)) 
    {
        Abort("MemProtect failed");
    }

    // Execute the function and verify result
    char result[16];
    foo2bar(result);
    if (strcmp(result, "bar") != 0)
    {
        Abort("foo2bar: Unexpected result");
    }
    cerr << "foo2bar: Success" << endl;
    return 0;
}

/* ===================================================================== */
/* eof */
/* ===================================================================== */
