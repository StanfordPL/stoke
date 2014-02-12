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
/*
  @ORIGINAL_AUTHOR: Ady Tal
 */

/* ===================================================================== */
/*! @file
 * A test for checking if LD_BIND_NOW is set in pintool and not in the application.
 */

#include <stdlib.h>
#include <stdio.h>
#include "pin.H"

/* ===================================================================== */
/* Command line Switches */
/* ===================================================================== */

KNOB<string> KnobOutput(KNOB_MODE_WRITEONCE,  "pintool",
                        "o", "bind_now.out", "output file name");

/* ===================================================================== */
void CheckLdBind()
{
    FILE *fp = fopen(KnobOutput.Value().c_str(), "a");
    if (!fp)
    {
        exit(1);
    }
    const char *bind = getenv("LD_BIND_NOW");
    if (bind && bind[0] != '0' && bind[0] != '\0')
    {
        fprintf(fp, "LD_BIND_NOW was found\n");
    }
    else
    {
        fprintf(fp, "LD_BIND_NOW was not found\n");
    }
    fclose(fp);
}

/* ===================================================================== */
VOID Fini(INT32 code, VOID *v)
{
    CheckLdBind();
}

/* ===================================================================== */
int main(INT32 argc, CHAR **argv)
{
    PIN_Init(argc, argv);
    PIN_AddFiniFunction(Fini, 0);

    CheckLdBind();

    // Never returns
    PIN_StartProgram();
    return 0;
}
