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
 *  Pin Tool for testing the correctness of the new log message format 2.0 
 */


/* ===================================================================== */
/* includes                                                              */
/* ===================================================================== */


#include "pin.H"
#include <iostream>
#include <fstream>
using namespace std;


/* ===================================================================== */
/* Commandline Switches                                                  */
/* ===================================================================== */

KNOB<string> KnobOutputFile( KNOB_MODE_WRITEONCE, "pintool",
    "o", "error_log.out", "specify trace file name" );

	
/* ===================================================================== */
/* Finals                                                                */
/* ===================================================================== */

#if defined(TARGET_MAC)
#define MAIN "_main"
#else
#define MAIN "main"
#endif


/* ===================================================================== */
/* Instrumentation callbacks                                             */
/* ===================================================================== */

VOID ImageLoad( IMG img, VOID *v ) 
{    
    /*
     * Pin callback. Registered by IMG_AddInstrumentFunction
     */
    if ( IMG_IsMainExecutable(img) )
    {
        PIN_WriteErrorMessage( "this is a fatal user specified error message",
        1001, PIN_ERR_FATAL, 2, "firstArg","secondArg" );
    }
}

/* ===================================================================== */
/* Utilities                                                             */
/* ===================================================================== */

/*!
*  Print out help message.
*/

INT32 Usage()
{
	/* Knobs automate the parsing and management of command line switches. 
     * A command line contains switches for Pin, the tool, and the application. 
     * The knobs parsing code understands how to separate them. 
     */
    cerr << KNOB_BASE::StringKnobSummary() << endl; //   Print out a summary of all the knobs declare

    return -1;
}

/*!
 * The main procedure of the tool.
 * This function is called when the application image is loaded but not yet started.
 * @param[in]   argc            total number of elements in the argv array
 * @param[in]   argv            array of command line arguments, 
 *                              including pin -t <toolname> -- ...
 */

int main(int argc, char *argv[])
{
    PIN_InitSymbols();
	
    /*
     * Initialize PIN library.
     */
    if ( PIN_Init(argc, argv) )
    {
        return Usage();
    }
    		
    IMG_AddInstrumentFunction( ImageLoad, 0 );
    
    /* 
     * Start the program, never returns
     */
    PIN_StartProgramProbed();
    
    return 0;
}
