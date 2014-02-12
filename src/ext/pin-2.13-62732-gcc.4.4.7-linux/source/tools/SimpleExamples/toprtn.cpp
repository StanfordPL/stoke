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
  @ORIGINAL_AUTHOR: Robert Muth and Artur Klauser
*/

/* ===================================================================== */
/*! @file
  *  This file contains a "real time" tool for showing the currently hostest routines
 */

#include "pin.H"
#include "portability.H"
#include <map>
#include <iostream>
#include <iomanip>
#include <fstream>
#include <algorithm> // for sort
#include <vector>

/* ===================================================================== */
/* Commandline Switches */
/* ===================================================================== */

KNOB<string> KnobOutputFile(KNOB_MODE_WRITEONCE,         "pintool",
                            "o", "funtop.out", "specify profile file name");

KNOB<UINT64>   KnobThreshold(KNOB_MODE_WRITEONCE,  "pintool",
                             "t", "10000", "print histogram after every n calls");

KNOB<UINT64>   KnobCutoff(KNOB_MODE_WRITEONCE,  "pintool",
                          "c", "100", "minimum count for routine to show");

KNOB<UINT64>   KnobMaxLines(KNOB_MODE_WRITEONCE,  "pintool",
                          "l", "24", "max number of output lines");

KNOB<UINT64>   KnobDetachUpdates(KNOB_MODE_WRITEONCE,  "pintool",
                          "d", "0", "detach after n screen updates");

KNOB<FLT64>   KnobDecayFactor(KNOB_MODE_WRITEONCE,  "pintool",
                          "f", "0.0", "x");

/* ===================================================================== */
/* Print Help Message                                                    */
/* ===================================================================== */

INT32 Usage()
{
    cerr <<
         "This pin tool \"real time\" tool for showing the currently hostest routines\n"
        "\n";

    cerr << KNOB_BASE::StringKnobSummary();

    cerr << endl;

    return -1;
}



string invalid = "invalid_rtn";

/* ===================================================================== */
const string *Target2String(ADDRINT target)
{
    string name = RTN_FindNameByAddress(target);
    if (name == "")
        return &invalid;
    else
        return new string(name);
}

/* ===================================================================== */

typedef  map<ADDRINT,UINT64> ADDR_CNT_MAP;
typedef pair<ADDRINT,UINT64> PAIR;
typedef vector<PAIR> VEC;

LOCALVAR ADDR_CNT_MAP RtnMap;


/* ===================================================================== */

LOCALVAR UINT64 counter = 0;
LOCALVAR UINT64 updates = 0;

std::ofstream Out;

LOCALFUN BOOL CompareLess(PAIR  s1 , PAIR  s2)
{
        return s1.second >  s2.second;
}

/* ===================================================================== */
VOID DumpHistogram(std::ostream& out)
{
    const UINT64 cutoff = KnobCutoff.Value();
    const UINT64 maxlines = KnobMaxLines.Value();
    FLT64 factor = KnobDecayFactor.Value();

    out << "\033[0;0H";
    out << "\033[2J";
    out << "\033[44m";
    out << "Functions with at least " << cutoff << " invocations in the last " <<
        KnobThreshold.Value() << " calls ";
    out << "\033[0m";
    out << endl;

    
    VEC CountMap;
    
    for (ADDR_CNT_MAP::iterator bi = RtnMap.begin(); bi != RtnMap.end(); bi++)
    {
        if( bi->second < cutoff ) continue;

        CountMap.push_back(*bi);
#if 0
        out << setw(18) << (void *)(bi->first) << " " <<
            setw(10) << bi->second <<
            "   " << Target2String(bi->first) << endl;
#endif
    }

    sort( CountMap.begin(), CountMap.end(), CompareLess );
    UINT64 lines = 0;
    for (VEC::iterator bi = CountMap.begin(); bi != CountMap.end(); bi++)
    {
        out << setw(18) << (void *)(bi->first) << " " <<
            setw(10) << bi->second <<
            "   " << Target2String(bi->first) << endl;
        lines++;
        if (lines >= maxlines) break;
    }
    
    for (ADDR_CNT_MAP::iterator bi = RtnMap.begin(); bi != RtnMap.end(); bi++)
    {
        bi->second = UINT64(bi->second * factor);
    }
    
    //out << "Total Functions: " << CountMap.size() << endl;
    
}


/* ===================================================================== */

VOID  do_call_indirect(ADDRINT target, BOOL taken)
{
    if( !taken ) return;

    if( counter == 0 )
    {
        DumpHistogram(Out);
        Out << flush;

        counter = KnobThreshold.Value();
        updates++;
        if ( updates == KnobDetachUpdates.Value() )
        {
            PIN_Detach();
        }
    }

    counter--;

    RtnMap[target]++;
}

/* ===================================================================== */

VOID Trace(TRACE trace, VOID *v)
{
        
    for (BBL bbl = TRACE_BblHead(trace); BBL_Valid(bbl); bbl = BBL_Next(bbl))
    {
        INS tail = BBL_InsTail(bbl);
        
        if( INS_IsCall(tail) )
        {
            INS_InsertCall(tail, IPOINT_BEFORE, AFUNPTR(do_call_indirect),
                               IARG_BRANCH_TARGET_ADDR, IARG_BRANCH_TAKEN, IARG_END);
        }
        else
        {
            // sometimes code is not in an image
            RTN rtn = TRACE_Rtn(trace);
            
            // also track stup jumps into share libraries
            if( RTN_Valid(rtn) && !INS_IsDirectBranchOrCall(tail) && ".plt" == SEC_Name( RTN_Sec( rtn ) ))
            {
                INS_InsertCall(tail, IPOINT_BEFORE, AFUNPTR(do_call_indirect),
                               IARG_BRANCH_TARGET_ADDR, IARG_BRANCH_TAKEN, IARG_END);
            }
        }
        
    }
}

/* ===================================================================== */
/* Main                                                                  */
/* ===================================================================== */

int main(int argc, CHAR *argv[])
{
    PIN_InitSymbols();

    if( PIN_Init(argc,argv) )
    {
        return Usage();
    }

    Out.open(KnobOutputFile.Value().c_str());
    TRACE_AddInstrumentFunction(Trace, 0);

    // Never returns

    PIN_StartProgram();
    
    return 0;
}

/* ===================================================================== */
/* eof */
/* ===================================================================== */
