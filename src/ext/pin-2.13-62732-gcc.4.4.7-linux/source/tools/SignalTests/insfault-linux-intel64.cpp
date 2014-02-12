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
#include <iostream>

#if !defined(__USE_GNU)
#   define __USE_GNU
#endif
#include <sys/ucontext.h>

#include "insfault-intel64.h"



// Check that the fault context contains the expected register values
// after running a test.
//
//  ctxt        Fault context.
//
// returns TRUE if the context has expected values.
//
bool CheckUContextRegisters(void *ctxt)
{
    ucontext_t *uctxt = static_cast<ucontext_t *>(ctxt);
    bool ok = true;

    greg_t pc = uctxt->uc_mcontext.gregs[REG_RIP];
    if (pc != ExpectedPC)
    {
        std::cout << "  *** Unexpected fault PC 0x" << std::hex << pc << "\n";
        ok = false;
    }

    greg_t r8 = uctxt->uc_mcontext.gregs[REG_R8];
    if (r8 != ExpectedR8)
    {
        std::cout << "  *** Unexpected R8 value 0x" << std::hex << r8 << "\n";
        ok = false;
    }
    greg_t r9 = uctxt->uc_mcontext.gregs[REG_R9];
    if (r9 != ExpectedR9)
    {
        std::cout << "  *** Unexpected R9 value 0x" << std::hex << r9 << "\n";
        ok = false;
    }
    greg_t r10 = uctxt->uc_mcontext.gregs[REG_R10];
    if (r10 != ExpectedR10)
    {
        std::cout << "  *** Unexpected R10 value 0x" << std::hex << r10 << "\n";
        ok = false;
    }
    greg_t r11 = uctxt->uc_mcontext.gregs[REG_R11];
    if (r11 != ExpectedR11)
    {
        std::cout << "  *** Unexpected R11 value 0x" << std::hex << r11 << "\n";
        ok = false;
    }
    greg_t r12 = uctxt->uc_mcontext.gregs[REG_R12];
    if (r12 != ExpectedR12)
    {
        std::cout << "  *** Unexpected R12 value 0x" << std::hex << r12 << "\n";
        ok = false;
    }
    greg_t r13 = uctxt->uc_mcontext.gregs[REG_R13];
    if (r13 != ExpectedR13)
    {
        std::cout << "  *** Unexpected R13 value 0x" << std::hex << r13 << "\n";
        ok = false;
    }
    greg_t r14 = uctxt->uc_mcontext.gregs[REG_R14];
    if (r14 != ExpectedR14)
    {
        std::cout << "  *** Unexpected R14 value 0x" << std::hex << r14 << "\n";
        ok = false;
    }
    greg_t r15 = uctxt->uc_mcontext.gregs[REG_R15];
    if (r15 != ExpectedR15)
    {
        std::cout << "  *** Unexpected R15 value 0x" << std::hex << r15 << "\n";
        ok = false;
    }
    greg_t rdi = uctxt->uc_mcontext.gregs[REG_RDI];
    if (rdi != ExpectedRDI)
    {
        std::cout << "  *** Unexpected RDI value 0x" << std::hex << rdi << "\n";
        ok = false;
    }
    greg_t rsi = uctxt->uc_mcontext.gregs[REG_RSI];
    if (rsi != ExpectedRSI)
    {
        std::cout << "  *** Unexpected RSI value 0x" << std::hex << rsi << "\n";
        ok = false;
    }
    greg_t rbp = uctxt->uc_mcontext.gregs[REG_RBP];
    if (rbp != ExpectedRBP)
    {
        std::cout << "  *** Unexpected RBP value 0x" << std::hex << rbp << "\n";
        ok = false;
    }
    greg_t rbx = uctxt->uc_mcontext.gregs[REG_RBX];
    if (rbx != ExpectedRBX)
    {
        std::cout << "  *** Unexpected RBX value 0x" << std::hex << rbx << "\n";
        ok = false;
    }
    greg_t rdx = uctxt->uc_mcontext.gregs[REG_RDX];
    if (rdx != ExpectedRDX)
    {
        std::cout << "  *** Unexpected RDX value 0x" << std::hex << rdx << "\n";
        ok = false;
    }
    greg_t rax = uctxt->uc_mcontext.gregs[REG_RAX];
    if (rax != ExpectedRAX)
    {
        std::cout << "  *** Unexpected RAX value 0x" << std::hex << rax << "\n";
        ok = false;
    }
    greg_t rcx = uctxt->uc_mcontext.gregs[REG_RCX];
    if (rcx != ExpectedRCX)
    {
        std::cout << "  *** Unexpected RCX value 0x" << std::hex << rcx << "\n";
        ok = false;
    }
    greg_t rsp = uctxt->uc_mcontext.gregs[REG_RSP];
    if (rsp != ExpectedRSP)
    {
        std::cout << "  *** Unexpected RSP value 0x" << std::hex << rsp << "\n";
        ok = false;
    }

    greg_t efl = uctxt->uc_mcontext.gregs[REG_EFL];
    efl &= EFLAGS_MASK;
    if (efl != ExpectedEFLAGS)
    {
        std::cout << "  *** Unexpected EFL value 0x" << std::hex << efl << "\n";
        ok = false;
    }

    return ok;
}
