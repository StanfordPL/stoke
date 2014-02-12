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
 *  Test use of IARG_MULTI_MEMORYACCESS_EA on non-vgather* instructions
 */

#include <stdio.h>
#include <stdlib.h>
#include "pin.H"

typedef struct memaccess {
    ADDRINT memAddr;
    UINT32  accessType; // 1==read, 2==read2, 3==write
    INT32   memAccessSize;
} MEM_ACCESS;

typedef struct memaccessrec
{
    int numMemAccesses;
    ADDRINT ip;
    MEM_ACCESS memAccesses[2];
} MEM_ACCESS_REC;

MEM_ACCESS_REC memAccessRec;

BOOL haveReadAccess = FALSE;
BOOL haveRead2Access = FALSE;
BOOL haveWriteAccess = FALSE;
BOOL haveReadAndWriteAccess = FALSE;

VOID RecordMemoryAcess(ADDRINT ip, UINT32 accessType, ADDRINT memAddr, INT32 memAccessSize)
{
    if (memAccessRec.numMemAccesses > 0)
    {
        ASSERTX(ip==memAccessRec.ip);
    }
    ASSERTX(memAccessRec.numMemAccesses<2);
    memAccessRec.ip = ip;
    memAccessRec.memAccesses[memAccessRec.numMemAccesses].accessType = accessType;
    memAccessRec.memAccesses[memAccessRec.numMemAccesses].memAddr = memAddr;
    memAccessRec.memAccesses[memAccessRec.numMemAccesses].memAccessSize = memAccessSize;
    memAccessRec.numMemAccesses++;
}

int CompareMemAccess (MEM_ACCESS *memAccess, PIN_MEM_ACCESS_INFO *pinMemAccessInfo)
{
    if (memAccess->accessType==2)
    {
        haveRead2Access = TRUE;
    }
    else if (memAccess->accessType == 1)
    {
        haveReadAccess = TRUE;
    }
    else
    {
         haveWriteAccess = TRUE;
    }
    return ((memAccess->memAddr==pinMemAccessInfo->memoryAddress)
            &&(memAccess->memAccessSize==(INT32)(pinMemAccessInfo->bytesAccessed))
            && ((pinMemAccessInfo->memopType==PIN_MEMOP_LOAD &&
                (memAccess->accessType==1 || memAccess->accessType==2))
                || (pinMemAccessInfo->memopType==PIN_MEMOP_STORE &&  memAccess->accessType==3)));
}

VOID CompareMultiMemAccess(ADDRINT ip, PIN_MULTI_MEM_ACCESS_INFO* multiMemAccessInfo)
{
    /*printf ("offsetof(PIN_MULTI_MEM_ACCESS_INFO, memop) %x\noffsetof(PIN_MEM_ACCESS_INFO, memoryAddress) %x\noffsetof(PIN_MEM_ACCESS_INFO, memopType) %x\noffsetof(PIN_MEM_ACCESS_INFO, bytesAccessed) %x\noffsetof(PIN_MEM_ACCESS_INFO, maskOn) %x\n",
            offsetof(PIN_MULTI_MEM_ACCESS_INFO, memop), 
            offsetof(PIN_MEM_ACCESS_INFO, memoryAddress),
            offsetof(PIN_MEM_ACCESS_INFO, memopType),
            offsetof(PIN_MEM_ACCESS_INFO, bytesAccessed),
            offsetof(PIN_MEM_ACCESS_INFO, maskOn));*/
    if ((int)multiMemAccessInfo->numberOfMemops != memAccessRec.numMemAccesses)
    {
        printf ("got different number of mem accesses at ip %p multiMemAccessInfo->numberOfMemops %d memAccessRec.numMemAccesses %d\n",
                (void *)ip, multiMemAccessInfo->numberOfMemops, memAccessRec.numMemAccesses);
        fflush (stdout);
        exit (1);
    }
    if (memAccessRec.ip != ip)
    {
        printf ("got different ips ip %p memAccessRec.ip %p\n",
                (void *)ip, (void *)memAccessRec.ip);
        fflush (stdout);
        exit (1);
    }
    
    
    if (memAccessRec.numMemAccesses == 1)
    {
        PIN_MEM_ACCESS_INFO *pinMemAccessInfo = &(multiMemAccessInfo->memop[0]);
        if (!CompareMemAccess(&memAccessRec.memAccesses[0], pinMemAccessInfo))  
        {
            printf ("different mem accesses at ip %p\n", (void *)ip);
            printf ("  memAccessRec.accessType %d multiAccess.accessType %d\n", memAccessRec.memAccesses[0].accessType, pinMemAccessInfo->memopType);
            printf ("  memAccessRec.memAddr %p multiAccess.memAddr %p\n", (void *)memAccessRec.memAccesses[0].memAddr, (void *)pinMemAccessInfo->memoryAddress);
            printf ("  memAccessRec.memAccessSize %d multiAccess.memAccessSize %d\n", memAccessRec.memAccesses[0].memAccessSize,
                    pinMemAccessInfo->bytesAccessed);
            fflush (stdout);
            exit (1);
        }
    }
    else
    {
        if (memAccessRec.memAccesses[1].accessType == 1 && memAccessRec.memAccesses[0].accessType==3)
        {
            haveReadAndWriteAccess = TRUE;
        }
        else if (memAccessRec.memAccesses[0].accessType == 1 && memAccessRec.memAccesses[1].accessType==3)
        {
            haveReadAndWriteAccess = TRUE;
        }

        if (! ((CompareMemAccess(&memAccessRec.memAccesses[0], &(multiMemAccessInfo->memop[0]))
                && CompareMemAccess(&memAccessRec.memAccesses[1], &(multiMemAccessInfo->memop[1])))
               ||(CompareMemAccess(&memAccessRec.memAccesses[0], &(multiMemAccessInfo->memop[1]))
                  && CompareMemAccess(&memAccessRec.memAccesses[1], &(multiMemAccessInfo->memop[0])))))
        {
            printf ("different mem accesses at ip %p\n", (void *)ip);
            printf ("  memAccessRec[0].accessType %d memAccessRec[1].accessType %d\n", memAccessRec.memAccesses[0].accessType, memAccessRec.memAccesses[1].accessType);
            printf ("  memAccessRec[0].memAddr %p memAccessRec[1].memAddr %p\n", (void *)memAccessRec.memAccesses[0].memAddr, (void *)memAccessRec.memAccesses[1].memAddr);
            printf ("  memAccessRec[0].memAccessSize %d memAccessRec[1].memAccessSize %d\n", memAccessRec.memAccesses[0].memAccessSize,
                    memAccessRec.memAccesses[1].memAccessSize);
            printf ("  multiMemAccessInfo->memop[0].memopType %d multiMemAccessInfo->memop[1].memopType %d\n", multiMemAccessInfo->memop[0].memopType, multiMemAccessInfo->memop[1].memopType);
            printf ("  multiMemAccessInfo->memop[0].memoryAddress %p multiMemAccessInfo->memop[1].memoryAddress %p\n",
            		(void *)multiMemAccessInfo->memop[0].memoryAddress,  (void *)multiMemAccessInfo->memop[1].memoryAddress);
            printf ("  multiMemAccessInfo->memop[0].bytesAccessed %d multiMemAccessInfo->memop[1].bytesAccessed %d\n", multiMemAccessInfo->memop[0].bytesAccessed, multiMemAccessInfo->memop[1].bytesAccessed);
            fflush (stdout);
            exit (1);
        }
    }
    memAccessRec.numMemAccesses = 0;
}

// Is called for every instruction
VOID Instruction(INS ins, VOID *v)
{
    BOOL hasMemoryAccess = FALSE;

    if (INS_IsMemoryRead(ins))
    {
        hasMemoryAccess = TRUE;
        INS_InsertCall(
                        ins, IPOINT_BEFORE, (AFUNPTR)RecordMemoryAcess,
                        IARG_INST_PTR,
                        IARG_UINT32, 1,
                        IARG_MEMORYREAD_EA,
                        IARG_MEMORYREAD_SIZE,
                        IARG_END);
                
    }

    if (INS_HasMemoryRead2(ins))
    {
            hasMemoryAccess = TRUE;
            INS_InsertCall(
                            ins, IPOINT_BEFORE, (AFUNPTR)RecordMemoryAcess,
                            IARG_INST_PTR,
                            IARG_UINT32, 2,
                            IARG_MEMORYREAD2_EA,
                            IARG_MEMORYREAD_SIZE,
                            IARG_END);
    }

    if (INS_IsMemoryWrite(ins))
    {
        hasMemoryAccess = TRUE;
        INS_InsertCall(
            ins, IPOINT_BEFORE, (AFUNPTR)RecordMemoryAcess,
            IARG_INST_PTR,
            IARG_UINT32, 3,
            IARG_MEMORYWRITE_EA,
            IARG_MEMORYWRITE_SIZE,
            IARG_END);
    }
    if (hasMemoryAccess)
    {
        INS_InsertCall(ins, IPOINT_BEFORE, (AFUNPTR)CompareMultiMemAccess,
                        IARG_INST_PTR,
                        IARG_MULTI_MEMORYACCESS_EA,
                        IARG_END);
    }
}

VOID Fini(INT32 code, VOID *v)
{
    if (!(haveReadAccess && haveRead2Access && haveWriteAccess && haveReadAndWriteAccess))
    {
        printf ("missing check of an accesstype haveReadAccess %d haveRead2Access %d haveWriteAccess %d haveReadAndWriteAccess %d\n",
                haveReadAccess, haveRead2Access, haveWriteAccess, haveReadAndWriteAccess);
    }
}

int main(int argc, char *argv[])
{
    PIN_Init(argc, argv);
    

    INS_AddInstrumentFunction(Instruction, 0);
    PIN_AddFiniFunction(Fini, 0);
    memAccessRec.numMemAccesses = 0;
    // Never returns
    PIN_StartProgram();
    
    return 0;
}
