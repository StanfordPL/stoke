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
using namespace std;

namespace WIND
{
#include <windows.h>
}

/* ===================================================================== */
/* Commandline Switches */
/* ===================================================================== */

KNOB<INT32> KnobFollowChildEvents(KNOB_MODE_ACCUMULATE, "pintool",
    "fc", "0", "number of follow child events to complete attach cycle");

/* ===================================================================== */
/* Global variables and declarations */
/* ===================================================================== */

typedef void (__cdecl * SHORT_FUNCTION_TYPE)(size_t size);

typedef int (__cdecl * DO_LOOP_TYPE)();

static volatile int doLoopPred = 1;

static volatile int globalCounter1 = 0;

static volatile int globalCounter2 = 0;

static volatile int followChildCounter = 0;

static volatile int isAppStarted = 0;

/* ===================================================================== */

int rep_DoLoop()
{
    PIN_LockClient();
        
    volatile int localPred =  doLoopPred;
    
    PIN_UnlockClient(); 
    
    return localPred;
}

/* ===================================================================== */

VOID before_ShortFunction1()
{       
    PIN_LockClient();
    
    globalCounter1++;
    
    if(isAppStarted && globalCounter1 >= 100 && globalCounter2 >= 100 && doLoopPred != 0
       && followChildCounter >= KnobFollowChildEvents.Value())
    {
        //eventhough this is not an error - print to cerr (in order to see it on the screen)
        std::cerr << "success - exiting from application!" << endl;
        doLoopPred = 0;
    }
    
    PIN_UnlockClient();
}

/* ===================================================================== */

VOID before_ShortFunction2()
{   
    PIN_LockClient();
    
    globalCounter2++;
    
    if(isAppStarted && globalCounter1 >= 100 && globalCounter2 >= 100 && doLoopPred != 0
       && followChildCounter >= KnobFollowChildEvents.Value())
    {
        //eventhough this is not an error - print to cerr (in order to see it on the screen)
        std::cerr << "success - exiting from application!" << endl;
        doLoopPred = 0;
    }    
    
    PIN_UnlockClient();
}

/* ===================================================================== */
VOID ImageLoad(IMG img, VOID *v)
{
    cout << IMG_Name(img) << endl;    
    
    if ( ! IMG_IsMainExecutable(img) )
    {
        return;
    }

    const string sFuncName1("ShortFunction1");
    const string sFuncName2("ShortFunction2");
    const string sFuncName3("DoLoop");
    
    for (SYM sym = IMG_RegsymHead(img); SYM_Valid(sym); sym = SYM_Next(sym))
    {
        string undFuncName = PIN_UndecorateSymbolName(SYM_Name(sym), UNDECORATION_NAME_ONLY);
        if (undFuncName == sFuncName1)
        {
            RTN rtn = RTN_FindByAddress(IMG_LowAddress(img) + SYM_Value(sym));
            if (RTN_Valid(rtn))
            {
                //eventhough this is not an error - print to cerr (in order to see it on the screen)
                cerr << "Inserting analysis function before ShortFunction1() in " << IMG_Name(img) << endl;

                RTN_Open(rtn);
                
                RTN_InsertCall(rtn, IPOINT_BEFORE, AFUNPTR(before_ShortFunction1), IARG_END);

                RTN_Close(rtn);
            }
        }
        if (undFuncName == sFuncName2)
        {
            RTN rtn = RTN_FindByAddress(IMG_LowAddress(img) + SYM_Value(sym));
            if (RTN_Valid(rtn))
            {
                //eventhough this is not an error - print to cerr (in order to see it on the screen)
                cerr << "Inserting analysis function before ShortFunction2() in " << IMG_Name(img) << endl;

                RTN_Open(rtn);

                RTN_InsertCall(rtn, IPOINT_BEFORE, AFUNPTR(before_ShortFunction2), IARG_END);

                RTN_Close(rtn);
            }
        } 
        if (undFuncName == sFuncName3)
        {
            RTN rtn = RTN_FindByAddress(IMG_LowAddress(img) + SYM_Value(sym));
            if (RTN_Valid(rtn))
            {
                //eventhough this is not an error - print to cerr (in order to see it on the screen)
                cerr << "Replacing DoLoop() in " << IMG_Name(img) << endl;

                RTN_Replace(rtn, AFUNPTR(rep_DoLoop));
            }           
        }      
    }
}

BOOL FollowChild(CHILD_PROCESS childProcess, VOID * userData)
{
    followChildCounter++;
    return TRUE;
}

VOID AppStart(VOID *v)
{
    std::cerr << "Application started" << endl;

    isAppStarted = 1;

    //Verify that PIN_SafeCopy() is already available in this callback
    PIN_SafeCopy(0, 0, 10);
}

int main(INT32 argc, CHAR **argv)
{
    PIN_InitSymbols();

    PIN_Init(argc, argv);

    IMG_AddInstrumentFunction(ImageLoad, 0);

    PIN_AddFollowChildProcessFunction(FollowChild, 0);

    PIN_AddApplicationStartFunction(AppStart, 0);
 
    // Never returns
    PIN_StartProgram();

    return 0;
}