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

/*! @file
 *  This is an example of probing RtlAllocateHeap
 */

#include "pin.H"
namespace WINDOWS
{
#include<Windows.h>
}
#include <iostream>
using namespace std;

VOID Before1( WINDOWS::PVOID hHeap, 
              WINDOWS::ULONG dwFlags, 
              WINDOWS::SIZE_T dwBytes )
{     
	cout << "Before 1: RtlAllocateHeap( " << hex << (ADDRINT)hHeap << ", " <<
		dwFlags << ", " << dwBytes << ")" << dec << endl << flush; 
}

void InsertProbe( IMG img, char * funcName)
{
    RTN allocRtn = RTN_FindByName(img, funcName);
    if (RTN_Valid(allocRtn) && RTN_IsSafeForProbedInsertion(allocRtn))
    {  
        cout << "RTN_InsertCallProbed on " << funcName << endl << flush;

        RTN_InsertCallProbed(allocRtn, IPOINT_BEFORE,
                             AFUNPTR(Before1),
                             IARG_FUNCARG_ENTRYPOINT_VALUE, 0,
                             IARG_FUNCARG_ENTRYPOINT_VALUE, 1,
                             IARG_FUNCARG_ENTRYPOINT_VALUE, 2,
                             IARG_END);
    }    
}



/*
 * process_loaded_image: Called every time when new image is loaded.
 */
static VOID process_loaded_image(IMG image, VOID *value)
{
    if ( !IMG_Valid(image) )
        return;
    
    InsertProbe( image, "RtlAllocateHeap");
    
}



int main(int argc, char **argv)
{
    PIN_InitSymbols();  
    if ( PIN_Init(argc, argv) )
        return -1;

    IMG_AddInstrumentFunction(process_loaded_image, 0); 
    PIN_StartProbedProgram();
}

