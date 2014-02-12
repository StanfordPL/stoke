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
#include "pin.H"
#include "pin_isa.H"
#include <iostream>
#include <iomanip>

UINT64 icount = 0;

#if defined(PIN_MS_COMPATIBLE)
extern "C" void mmx_save(char* buf);
extern "C" void mmx_restore(char* buf);
#endif

VOID mmx_arg(PIN_REGISTER* r, UINT32 opnd_indx, UINT32 regno)
{ 
    char buffer[512+16];
    char* aligned_bufp =reinterpret_cast<char*>(((reinterpret_cast<ADDRINT>(buffer) + 16) >> 4)<<4);
#if defined(PIN_GNU_COMPATIBLE)
    asm("fxsave %0" : "=m"(*aligned_bufp));
#else
    mmx_save(aligned_bufp);
#endif

#if defined(DEBUG_SSE_REF)
    cout << "MMX" << regno << " operand_index: " << opnd_indx << " ";
    cout << setw(10) << r->dword[0] << " ";
    cout << setw(10) << r->dword[1] << " ";
    cout << endl;
#endif
    // increment the destination...
    if (opnd_indx == 0)
    {
        r->dword[0] ++;
    }
#if defined(PIN_GNU_COMPATIBLE)
    asm volatile("fxrstor %0" :: "m"(*aligned_bufp));
#else
    mmx_restore(aligned_bufp);
#endif

    icount++; 
}

VOID xmm_arg(PIN_REGISTER* r, UINT32 opnd_indx, UINT32 regno)
{ 
#if defined(DEBUG_SSE_REF)
    cout << "XMM" << regno << " operand_index: " << opnd_indx << " ";
    for(unsigned int i=0;i< MAX_DWORDS_PER_PIN_REG;i++)
    {
        cout << setw(10) << r->dword[i] << " ";
    }
    cout << endl;
#endif
    // increment the destination...
    if (opnd_indx == 0)
    {
        r->dword[0] ++;
    }
    icount++; 
}

CONTEXT *gctxtx;
VOID TestConstContext(CONTEXT *ctxt)
{
    gctxtx = ctxt;
    
}

int dummy=2;
VOID BeforeTestConstContext()
{
   // so it won't be inlined
   if (dummy > 0)
   {
      dummy = dummy*dummy*dummy;
   }
   dummy += dummy;
}
    
VOID Instruction(INS ins, VOID *v)
{
    xed_iclass_enum_t iclass = static_cast<xed_iclass_enum_t>(INS_Opcode(ins));
    if (iclass == XED_ICLASS_MOVQ || iclass == XED_ICLASS_MOVDQU)
    {
    	// const unsigned int opnd_count =  INS_OperandCount(ins);
        unsigned int i=0;
        // for(unsigned int i=0; i < opnd_count;i++)
        {
            if (INS_OperandIsReg(ins,i))
            {
                REG r = INS_OperandReg(ins,i);
                if (REG_is_mm(r))
                {
                    // BeforeTestConstContext causes X87 state to be spilled
                    // before the instruction that accesses the mmx reg
                    INS_InsertCall(ins, IPOINT_BEFORE, (AFUNPTR)BeforeTestConstContext, 
                                   IARG_END);
                    // TestConstContext requests the X87 context in order to verify
                    // the Pin can find it after the instruction that accesses the mmx reg
                    // when the X87 state is spilled
                    INS_InsertCall(ins, IPOINT_AFTER, (AFUNPTR)TestConstContext, 
                                   IARG_CONST_CONTEXT,
                                   IARG_END);
                    
                    INS_InsertCall(ins, IPOINT_AFTER, (AFUNPTR)mmx_arg, 
                                   IARG_REG_REFERENCE,
                                   r,
                                   IARG_UINT32,
                                   i,
                                   IARG_UINT32, 
                                   (r-REG_MM_BASE),

                                   IARG_END);
                }
                if (REG_is_xmm(r))
                {
                    INS_InsertCall(ins, IPOINT_AFTER, (AFUNPTR)xmm_arg, 
                                   IARG_REG_REFERENCE,
                                   r,
                                   IARG_UINT32,
                                   i,
                                   IARG_UINT32, 
                                   (r-REG_XMM_BASE),
                                   IARG_END);
                }
                
            }
        }
    }

}

VOID Fini(INT32 code, VOID *v)
{
    // Don't output icount as part of the reference output
    // because the dynamic loader may also use xmm insts.
    
    //std::cerr << "Count: " << icount << endl;
}

int main(int argc, char * argv[])
{
    PIN_Init(argc, argv);

    INS_AddInstrumentFunction(Instruction, 0);
    PIN_AddFiniFunction(Fini, 0);
    
    // Never returns
    PIN_StartProgram();
    
    return 0;
}
