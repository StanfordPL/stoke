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


#include <assert.h>
#include <stdio.h>
#include "pin.H"

ADDRINT globalIpAtReadBefore=0;
ADDRINT globalEaReadBefore=0;
ADDRINT globalRegInstPtrAtReadBefore=0;
ADDRINT globalIpOfReadRecordedAtInstrumentationTime=0;
ADDRINT globalRegInstPtrAtReadAfter = 0;
int globalReadInsSize=0;

ADDRINT globalIpAtWriteBefore=0;
ADDRINT globalEaWriteBefore=0;
ADDRINT globalRegInstPtrAtWriteBefore=0;
ADDRINT globalIpOfWriteRecordedAtInstrumentationTime=0;
ADDRINT globalRegInstPtrAtWriteAfter = 0;
int globalWriteInsSize=0;

BOOL instrumentedReadFromIpWithNoOffset = FALSE;
BOOL instrumentedWriteFromIpWithNoOffset = FALSE;

static void
IpReadBefore(ADDRINT ip, ADDRINT ea, ADDRINT rip)
{
    globalIpAtReadBefore = ip;
    globalEaReadBefore = ea;
    globalRegInstPtrAtReadBefore = rip;
}

static void
IpWriteBefore(ADDRINT ip, ADDRINT ea, ADDRINT rip)
{
    globalIpAtWriteBefore = ip;
    globalEaWriteBefore = ea;
    globalRegInstPtrAtWriteBefore = rip;
}

static void
IpReadAfter(ADDRINT rip)
{
    globalRegInstPtrAtReadAfter = rip;
}

static void
IpWriteAfter(ADDRINT rip)
{
    globalRegInstPtrAtWriteAfter = rip;
}

VOID Instruction(INS ins, VOID *v)
{
    
    if (INS_IsMemoryRead(ins) && !instrumentedReadFromIpWithNoOffset)
    {
        
        BOOL readsFromIpWithNoOffset = FALSE;
        for (UINT32 i = 0; i < INS_OperandCount(ins); i++)
        {
            if (!INS_OperandIsMemory(ins, i))
                continue;
        

            if (INS_OperandMemoryBaseReg(ins, i) == REG_INST_PTR && INS_OperandMemoryDisplacement(ins, i)==0)
            {
                readsFromIpWithNoOffset = TRUE;
                break;
            }
        }
        if (!readsFromIpWithNoOffset)
        {
            return;
        }
        instrumentedReadFromIpWithNoOffset = TRUE; // only instrument one of these
        printf ("Instrumenting [ip] read   %p   %s\n", INS_Address(ins), INS_Disassemble(ins).c_str());
        globalIpOfReadRecordedAtInstrumentationTime = INS_Address(ins);
        globalReadInsSize = INS_Size(ins);
        fflush (stdout);
        INS_InsertCall(ins,IPOINT_BEFORE, 
                       (AFUNPTR)IpReadBefore,
                       IARG_INST_PTR,
                       IARG_MEMORYREAD_EA,
                       IARG_REG_VALUE, REG_INST_PTR,
                       IARG_END);
		INS_InsertCall(ins,IPOINT_AFTER, 
                       (AFUNPTR)IpReadAfter,
                       IARG_REG_VALUE, REG_INST_PTR,
                       IARG_END);
    }
    else if (INS_IsMemoryWrite(ins) && !instrumentedWriteFromIpWithNoOffset)
    {
        /*
        const xed_decoded_inst_t* xedd = INS_XedDec(ins);
        
        xed_reg_enum_t breg1 = xed_decoded_inst_get_base_reg(xedd,0);
        if (breg1== XED_REG_RIP) 
        {
            readsFromIpWithNoOffset = TRUE;
        }
        */
        BOOL writesFromIpWithNoOffset = FALSE;
        for (UINT32 i = 0; i < INS_OperandCount(ins); i++)
        {
            if (!INS_OperandIsMemory(ins, i))
                continue;
        

            if (INS_OperandMemoryBaseReg(ins, i) == REG_INST_PTR && INS_OperandMemoryDisplacement(ins, i)==0)
            {
                writesFromIpWithNoOffset = TRUE;
                break;
            }
        }
        if (!writesFromIpWithNoOffset)
        {
            return;
        }
        instrumentedReadFromIpWithNoOffset = TRUE; // only instrument one of these
        printf ("Instrumenting [ip] write  %p   %s\n", INS_Address(ins), INS_Disassemble(ins).c_str());
        globalIpOfWriteRecordedAtInstrumentationTime = INS_Address(ins);
        globalWriteInsSize = INS_Size(ins);
        fflush (stdout);
        INS_InsertCall(ins,IPOINT_BEFORE, 
                       (AFUNPTR)IpWriteBefore,
                       IARG_INST_PTR,
                       IARG_MEMORYWRITE_EA,
                       IARG_REG_VALUE, REG_INST_PTR,
                       IARG_END);
		INS_InsertCall(ins,IPOINT_AFTER, 
                       (AFUNPTR)IpWriteAfter,
                       IARG_REG_VALUE, REG_INST_PTR,
                       IARG_END);
    }
    

}

VOID PrintFinalInfo(INT32 code, VOID *v)
{
    printf ("globalIpAtReadBefore %p globalEaReadBefore %p globalRegInstPtrAtReadBefore %p globalIpOfReadRecordedAtInstrumentationTime %p globalRegInstPtrAtReadAfter %p globalReadInsSize %d\n", 
            globalIpAtReadBefore, globalEaReadBefore, globalRegInstPtrAtReadBefore, globalIpOfReadRecordedAtInstrumentationTime, globalRegInstPtrAtReadAfter, globalReadInsSize);
    printf ("globalIpAtWriteBefore %p globalEaWriteBefore %p globalRegInstPtrAtWriteBefore %p globalIpOfWriteRecordedAtInstrumentationTime %p globalRegInstPtrAtWriteAfter %p globalWriteInsSize %d\n", 
            globalIpAtWriteBefore, globalEaWriteBefore, globalRegInstPtrAtWriteBefore, globalIpOfWriteRecordedAtInstrumentationTime, globalRegInstPtrAtWriteAfter, globalWriteInsSize);
    BOOL hadError = FALSE;
    if (globalIpAtReadBefore==0 || globalEaReadBefore==0 || globalRegInstPtrAtReadBefore==0 || globalIpOfReadRecordedAtInstrumentationTime==0 || globalReadInsSize==0)
    {
        printf ("Error on handling read from [REG_INST_PTR] appears to not have been instrumented\n");
        hadError = TRUE;
    }
    if (globalIpAtWriteBefore==0 || globalEaWriteBefore==0 || globalRegInstPtrAtWriteBefore==0 || globalIpOfWriteRecordedAtInstrumentationTime==0 || globalWriteInsSize==0)
    {
        printf ("Error on handling write to [REG_INST_PTR] appears to not have been instrumented\n");
        hadError = TRUE;
    }
    if (globalIpAtReadBefore != globalRegInstPtrAtReadBefore || globalIpAtReadBefore != globalIpOfReadRecordedAtInstrumentationTime)
    {
        printf ("Error on handling read from [REG_INST_PTR] appears that the rip value received is not correct\n");
        hadError = TRUE;
    }
    if (globalIpAtWriteBefore != globalRegInstPtrAtWriteBefore || globalIpAtWriteBefore != globalIpOfWriteRecordedAtInstrumentationTime)
    {
        printf ("Error on handling write to [REG_INST_PTR] appears that the rip value received is not correct\n");
        hadError = TRUE;
    }
    if (globalEaReadBefore != globalIpAtReadBefore+globalReadInsSize)
    {
        printf ("Error on handling read from [REG_INST_PTR] appears that the effective address value received is not correct\n");
        hadError = TRUE;
    }
    if (globalEaWriteBefore != globalIpAtWriteBefore+globalWriteInsSize)
    {
        printf ("Error on handling write to [REG_INST_PTR] appears that the effective address value received is not correct\n");
        hadError = TRUE;
    }
	if (globalRegInstPtrAtReadAfter != globalIpAtReadBefore+globalReadInsSize)
    {
        printf ("Error on handling read from [REG_INST_PTR] appears that REG_INST_PTR received on the IPOINT_AFTER is not correct\n");
        hadError = TRUE;
    }
    if (globalRegInstPtrAtWriteAfter != globalIpAtWriteBefore+globalWriteInsSize)
    {
        printf ("Error on handling write to [REG_INST_PTR] appears that REG_INST_PTR received on the IPOINT_AFTER is not correct\n");
        hadError = TRUE;
    }
    if (!hadError)
    {
        printf ("SUCCESS\n");
    }
}

int main(int argc, char * argv[])
{
    PIN_Init(argc, argv);

    INS_AddInstrumentFunction(Instruction, 0);

    // Register a routine that gets called when the program ends
    PIN_AddFiniFunction(PrintFinalInfo, 0);

    PIN_StartProgram();
    
    return 0;
}
