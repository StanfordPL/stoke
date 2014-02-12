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
  @ORIGINAL_AUTHOR: Robert Muth
*/

/* ===================================================================== */
/*! @file
 *  This file contains an ISA-portable PIN tool for tracing instructions
 */
#include "pin.H"
#include "portability.H"
#include <iostream>
#include <fstream>
#include <map>


/* ===================================================================== */
/* Commandline Switches */
/* ===================================================================== */

KNOB<string> KnobOutputFile(KNOB_MODE_WRITEONCE,         "pintool",
    "o", "edgcnt.out", "specify trace file name");
KNOB<INT32>  KnobFilterByHighNibble(KNOB_MODE_WRITEONCE, "pintool",
    "f", "-1",         "only instrument instructions with a code address matching the filter");
KNOB<BOOL>   KnobPid(KNOB_MODE_WRITEONCE,                "pintool",
                     "i", "0", "append pid to output");

/* ===================================================================== */
/* Print Help Message                                                    */
/* ===================================================================== */

static INT32 Usage()
{
    cerr << "This pin tool collects an edge profile for an application\n";
    cerr << "The edge profile is partial as it only considers control flow changes (taken\n";
    cerr << "branch edges, etc.). It is the left to the profile consumer to compute the missing counts.\n";
    cerr << "\n";
    
    cerr << "The pin tool *does* keep track of edges from indirect jumps within, out of, and into\n";
    cerr << "the application. Traps to the OS a recorded with a target of -1.\n";

    cerr << KNOB_BASE::StringKnobSummary() << endl;
    return -1;
}

/* ===================================================================== */
/* Global Variables */
/* ===================================================================== */

class COUNTER
{
  public:
    UINT64 _count;       // number of times the edge was traversed

    COUNTER() : _count(0)   {}
};

typedef enum
{
    ETYPE_INVALID,
    ETYPE_CALL,
    ETYPE_ICALL,
    ETYPE_BRANCH,
    ETYPE_IBRANCH,
    ETYPE_RETURN,
    ETYPE_SYSCALL,
    ETYPE_LAST
}ETYPE;

class EDGE
{
  public:
    ADDRINT _src;
    ADDRINT _dst;
    ADDRINT _next_ins;
    ETYPE   _type; // must be integer to make stl happy
    
    EDGE(ADDRINT s, ADDRINT d, ADDRINT n, ETYPE t) :
        _src(s),_dst(d), _next_ins(n),_type(t)  {}

    bool operator <(const EDGE& edge) const 
    {
        return _src < edge._src || (_src == edge._src && _dst < edge._dst);
    }
    
};

string StringFromEtype( ETYPE etype)
{
    switch(etype)
    {
      case ETYPE_CALL:
        return "C";
      case ETYPE_ICALL:
        return "c";
      case ETYPE_BRANCH:
        return "B";
      case ETYPE_IBRANCH:
        return "b";
      case ETYPE_RETURN:
        return "r";
      case ETYPE_SYSCALL:
        return "s";
      default:
        ASSERTX(0);
        return "INVALID";
    }
}
                
typedef map< EDGE, COUNTER*> EDG_HASH_SET;

static EDG_HASH_SET EdgeSet;

/* ===================================================================== */

/*!
  An Edge might have been previously instrumented, If so reuse the previous entry
  otherwise create a new one.
 */

static COUNTER * Lookup( EDGE edge)
{
    COUNTER *& ref =   EdgeSet[ edge ];

    if( ref == 0 )
    {
        ref = new COUNTER();
    }

    return ref;
}

/* ===================================================================== */


VOID docount( COUNTER *pedg )
{
    pedg->_count++;
}

/* ===================================================================== */
// for indirect control flow we do not know the edge in advance and
// therefore must look it up 

VOID docount2( ADDRINT src, ADDRINT dst, ADDRINT n, ETYPE type, INT32 taken )
{
    if(!taken) return;
    COUNTER *pedg = Lookup( EDGE(src,dst,n,type) );
    pedg->_count++;
} 

/* ===================================================================== */

VOID Instruction(INS ins, void *v)
{
    if (INS_IsDirectBranchOrCall(ins))
    {
        ETYPE type = INS_IsCall(ins) ? ETYPE_CALL : ETYPE_BRANCH;

        // static targets can map here once
        COUNTER *pedg = Lookup( EDGE(INS_Address(ins),  INS_DirectBranchOrCallTargetAddress(ins),
                                     INS_NextAddress(ins), type) );
        INS_InsertCall(ins, IPOINT_TAKEN_BRANCH, (AFUNPTR) docount, IARG_ADDRINT, pedg, IARG_END);            
    }
    else if( INS_IsIndirectBranchOrCall(ins) )
    {
        ETYPE type = ETYPE_IBRANCH;
        
        if( INS_IsRet(ins) )
        {
            type = ETYPE_RETURN;
        }
        else if (INS_IsCall(ins) )
        {
            type = ETYPE_ICALL;
        }
        
        INS_InsertCall(ins, IPOINT_BEFORE, (AFUNPTR) docount2,
                       IARG_INST_PTR,
                       IARG_BRANCH_TARGET_ADDR,
                       IARG_ADDRINT, INS_NextAddress(ins),
                       IARG_UINT32, type,
                       IARG_BRANCH_TAKEN,
                       IARG_END);
    }
    else if( INS_IsSyscall(ins) )
    {
        COUNTER *pedg = Lookup( EDGE(INS_Address(ins),  ADDRINT(~0),INS_NextAddress(ins) ,ETYPE_SYSCALL) );
        INS_InsertPredicatedCall(ins, IPOINT_BEFORE, (AFUNPTR) docount, IARG_ADDRINT, pedg, IARG_END);            
    }
}

/* ===================================================================== */

inline INT32 AddressHighNibble(ADDRINT addr)
{
    return  0xf & (addr >> (sizeof(ADDRINT)* 8 - 4));
} 

/* ===================================================================== */
static std::ofstream* out = 0;

VOID Fini(int n, void *v)
{
    SetAddress0x(1);
         
    const INT32 nibble = KnobFilterByHighNibble.Value();

    *out << "EDGCOUNT        4.0         0\n";  // profile header, no md5sum 
    UINT32 count = 0;
    
    for( EDG_HASH_SET::const_iterator it = EdgeSet.begin(); it !=  EdgeSet.end(); it++ )
    {
        const pair<EDGE, COUNTER*> tuple = *it;
        // skip inter shared lib edges

        if( nibble >= 0  && nibble != AddressHighNibble(tuple.first._dst)  &&
            nibble != AddressHighNibble(tuple.first._src) )
        {
            continue;
        }
        
        if( tuple.second->_count == 0 ) continue;
        
        count++;
    }
    
    *out << "EDGs " << count << endl;
    *out << "# src          dst        type    count     next-ins\n";
    *out << "DATA:START" << endl;
    
    
    for( EDG_HASH_SET::const_iterator it = EdgeSet.begin(); it !=  EdgeSet.end(); it++ )
    {
        const pair<EDGE, COUNTER*> tuple = *it;

        // skip inter shared lib edges

        if( nibble >= 0  && nibble != AddressHighNibble(tuple.first._dst)  &&
            nibble != AddressHighNibble(tuple.first._src) )
        {
            continue;
        }

        if( tuple.second->_count == 0 ) continue;

        *out <<
            StringFromAddrint( tuple.first._src)  << " " <<
            StringFromAddrint(tuple.first._dst) << " " <<
            StringFromEtype(tuple.first._type) << " " <<
            decstr(tuple.second->_count,12) << " " <<
            StringFromAddrint( tuple.first._next_ins)  <<         endl;
        
    }

    *out << "DATA:END" << endl;
    *out << "## eof\n";
    out->close();
}

/* ===================================================================== */
/* Main                                                                  */
/* ===================================================================== */

int main(int argc, char *argv[])
{
    
    if( PIN_Init(argc,argv) )
    {
        return Usage();
    }
    
        
    string filename =  KnobOutputFile.Value();
    if( KnobPid )
    {
        filename += "." + decstr( getpid_portable() );
    }
    out = new std::ofstream(filename.c_str());

    INS_AddInstrumentFunction(Instruction, 0);
    PIN_AddFiniFunction(Fini, 0);

    // Never returns

    PIN_StartProgram();
    
    return 0;
}

/* ===================================================================== */
/* eof */
/* ===================================================================== */
