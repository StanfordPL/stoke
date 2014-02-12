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
#include "pin.H"
#include <iostream>
#include <fstream>
#include <string.h>

/* ===================================================================== */
/* Global Variables */
/* ===================================================================== */

std::ofstream TraceFile;

/* ===================================================================== */
/* Commandline Switches */
/* ===================================================================== */

KNOB<string> KnobOutputFile(KNOB_MODE_WRITEONCE, "pintool",
    "o", "", "specify trace file name");

/* ===================================================================== */


/* ===================================================================== */
/* Analysis routines                                                     */
/* ===================================================================== */
 
VOID MemcpyBefore(CHAR * name, ADDRINT dst, ADDRINT src, ADDRINT size)
{
    TraceFile << name << "(" << dst << "," << src << "," << size << ")" << endl;
}

// Capture the return address of the ifunc which is the address of the actual memcpy
VOID * IfuncMemcpyWrapper( CONTEXT * context, AFUNPTR orgFuncptr)
{
    VOID * ret;

    PIN_CallApplicationFunction( context, PIN_ThreadId(),
                                 CALLINGSTD_DEFAULT, orgFuncptr,
                                 PIN_PARG(void *), &ret,
                                 PIN_PARG_END() );
    TraceFile << "memcpy (ifunc)" <<endl;
    cout << "ifunc_memcpy(" << ") returns " << hex << ret << endl;
    return ret;
}

/* ===================================================================== */
/* Instrumentation routines                                              */
/* ===================================================================== */


VOID Routine( IMG img, RTN rtn, void * v)
{
    // In some libc implementations, memcpy, memmove  symbols have the same address.
    // In this case, since Pin only creates one RTN per start address, the RTN name
    // will be either memcpy, memmove.
    bool isMemmove = strcmp(RTN_Name(rtn).c_str(),"memmove")==0 ;
    bool isMemcpy = strcmp(RTN_Name(rtn).c_str(),"memcpy")==0 ;

    if (isMemmove || isMemcpy)
    {
        if (SYM_IFunc(RTN_Sym(rtn)))
        {
            TraceFile << "Ifunc memcpy" << endl;

            PROTO proto_ifunc_memcpy = PROTO_Allocate( PIN_PARG(void *), CALLINGSTD_DEFAULT,
                                       "memcpy", PIN_PARG_END() );

            RTN_ReplaceSignature(rtn, AFUNPTR( IfuncMemcpyWrapper ),
                                 IARG_PROTOTYPE, proto_ifunc_memcpy,
                                 IARG_CONTEXT,
                                 IARG_ORIG_FUNCPTR,
                                 IARG_END);
        }
        else
        {
            RTN_Open(rtn);

            TraceFile << "Normal memcpy" << endl;

            // Instrument memcpy() to print the input argument value and the return value.
            RTN_InsertCall(rtn, IPOINT_BEFORE, (AFUNPTR)MemcpyBefore,
                           IARG_ADDRINT, "memcpy (normal)",
                           IARG_FUNCARG_ENTRYPOINT_VALUE, 0,
                           IARG_FUNCARG_ENTRYPOINT_VALUE, 1,
                           IARG_FUNCARG_ENTRYPOINT_VALUE, 2,
                           IARG_END);

            RTN_Close(rtn);
        }
    }
}

VOID Image(IMG img, VOID *v)
{
    for( SEC sec=IMG_SecHead(img); SEC_Valid(sec) ; sec=SEC_Next(sec) )
    {
        if ( SEC_IsExecutable(sec) )
        {
            for( RTN rtn=SEC_RtnHead(sec); RTN_Valid(rtn) ; rtn=RTN_Next(rtn) )
                 Routine( img, rtn,v);
        }
    }
}
/* ===================================================================== */

VOID Fini(INT32 code, VOID *v)
{
    TraceFile.close();
}

/* ===================================================================== */
/* Print Help Message                                                    */
/* ===================================================================== */
   
INT32 Usage()
{
    cerr << "This tool produces a trace of calls to normal and ifunc memcpy." << endl;
    cerr << endl << KNOB_BASE::StringKnobSummary() << endl;
    return -1;
}

/* ===================================================================== */
/* Main                                                                  */
/* ===================================================================== */

int main(int argc, char *argv[])
{
    // Initialize pin & symbol manager
    PIN_InitSymbolsAlt(SYMBOL_INFO_MODE(UINT32(IFUNC_SYMBOLS) | UINT32(DEBUG_OR_EXPORT_SYMBOLS)));
    if( PIN_Init(argc,argv) )
    {
        return Usage();
    }

    if((KnobOutputFile.Value()).empty())
    {
        cerr << "No output file name has been provided to the tool" << endl;
    }

    // Write to a file since cout and cerr maybe closed by the application
    TraceFile.open(KnobOutputFile.Value().c_str());
    TraceFile << hex;
    TraceFile.setf(ios::showbase);

    // Register Image to be called to instrument functions.
    IMG_AddInstrumentFunction(Image, 0);

    PIN_AddFiniFunction(Fini, 0);

    // Never returns
    PIN_StartProgram();

    return 0;
}

/* ===================================================================== */
/* eof */
/* ===================================================================== */
