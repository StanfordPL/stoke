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
 *  Print a detailed disassemble data on each IMG, loops run backward.
 */

#include <iostream>
#include <fstream>
#include <iomanip>
#include "pin.H"

using namespace std;
ofstream *out=0;

KNOB<string> KnobOutputFile(KNOB_MODE_WRITEONCE, "pintool",
    "o", "imageloadbackward.out", "specify output file name");

VOID ImageLoad(IMG img, VOID * v)
{
    *out << "Tool loading " << IMG_Name(img) << " at " << IMG_LoadOffset(img) << endl;
    for (SEC sec = IMG_SecTail(img); SEC_Valid(sec); sec = SEC_Prev(sec))
    {
        *out << "  sec " << SEC_Name(sec) << " " << SEC_Address(sec) << ":" << SEC_Size(sec) << endl;
        for (RTN rtn = SEC_RtnTail(sec); RTN_Valid(rtn); rtn = RTN_Prev(rtn))
        {
            *out << "    rtn " << RTN_Name(rtn) << " " << RTN_Address(rtn) << ":" << RTN_Size(rtn) << endl;

            RTN_Open(rtn);
            
            for (INS ins = RTN_InsHead(rtn); INS_Valid(ins); ins = INS_Next(ins))
            {
                // Just print first and last
                if (!INS_Valid(INS_Prev(ins)) || !INS_Valid(INS_Next(ins)))
                {
                    *out << "      " << INS_Address(ins);

#if 0
                    *out << " " << INS_Disassemble(ins) << " read:";
                    
                    for (UINT32 i = 0; i < INS_MaxNumRRegs(ins); i++)
                    {
                        *out << " " << REG_StringShort(INS_RegR(ins, i));
                    }
                    *out << " writes:";
                    for (UINT32 i = 0; i < INS_MaxNumWRegs(ins); i++)
                    {
                        *out << " " << REG_StringShort(INS_RegW(ins, i));
                    }
#endif                    

                    *out <<  endl;
                }
            }

            RTN_Close(rtn);
        }
    }
}

VOID ImageUnload(IMG img, VOID * v)
{
    *out << "Tool unloading " << IMG_Name(img) << " at " << IMG_LoadOffset(img) << endl;
}

VOID Trace(TRACE trace, VOID *v)
{
    INS head = BBL_InsHead(TRACE_BblHead(trace));
    
    INT32 line;
    INT32 column;
    string file;

    PIN_GetSourceLocation(INS_Address(head), &column, &line, &file);
    if (file != "")
    {
        *out << file << ":" << dec << line << ":" << column << " " << hex;
    }

    RTN rtn = RTN_FindByAddress(INS_Address(head));

    if (RTN_Valid(rtn))
        *out << IMG_Name(SEC_Img(RTN_Sec(rtn)))
             << ":"
             << RTN_Name(rtn)
             << "+"
             << INS_Address(head) - RTN_Address(rtn)
             << " "
             << INS_Disassemble(head)
             << endl;
}

int main(INT32 argc, CHAR **argv)
{
    out = new ofstream(KnobOutputFile.Value().c_str());
    *out << hex << showbase;
    
    PIN_InitSymbols();
    PIN_Init(argc, argv);
    
    IMG_AddInstrumentFunction(ImageLoad, 0);
    IMG_AddUnloadFunction(ImageUnload, 0);
    TRACE_AddInstrumentFunction(Trace, 0);
    
    // Never returns
    PIN_StartProgram();
    
    return 0;
}
