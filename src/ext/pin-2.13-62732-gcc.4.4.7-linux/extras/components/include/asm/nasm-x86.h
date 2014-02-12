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

#ifndef ASM_NASM_X86_H
#define ASM_NASM_X86_H


#define ASM_FILEBEGIN()
#define ASM_FILEEND()       END

#define ASM_FUNCBEGIN(name, rtype, args)    \
    section .text ASM_NEWLINE               \
    global ASM_NAME(name)  ASM_NEWLINE      \
    ASM_NAME(name):

#define ASM_FUNCEND(name)

#define ASM_HEX(val)    0##val##h

#if defined(FUND_HOST_MAC)
#   define ASM_NAME(name)   _##name
#else
#   define ASM_NAME(name)   name
#endif

#define ASM_LABDEF(x)   .l##x##:
#define ASM_LABF(x)     .l##x
#define ASM_LABB(x)     .l##x

#define ASM_BYTE()      byte
#define ASM_WORD()      word
#define ASM_DWORD()     dword
#define ASM_QWORD()

#endif /*file guard*/
