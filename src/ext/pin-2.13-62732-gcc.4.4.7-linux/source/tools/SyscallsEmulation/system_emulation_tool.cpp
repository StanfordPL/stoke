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
/* ===================================================================== */
/*! @file
 */

#include "pin.H"
#include <iostream>
#include <fstream>
#include <stdlib.h>
#include <assert.h>
#include <sys/types.h>
#include <sys/syscall.h>
#include <unistd.h>

using namespace std;

/* ===================================================================== */

volatile bool isClientLockAcquired = false;

VOID Replacement_AcquireClientLock()
{
    PIN_LockClient();
    isClientLockAcquired = true;
    sleep(60);
    PIN_UnlockClient();
}

VOID Replacement_WaitThread2AcquireClientLock()
{
    while(!isClientLockAcquired) sched_yield();
}


VOID ImageLoad(IMG img, void *v)
{
    if ( IMG_IsMainExecutable(img))
    {
        RTN rtn = RTN_Invalid();

        rtn = RTN_FindByName(img, "WaitThread2AquireClientLock");
        if (RTN_Valid(rtn))
        {
            RTN_ReplaceProbed(rtn, AFUNPTR(Replacement_WaitThread2AcquireClientLock));
        }

        rtn = RTN_FindByName(img, "AcquireClientLock");
        if (RTN_Valid(rtn))
        {
            RTN_ReplaceProbed(rtn, AFUNPTR(Replacement_AcquireClientLock));
        }
    }
}
/* ===================================================================== */

int main(int argc, CHAR *argv[])
{
    PIN_InitSymbols();
    PIN_Init(argc,argv);

    IMG_AddInstrumentFunction(ImageLoad,0);

    PIN_StartProgramProbed();

    return 0;
}

/* ===================================================================== */
/* eof */
/* ===================================================================== */
