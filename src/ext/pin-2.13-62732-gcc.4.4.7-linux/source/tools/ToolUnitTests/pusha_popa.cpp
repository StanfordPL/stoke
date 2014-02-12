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
 * This test verifies that Pin correctly translates PUSHA and POPA
 * instructions (both 32- and 16-bit variants).
 */

#include <iostream>
#include <string.h>
#include "pin.H"


struct REGS16
{
    UINT16 ax;
    UINT16 cx;
    UINT16 dx;
    UINT16 bx;
    UINT16 sp;
    UINT16 bp;
    UINT16 si;
    UINT16 di;
};

struct REGS32
{
    UINT32 eax;
    UINT32 ecx;
    UINT32 edx;
    UINT32 ebx;
    UINT32 esp;
    UINT32 ebp;
    UINT32 esi;
    UINT32 edi;
};


static bool TestPushA16();
static bool TestPopA16();
static bool TestPushA32();
static bool TestPopA32();

extern "C" void DoPushA16(const REGS16 *, REGS16 *, UINT16 *);
extern "C" void DoPopA16(const REGS16 *, REGS16 *);
extern "C" void DoPushA32(const REGS32 *, REGS32 *, UINT32 *);
extern "C" void DoPopA32(const REGS32 *, REGS32 *);


int main(int argc, char * argv[])
{
    if (!TestPushA16())
        return 1;
    if (!TestPopA16())
        return 1;
    if (!TestPushA32())
        return 1;
    if (!TestPopA32())
        return 1;
    return 0;
}


static bool TestPushA16()
{
    REGS16 inRegs;
    REGS16 outRegs;
    UINT16 inSp;

    inRegs.ax = 1;
    inRegs.cx = 2;
    inRegs.dx = 3;
    inRegs.bx = 4;
    inRegs.sp = 0;
    inRegs.bp = 6;
    inRegs.si = 7;
    inRegs.di = 8;
    memset(&outRegs, 0, sizeof(outRegs));

    DoPushA16(&inRegs, &outRegs, &inSp);

    if (outRegs.ax != inRegs.ax)
    {
        std::cout << "PushA16 AX mismatch " << inRegs.ax << " -> " << outRegs.ax << "\n";
        return false;
    }
    if (outRegs.cx != inRegs.cx)
    {
        std::cout << "PushA16 CX mismatch " << inRegs.cx << " -> " << outRegs.cx << "\n";
        return false;
    }
    if (outRegs.dx != inRegs.dx)
    {
        std::cout << "PushA16 DX mismatch " << inRegs.dx << " -> " << outRegs.dx << "\n";
        return false;
    }
    if (outRegs.bx != inRegs.bx)
    {
        std::cout << "PushA16 BX mismatch " << inRegs.bx << " -> " << outRegs.bx << "\n";
        return false;
    }
    if (outRegs.bp != inRegs.bp)
    {
        std::cout << "PushA16 BP mismatch " << inRegs.bp << " -> " << outRegs.bp << "\n";
        return false;
    }
    if (outRegs.si != inRegs.si)
    {
        std::cout << "PushA16 SI mismatch " << inRegs.si << " -> " << outRegs.si << "\n";
        return false;
    }
    if (outRegs.di != inRegs.di)
    {
        std::cout << "PushA16 DI mismatch " << inRegs.di << " -> " << outRegs.di << "\n";
        return false;
    }
    if (outRegs.sp != inSp)
    {
        std::cout << "PushA16 SP mismatch " << inSp << " -> " << outRegs.sp << "\n";
        return false;
    }
    return true;
}


static bool TestPopA16()
{
    REGS16 inRegs;
    REGS16 outRegs;

    inRegs.ax = 1;
    inRegs.cx = 2;
    inRegs.dx = 3;
    inRegs.bx = 4;
    inRegs.sp = 0;
    inRegs.bp = 6;
    inRegs.si = 7;
    inRegs.di = 8;
    memset(&outRegs, 0, sizeof(outRegs));

    DoPopA16(&inRegs, &outRegs);

    if (outRegs.ax != inRegs.ax)
    {
        std::cout << "PopA16 AX mismatch " << inRegs.ax << " -> " << outRegs.ax << "\n";
        return false;
    }
    if (outRegs.cx != inRegs.cx)
    {
        std::cout << "PopA16 CX mismatch " << inRegs.cx << " -> " << outRegs.cx << "\n";
        return false;
    }
    if (outRegs.dx != inRegs.dx)
    {
        std::cout << "PopA16 DX mismatch " << inRegs.dx << " -> " << outRegs.dx << "\n";
        return false;
    }
    if (outRegs.bx != inRegs.bx)
    {
        std::cout << "PopA16 BX mismatch " << inRegs.bx << " -> " << outRegs.bx << "\n";
        return false;
    }
    if (outRegs.bp != inRegs.bp)
    {
        std::cout << "PopA16 BP mismatch " << inRegs.bp << " -> " << outRegs.bp << "\n";
        return false;
    }
    if (outRegs.si != inRegs.si)
    {
        std::cout << "PopA16 SI mismatch " << inRegs.si << " -> " << outRegs.si << "\n";
        return false;
    }
    if (outRegs.di != inRegs.di)
    {
        std::cout << "PopA16 DI mismatch " << inRegs.di << " -> " << outRegs.di << "\n";
        return false;
    }
    return true;
}


static bool TestPushA32()
{
    REGS32 inRegs;
    REGS32 outRegs;
    UINT32 inSp;

    inRegs.eax = 1;
    inRegs.ecx = 2;
    inRegs.edx = 3;
    inRegs.ebx = 4;
    inRegs.esp = 0;
    inRegs.ebp = 6;
    inRegs.esi = 7;
    inRegs.edi = 8;
    memset(&outRegs, 0, sizeof(outRegs));

    DoPushA32(&inRegs, &outRegs, &inSp);

    if (outRegs.eax != inRegs.eax)
    {
        std::cout << "PushA32 AX mismatch " << inRegs.eax << " -> " << outRegs.eax << "\n";
        return false;
    }
    if (outRegs.ecx != inRegs.ecx)
    {
        std::cout << "PushA32 CX mismatch " << inRegs.ecx << " -> " << outRegs.ecx << "\n";
        return false;
    }
    if (outRegs.edx != inRegs.edx)
    {
        std::cout << "PushA32 DX mismatch " << inRegs.edx << " -> " << outRegs.edx << "\n";
        return false;
    }
    if (outRegs.ebx != inRegs.ebx)
    {
        std::cout << "PushA32 BX mismatch " << inRegs.ebx << " -> " << outRegs.ebx << "\n";
        return false;
    }
    if (outRegs.ebp != inRegs.ebp)
    {
        std::cout << "PushA32 BP mismatch " << inRegs.ebp << " -> " << outRegs.ebp << "\n";
        return false;
    }
    if (outRegs.esi != inRegs.esi)
    {
        std::cout << "PushA32 SI mismatch " << inRegs.esi << " -> " << outRegs.esi << "\n";
        return false;
    }
    if (outRegs.edi != inRegs.edi)
    {
        std::cout << "PushA32 DI mismatch " << inRegs.edi << " -> " << outRegs.edi << "\n";
        return false;
    }
    if (outRegs.esp != inSp)
    {
        std::cout << "PushA32 SP mismatch " << inSp << " -> " << outRegs.esp << "\n";
        return false;
    }
    return true;
}


static bool TestPopA32()
{
    REGS32 inRegs;
    REGS32 outRegs;

    inRegs.eax = 1;
    inRegs.ecx = 2;
    inRegs.edx = 3;
    inRegs.ebx = 4;
    inRegs.esp = 0;
    inRegs.ebp = 6;
    inRegs.esi = 7;
    inRegs.edi = 8;
    memset(&outRegs, 0, sizeof(outRegs));

    DoPopA32(&inRegs, &outRegs);

    if (outRegs.eax != inRegs.eax)
    {
        std::cout << "PopA32 AX mismatch " << inRegs.eax << " -> " << outRegs.eax << "\n";
        return false;
    }
    if (outRegs.ecx != inRegs.ecx)
    {
        std::cout << "PopA32 CX mismatch " << inRegs.ecx << " -> " << outRegs.ecx << "\n";
        return false;
    }
    if (outRegs.edx != inRegs.edx)
    {
        std::cout << "PopA32 DX mismatch " << inRegs.edx << " -> " << outRegs.edx << "\n";
        return false;
    }
    if (outRegs.ebx != inRegs.ebx)
    {
        std::cout << "PopA32 BX mismatch " << inRegs.ebx << " -> " << outRegs.ebx << "\n";
        return false;
    }
    if (outRegs.ebp != inRegs.ebp)
    {
        std::cout << "PopA32 BP mismatch " << inRegs.ebp << " -> " << outRegs.ebp << "\n";
        return false;
    }
    if (outRegs.esi != inRegs.esi)
    {
        std::cout << "PopA32 SI mismatch " << inRegs.esi << " -> " << outRegs.esi << "\n";
        return false;
    }
    if (outRegs.edi != inRegs.edi)
    {
        std::cout << "PopA32 DI mismatch " << inRegs.edi << " -> " << outRegs.edi << "\n";
        return false;
    }
    return true;
}
