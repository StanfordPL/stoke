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
#include "pin.H"


ADDRINT origRtnAddress;
ADDRINT origRtnEndAddress;
ADDRINT substituteRtnAddress;
ADDRINT substituteRtnEndAddress;

int firstLoad = 1;
VOID ImageLoad(IMG img, VOID *v)
{
    RTN origRtn = RTN_FindByName(img, "_SetXto1");
    RTN substituteRtn = RTN_Invalid();

    if (RTN_Valid(origRtn))
    {
        substituteRtn = RTN_FindByName(img, "_SetXto2");
    }
    else
    {
        origRtn = RTN_FindByName(img, "SetXto1");
        if (RTN_Valid(origRtn))
        {
            substituteRtn = RTN_FindByName(img, "SetXto2");
        }
    }
    if (substituteRtn != RTN_Invalid())
    {
        origRtnAddress = RTN_Address(origRtn);
        origRtnEndAddress  = origRtnAddress + RTN_Size(origRtn);
        substituteRtnAddress = RTN_Address(substituteRtn);
        substituteRtnEndAddress  = substituteRtnAddress + RTN_Size(substituteRtn);
    }
}


// This function is called when the application exits
VOID Fini(INT32 code, VOID *v)
{
    
}

size_t ToolFetchFunction(void *buf, ADDRINT addr, size_t size, EXCEPTION_INFO *pExceptInfo, VOID *v)
{
    if (reinterpret_cast<ADDRINT>(v) != 0x11abcdef)
    {
        printf ("Got Bad Callback value\n"); 
    }
    ADDRINT addrToFetchFrom = addr;
        if ((addr >= origRtnAddress)
            && (addr <= (origRtnEndAddress)))
        {  // substitute with fetch from appropriate address in substituteRtn
            addrToFetchFrom = substituteRtnAddress + (addr - origRtnAddress);
//            printf ("ToolFetchFunction addr %x addrToFetchFrom %x \n",
//                   addr, addrToFetchFrom);
        }
    size_t copied = PIN_SafeCopyEx (static_cast<UINT8*>(buf),  
                                 reinterpret_cast<UINT8*>(addrToFetchFrom),  size, pExceptInfo);
//    printf ("ToolFetchFunction buf %p addr %x addrToFetchFrom %x size %d copied %d\n",
//                                buf, addr, addrToFetchFrom, size, copied);

    return (copied);
}

// argc, argv are the entire command line, including pin -t <toolname> -- ...
int main(int argc, char * argv[])
{
    PIN_InitSymbols();

    // Initialize pin
    PIN_Init(argc, argv);

    IMG_AddInstrumentFunction(ImageLoad, 0);

    PIN_AddFetchFunction(ToolFetchFunction, reinterpret_cast<VOID *>(0x11abcdef));

    // Register Fini to be called when the application exits
    PIN_AddFiniFunction(Fini, 0);
    
    // Start the program, never returns
    PIN_StartProgram();
    
    return 0;
}
