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
** <ORIGINAL-AUTHOR>: Greg Lueck
** <COMPONENT>: asm
** <FILE-TYPE>: component public header
*/

#ifndef ASM_H
#define ASM_H

#include "fund/config.h"

/*
 * This header provides a set of C macros for use in assembly language files.  Using
 * these macros can help make assembly sources easier to read and can also provide some
 * amount of portability between different assembler syntaxes.
 *
 * Client code can use the following macros:
 *
 *      ASM_FILEBEGIN()
 *          Use this at the start of the source file.
 *
 *      ASM_FILEEND()
 *          Use this at the end of the source file.
 *
 *      ASM_FUNCBEGIN(name, rtype, (args))
 *          Use this before defining a function.  The macro does NOT generate any prolog
 *          instructions, so you still need to do that yourself.
 *
 *          @param name     The name of the function.  The macro automatically includes
 *                           any leading underscore, etc. if necessary.
 *          @param rtype    The C / C++ type returned by this function.  (Used to auto-generate
 *                           a header file with external declarations.)
 *          @param (args)   A list of C / C++ parameters separated by commas and enclosed in
 *                           parens.  (Used to auto-generate a header file.)
 *
 *          When a header file is auto-generated, any comment block that immediately precedes
 *          the ASM_FUNCBEGIN() is also included in the header.  If that comment block
 *          contains Doxygen style comments, the auto-generated header can be processed with
 *          Doxygen.
 *
 *      ASM_FUNCEND(name)
 *          Use this immediately after a function definition.  The macro does NOT generate
 *          any epilog code, so you still need to do that yourself.
 *
 *          @param name     The name of the function, exactly as it appeared in the
 *                           ASM_FUNCBEGIN().
 *
 *      ASM_HEX(val)
 *          Use this whenever a hex constant is needed.
 *
 *          @param val      The value of the constant in base 16, but without any leading 0x.
 *
 *      ASM_LABDEF(n)
 *          Use this to define a local label in a function.
 *
 *          @param n        A number (decimal) which identifies the label.
 *
 *      ASM_LABF(n)
 *          Use this in an instruction operand when refering to a label that is *forward*
 *          in the file.
 *
 *          @param n        The label's number.
 *
 *      ASM_LABB(n)
 *          Use this in an instruction operand when refering to a label that is *backward*
 *          in the file.
 *
 *          @param n        The label's number.
 *
 *      ASM_BYTE()
 *      ASM_WORD()
 *      ASM_DWORD()
 *      ASM_QWORD()
 *          Use these to disambiguate the size of a memory reference in x86 assembly code.
 *
 *      ASM_REGARG0
 *      ASM_REGARG1
 *      ASM_REGARG2
 *      ASM_REGARG3
 *      ASM_REGARG4
 *      ASM_REGARG5
 *          Use these to refer to the register that contains a function argument on the
 *          Intel(R) 64 architecture.  These macros help insulate source code from the differences
 *          between the Unix and Windows calling standards.
 *
 * Toolchains must define the following macros in order to enable the ASM support:
 *
 *      ASM_TC_GAS, ASM_TC_MASM, ASM_TC_NASM
 *          Must define one of these, according to the assembler provided by the toolchain.
 */

#if defined(ASM_TC_GAS) && defined(FUND_HOST_X86)
#   include "asm/gas-x86.h"
#elif defined(ASM_TC_GAS) && defined(FUND_HOST_IA64)
#   include "asm/gas-ia64.h"
#elif defined(ASM_TC_MASM) && defined(FUND_HOST_X86)
#   include "asm/masm-x86.h"
#elif defined(ASM_TC_NASM) && defined(FUND_HOST_X86)
#   include "asm/nasm-x86.h"
#else
#   error "Must define assembler type and architecture"
#endif

#if defined(FUND_HOST_WINDOWS) && defined(FUND_HOST_INTEL64)
#   include "asm/windows-intel64.h"
#elif defined(FUND_HOST_UNIX) && (defined(FUND_HOST_INTEL64) || defined(FUND_HOST_MIC))
#   include "asm/unix-intel64.h"
#endif

#endif /*file guard*/
