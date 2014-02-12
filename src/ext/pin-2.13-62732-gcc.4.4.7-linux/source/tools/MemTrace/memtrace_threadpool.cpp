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
/*
 *
 * This tool collects an address trace of instructions that access memory
 * by filling a per-thread buffer. Each memory access of an instruction is recorded
 * as a MEMREF in the buffer (see MEMREF below).
 *

 * We do TRACE based instrumentation. At the top of the TRACE, we allocate
 * the maximum amount of space that might be needed for this trace in the
 * buffer. At each memory instruction, we just record the MEMREF at a
 * pre-determined offset in the buffer. If there are early exits from a trace,
 * then MEMREF records will not be placed in the buffer for INSs that follow the
 * early exit - We recognize these by initializing the buffer to EMPTY_ENTRY - so that the
 * entries in the buffer which were not filled in will have invalid values for both 
 * pc and ea of any MEMREF
 *
 * We check if the buffer is full at the top of the trace. If it is full, we
 * process the buffer and reset the buffer pointer.
 *
 * Each application thread has it's own buffer - so multiple application threads do NOT
 * block each other on buffer accesses
 *
 */
#include <assert.h>
#include <stdio.h>
#include <map>
#include <set>
#include <list>

#include "pin.H"
#include "portability.H"
namespace WIND
{
#include <windows.h>
}


/*
 *
 *
 *
 * Knobs for tool
 *
 *
 *
 */

/*
 * Emit the address trace to the output file
 */
KNOB<BOOL>   KnobProcessBuffer(KNOB_MODE_WRITEONCE, "pintool", "process_buffs", "1", "process the filled buffers");

// 256*4096=1048576 - same size buffer in memtrace_simple, membuffer_simple, membuffer_multi
KNOB<UINT32> KnobNumBytesInBuffer(KNOB_MODE_WRITEONCE, "pintool", "num_bytes_in_buffer", "1048576", "number of bytes in buffer");
KNOB<UINT32> KnobNumBuffersPerAppThread(KNOB_MODE_WRITEONCE, "pintool", "num_buffers_per_app_thread", "3", "number of buffers per thread");
KNOB<UINT32> KnobNumProcessingThreads(KNOB_MODE_OVERWRITE, "pintool", "num_processing_threads", "3", "number of processing threads");
KNOB<BOOL> KnobStatistics(KNOB_MODE_WRITEONCE, "pintool", "statistics", "0", "gather statistics");
KNOB<BOOL> KnobLiteStatistics(KNOB_MODE_WRITEONCE, "pintool", "lite_statistics", "0", "gather lite statistics");
KNOB<string> KnobStatisticsOutputFile(KNOB_MODE_WRITEONCE, "pintool", "stat_file", "memtrace_threadpoolstats.out", "output file");
extern "C" UINT64 ReadProcessorCycleCounter();


/* Struct of memory reference written to the buffer
 */
struct MEMREF
{
    ADDRINT pc;  // pc (ip) of the instruction doing the memory reference
    ADDRINT ea;  // the address of the memory being referenced
};
// Set of UIDs of all internal-tool threads
// We use std::set to verify that each thread has a unique UID
set<PIN_THREAD_UID> uidSet; 

const int MAX_BUFFER_PROCESSING_THREADS = 16;
  
const int EMPTY_ENTRY = 0;

// the Pin TLS slot that an application-thread will use to hold the APP_THREAD_BUFFER_HANDLER
// object that it owns
TLS_KEY appThreadRepresentitiveKey;

BOOL doExit = FALSE;

BOOL processingThreadRunning = FALSE; // is any processing thread running


/* Pin registers that this tool allocates (per-thread) to manage the writing
 * to the per-thread buffer
 */
REG endOfTraceInBufferReg;
REG endOfBufferReg;

#include "threadpool_statistics.h"


class BUFFER_LISTS_MANAGER;
class PROCESSING_THREAD_REPRESENTITVE;
/*
 * APP_THREAD_REPRESENTITVE
 * Each application thread, creates an object of this class and saves it in it's Pin TLS
 * slot (appThreadRepresentitiveKey).
 * This object is used when the BufferFull function is called. It provides the functionality
 * of:
 * 1) Allocating the buffers to be used
 * 2) Enquening a full buffer on the global full buffers list (fullBuffersListManager) so it 
 *    will be processed by one of the internal-tool buffer processing threads. 
 * 3) If there is no internal-tool buffer processing thread running yet
 *    then the ProcessBuffer is used to process the buffer by the application
 *    thread. It cannot wait for processing thread to start running
 *    because this may cause deadlock - because this app thread may be holding some OS 
 *    resource that the processing thread needs in order to start running - e.g. the LoaderLock
 */
class APP_THREAD_REPRESENTITVE
{

  public:
    APP_THREAD_REPRESENTITVE(THREADID tid);
    ~APP_THREAD_REPRESENTITVE();

    /*
     * Pointer to beginning of the buffer
     */
    VOID * CurBuffer() { return _curBuffer; }

    /*
     * Pointer to end of the buffer
     */
    VOID * CurBufferEnd() { return ((char *)_curBuffer) + KnobNumBytesInBuffer.Value(); }

    VOID SetCurBuffer (VOID *buf) {_curBuffer = buf;}

    VOID * EnqueFullAndGetNextToFill(VOID *endOfTraceInBuffer, ADDRINT *endOfBuffer);

    VOID IncrementNumOutstandingBuffers(THREADID tid) 
    { 
        PIN_GetLock(&_numOutstandingBuffersLock, tid+1);
        _numOutstandingBuffers++; 
        PIN_ReleaseLock(&_numOutstandingBuffersLock);
    }

    VOID DecrementNumOutstandingBuffers(THREADID tid) 
    { 
        PIN_GetLock(&_numOutstandingBuffersLock, tid+1);
        _numOutstandingBuffers--; 
        PIN_ReleaseLock(&_numOutstandingBuffersLock);
    }

    BOOL AllBuffersProcessed() {return (_numOutstandingBuffers==0);}

    /*
     * Analysis routine to record a MEMREF (pc, ea) in the buffer
     */
    static VOID PIN_FAST_ANALYSIS_CALL RecordMEMREFInBuffer(CHAR * endOfTraceInBuffer, ADDRINT offsetFromEndOfTrace, ADDRINT pc, ADDRINT ea);

    /*
     * Analysis routine called at beginning of each trace - it is the IF part of the IF THEN analysis routine pair
     * Return 0 if there is room in the buffer for the current trace
     *
     * @param[in]   endOfPreviousTraceInBuffer     Pointer to next entry in the buffer
     * @param[in]   bufferEnd                      Pointer to end of the buffer
     * @param[in]   sizeNeededForThisTraceInBuffer Number of bytes required by this TRACE
     */
    static ADDRINT PIN_FAST_ANALYSIS_CALL CheckIfNoSpaceForTraceInBuffer(char * endOfPreviousTraceInBuffer, char * bufferEnd, ADDRINT sizeNeededForThisTraceInBuffer);
    

    /*
     * Analysis routine called when the above IF part returns 1 - this the THEN part
     * The buffer does not have room for this trace, enques the buffer for processing
     * and gets a buffer from the free list to be used as the next buffer to fill
     */
    static void * PIN_FAST_ANALYSIS_CALL BufferFull(VOID *endOfTraceInBuffer, ADDRINT *endOfBuffer, ADDRINT tid);

    /*
     * Analysis routine called at beginning of each trace (after the IF-THEN)- 
     * moves the endOfPreviousTraceInBuffer further down in the buffer to allocate space for all
     * the possible MEMREF elements that may be written by this trace
     */
    static void * PIN_FAST_ANALYSIS_CALL  AllocateSpaceForTraceInBuffer(char * endOfPreviousTraceInBuffer, 
                                                                        ADDRINT sizeNeededForThisTraceInBuffer);


    APP_THREAD_STATISTICS * Statistics() { return (&_appThreadStatistics);}


  private:

    char *AllocateBuffer();

    /*
     * Return true if position in the buffer is empty
     */
    static BOOL EmptyEntry(char * curMEMREFElement)
    {
        return *reinterpret_cast<ADDRINT *>(curMEMREFElement) == EMPTY_ENTRY;
    }

    
    VOID * _curBuffer;  // this is the current buffer being filled
    THREADID _myTid;

    char * _pointerToEndOfTraceInBuffer;

    PIN_LOCK _numOutstandingBuffersLock;
    int _numOutstandingBuffers;

    APP_THREAD_STATISTICS _appThreadStatistics;
};

/*
 * ANALYSIS_CALL_INFO 
 *
 * Analysis calls that must be inserted at an INS in the trace are recorded in an
 * ANALYSIS_CALL_INFO object
 *
 */
class ANALYSIS_CALL_INFO
{
  public:
      ANALYSIS_CALL_INFO(INS ins, UINT32 offsetFromTraceStartInBuffer, UINT32 memop) : 
      _ins(ins), 
     _offsetFromTraceStartInBuffer(offsetFromTraceStartInBuffer),
     _memop (memop)
    {
    }

    void InsertAnalysisCall(INT32 sizeofTraceInBuffer)
    {
        /* the place in the buffer where the MEMREF of this _ins should be recorded is
           computed by: (the value in endOfTraceInBufferReg)
                        -sizeofTraceInBuffer +  _offsetFromTraceStartInBuffer(of this _ins)
        */
        INS_InsertCall(_ins, IPOINT_BEFORE, AFUNPTR(APP_THREAD_REPRESENTITVE::RecordMEMREFInBuffer), 
                       IARG_FAST_ANALYSIS_CALL, 
                       IARG_REG_VALUE, endOfTraceInBufferReg, 
                       IARG_ADDRINT, ADDRINT(_offsetFromTraceStartInBuffer - sizeofTraceInBuffer), 
                       IARG_INST_PTR, 
                       IARG_MEMORYOP_EA, _memop, 
                       IARG_END);
    }
    
  private:
    INS _ins;
    INT32 _offsetFromTraceStartInBuffer;
    UINT32 _memop;
};



    
/*
 * TRACE_ANALYSIS_CALLS_NEEDED
 *
 * Information about what analysis calls must be inserted at INSs in the trace are recorded here
 * This info is held in a vector of ANALYSIS_CALL_INFO objects
 *
 */
class TRACE_ANALYSIS_CALLS_NEEDED
{

  public:
    TRACE_ANALYSIS_CALLS_NEEDED() : _currentOffsetFromTraceStartInBuffer(0),  _numAnalysisCallsNeeded(0)
    {}
    
    UINT32 NumAnalysisCallsNeeded() const { return _numAnalysisCallsNeeded; }

    UINT32 TotalSizeOccupiedByTraceInBuffer() const { return _currentOffsetFromTraceStartInBuffer; }


    /*
     * Record a call to store an address in the log
     */
    VOID RecordAnalysisCallNeeded(INS ins, UINT32 memop);

    /*
     * InsertAnalysisCall all the recorded necessary analysis calls into the trace
     */
    VOID InsertAnalysisCalls();


    
    private:
    
    INT32 _currentOffsetFromTraceStartInBuffer;
    INT32 _numAnalysisCallsNeeded;
    vector<ANALYSIS_CALL_INFO> _analysisCalls;
};


/*
 * BUFFER_LIST_MANAGER
 * This class implements buffer list management, both for the global fullBuffers list
 * and for the global free buffers list
 */
class BUFFER_LIST_MANAGER
{
  public:
    BUFFER_LIST_MANAGER();
    VOID   PutBufferOnList(VOID *buf, VOID *endOfLastTraceInfBuffer,
                           // the application thread that put this buffer on the list 
                           APP_THREAD_REPRESENTITVE *appThreadRepresentitive,
                           /* thread Id of the thread making the call */
                           THREADID tid);
    VOID   GetBufferFromList(VOID **buf,
                             VOID **endOfLastTraceInfBuffer,
                             // the application thread that put this buffer on the list 
                             APP_THREAD_REPRESENTITVE **appThreadRepresentitive,
                             /* thread Id of the thread making the call */
                             THREADID tid);
    VOID   SignalBufferSem();
    UINT32 NumBuffersOnList () { return (_bufferList.size());}
    BUFFER_LIST_STATISTICS *Statistics() {return &_bufferListStatistics;}

  private:       

    // structure of an element of the buffer list
    struct BUFFER_LIST_ELEMENT
    {
        VOID *buf;
        VOID *endOfLastTraceInfBuffer;
        // the application thread that put this buffer on the list 
        // used in statistics gathering
        APP_THREAD_REPRESENTITVE *appThreadRepresentitive;
    };

    WIND::HANDLE _bufferSem;
    PIN_LOCK _bufferListLock;
    list<BUFFER_LIST_ELEMENT> _bufferList;

    BUFFER_LIST_STATISTICS _bufferListStatistics;
};

// all full buffers are placed on this list by the app threads.
// the internal-tool threads pick them up from here,
// process them, and put them on the free list
BUFFER_LIST_MANAGER fullBuffersListManager;

// all free buffers are placed on this list 
// the app threads pick them up from here, set them as the buffer to be filled and when they become full
// process them on the full list
BUFFER_LIST_MANAGER freeBuffersListManager;

/*
 * Process the buffer
 */
VOID ProcessBuffer(VOID *curBuf, VOID *endOfTraceInBuffer, APP_THREAD_REPRESENTITVE *associatedAppThread)
{
    
    //printf ("ProcessBuffer %x\n", curBuf);
    //fflush (stdout);
    if (!KnobProcessBuffer)
    {
        return;
    }
    UINT32 i=0;
    struct MEMREF * memref =reinterpret_cast<struct MEMREF*>(curBuf);
    struct MEMREF * firstMemref = memref;
    
    if (KnobStatistics)
    {
        associatedAppThread->Statistics()->StartCyclesProcessingBuffer();
    }
    while(memref < reinterpret_cast<struct MEMREF*>(endOfTraceInBuffer))
    {
        if (memref->pc!=0)
        {
           i++;
           firstMemref->pc += memref->pc + memref->ea;
           memref->pc = 0;
        }
        memref++;
    }

    associatedAppThread->Statistics()->AddNumElementsProcessed((UINT32)i);
    if (KnobStatistics)
    {
        associatedAppThread->Statistics()->UpdateCyclesProcessingBuffer();
    }
}

/*********** APP_THREAD_REPRESENTITVE implementation *******/

APP_THREAD_REPRESENTITVE::APP_THREAD_REPRESENTITVE(THREADID myTid) : _curBuffer(AllocateBuffer()), _myTid(myTid), _pointerToEndOfTraceInBuffer(NULL), _numOutstandingBuffers(0)
{
    PIN_InitLock(&_numOutstandingBuffersLock);
    memset (_curBuffer, EMPTY_ENTRY, KnobNumBytesInBuffer.Value());
}

APP_THREAD_REPRESENTITVE::~APP_THREAD_REPRESENTITVE()
{   
}


VOID PIN_FAST_ANALYSIS_CALL APP_THREAD_REPRESENTITVE::RecordMEMREFInBuffer(CHAR * endOfTraceInBuffer, ADDRINT offsetFromEndOfTrace, ADDRINT pc, ADDRINT ea)
{
    *reinterpret_cast<ADDRINT*>(endOfTraceInBuffer+offsetFromEndOfTrace) = pc;
    *reinterpret_cast<ADDRINT*>(endOfTraceInBuffer+offsetFromEndOfTrace+sizeof(ADDRINT)) = ea;
}

ADDRINT PIN_FAST_ANALYSIS_CALL APP_THREAD_REPRESENTITVE::CheckIfNoSpaceForTraceInBuffer(char * endOfPreviousTraceInBuffer, char * bufferEnd, ADDRINT sizeNeededForThisTraceInBuffer)
{
    return (endOfPreviousTraceInBuffer + sizeNeededForThisTraceInBuffer >= bufferEnd);
}

void * PIN_FAST_ANALYSIS_CALL  APP_THREAD_REPRESENTITVE::BufferFull(VOID *endOfTraceInBuffer, ADDRINT *endOfBuffer, ADDRINT tid)
{
    APP_THREAD_REPRESENTITVE * appThreadRepresentitive 
        = static_cast<APP_THREAD_REPRESENTITVE*>(PIN_GetThreadData(appThreadRepresentitiveKey, tid));
    return (appThreadRepresentitive->EnqueFullAndGetNextToFill(endOfTraceInBuffer, endOfBuffer));
}

void * PIN_FAST_ANALYSIS_CALL  APP_THREAD_REPRESENTITVE::AllocateSpaceForTraceInBuffer(char * endOfPreviousTraceInBuffer, 
                                                                        ADDRINT sizeNeededForThisTraceInBuffer)
{
    return (endOfPreviousTraceInBuffer + sizeNeededForThisTraceInBuffer);
}

VOID * APP_THREAD_REPRESENTITVE::EnqueFullAndGetNextToFill(VOID *endOfTraceInBuffer, ADDRINT *endOfBuffer)
{
    //printf ("BufferFilled %x\n", _curBuffer);
    //fflush (stdout);       
    _appThreadStatistics.IncrementNumBuffersFilled();

    // under some conditions the buffer is processed in this app thread
    if ( !processingThreadRunning // cannot wait for processing thread to start running
                                   // this may cause deadlock - because this app thread
                                   // may be holding some OS resource that the processing
                                   // needs to obtain in order to start - e.g. the LoaderLock
        // heuristic - no available free buffer, so process by this app thread
        /*|| (processingThreadRunning
            && freeBuffersListManager->NumBuffersOnList()==0)*/
       )
    { // process buffer in this app thread
        _appThreadStatistics.IncrementNumBuffersProcessedInAppThread();
        ProcessBuffer(_curBuffer, endOfTraceInBuffer, this);
        return _curBuffer;
    }

    IncrementNumOutstandingBuffers(_myTid);
    fullBuffersListManager.PutBufferOnList(_curBuffer, endOfTraceInBuffer, this, _myTid);
    VOID *endOfTraceInBufferDummy;
    APP_THREAD_REPRESENTITVE *appThreadRepresentitiveDummy;
    freeBuffersListManager.GetBufferFromList(&_curBuffer, &endOfTraceInBufferDummy, &appThreadRepresentitiveDummy, _myTid);
    *endOfBuffer = (ADDRINT)CurBufferEnd();
    
    return _curBuffer;
}




char *  APP_THREAD_REPRESENTITVE::AllocateBuffer()
{
    return(new char[KnobNumBytesInBuffer.Value()]);
}


/*********** BUFFER_LISTS_MANAGER implementation *******/

BUFFER_LIST_MANAGER::BUFFER_LIST_MANAGER()
{
    _bufferSem = WIND::CreateSemaphore (NULL, 0, 0x7fffffff, NULL);
}



VOID   BUFFER_LIST_MANAGER::PutBufferOnList(VOID *buf, VOID *endOfLastTraceInfBuffer,
                                             /* the app thread that is placing the buffer on the list */
                                             APP_THREAD_REPRESENTITVE *appThreadRepresentitive,
                                             /* thread Id of the thread making the call */
                                             THREADID tid)
{
    BUFFER_LIST_ELEMENT bufferListElement;

    bufferListElement.buf = buf;
    bufferListElement.endOfLastTraceInfBuffer = endOfLastTraceInfBuffer;
    bufferListElement.appThreadRepresentitive = appThreadRepresentitive;

    PIN_GetLock(&_bufferListLock, tid+1);
    _bufferList.push_back(bufferListElement);
    PIN_ReleaseLock(&_bufferListLock);
    BOOL success = WIND::ReleaseSemaphore(_bufferSem, 1, NULL);
}

VOID  BUFFER_LIST_MANAGER::GetBufferFromList(VOID **buf, VOID **endOfLastTraceInfBuffer,
                                               /* the app thread that placed the buffer on the list */
                                               APP_THREAD_REPRESENTITVE **appThreadRepresentitive,
                                               /* thread Id of the thread making the call */
                                               THREADID tid)
{
    if (KnobStatistics)
    {
        if (_bufferList.empty())
        {
            _bufferListStatistics.IncrementNumTimesWaited();
        }
        _bufferListStatistics.StartCyclesWaitingForBuffer();
    }
    
    WIND::WaitForSingleObject (_bufferSem, INFINITE);

    if (KnobStatistics )
    {
        _bufferListStatistics.UpdateCyclesWaitingForBuffer();
    }

    PIN_GetLock(&_bufferListLock, tid+1);
    BUFFER_LIST_ELEMENT &bufferListElement = (_bufferList.front());
    *buf = bufferListElement.buf;
    *endOfLastTraceInfBuffer = bufferListElement.endOfLastTraceInfBuffer;
    *appThreadRepresentitive = bufferListElement.appThreadRepresentitive;
    _bufferList.pop_front();
    PIN_ReleaseLock(&_bufferListLock);
}

VOID BUFFER_LIST_MANAGER::SignalBufferSem()
{
    BOOL success = WIND::ReleaseSemaphore(_bufferSem, 1, NULL);
}


/*********** TRACE_ANALYSIS_CALLS_NEEDED implementation *******/

/*
 * We determined all the required instrumentation, insert the calls
 */
VOID TRACE_ANALYSIS_CALLS_NEEDED::InsertAnalysisCalls()
{
    for (vector<ANALYSIS_CALL_INFO>::iterator c = _analysisCalls.begin(); 
         c != _analysisCalls.end(); 
         c++)
    {
        c->InsertAnalysisCall(TotalSizeOccupiedByTraceInBuffer());
    }
}

/*
 * Record that we need to insert an analysis call to gather the MEMREF info for this ins
 */
void TRACE_ANALYSIS_CALLS_NEEDED::RecordAnalysisCallNeeded(INS ins, UINT32 memop)
{
    _analysisCalls.push_back(ANALYSIS_CALL_INFO(ins, _currentOffsetFromTraceStartInBuffer, memop));
    _currentOffsetFromTraceStartInBuffer += sizeof(MEMREF);
    _numAnalysisCallsNeeded++;
}
    

/*
  Called by the Trace instrumentation routine
 */
VOID DetermineBBLAnalysisCalls(BBL bbl, TRACE_ANALYSIS_CALLS_NEEDED * traceAnalysisCallsNeeded)
{
    // Log every memory references of the instruction
    for(INS ins = BBL_InsHead(bbl); INS_Valid(ins); ins=INS_Next(ins))
    {
        UINT32 memOperands = INS_MemoryOperandCount(ins);

        // Iterate over each memory operand of the instruction.
        for (UINT32 memOp = 0; memOp < memOperands; memOp++)
        {
            traceAnalysisCallsNeeded->RecordAnalysisCallNeeded(ins, memOp);
        }
    }
}

/*
  Trace instrumentation routine
 */
VOID TraceAnalysisCalls(TRACE trace, VOID *)
{
    // Go over all BBLs of the trace and for each BBL determine and record the INSs which need
    // to be instrumented - i.e. the ins requires and analysis call
    //
    TRACE_ANALYSIS_CALLS_NEEDED traceAnalysisCallsNeeded;
    for (BBL bbl = TRACE_BblHead(trace); BBL_Valid(bbl); bbl = BBL_Next(bbl))
    {
        DetermineBBLAnalysisCalls(bbl, &traceAnalysisCallsNeeded);
    }

    // No addresses in this trace
    if (traceAnalysisCallsNeeded.NumAnalysisCallsNeeded() == 0)
    {
        return;
    }
    
    // Now we know how bytes the analysis calls of this trace will insert into the buffer
    //   Each analysis call inserts a MEMREF into the buffer
 
    // APP_THREAD_REPRESENTITVE::CheckIfNoSpaceForTraceInBuffer will determine if there are NOT enough available bytes in the buffer.
    // If there are NOT then it returns TRUE and the BufferFull function is called
    TRACE_InsertIfCall(trace, IPOINT_BEFORE, AFUNPTR(APP_THREAD_REPRESENTITVE::CheckIfNoSpaceForTraceInBuffer),
                       IARG_FAST_ANALYSIS_CALL,
                       IARG_REG_VALUE, endOfTraceInBufferReg, // previous trace
                       IARG_REG_VALUE, endOfBufferReg,
                       IARG_UINT32, traceAnalysisCallsNeeded.TotalSizeOccupiedByTraceInBuffer(),
                       IARG_END);
    TRACE_InsertThenCall(trace, IPOINT_BEFORE, AFUNPTR(APP_THREAD_REPRESENTITVE::BufferFull),
                         IARG_FAST_ANALYSIS_CALL,
                         IARG_REG_VALUE, endOfTraceInBufferReg,
                         IARG_REG_REFERENCE, endOfBufferReg,
                         IARG_THREAD_ID,
                         IARG_RETURN_REGS, endOfTraceInBufferReg,
                         IARG_END);
    TRACE_InsertCall(trace, IPOINT_BEFORE,  AFUNPTR(APP_THREAD_REPRESENTITVE::AllocateSpaceForTraceInBuffer),
                     IARG_FAST_ANALYSIS_CALL,
                     IARG_REG_VALUE, endOfTraceInBufferReg,
                     IARG_UINT32, traceAnalysisCallsNeeded.TotalSizeOccupiedByTraceInBuffer(),
                     IARG_RETURN_REGS, endOfTraceInBufferReg,
                     IARG_END);

    // Insert Analysis Calls for each INS on the trace that was recorded as needing one
    //   i.e. each INS that reads and/or writes memory
    traceAnalysisCallsNeeded.InsertAnalysisCalls();
}

VOID ThreadStart(THREADID tid, CONTEXT *ctxt, INT32 flags, VOID *v)
{
    // There is a new APP_THREAD_REPRESENTITVE for every thread
    APP_THREAD_REPRESENTITVE * appThreadRepresentitive = new APP_THREAD_REPRESENTITVE(tid);

    // A thread will need to look up its APP_THREAD_REPRESENTITVE, so save pointer in TLS
    PIN_SetThreadData(appThreadRepresentitiveKey, appThreadRepresentitive, tid);

    // allocate the buffer to be used by this thread initially
    appThreadRepresentitive->SetCurBuffer(new char[KnobNumBytesInBuffer] );

    // now allocate rest of the KnobNumBuffersPerAppThread buffers and put them on the global free list
    for (int i=0; i<KnobNumBuffersPerAppThread-1; i++)
    {
        //printf ("    Allocated buffer\n");
        freeBuffersListManager.PutBufferOnList(new char[KnobNumBytesInBuffer], NULL, appThreadRepresentitive, tid);
    }
        
    // Initialize endOfTraceInBufferReg to point at beginning of buffer
    PIN_SetContextReg(ctxt, endOfTraceInBufferReg, reinterpret_cast<ADDRINT>(appThreadRepresentitive->CurBuffer()));

    // Initialize endOfBufferReg to point at end of buffer
    PIN_SetContextReg(ctxt, endOfBufferReg, reinterpret_cast<ADDRINT>(appThreadRepresentitive->CurBufferEnd()));
}

VOID ThreadFini(THREADID tid, const CONTEXT *ctxt, INT32 code, VOID *v)
{
    APP_THREAD_REPRESENTITVE * appThreadRepresentitive 
        = static_cast<APP_THREAD_REPRESENTITVE*>(PIN_GetThreadData(appThreadRepresentitiveKey, tid));

    // wait for all my buffers to be processed
    while(!appThreadRepresentitive->AllBuffersProcessed())
    {
        PIN_Sleep(1);
    }

  

    appThreadRepresentitive->Statistics()->DumpNumBuffersFilled();
    overallStatistics.AccumulateAppThreadStatistics(appThreadRepresentitive->Statistics(), FALSE);
    if (KnobStatistics)
    {
        appThreadRepresentitive->Statistics()->Dump();
    }

    delete appThreadRepresentitive;

    PIN_SetThreadData(appThreadRepresentitiveKey, 0, tid);
}

/*!
 * Process exit callback (unlocked).
 */
static VOID FiniUnlocked(INT32 code, VOID *v)
{

    BOOL waitStatus;
    INT32 threadExitCode;
    
    printf ("FiniUnlocked\n");
    fflush (stdout);
    doExit = TRUE;

    // signal all the internal threads to wake up and recognize the exit
    for (int i=0; i<KnobNumProcessingThreads; i++)
    {
        fullBuffersListManager.SignalBufferSem();
    }

    // Wait until all internal threads exit
    for (set<PIN_THREAD_UID>::iterator it = uidSet.begin(); it != uidSet.end(); ++it)
    {
        waitStatus = PIN_WaitForThreadTermination(*it, PIN_INFINITE_TIMEOUT, &threadExitCode);
        if (!waitStatus)
        {
            fprintf (stderr, "PIN_WaitForThreadTermination(secondary thread) failed");
        }
    }
}


VOID Fini(INT32 code, VOID *v)
{
    overallStatistics.DumpNumBuffersFilled();
    overallStatistics.IncorporateBufferStatistics(fullBuffersListManager.Statistics(), TRUE);
    overallStatistics.IncorporateBufferStatistics(fullBuffersListManager.Statistics(), FALSE);
    if (KnobStatistics)
    {
        overallStatistics.Dump();
    }
}

/*!
 * Record the thread's uid
 */
static VOID RecordToolThreadCreated(PIN_THREAD_UID threadUid)
{
    BOOL insertStatus;
    insertStatus =  (uidSet.insert(threadUid)).second;
    if (!insertStatus)
    {
        fprintf (stderr, "UID is not unique");
        exit (-1);
    }
}


/*
  Buffer Processing Thread's routine
*/
static VOID BufferProcessingThread(VOID * arg)
{
    processingThreadRunning = TRUE;
    THREADID myThreadId = PIN_ThreadId();
   
    while (!doExit)
    {
        VOID *buf;
        VOID *endOfLastTraceInBuffer;
        APP_THREAD_REPRESENTITVE *appThreadRepresentitive;
        //printf ("BufferProcessingThread tid %d  GetBufferFromList\n", myThreadId);
        //fflush (stdout);
        fullBuffersListManager.GetBufferFromList(&buf ,&endOfLastTraceInBuffer, 
                                                  &appThreadRepresentitive, myThreadId);
        if (buf == NULL)
        {
            printf ("BufferProcessingThread tid %d is exiting\n", myThreadId);
            ASSERTX(doExit);
            break;
        }
        //printf ("BufferProcessingThread tid %d  ProcessBuffer %x\n", myThreadId, buf);
        //fflush (stdout);
        ProcessBuffer(buf, endOfLastTraceInBuffer, appThreadRepresentitive);
        //printf ("BufferProcessingThread tid %d  return buffer %x to appThreadRepresentitive %x\n", myThreadId, buf, appThreadRepresentitive);
        //fflush (stdout);
        freeBuffersListManager.PutBufferOnList(buf, NULL, appThreadRepresentitive, myThreadId);
        appThreadRepresentitive->DecrementNumOutstandingBuffers(myThreadId);
        //printf ("BufferProcessingThread tid %d appThreadRepresentitive %x now has %d buffers on it free list\n",
        //        myThreadId, appThreadRepresentitive, appThreadRepresentitive->FreeBufferListManager()->NumBuffersOnList());
    }
}


INT32 Usage()
{
    printf( "This tool demonstrates advanced pin-tool buffer managing in conjunction \nwith internal-tool threads\n");
    printf ("The following command line options are available:\n");
    printf ("-num_buffers_per_app_thread <num>  :number of buffers to allocate per application thread,        default       3\n");
    printf ("-num_bytes_in_buffer <num>         :number of bytes allocated for each buffer,                   default 1048576\n");
    printf ("-process_buffs <0 or 1>            :specify 0 to disable processing of the buffers,              default       1\n");
    printf ("-num_processing_threads <num>      :number of internal-tool buffer processing threads to create, default       3\n");
    printf ("-lite_statistics  <0 or 1>         :specify 1 to enable lite statistics gathering,               default       0\n");
    printf ("-heavy_statistics <0 or 1>         :specify 1 to enable heavy statistics gathering,              default       0\n");

    return -1;
}

int main(int argc, char * argv[])
{
    // Initialize PIN library. Print help message if -h(elp) is specified
    // in the command line or the command line is invalid
    if( PIN_Init(argc,argv) )
    {
        return Usage();
    }

    appThreadRepresentitiveKey = PIN_CreateThreadDataKey(0);

    // get the registers to be used in each thread for managing the
    // per-thread buffer
    endOfTraceInBufferReg = PIN_ClaimToolRegister();
    endOfBufferReg = PIN_ClaimToolRegister();

    if (! (REG_valid(endOfTraceInBufferReg) && REG_valid(endOfBufferReg)) )
    {
        printf("Cannot allocate a scratch register.\n");
        return 1;
    }

    TRACE_AddInstrumentFunction(TraceAnalysisCalls, 0);
    PIN_AddThreadStartFunction(ThreadStart, 0);
    PIN_AddThreadFiniFunction(ThreadFini, 0);
    PIN_AddFiniFunction(Fini, 0);
    PIN_AddFiniUnlockedFunction(FiniUnlocked, 0);


    /* It is safe to create internal threads in the tool's main procedure and spawn new
     * internal threads from existing ones. All other places, like Pin callbacks and 
     * analysis routines in application threads, are not safe for creating internal threads.
    */
    // Spawn the tool's internal threads.
    for (int i=0; i<KnobNumProcessingThreads; i++)
    {

        THREADID threadId;
        PIN_THREAD_UID threadUid;
        
        threadId 
            = PIN_SpawnInternalThread(BufferProcessingThread, 
                                      NULL, 
                                      0, 
                                      &threadUid);
        if (threadId == INVALID_THREADID)
        {
            fprintf (stderr, "PIN_SpawnInternalThread(BufferProcessingThread) failed");
            exit (-1);
        }
        printf ("created internal-tool BufferProcessingThread\n");
        fflush (stdout);
        RecordToolThreadCreated(threadUid);
    }

    printf ("buffer size in bytes 0x%x\n", KnobNumBytesInBuffer.Value());
    overallStatistics.Init();
    fflush (stdout);
    PIN_StartProgram();
    
    return 0;
}
