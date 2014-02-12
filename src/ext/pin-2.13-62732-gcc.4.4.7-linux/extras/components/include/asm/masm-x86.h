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

#ifndef ASM_MASM_X86_H
#define ASM_MASM_X86_H


#if defined(FUND_HOST_IA32)

#define ASM_FILEBEGIN()  \
.686 ASM_NEWLINE \
.xmm ASM_NEWLINE \
.model flat,c

#else
#   define ASM_FILEBEGIN()
#endif

#define ASM_FILEEND()   END


#define ASM_FUNCBEGIN(name, rtype, args)    \
    .CODE ASM_NEWLINE                       \
    ALIGN 4 ASM_NEWLINE                     \
    ASM_NAME(name) PROC

#define ASM_FUNCEND(name)   ASM_NAME(name) ENDP

#define ASM_HEX(val)    0##val##h
#define ASM_NAME(name)  name

#define ASM_LABDEF(x)   $l##x##:
#define ASM_LABF(x)     $l##x
#define ASM_LABB(x)     $l##x

#define ASM_BYTE()      BYTE PTR
#define ASM_WORD()      WORD PTR
#define ASM_DWORD()     DWORD PTR
#define ASM_QWORD()     QWORD PTR

#endif /*file guard*/
