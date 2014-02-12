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
#ifndef REGISTER_MODIFICATION_UTILS_H
#define REGISTER_MODIFICATION_UTILS_H


/////////////////////
// INCLUDES
/////////////////////

#include "regvalue_test_utils.h"


/////////////////////
// FUNCTION DECLARATIONS
/////////////////////

///// Test Logic

// The regvalue_app application stores the register values after the ChangeRegs routine completes. The tool can then
// inspect these values to check whether value replacement was successful. This function is an analysis routine for
// the SaveAppPointers() function defined in the regvalue_app application. It is used to save these pointers.
void ToolSaveAppPointers(void * gprptr, void * stptr, void * fpptr1, void * fpptr2, void* /* ostream* */ ostptr);

// Analysis routine for the SaveRegsToMem() function defined in the regvalue_app application. This routine compares the
// register values stored by the application after the ChangeRegs routine with the expected tool-assigned values defined
// in regvalues.h.
void CheckToolModifiedValues(CONTEXT * ctxt, void* /* ostream* */ ostptr);

#endif // REGISTER_MODIFICATION_UTILS_H
