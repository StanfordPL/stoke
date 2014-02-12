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

int main(int argc, char ** argv)
{
    char stringOne[] = "IAMHEREE";
    char stringTwo[] = "IWASHERE";
#define length 9

    printf ("Starting...\n");
    __asm {
        fnop                                      
	cld
        xor     ebx, ebx                      ; ebx holds test number (used as exit code on failure)
        
; Test different string comparison
        inc     ebx
	lea	esi, stringOne
	lea	edi, stringTwo
	mov     ecx, length
	repe cmpsb
        cmp     ecx,(length-2)                ; Should fail at second byte
        jne     l2

; Test same string comparison
        inc     ebx
	lea	esi, stringOne
	lea	edi, stringOne
	mov     ecx, length
	repe cmpsb 
        test    ecx,ecx                       ; Should run full length
        jne     l2

; Test same string comparison, but with no count...
        inc     ebx
	lea	esi, stringOne
	lea	edi, stringOne
        xor     ecx,ecx
	repe cmpsb 
        test    ecx,ecx                       ; Should still be zero
        jne     l2

; Test scasd
        inc     ebx
	lea	eax, stringOne
	lea	edi, stringTwo
	scasw
	mov     eax,ecx
	
; and return

	mov	ebx,0		; first argument: result from main
l2:
	mov	ebx,eax
        fnop                                      
    }
    
    printf ("Ending...\n");
    return 0;
}
