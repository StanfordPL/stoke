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
 *  Utilities for SMC tests. 
 */
#include "smc_util.h"

/* 
 CODE_SECTION(name)
 Names a section in which the following function will be allocated.
 Only one function definition is allowed inside the section. Nested sections are
 disallowed. 

 SECTION_END
 Designates the end of the most recent code section.

 Usage: 

 CODE_SECTION("mycode") 
 GLOBALFUN void MyFunc ()
 {
    ......
 }
 SECTION_END

*/
#if defined (TARGET_WINDOWS) && defined(_MSC_VER)
#define CODE_SECTION(name)          __pragma(code_seg(name))
#define SECTION_END                 __pragma(code_seg())
#elif defined(TARGET_MAC) && defined(__GNUC__)
#define CODE_SECTION(name)          __attribute__ ((section ("__TEXT, " name))) 
#define SECTION_END 
#elif defined(TARGET_LINUX) && defined(__GNUC__)
#define CODE_SECTION(name)          __attribute__ ((section (name))) 
#define SECTION_END 
#elif defined(TARGET_BSD) && defined(__GNUC__)
#define CODE_SECTION(name)          __attribute__ ((section (name))) 
#define SECTION_END 
#endif

/*!
 * Exit with the specified error message
 */
static void Abort(string msg)
{
    cerr << msg << endl;
    exit(1);
}

/*!
 * Position-independent routine. Copies "foo" string into the specified buffer.
 * To simplify calculation of the size of this function, it is placed in a special 
 * code section along with the immediately following fooEnd() function.
 */
CODE_SECTION("foo_code")
static void foo(char * str)
{
    *str++ = 'f';
    *str++ = 'o';
    *str++ = 'o';
    *str = 0;
}
SECTION_END

CODE_SECTION("foo_code")
static void fooEnd(char * str) {}
SECTION_END

static size_t fooSize() 
{
    const char * start = CastPtr<char>(foo);
    const char * end = CastPtr<char>(fooEnd);

    if ((end <= start) || ((size_t)(end - start) > PI_FUNC::MAX_SIZE))
    {
        Abort("foo: Invalid code range");
    }
    return end - start;
}

FOO_FUNC::FOO_FUNC() : FOO_BAR_FUNC(foo, fooSize()) {} 


/*!
 * Position-independent routine. Copies "bar" string into the specified buffer
 * To simplify calculation of the size of this function, it is placed in a special 
 * code section along with the immediately following barEnd() function.
 */
CODE_SECTION("bar_code")
static void bar(char * str)
{
    *str++ = 'b';
    *str++ = 'a';
    *str++ = 'r';
    *str = 0;
}
SECTION_END

CODE_SECTION("bar_code")
static void barEnd(char * str) {}
SECTION_END

static size_t barSize() 
{
    const char * start = CastPtr<char>(bar);
    const char * end = CastPtr<char>(barEnd);

    if ((end <= start) || ((size_t)(end - start) > PI_FUNC::MAX_SIZE))
    {
        Abort("bar: Invalid code range");
    }
    return end - start;
}

BAR_FUNC::BAR_FUNC() : FOO_BAR_FUNC(bar, barSize()) {} 

/* ===================================================================== */
/* eof */
/* ===================================================================== */
