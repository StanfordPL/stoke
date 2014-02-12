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
 This tests that after emulation of sysenter, Pin causes ring3 execution to continue at
 the instruction located at KiFastSystemCallRet: rather than the instruction following sysenter.
 Note: The instruction at KiFastSystemCallRet: is ret
 */

int main()
{
    __asm mov eax, 0x0777 // 777 is an invalid syscall number
	// push the address that the ret instruction KiFastSystemCallRet will use as a
	// return address onto the stack
    __asm push inst_to_execute_after_sysenter
	// copy esp into edx as required by sysenter
    __asm mov edx, esp
    __asm _emit 0fh  // 0F34 = sysenter
    __asm _emit 34h
	// next 2 instructions should NOT be executed
	__asm xor ecx,ecx
	__asm mov ecx,[ecx]
	// the instruction at KiFastSystemCallRet is ret, and that ret will return to the following
	// instruction
    __asm inst_to_execute_after_sysenter:
    __asm mov eax, 0x0  // instruction that the ret at KiFastSystemCallRet: will return to
}
