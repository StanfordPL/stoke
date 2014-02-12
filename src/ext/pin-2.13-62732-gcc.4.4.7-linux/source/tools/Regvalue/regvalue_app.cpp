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
#include "regvalues.h"

#ifdef TARGET_WINDOWS
#define EXPORT_SYM __declspec( dllexport )
#else
#define EXPORT_SYM
#endif


/////////////////////
// EXTERNAL FUNCTIONS
/////////////////////

// ChangeRegsWrapper saves the registers that are about to be changed.
// Then it calls ChangeRegs. The tool intercepts this call and replaces
// it with its own function which actually changes the registers.
// The wrapper then calls SaveRegsToMem which stores the tool-modified
// values to memory and allows the tool to verify them.
// Finally, the original register values are restored.
extern "C" void ChangeRegsWrapper() ASMNAME("ChangeRegsWrapper");


/////////////////////
// UTILITY FUNCTIONS
/////////////////////

// The SaveAppPointers() function is an empty function which is used by the tool to save pointers
// to the application's modified register values.
// These values will be set in the SaveRegsToMem() function (see the changeRegs_<arch> assembly file).
#ifdef TARGET_MIC
extern "C" EXPORT_SYM void SaveAppPointers(unsigned char* agprval, unsigned char* astval,
                                           unsigned char* azmmval, unsigned char* akval)
{
}
#else
extern "C" EXPORT_SYM void SaveAppPointers(unsigned char* agprval, unsigned char* astval,
                                           unsigned char* axmmval, unsigned char* aymmval)
{
}
#endif


/////////////////////
// MAIN FUNCTION
/////////////////////

int main()
{
#ifdef TARGET_MIC
    SaveAppPointers(agprval, astval, azmmval, akval);
#else
    SaveAppPointers(agprval, astval, axmmval, aymmval);
#endif
    ChangeRegsWrapper();
    return 0;
}
