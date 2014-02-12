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
  This file test the PIN_InsertCallProbed feature.
  The test application adds the special "annotations".
  The test tool read the annotation and insert call to the notification function.
  Since we want the notification prints to be interleaved with the application output,
  we use the same "write function" from the application.
 */

#include "pin.H"
#include <stdlib.h>
#include <stdio.h>


/* ===================================================================== */
/* Global Variables */
/* ===================================================================== */

struct ANNOTATION {
    ADDRINT addr;
    ADDRINT value;
    ANNOTATION() : addr(0), value(0) {}
};

// Function to write to the output stream
void (*writeFun)(char *) = 0;

/* ===================================================================== */

INT32 Usage()
{
    fprintf(stderr, "This pin tool tests the PIN_InsertCallProbed API.\n");
    fprintf(stderr, "%s\n", KNOB_BASE::StringKnobSummary().c_str());
    return -1;
}


void Notification(ADDRINT val)
{
    char buff[80];

    if (!writeFun)
    {
        fprintf(stderr, "Write Function was not initialized ...\n");
        exit(1);
    }

    sprintf(buff, "Notification value: %p", Addrint2VoidStar(val));
    writeFun(buff);
}


/* ===================================================================== */
// Called every time a new image is loaded
// Look for routines that we want to probe
VOID ImageLoad(IMG img, VOID *v)
{
    const ANNOTATION *ann = 0;
    USIZE num = 0;

    printf("Processing %s\n", IMG_Name(img).c_str());
    
    for (SEC sec = IMG_SecHead(img); SEC_Valid(sec); sec = SEC_Next(sec))
    {
        if (SEC_Name(sec) == "MyAnnot")
        {
            ann = reinterpret_cast<const ANNOTATION*>(SEC_Data(sec));
            num = SEC_Size(sec) / sizeof(ANNOTATION);
        }
    }

    if (ann)
    {
        printf("Found annotations: \n");
        for (UINT32 i = 0; i < num; i++)
        {
            ADDRINT addr = ann[i].addr;
            ADDRINT val = ann[i].value;
            printf("\t%p %p\t", Addrint2VoidStar(addr), Addrint2VoidStar(val));
            if (PIN_IsSafeForProbedInsertion(addr))
            {
                PIN_InsertCallProbed(addr, AFUNPTR(Notification), IARG_ADDRINT, val, IARG_END);
                printf(" - OK\n");
            }
            else
            {
                printf(" - Failed\n");
            }
        }

        // Set the write line function, from the image of the annotations (i.e. the main executable).
        RTN writeRtn = RTN_FindByName(img, "write_line");
        if (RTN_Valid(writeRtn))
        {
            writeFun = (void (*)(char *))RTN_Funptr(writeRtn);
        }
    }

    printf("Completed %s\n", IMG_Name(img).c_str());
}

/* ===================================================================== */

int main(int argc, CHAR *argv[])
{
    PIN_InitSymbols();

    if( PIN_Init(argc,argv) )
    {
        return Usage();
    }

    IMG_AddInstrumentFunction(ImageLoad, 0);
    
    PIN_StartProgramProbed();
    
    return 0;
}

/* ===================================================================== */
/* eof */
/* ===================================================================== */
