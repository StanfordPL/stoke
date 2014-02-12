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
#ifndef ALARM_H
#define ALARM_H

#include <fstream>
#include <string.h>
#if defined(_MSC_VER)
#define strdup _strdup
#endif
#if defined(TARGET_IA32) || defined(TARGET_IA32E)
extern "C" {
#include "xed-interface.h"
}
#endif

namespace INSTLIB 
{
const UINT32 ALL_THREADS = 0xFFFF; // Used in the controller to ignore TIDs.

/*! @ingroup ALARM
   Handler for alarm events
 */
typedef VOID (*ALARM_HANDLER)(VOID *, CONTEXT * ctxt, VOID *, THREADID tid);

/*! @ingroup ALARM 
  
  Base class for many of the alarms. Holds an array of counts, an array of
  "armed" and some other common state.
 */
class ARMED_COUNT
{
  public:
    ARMED_COUNT(THREADID max_threads, THREADID tid) 
        :  _orig_count(0),
           _active(FALSE),
           _rearm(FALSE),
           _always_armed(FALSE), 
           _maxThreads(max_threads),
           _tid(tid)
    {
        _count = new INT64[_maxThreads];
        _armed = new BOOL[_maxThreads];
        /* initialize array of counters */
        for ( UINT32 i = 0; i < _maxThreads; i++ )
        {
            _count[i] = 0;
            _armed[i] = FALSE;
        }
        PIN_InitLock(&_pin_lock);
    }

    ~ARMED_COUNT() {
        delete [] _count;
        delete [] _armed;
    }

    /*! @ingroup ARMED_COUNT
      @return Remaining count for this alarm
    */
    INT64 Count(THREADID tid=0) const
    {
        ASSERTX(_active == TRUE);
        return _count[tid];
    }

    /*! @ingroup ARMED_COUNT
      Advance the counter
      @return True if the alarm fires and should call its handler
    */
    BOOL CounterAdvance(THREADID tid, INT64 ninst=1)
    {
        if ( _tid != ALL_THREADS && _tid != tid )
            return FALSE;

        if ( Armed(tid) == FALSE)
            return FALSE;

        BOOL fire = _always_armed;
        if (!fire) 
        {
            _count[tid] -= ninst;
            if (_count[tid] <= 0)
                fire=TRUE;
        }
        if (fire)
        {
            if (_rearm)
                ResetCount(tid);
            else
                Disarm(tid);
            return TRUE;
        }
        return FALSE;
    }

    /*! @ingroup ARMED_COUNT
      Advance the counter and check whether the alarm should fire.
      If a TID range was specified, the alarm will fire only after all the
      threads in the range have advanced past the specified count.
      @return True if the alarm fires and should call its handler.
    */
    BOOL CounterAdvanceCheckNThreads(THREADID tid, UINT32 LowTid, UINT32 HighTid, INT64 ninst=1)
    {
        if ( _tid != ALL_THREADS && _tid != tid )
            return FALSE;

        if ( Armed(tid) == FALSE)
            return FALSE;

        BOOL fire = _always_armed;
        if (!fire) 
        {
            _count[tid] -= ninst;
            fire=TRUE;
            
            // check all the thread counts in the range, and prevent fire in case
            // at least on of them has not reached zero.
            for (UINT64 i=LowTid; i <= HighTid; i++)
            {
                // Possible data race here 
                // we do not care about  accurate counts also _count[i] being
                // 64-bit may be partially updated during a race but since
                // the value will be positive that will not matter.
                // Acquiring a lock here will be very expensive.
                if (_count[i] > 0)
                {
                    fire=FALSE;
                    break;
                }
                else
                {
                    // cerr << "tid " << i << " fired " << endl;
                }
            }
        }
        if (fire)
        {
            if (_rearm)
                ResetCount(tid);
            else
                Disarm(ALL_THREADS);
            return TRUE;
        }
        return FALSE;
    }

    /*! @ingroup ARMED_COUNT
      @return True if the alarm is active
    */
    BOOL Active() const { return _active; }

    /*! @ingroup ARMED_COUNT
      Set the alarm to be active.
    */
    VOID ActivateCommon() {
        ASSERTX(_active == FALSE);
        _active=TRUE;
    }

    /*! @ingroup ARMED_COUNT
      Set several common fields
    */
    void Set( INT64 orig_count,
              BOOL rearm,
              BOOL always_armed,
              THREADID tid)
    {
        ASSERTX(_active == TRUE);
        _orig_count = orig_count;
        _rearm = rearm;
        _always_armed = always_armed;
        _tid = tid;
        SetCount(tid,orig_count);
        SetArmed(tid);
    }


  protected:

    /*! @ingroup ARMED_COUNT
      @return Armed value  for this alarm
    */
    BOOL Armed(THREADID tid=0) const
    {
        return _armed[tid];
    }

    /*! @ingroup ARMED_COUNT
      Set the armed value. 
    */
    VOID SetArmed(THREADID tid=0) {
        if (tid == ALL_THREADS) 
        {
            PIN_GetLock(&_pin_lock, tid+1);
            for(unsigned int i=0; i<_maxThreads; i++)
                _armed[i]=TRUE;
            PIN_ReleaseLock(&_pin_lock);
        }
        else 
        {
            _armed[tid] = TRUE;
        }
    }
    /*! @ingroup ARMED_COUNT
      Set the count value. 
    */

    VOID SetCount(THREADID tid, INT64 count) {
        if (tid == ALL_THREADS) 
        {
            PIN_GetLock(&_pin_lock, tid+1);
            for(unsigned int i=0; i<_maxThreads; i++)
                _count[i] = count;
            PIN_ReleaseLock(&_pin_lock);
        }
        else 
        {
            _count[tid] = count;
        }
    }

    VOID ResetCount(THREADID tid) {
        //ASSERTX( tid != ALL_THREADS);
        _count[tid] = _orig_count;
    }

    /*! @ingroup ARMED_COUNT
      Set the armed value. 
    */
    VOID Disarm(THREADID tid=0) {
        if (tid == ALL_THREADS) 
        {
            PIN_GetLock(&_pin_lock, tid+1);
            for(unsigned int i=0; i<_maxThreads; i++)
                _armed[i] = FALSE;
            PIN_ReleaseLock(&_pin_lock);
        }
        else 
        {
            _armed[tid] = FALSE;
        }
    }


    INT64 _orig_count;
    INT64 *_count;
    BOOL *_armed;
    BOOL _active;
    BOOL _rearm;
    BOOL _always_armed;
    THREADID _maxThreads;
    THREADID _tid;
    PIN_LOCK _pin_lock;
};

/*! @defgroup ALARM_BASE
  @ingroup ALARM

  Base class for many of the alarms. 
  Holds a handler, a value, and a passContext flag.
*/

/*! @ingroup ALARM_BASE
*/
class ALARM_BASE : public ARMED_COUNT
{
  public:
    ALARM_BASE(BOOL passContext = FALSE,
               UINT32 instrument_order = CALL_ORDER_DEFAULT,
               THREADID max_threads=PIN_MAX_THREADS, THREADID tid=0) 
        : ARMED_COUNT(max_threads, tid),
          _passContext(passContext),
          _handler(0),
          _val(0),
          _instrument_order(instrument_order)
    {}

    UINT32 GetInstrumentOrder() const { return _instrument_order; }

protected:
    /*! @ingroup ALARM_BASE
      Advance the counter
      @return True if the alarm fires and should call its handler.
    */    
    static ADDRINT AdvanceCondition(ARMED_COUNT * alarm, THREADID tid)
    {
        return alarm->CounterAdvance(tid);
    }

    /*! @ingroup ALARM_BASE
      Static wrapper for calling the handler.
    */  
    static void CallHandler(ALARM_BASE * alarm, CONTEXT * ctxt, VOID * ip, THREADID tid)
    {
        alarm->_handler(alarm->_val, ctxt, ip, tid);
    }
    
    /*! @ingroup ALARM_BASE
      Inserts an "If" call to the Advance, which will update the counter, 
      and check if the handler should be called.
     */  
    static void InsertIfCallToAdvance(ALARM_BASE* alarm, INS ins) 
    {
        INS_InsertIfCall(ins, IPOINT_BEFORE,
                         AFUNPTR(AdvanceCondition),
                         IARG_CALL_ORDER, alarm->GetInstrumentOrder(),
                         IARG_ADDRINT, alarm,
                         IARG_THREAD_ID,
                         IARG_END);
    }
    
    /*! @ingroup ALARM_BASE
      Inserts a "Then" call to the handler with or without the context.
    */  
    static void InsertThenCallToHandler(ALARM_BASE* alarm, INS ins) 
    {
        if (alarm->_passContext)
        {
            INS_InsertThenCall(ins, IPOINT_BEFORE,
                               AFUNPTR(CallHandler),
                               IARG_CALL_ORDER, alarm->GetInstrumentOrder(),
                               IARG_ADDRINT, alarm,
                               IARG_CONTEXT, 
                               IARG_INST_PTR, IARG_THREAD_ID,
                               IARG_END);
        }
        else 
        {
            INS_InsertThenCall(ins, IPOINT_BEFORE,
                               AFUNPTR(CallHandler), 
                               IARG_CALL_ORDER, alarm->GetInstrumentOrder(),
                               IARG_ADDRINT, alarm, 
                               IARG_ADDRINT, static_cast<ADDRINT>(0), // pass a null instead
                               IARG_INST_PTR, IARG_THREAD_ID,
                               IARG_END);
        }
    }

    BOOL _passContext;
    ALARM_HANDLER _handler;
    VOID * _val;
    UINT32 _instrument_order;
};



/*! @defgroup ALARM_ADDRESS_COUNT
  @ingroup ALARM
  Signal an alarm when the specified address has been executed n times in each thread.
*/

/*! @ingroup ALARM_ADDRESS_COUNT
*/
class ALARM_ADDRESS_COUNT : public ALARM_BASE
{
  public:
    ALARM_ADDRESS_COUNT(BOOL passContext = FALSE,
                        UINT32 instrument_order=CALL_ORDER_DEFAULT,
                        THREADID tid=0, THREADID max_threads=PIN_MAX_THREADS)
        : ALARM_BASE(passContext, instrument_order, max_threads, tid),
          _address(0)
    {}

    /*! @ingroup ALARM_ADDRESS_COUNT
      @return Code address for alarm
    */
    ADDRINT Address() const
    {
        ASSERTX(_active == TRUE);
        return _address;
    }


    /*! @ingroup ALARM_ADDRESS_COUNT
      Turn on an alarm. You should call Activate for this alarm before PIN_StartProgram
      @param count Number of times to execute this address before alarm fires
      @param handler Call this function when alarm fires
      @param val Pass this value to the handler when the alarm fires
    */
    VOID SetAlarm(UINT64 count, ALARM_HANDLER handler, VOID * val, THREADID tid=0, BOOL rearm=FALSE, BOOL always_armed=FALSE)
    {
        Set(count, rearm, always_armed, tid);
        _handler = handler;
        _val = val;
    }

    /*! @ingroup ALARM_ADDRESS_COUNT
      This function initializes an alarm and must be called before @ref PIN_StartProgram.
      It does turn the alarm on. Use SetAlarm.
      @param address Address for alarm
    */
    VOID Activate(ADDRINT address)
    {
        ActivateCommon();
        _address = address;
        TRACE_AddInstrumentFunction(Trace, this);
    }



  private:
    static VOID Trace(TRACE trace, VOID * val)
    {
        ALARM_ADDRESS_COUNT *alarm = static_cast<ALARM_ADDRESS_COUNT*>(val);

        for (BBL bbl = TRACE_BblHead(trace); BBL_Valid(bbl); bbl = BBL_Next(bbl))
        {
            for (INS ins = BBL_InsHead(bbl); INS_Valid(ins); ins = INS_Next(ins))
            {
                if (INS_Address(ins) == alarm->_address)
                {
                    InsertIfCallToAdvance(alarm, ins);
                    InsertThenCallToHandler(alarm, ins);
                }
            }
        }
    }

    ADDRINT _address;
};


/*! @defgroup ALARM_SYMBOL_COUNT
  @ingroup ALARM
  Signal an alarm when the specified symbol has been executed n times

  The example below can be found in InstLibExamples/alarm_symbol.C

  \include alarm_symbol.cpp
*/

/*! @ingroup ALARM_SYMBOL_COUNT
*/
class ALARM_SYMBOL_COUNT
{
  public:
    ALARM_SYMBOL_COUNT(BOOL passContext=FALSE,
                       UINT32 instrument_order=CALL_ORDER_DEFAULT,
                       THREADID tid=0, THREADID max_threads=PIN_MAX_THREADS)
        : _addressAlarm(passContext, instrument_order, tid, max_threads),
          _symbol(0),
          _count(0),
          _active(FALSE),
          _tid(tid)
    {
        PIN_InitSymbols();
    }

    /*! @ingroup ALARM_SYMBOL_COUNT
      @return Label for alarm
    */
    const CHAR * Symbol() const
    {
        ASSERTX(_active == TRUE);
        return _symbol;
    }

    /*! @ingroup ALARM_SYMBOL_COUNT
      @return Remaining count for this alarm
    */
    INT64 Count(THREADID tid=0) const
    {
        ASSERTX(_active == TRUE);
        return _addressAlarm.Count(tid);
    }

    /*! @ingroup ALARM_SYMBOL_COUNT
      Turn on an alarm. You should call Activate for this alarm before PIN_StartProgram
      @param count Number of times to execute this address before alarm fires
      @param handler Call this function when alarm fires
      @param val Pass this value to the handler when the alarm fires
    */
    VOID SetAlarm(UINT64 count, ALARM_HANDLER handler, VOID * val, THREADID tid=0, BOOL rearm=FALSE, BOOL always_armed=FALSE)
    {
        ASSERTX(_active == TRUE);

        if (!_addressAlarm.Active())
        {
            _count = count;
            _tid = tid;
            _handler = handler;
            _val = val;
            _rearm = rearm;
            _always_armed = always_armed;
        }
        else
        {
            _addressAlarm.SetAlarm(count, handler, val, tid, rearm, always_armed);
        }
    }

    /*! @ingroup ALARM_SYMBOL_COUNT
      This function initializes an alarm and must be called before @ref PIN_StartProgram.
      It does turn the alarm on. Use SetAlarm.
      @param symbol Name of symbol
    */
    VOID Activate(const CHAR * symbol)
    {
        ASSERTX(_active == FALSE);
        _active = TRUE;
        _symbol = strdup(symbol);
        IMG_AddInstrumentFunction(Img, this);
    }

  private:
    static VOID Img(IMG img, VOID * val)
    {
        ALARM_SYMBOL_COUNT *alarm = static_cast<ALARM_SYMBOL_COUNT*>(val);

        // If we have already activated it, then we can't do it again
        // even if we find another symbol with the same name
        if (alarm->_addressAlarm.Active())
            return;

        for( SYM sym = IMG_RegsymHead(img); SYM_Valid(sym); sym = SYM_Next(sym) )
        {
            if (SYM_Name(sym) == alarm->_symbol)
            {
                alarm->_addressAlarm.Activate(SYM_Value(sym) + IMG_LoadOffset(img));
                if (alarm->_handler)
                {
                    alarm->_addressAlarm.SetAlarm(alarm->_count, alarm->_handler,
                                                  alarm->_val, alarm->_tid,
                                                  alarm->_rearm, alarm->_always_armed);
                }
            }
        }
    }

    ALARM_ADDRESS_COUNT _addressAlarm;
    const CHAR * _symbol;
    UINT64 _count;
    ALARM_HANDLER _handler;
    VOID * _val;
    BOOL _active;
    BOOL _rearm;
    BOOL _always_armed;
    THREADID _tid;
};

/*! @defgroup ALARM_IMAGE_OFFSET_COUNT
  @ingroup ALARM
  Signal an alarm when the specified offset in the specified image has been 
  executed n times

  The example below can be found in InstLibExamples/alarm_image_offset.cpp

  \include alarm_image_offset.cpp

*/

/*! @ingroup ALARM_IMAGE_OFFSET_COUNT
*/
class ALARM_IMAGE_OFFSET_COUNT
{
  public:
    ALARM_IMAGE_OFFSET_COUNT(BOOL passContext=FALSE, 
                             UINT32 instrument_order = CALL_ORDER_DEFAULT, 
                             THREADID tid=0, 
                             UINT64 max_threads=PIN_MAX_THREADS)
        : _addressAlarm(passContext, instrument_order),
          _image_name(0),
          _count(0),
          _active(FALSE),
          _tid(tid)
    {
        PIN_InitSymbols();
    }

    /*! @ingroup ALARM_IMAGE_OFFSET_COUNT
      @return Remaining count for this alarm
    */
    INT64 Count(THREADID tid=0) const
    {
        ASSERTX(_active == TRUE);
        return _addressAlarm.Count(tid);
    }

    /*! @ingroup ALARM_IMAGE_OFFSET_COUNT
      Turn on an alarm. You should call Activate for this alarm before PIN_StartProgram
      @param count Number of times to execute this address before alarm fires
      @param handler Call this function when alarm fires
      @param val Pass this value to the handler when the alarm fires
    */
    VOID SetAlarm(UINT64 count, ALARM_HANDLER handler, VOID * val, THREADID tid=0, BOOL rearm=FALSE, BOOL always_armed=FALSE)
    {
        ASSERTX(_active == TRUE);

        if (!_addressAlarm.Active())
        {
            _count = count;
            _tid = tid;
            _handler = handler;
            _val = val;
            _rearm = rearm;
            _always_armed = always_armed;
        }
        else
        {
            _addressAlarm.SetAlarm(count, handler, val, tid, rearm, always_armed);
        }
    }

    /*! @ingroup ALARM_IMAGE_OFFSET_COUNT
      This function initializes an alarm and must be called before @ref PIN_StartProgram.
      It does turn the alarm on. Use SetAlarm.
      @param symbol Name of symbol
    */
    VOID Activate(const CHAR * image_name, ADDRDELTA offset)
    {
        ASSERTX(_active == FALSE);
        _active = TRUE;
        _image_name = strdup(image_name);
        _offset = offset;
        IMG_AddInstrumentFunction(Img, this);
    }

  private:
    static VOID Img(IMG img, VOID * val)
    {
        ALARM_IMAGE_OFFSET_COUNT *alarm = static_cast<ALARM_IMAGE_OFFSET_COUNT*>(val);

        // If we have already activated it, then we can't do it again
        // even if we find another symbol with the same name
        if (alarm->_addressAlarm.Active())
            return;
        if (alarm->_image_name != IMG_Name(img))
            return;

        //cerr << "Activating alarm " << IMG_Name(img) << " + 0x" << hex << alarm->_offset << " IMG_LowAddress(img) == 0x" << hex << IMG_LowAddress(img) << endl;
        alarm->_addressAlarm.Activate(IMG_LowAddress(img) + alarm->_offset);
        if (alarm->_handler)
        {
            alarm->_addressAlarm.SetAlarm(alarm->_count, alarm->_handler, alarm->_val, alarm->_tid, alarm->_rearm, alarm->_always_armed);
        }
    }

    ALARM_ADDRESS_COUNT _addressAlarm;
    const CHAR * _image_name;
    ADDRDELTA _offset;
    UINT64 _count;
    ALARM_HANDLER _handler;
    VOID * _val;
    BOOL _active;
    BOOL _rearm;
    BOOL _always_armed;
    THREADID _tid;
};

#if defined(TARGET_IA32) || defined(TARGET_IA32E)
/*! @defgroup ALARM_INT3
  @ingroup ALARM
  Signal an alarm when an int3 has been executed 

*/

/*! @ingroup ALARM_INT3
*/
class ALARM_INT3 : public ALARM_BASE
{
  public:
    ALARM_INT3(BOOL passContext=FALSE,
               UINT32 instrument_order=CALL_ORDER_DEFAULT,
               THREADID tid=0, THREADID max_threads=PIN_MAX_THREADS)
        : ALARM_BASE(passContext, instrument_order, max_threads, tid)
    {} 

    /*! @ingroup ALARM_INT3
      Turn on an alarm. You should call Activate for this alarm before PIN_StartProgram
      @param handler Call this function when alarm fires
      @param val Pass this value to the handler when the alarm fires
    */
    VOID SetAlarm(ALARM_HANDLER handler, VOID * val, THREADID tid=0, BOOL rearm=FALSE, UINT64 count=1, BOOL always_armed=FALSE)
    {
        Set(count, rearm, always_armed, tid);
        _handler = handler;
        _val = val;
    }

    /*! @ingroup ALARM_INT3
      This function initializes an alarm and must be called before @ref PIN_StartProgram.
      It does turn the alarm on. Use SetAlarm.
    */
    VOID Activate()
    {
        ActivateCommon();
        TRACE_AddInstrumentFunction(Trace, this);
    }

  private:
    static VOID Trace(TRACE trace, VOID * val)
    {
        ALARM_INT3 *alarm = static_cast<ALARM_INT3*>(val);

        for (BBL bbl = TRACE_BblHead(trace); BBL_Valid(bbl); bbl = BBL_Next(bbl))
        {
            for (INS ins = BBL_InsHead(bbl); INS_Valid(ins); ins = INS_Next(ins))
            {
                xed_iclass_enum_t iclass = static_cast<xed_iclass_enum_t>(INS_Opcode(ins));
                if (iclass == XED_ICLASS_INT3) 
                {
                    //cerr << "INT3 found at 0x" << hex << INS_Address(ins) << endl;
                    InsertIfCallToAdvance(alarm, ins);
                    InsertThenCallToHandler(alarm, ins);
                    INS_Delete(ins); // so no "int3" will be actually executed
                }
            }
        }
    }
};
#endif


#if defined(TARGET_IA32) || defined(TARGET_IA32E)
/*! @defgroup ALARM_INT3
  @ingroup ALARM
  Signal an alarm when an int3 has been executed 

*/

/*! @ingroup ALARM_ITEXT
*/
class ALARM_ITEXT : public ALARM_BASE
{
  public:
    ALARM_ITEXT(BOOL passContext=FALSE,
                UINT32 instrument_order=CALL_ORDER_DEFAULT,
                THREADID tid=0, THREADID max_threads=PIN_MAX_THREADS)
        : ALARM_BASE(passContext, instrument_order, max_threads, tid),
          _pattern_length(0),
          _pattern_buffer(0)
    { 
    } 

    /*! @ingroup ALARM_ITEXT
      Turn on an alarm. You should call Activate for this alarm before PIN_StartProgram
      @param handler Call this function when alarm fires
      @param val Pass this value to the handler when the alarm fires
    */
    VOID SetAlarm(ALARM_HANDLER handler, VOID * val, THREADID tid=0, BOOL rearm=FALSE, UINT64 count=1, BOOL always_armed=FALSE)
    {
        Set(count, rearm, always_armed, tid);
        _handler = handler;
        _val = val;
    }

    /*! @ingroup ALARM_ITEXT
      This function initializes an alarm and must be called before @ref PIN_StartProgram.
      It does turn the alarm on. Use SetAlarm.
    */
    VOID Activate(unsigned char* pattern_buffer, size_t pattern_length)
    {
        ActivateCommon();
        _pattern_length = pattern_length;
        _pattern_buffer = new unsigned char[pattern_length];
        memcpy(_pattern_buffer, pattern_buffer,pattern_length);
        TRACE_AddInstrumentFunction(Trace, this);
    }

  private:
    static VOID Trace(TRACE trace, VOID * val)
    {
        ALARM_ITEXT* alarm = static_cast<ALARM_ITEXT*>(val);

        for (BBL bbl = TRACE_BblHead(trace); BBL_Valid(bbl); bbl = BBL_Next(bbl))
        {
            for (INS ins = BBL_InsHead(bbl); INS_Valid(ins); ins = INS_Next(ins))
            {
                //unsigned int instruction_size = INS_Size(ins);
                unsigned char* pc = reinterpret_cast<unsigned char*>(INS_Address(ins));
                bool  found = false;
                {
                    const size_t max_inst = 15;
                    size_t buf_size = max_inst;
                    size_t cmp_size = alarm->_pattern_length;
                    unsigned char dst_buf[max_inst];
                    if (cmp_size > buf_size)
                        cmp_size = buf_size;
                    size_t copy_size = PIN_SafeCopy(dst_buf, pc, cmp_size);
                    if (copy_size == cmp_size &&  memcmp(dst_buf,alarm->_pattern_buffer, cmp_size) == 0) 
                        found = true;
                }
                if (found)
                {
                    //cerr << "ITEXT PATTERN found at 0x" << hex << pc << endl;
                    InsertIfCallToAdvance(alarm, ins);
                    InsertThenCallToHandler(alarm, ins);
                    /* do not delete the instruction */
                }
            }
        }
    }

    size_t  _pattern_length;
    unsigned char* _pattern_buffer;    
};
#endif



#if defined(TARGET_IA32) || defined(TARGET_IA32E)
/*! @defgroup ALARM_ISA_EXTENSION
  @ingroup ALARM
  Signal an alarm when an specified an instruction with a specified ISA extension has been executed.

*/

/*! @ingroup ALARM_ISA_EXTENSION
*/
class ALARM_ISA_EXTENSION : public ALARM_BASE
{
  public:
    ALARM_ISA_EXTENSION(BOOL passContext=FALSE,
                        UINT32 instrument_order=CALL_ORDER_DEFAULT,
                        THREADID tid=0, THREADID max_threads=PIN_MAX_THREADS)
        : ALARM_BASE(passContext, instrument_order, max_threads, tid),
          _sought_extension(XED_EXTENSION_INVALID)
    {} 

    /*! @ingroup ALARM_ISA_EXTENSION
      Turn on an alarm. You should call Activate for this alarm before PIN_StartProgram
      @param extension A XED ISA extension enumeration value
      @param handler Call this function when alarm fires
      @param val Pass this value to the handler when the alarm fires
    */
    VOID SetAlarm(xed_extension_enum_t extension, UINT64 count,  ALARM_HANDLER handler, VOID * val, THREADID tid=0, BOOL rearm=FALSE, BOOL always_armed=FALSE)
    {
        _sought_extension = extension;
        Set(count, rearm, always_armed, tid);
        _handler = handler;
        _val = val;
    }

    /*! @ingroup ALARM_ISA_EXTENSION
      This function initializes an alarm and must be called before @ref PIN_StartProgram.
      It does turn the alarm on. Use SetAlarm.
    */
    VOID Activate()
    {
        ActivateCommon();
        TRACE_AddInstrumentFunction(Trace, this);
    }

  private:
    static VOID Trace(TRACE trace, VOID * val)
    {
        ALARM_ISA_EXTENSION *alarm = static_cast<ALARM_ISA_EXTENSION*>(val);

        for (BBL bbl = TRACE_BblHead(trace); BBL_Valid(bbl); bbl = BBL_Next(bbl))
        {
            for (INS ins = BBL_InsHead(bbl); INS_Valid(ins); ins = INS_Next(ins))
            {
                xed_extension_enum_t extension = static_cast<xed_extension_enum_t>(INS_Extension(ins));
                if (extension == alarm->_sought_extension) 
                {
                    //cerr << "Instruction of ISA extension "
                    //     << xed_extension_enum_t2str(extension)
                    //     << " found at 0x" << hex << INS_Address(ins) << endl;
                    InsertIfCallToAdvance(alarm, ins);
                    InsertThenCallToHandler(alarm, ins);
                }
            }
        }
    }

    xed_extension_enum_t _sought_extension;
};



/*! @defgroup ALARM_ISA_CATEGORY
  @ingroup ALARM
  Signal an alarm when an specified an instruction with a specified ISA category has been executed.

*/

/*! @ingroup ALARM_ISA_CATEGORY
*/
class ALARM_ISA_CATEGORY  : public ALARM_BASE
{
  public:
    ALARM_ISA_CATEGORY(BOOL passContext=FALSE, 
                       UINT32 instrument_order=CALL_ORDER_DEFAULT, 
                       THREADID tid=0, 
                       THREADID max_threads=PIN_MAX_THREADS)
        : ALARM_BASE(passContext, instrument_order, max_threads, tid),
          _sought_category(XED_CATEGORY_INVALID)
    {} 

    /*! @ingroup ALARM_ISA_CATEGORY
      Turn on an alarm. You should call Activate for this alarm before PIN_StartProgram
      @param category A XED ISA category enumeration value
      @param handler Call this function when alarm fires
      @param val Pass this value to the handler when the alarm fires
    */
    VOID SetAlarm(xed_category_enum_t category, UINT64 count,  ALARM_HANDLER handler, VOID * val, THREADID tid=0, BOOL rearm=FALSE, BOOL always_armed=FALSE )
    {
        _sought_category = category;
        Set(count, rearm, always_armed, tid);
        _handler = handler;
        _val = val;
    }

    /*! @ingroup ALARM_ISA_CATEGORY
      This function initializes an alarm and must be called before @ref PIN_StartProgram.
      It does turn the alarm on. Use SetAlarm.
    */
    VOID Activate()
    {
        ActivateCommon();
        TRACE_AddInstrumentFunction(Trace, this);
    }

  private:
    static VOID Trace(TRACE trace, VOID * val)
    {
        ALARM_ISA_CATEGORY *alarm = static_cast<ALARM_ISA_CATEGORY*>(val);

        for (BBL bbl = TRACE_BblHead(trace); BBL_Valid(bbl); bbl = BBL_Next(bbl))
        {
            for (INS ins = BBL_InsHead(bbl); INS_Valid(ins); ins = INS_Next(ins))
            {
                xed_category_enum_t category = static_cast<xed_category_enum_t>(INS_Category(ins));
                if (category == alarm->_sought_category) 
                {
                    //cerr << "Instruction of ISA category "
                    //     << xed_category_enum_t2str(category)
                    //     << " found at 0x" << hex << INS_Address(ins) << endl;
                    InsertIfCallToAdvance(alarm, ins);
                    InsertThenCallToHandler(alarm, ins);
                }
            }
        }
    }

    xed_category_enum_t _sought_category;
};

#endif

/*! @defgroup ALARM_ICOUNT
  @ingroup ALARM
  Signal an alarm when the specified number of instructions has been executed

  The example below can be found in InstLibExamples/alarm_icount.cpp

  \include alarm_icount.cpp

*/

/*! @ingroup ALARM_ICOUNT
*/
class ALARM_ICOUNT : public ALARM_BASE
{
  public:
    ALARM_ICOUNT(BOOL passContext=FALSE, 
                 UINT32 instrument_order = CALL_ORDER_DEFAULT,
                 THREADID tid=0, THREADID max_threads=PIN_MAX_THREADS)
        : ALARM_BASE(passContext, instrument_order, max_threads, tid),
          _low_tid(0),
          _high_tid(0)
    {}


    /*! @ingroup ALARM_ICOUNT
      Turn on an alarm. You should call Activate for this alarm before PIN_StartProgram
      @param count Number of instructions to execute before alarm fires
      @param handler Call this function when alarm fires
      @param val Pass this value to the handler when the alarm fires
    */
    VOID SetAlarm(INT64 count, ALARM_HANDLER handler, VOID * val, THREADID tid=0, BOOL rearm=FALSE, BOOL always_armed=FALSE)
    {
        Set(count, rearm, always_armed, tid);
        _handler = handler;
        _val = val;
    }

    /*! @ingroup ALARM_ICOUNT
      This function initializes an alarm and must be called before @ref PIN_StartProgram.
      It does turn the alarm on. Use SetAlarm.
    */
    VOID Activate(UINT32 low_tid=0, UINT32 high_tid=0)
    {
        ActivateCommon();
        _low_tid = low_tid;
        _high_tid = high_tid;
        TRACE_AddInstrumentFunction(Trace, this);
    }

    /*! @ingroup ALARM_ICOUNT
      This function re-enables the alarm following a DeActivate(); 
      must have called Activate() before.
    */
    VOID ReActivate()
    {
        _active = TRUE;
    }

    /*! @ingroup ALARM_ICOUNT
      De-activate the counter, should call PIN_RemoveInstrumentation()
      after de-activating
    */
    VOID DeActivate()
    {
        _active = FALSE;
    }

  private:
    static VOID Trace(TRACE trace, VOID * icount)
    {
        ALARM_ICOUNT * alarm = static_cast<ALARM_ICOUNT *>(icount);
        if (!alarm->_active) return;
        for (BBL bbl = TRACE_BblHead(trace); BBL_Valid(bbl); bbl = BBL_Next(bbl))
        {
            INS ins = BBL_InsHead(bbl);
            INT32 ninst = BBL_NumIns(bbl);
            InsertIfCallToAdvanceCheckNThreads(alarm, ins, ninst);
            InsertThenCallToHandler(alarm, ins);
        }
    }
    
    /*! @ingroup ALARM_ICOUNT
      Inserts an "If" call to AdvanceCheckNThreadsCondition, which will advance the counter,
      and return if the handler should be called.
    */  
    static void InsertIfCallToAdvanceCheckNThreads(ALARM_BASE* alarm, INS ins, INT32 ninst) 
    {
        INS_InsertIfCall(ins, IPOINT_BEFORE,
                         AFUNPTR(AdvanceCheckNThreadsCondition),
                         IARG_CALL_ORDER, alarm->GetInstrumentOrder(),
                         IARG_ADDRINT, alarm,
                         IARG_UINT32, ninst,
                         IARG_THREAD_ID, IARG_END);
    }

    /*! @ingroup ALARM_ICOUNT
      Advance the counter, and return whether the handler should be called.
    */  
    static ADDRINT AdvanceCheckNThreadsCondition(ALARM_ICOUNT * alarm, INT32 c, THREADID tid)
    {
        if (alarm->_high_tid == 0)
            return alarm->CounterAdvance(tid, c);
        else
            return alarm->CounterAdvanceCheckNThreads(tid, alarm->_low_tid, alarm->_high_tid, c);
    }

    UINT32 _low_tid;
    UINT32 _high_tid;
};


} //namespace
#endif
