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
#ifndef CONTROL_H
#define CONTROL_H

#include <list>
#include <iostream>
#include <algorithm>
#include "alarm.H"

extern "C" {
#include "xed-interface.h"
}

namespace INSTLIB 
{
/*! @defgroup CONTROLLER
  It is often desirable to use instrumentation to observe an interval of
  the execution of a program. Controllers are used to detect the beginning
  or end of an interval. Some of the methods are instruction counts, or the
  nth time an address or symbol is executed.

  A controller is usually an ALARM with some coordination for stop and start and
  some built in command line switches.

  The example below can be found in InstLibExamples/control.cpp

  \include control.cpp

*/

class CONTROL_ARGS
{
  public:
    CONTROL_ARGS(const string & prefix,
                 string knob_family,
                 UINT32 instrument_order = CALL_ORDER_DEFAULT)
        :
        _prefix(prefix),
        _knob_family(knob_family),
        _instrument_order(instrument_order)
    {}
    CONTROL_ARGS(CONTROL_ARGS & control_args) 
        :
        _prefix(control_args.get_prefix()),
        _knob_family(control_args.get_knob_family()),
        _instrument_order(control_args.get_instrument_order())
    {}

    string get_prefix() const { return _prefix; }
    string get_knob_family() const { return _knob_family; }
    UINT32 get_instrument_order() const { return _instrument_order; }

  private:
    string _prefix;
    string _knob_family;
    UINT32 _instrument_order;
};

/*! @ingroup CONTROLLER
  Event that is passed to handler when controller detects the beginning or end of an interval
*/
typedef enum 
{
    CONTROL_INVALID,
    CONTROL_START,    ///< Beginning of interval
    CONTROL_STOP,     ///< End of interval
    CONTROL_THREADID,  ///< Capture executing thread id for later processing
    CONTROL_WARMUP_START,  ///< Beginning of warmup region
    CONTROL_WARMUP_STOP,  ///< End of warmup region
    CONTROL_PROLOG_START,  ///< Beginning of prolog  region
    CONTROL_PROLOG_STOP,  ///< End of prolog region
    CONTROL_EPILOG_START,  ///< Beginning of epilog region
    CONTROL_EPILOG_STOP  ///< End of epilog region
} CONTROL_EVENT;

//#define DEBUG_CONTROLLER
#define MAX_START_STOP 10


/*! @ingroup CONTROLLER
  Type for generic event handler
*/

typedef VOID (*CONTROL_HANDLER)(CONTROL_EVENT, VOID *, CONTEXT *, VOID *, THREADID tid);
typedef struct {
    CONTROL_HANDLER handler;
    VOID* val;
    bool  passContext;        // context requirement indicator 
} CONTROL_HANDLER_PARAMS;

#define CONTROL_PASS_CONTEXT  true
#define CONTROL_NO_CONTEXT    false

// default value for activateInitIfNone
#define CONTROL_ACTIVATE_INIT true

/*! @defgroup CONTROLLER_LENGTH
  @ingroup CONTROLLER
  Controller for detecting the end of an interval using instruction count
  Use -length <n> to capture n instructions

  It is the tool's responsibility to take care of interval overlapping when
  using the control classes with multiple threads. If the knobs controlling
  which thread id to use are not specified, the default behavior is to
  monitor events on a per thread basis. For instance, if -skip N -length M
  is passed, each thread will generate a start event after executing N
  instructions and a stop event after executing M instructions. If these
  intervals overlap in time, the tool writer has to make sure to handle it
  appropriately. The same applies for the other controllers
*/

/*! @ingroup CONTROLLER_LENGTH
*/
class CONTROL_LENGTH
{
  public:
    CONTROL_LENGTH(CONTROL_ARGS & control_args)
        : _lengthKnob(KNOB_MODE_WRITEONCE, 
                      control_args.get_knob_family(),
                      "length", 
                      "",
                      "Number of instructions to execute before stopping",
                      control_args.get_prefix()),
          _control_args(control_args),
          _alarmIcount(0)
    {}

    /*! @ingroup CONTROLLER_LENGTH
      Activate the controller if the -length knob is provided
      @return 1 if controller can start an interval, otherwise 0
    */
    INT32 Activate(CONTROL_HANDLER ch, VOID * val, BOOL passContext)
    {
        if (_lengthKnob.Value() == "")
            return 0;
        ADDRESS_COUNT ac = ParseCount(_lengthKnob.Value().c_str() );
        // ac.print();
        _length = ac.count;
        _tid = ac.tid;

        _controlHandler = ch;
        _controlVal = val;

        _alarmIcount = new ALARM_ICOUNT(passContext,
                                        _control_args.get_instrument_order());

        _alarmIcount->Activate(ac.low_thread, ac.high_thread);

        return 0;
    }

    /*! @ingroup CONTROLLER_LENGTH
      Notify the controller about a start event. It counts instructions until the end
      of the interval
    */
    VOID Event(CONTROL_EVENT ev)
    {
        if (_length <= 0)
            return;

        switch(ev)
        {
          case CONTROL_START:
            _alarmIcount->SetAlarm(_length, Stop, this, _tid);
            break;

          default:
            break;
        }
    }

  private:
    static VOID Stop(VOID * val, CONTEXT * ctxt, VOID * ip, THREADID tid)
    {
        CONTROL_LENGTH * cl = static_cast<CONTROL_LENGTH*>(val);

        cl->_controlHandler(CONTROL_STOP, cl->_controlVal, ctxt, ip, tid);
    }

    KNOB<string> _lengthKnob;
    CONTROL_ARGS _control_args; 
    UINT64 _length;
    THREADID _tid;
    ALARM_ICOUNT *_alarmIcount;
    CONTROL_HANDLER _controlHandler;
    VOID * _controlVal;
};


/*! @defgroup CONTROLLER_START_ADDRESS_GENERIC
  @ingroup CONTROLLER
  Generic controller for detecting the start of an interval using an address or symbol and a count, etc.
  This takes a generic event, knob and knob usage string.
*/

/*! @ingroup CONTROLLER_START_ADDRESS_GENERIC
*/
class CONTROL_START_ADDRESS_GENERIC
{
  public:
    CONTROL_START_ADDRESS_GENERIC(CONTROL_EVENT event, 
                                  string knob_name,
                                  string knob_usage,
                                  CONTROL_ARGS & control_args)
        : _event(event),
          _control_args(control_args),
          _startAddress(KNOB_MODE_APPEND, 
                        control_args.get_knob_family(),
                        knob_name,
                        "",
                        knob_usage,
                        control_args.get_prefix())
    {
        for (UINT32 i = 0; i < MAX_START_STOP; i++)
        {
            _addressAlarm[i] = NULL;
            _symbolAlarm[i] = NULL;
            _image_offset_Alarm[i] = NULL;
        }
    }
    
    /*! @ingroup CONTROLLER_START_ADDRESS_GENERIC
      Activate the controller if the -start_address knob is provided
      @return 1 if controller can start an interval, otherwise 0
    */
    INT32 Activate(CONTROL_HANDLER ch, VOID * val, BOOL passContext)
    {
        UINT32 numStarts = _startAddress.NumberOfValues();
        if (numStarts == 0)
            return 0;

        ASSERT(numStarts <= MAX_START_STOP, "Maximum number of start_address specifications cannot exceed " + decstr(MAX_START_STOP)+"\n");
        for (UINT32 i = 0; i < numStarts; i++)
        {
            ADDRESS_COUNT  addressCount = ParseAddressCount(_startAddress.Value(i));
            if (addressCount.name != "")
            {
                if(addressCount.offset == 0)
                {
#if defined(DEBUG_CONTROLLER)
                cerr << "Symbol " << addressCount.name 
                     << " Count: " << dec << addressCount.count << endl;
#endif
                _symbolAlarm[i] = new ALARM_SYMBOL_COUNT(passContext,
                                                         _control_args.get_instrument_order());

                _symbolAlarm[i]->Activate(addressCount.name.c_str());
                _symbolAlarm[i]->SetAlarm(addressCount.count, Start, this,
                                          addressCount.tid,
                                          addressCount.rearm,
                                          addressCount.always_enabled);
            }
            else
            {
#if defined(DEBUG_CONTROLLER)
                cerr << "Image " << addressCount.name 
                     << " Offset:0x" << hex << addressCount.offset
                     << " Count: " << dec << addressCount.count << endl;
#endif
                _image_offset_Alarm[i] = 
                    new ALARM_IMAGE_OFFSET_COUNT(passContext,
                                                 _control_args.get_instrument_order());

                _image_offset_Alarm[i]->Activate(addressCount.name.c_str(),
                                                 addressCount.offset);
                _image_offset_Alarm[i]->SetAlarm(addressCount.count,
                                                 Start, this,
                                                 addressCount.tid,
                                                 addressCount.rearm,
                                                 addressCount.always_enabled);
                }
            }
            else
            {
#if defined(DEBUG_CONTROLLER)
            cerr << "Address: 0x" << hex <<  addressCount.address
                 << " Count: " << dec << addressCount.count << endl;
#endif
                _addressAlarm[i] = 
                    new ALARM_ADDRESS_COUNT(passContext,
                                            _control_args.get_instrument_order());
                
                _addressAlarm[i]->Activate(addressCount.address);
                _addressAlarm[i]->SetAlarm(addressCount.count,
                                           Start,
                                           this,
                                           addressCount.tid,
                                           addressCount.rearm,
                                           addressCount.always_enabled);
            }
        }

        _controlHandler = ch;
        _controlVal = val;

        return 1;
    }

    bool IsActive() const { return _startAddress.NumberOfValues() != 0; }
  private:
    static VOID Start(VOID * val, CONTEXT * ctxt, VOID * ip, THREADID tid)
    {
        CONTROL_START_ADDRESS_GENERIC * cs = static_cast<CONTROL_START_ADDRESS_GENERIC*>(val);

        // Notify the parent
        cs->_controlHandler(cs->_event, cs->_controlVal, ctxt, ip, tid);
    }

    CONTROL_EVENT _event;
    CONTROL_ARGS _control_args;
    KNOB<string> _startAddress;

    ALARM_ADDRESS_COUNT * _addressAlarm[MAX_START_STOP];
    ALARM_SYMBOL_COUNT * _symbolAlarm[MAX_START_STOP];
    ALARM_IMAGE_OFFSET_COUNT * _image_offset_Alarm[MAX_START_STOP];

    CONTROL_HANDLER _controlHandler;
    VOID * _controlVal;
};



/*! @defgroup CONTROLLER_START_ADDRESS
  @ingroup CONTROLLER
  Controller for detecting the start of an interval using an address or symbol and a count.
  Use -start_address [address|address:count|symbol|symbol:count|address:count]
*/

/*! @ingroup CONTROLLER_START_ADDRESS
*/
class CONTROL_START_ADDRESS : public CONTROL_START_ADDRESS_GENERIC
{
  public:
    CONTROL_START_ADDRESS(CONTROL_ARGS & control_args) 
        : CONTROL_START_ADDRESS_GENERIC(CONTROL_START, 
                                        "start_address",
                                        "Address and count to trigger a start "
                                        "(e.g. 0x400000, main, memcpy:2, "
                                        "/lib/tls/libc.so.6+0x1563a:1)",
                                        control_args)
    {}
};


/*! @defgroup CONTROLLER_START_THREADID
  @ingroup CONTROLLER
  Controller for capturing the thread id when a certain address is executed.
  Use -capture_tid_address [address|address:count|symbol|symbol:count|address:count]
*/

/*! @ingroup CONTROLLER_START_THREADID
*/
class CONTROL_START_THREADID : public CONTROL_START_ADDRESS_GENERIC
{
  public:
    CONTROL_START_THREADID(CONTROL_ARGS & control_args) 
        : CONTROL_START_ADDRESS_GENERIC(
            CONTROL_THREADID,
            "capture_tid_address",
            "Address and count to trigger a thread-capture event "
            "(e.g. 0x400000, main, memcpy:2, /lib/tls/libc.so.6+0x1563a:1)",
            control_args)
    {}
};


#if defined(TARGET_IA32) || defined(TARGET_IA32E)
/*! @defgroup CONTROLLER_START_INT3
  @ingroup CONTROLLER
  Controller for detecting the start of an interval using an int3 instruction.
  Use -start_int3 
*/

/*! @ingroup CONTROLLER_START_INT3
*/
class CONTROL_START_INT3
{
  public:
    CONTROL_START_INT3(CONTROL_ARGS & control_args) 
        : _control_args(control_args),
          _startInt3(KNOB_MODE_WRITEONCE, 
                     control_args.get_knob_family(),
                     "start_int3",
                     "",
                     "Trigger a start on seeing an 'int 3' instruction. "
                     "Requires a count argument.",
                     control_args.get_prefix()),
          _int3Alarm(0)
    {
    }
    
    /*! @ingroup CONTROLLER_START_INT3
      Activate the controller if the -start_int3 knob is provided
      @return 1 if controller can start an interval, otherwise 0
    */
    INT32 Activate(CONTROL_HANDLER ch, VOID * val, BOOL passContext)
    {
        if (_startInt3.Value() == "")
            return 0;

        ADDRESS_COUNT  ac = ParseCount( _startInt3.Value().c_str() );
        INT64 count = ac.count;
        BOOL rearm = ac.rearm;
        BOOL always_armed = ac.always_enabled;
        _int3Alarm = new ALARM_INT3(passContext,
                                    _control_args.get_instrument_order());

        _int3Alarm->Activate();
        _int3Alarm->SetAlarm(Start, this, ac.tid, rearm, count, always_armed);
        _controlHandler = ch;
        _controlVal = val;
        return 1;
    }
    bool IsActive() const { return _startInt3.Value() != ""; };

  private:
    static VOID Start(VOID * val, CONTEXT * ctxt, VOID * ip, THREADID tid)
    {
        CONTROL_START_INT3 * ci = static_cast<CONTROL_START_INT3*>(val);

        // Notify the parent
        ci->_controlHandler(CONTROL_START, ci->_controlVal, ctxt, ip, tid);
    }
    
    CONTROL_ARGS _control_args;
    KNOB<string> _startInt3;
    ALARM_INT3 * _int3Alarm;
    CONTROL_HANDLER _controlHandler;
    VOID * _controlVal;
};



/*! @defgroup CONTROLLER_STOP_INT3
  @ingroup CONTROLLER
  Controller for detecting the stop of an interval using an int3 instruction.
  Use -stop_int3 
*/

/*! @ingroup CONTROLLER_STOP_INT3
*/
class CONTROL_STOP_INT3
{
  public:
    CONTROL_STOP_INT3(CONTROL_ARGS & control_args) 
        : _control_args(control_args),
          _stopInt3(KNOB_MODE_WRITEONCE, 
                    control_args.get_knob_family(),
                    "stop_int3",
                    "",
                    "Trigger a stop on seeing an 'int 3' instruction. "
                    "Requires a count argument.",
                    control_args.get_prefix())
    {
    }
    
    /*! @ingroup CONTROLLER_STOP_INT3
      Activate the controller if the -stop_int3 knob is provided
      @return 1 if controller can stop an interval, otherwise 0
    */
    INT32 Activate(CONTROL_HANDLER ch, VOID * val, BOOL passContext)
    {
        if (_stopInt3.Value() == "")
            return 0;
        ADDRESS_COUNT  ac = ParseCount( _stopInt3.Value().c_str() );
        INT64 count = ac.count;
        BOOL rearm = ac.rearm;
        BOOL always_armed = ac.always_enabled;

        _int3Alarm = new ALARM_INT3(passContext,
                                    _control_args.get_instrument_order());

        _int3Alarm->Activate();
        _int3Alarm->SetAlarm(Stop, this, ac.tid, rearm, count, always_armed);
        _controlHandler = ch;
        _controlVal = val;
        return 1;
    }
    bool IsActive() const { return _stopInt3.Value() != ""; };

  private:
    static VOID Stop(VOID * val, CONTEXT * ctxt, VOID * ip, THREADID tid)
    {
        CONTROL_STOP_INT3 * ci = static_cast<CONTROL_STOP_INT3*>(val);

        // Notify the parent
        ci->_controlHandler(CONTROL_STOP, ci->_controlVal, ctxt, ip, tid);
    }
    
    CONTROL_ARGS _control_args;
    KNOB<string> _stopInt3;
    ALARM_INT3 * _int3Alarm;

    CONTROL_HANDLER _controlHandler;
    VOID * _controlVal;
};

#endif

#if defined(TARGET_IA32) || defined(TARGET_IA32E)

LOCALFUN unsigned char convert_nibble(unsigned char n) {
    if (n >= '0' && n <= '9') return n -'0';
    if (n >= 'a' && n <= 'f') return n -'a'+10;
    if (n >= 'A' && n <= 'F') return n -'A'+10;
    cerr << "Bad nibble in hex string: " << (char)n << endl;
    ASSERTX(0);
    return 0;
}
LOCALFUN void str2hex(const char* in, unsigned char* out, size_t len) {
    size_t i=0, j=0;
    for(i=0;i<len;i+=2) 
        out[j++] = convert_nibble(in[i])*16+ convert_nibble(in[i+1]);
}



/*! @defgroup CONTROLLER_START_ITEXT
  @ingroup CONTROLLER
  Controller for detecting the start of an interval using a instruction text
  Use -start_itext <hex-pattern>:<count>
*/

/*! @ingroup CONTROLLER_START_ITEXT
*/
class CONTROL_START_ITEXT
{
  public:
    CONTROL_START_ITEXT(CONTROL_ARGS & control_args) 
        : _control_args(control_args),
          _startItext(KNOB_MODE_APPEND, 
                      control_args.get_knob_family(),
                      "start_itext",
                      "",
                      "Trigger a start on seeing specified instruction bytes "
                      "(max 15Bytes=30nibbles)",
                      control_args.get_prefix())
    {
        for (UINT32 i = 0; i < MAX_START_STOP; i++)
        {
             _itextAlarm[i] = NULL;
        }
    }
    
    /*! @ingroup CONTROLLER_START_ITEXT
      Activate the controller if the -start_itext knob is provided
      @return 1 if controller can start an interval, otherwise 0
    */
    INT32 Activate(CONTROL_HANDLER ch, VOID * val, BOOL passContext)
    {
        UINT32 numValues = _startItext.NumberOfValues();
        if (numValues == 0)
            return 0;

        ASSERT(numValues <= MAX_START_STOP, 
               "Maximum number of start_itext specifications cannot exceed " + 
                decstr(MAX_START_STOP)+"\n");

        for (UINT32 i = 0; i < numValues; i++)
        {
            _itextAlarm[i] = new ALARM_ITEXT(passContext,
                                             _control_args.get_instrument_order());
            
            ADDRESS_COUNT  ac = ParsePatternCount(_startItext.Value(i).c_str());
            const char* p = ac.name.c_str();
            size_t plen = strlen(p);
            if ((plen & 1) != 0) {
                cerr << "Must have an even number of nibbles in the input string for -start_itext" << endl;
                ASSERTX(0);
            }

            unsigned char* hexstr = new unsigned char[plen/2];

            str2hex(p,hexstr,plen);
            _itextAlarm[i]->Activate(hexstr, plen/2);
            delete [] hexstr;
            _itextAlarm[i]->SetAlarm(Start, this, ac.tid, ac.rearm, ac.count, ac.always_enabled);
        }
        _controlHandler = ch;
        _controlVal = val;
        return 1;
    }
    bool IsActive() const { return _startItext.NumberOfValues() != 0; };

  private:
    static VOID Start(VOID * val, CONTEXT * ctxt, VOID * ip, THREADID tid)
    {
        CONTROL_START_ITEXT * ci = static_cast<CONTROL_START_ITEXT*>(val);

        // Notify the parent
        ci->_controlHandler(CONTROL_START, ci->_controlVal, ctxt, ip, tid);
    }
    
    CONTROL_ARGS _control_args;
    KNOB<string> _startItext;

    ALARM_ITEXT * _itextAlarm[MAX_START_STOP];

    CONTROL_HANDLER _controlHandler;
    VOID * _controlVal;
};



/*! @defgroup CONTROLLER_STOP_ITEXT
  @ingroup CONTROLLER
  Controller for detecting the end of an interval using a instruction text
  Use -stop_itext <hex-pattern>:<count>
*/

/*! @ingroup CONTROLLER_STOP_ITEXT
*/
class CONTROL_STOP_ITEXT
{
  public:
    CONTROL_STOP_ITEXT(CONTROL_ARGS & control_args) 
        : _control_args(control_args),
          _stopItext(KNOB_MODE_APPEND, 
                     control_args.get_knob_family(),
                     "stop_itext",
                     "",
                     "Trigger a stop on seeing a specified instruction pattern "
                     "(max 15Byte=30nibbles)",
                     control_args.get_prefix())
    {
        for (UINT32 i = 0; i < MAX_START_STOP; i++)
        {
             _itextAlarm[i] = NULL;
        }
    }
    
    /*! @ingroup CONTROLLER_STOP_ITEXT
      Activate the controller if the -stop_itext knob is provided
      @return 1 if controller can stop an interval, otherwise 0
    */
    INT32 Activate(CONTROL_HANDLER ch, VOID * val, BOOL passContext)
    {
        UINT32 numValues = _stopItext.NumberOfValues();
        if (numValues == 0)
            return 0;

        ASSERT(numValues <= MAX_START_STOP, 
               "Maximum number of stop_itext specifications cannot exceed " + 
               decstr(MAX_START_STOP)+"\n");

        for (UINT32 i = 0; i < numValues; i++)
        {
            _itextAlarm[i] = new ALARM_ITEXT(passContext,
                                             _control_args.get_instrument_order());

            ADDRESS_COUNT  ac = ParsePatternCount(_stopItext.Value(i).c_str());
            const char* p = ac.name.c_str();
            size_t plen = strlen(p);
            if ((plen & 1) != 0) {
                cerr << "Must have an even number of nibbles in the input string for -stop_itext" << endl;
                ASSERTX(0);
            }
            unsigned char* hexstr = new unsigned char[plen/2];
            str2hex(p,hexstr,plen);
            _itextAlarm[i]->Activate(hexstr, plen/2);
            delete [] hexstr;
            _itextAlarm[i]->SetAlarm(Stop, this, ac.tid, ac.rearm, ac.count, ac.always_enabled);
        }
        _controlHandler = ch;
        _controlVal = val;
        return 1;
    }
    bool IsActive() const { return _stopItext.NumberOfValues() != 0; };

  private:
    static VOID Stop(VOID * val, CONTEXT * ctxt, VOID * ip, THREADID tid)
    {
        CONTROL_STOP_ITEXT * ci = static_cast<CONTROL_STOP_ITEXT*>(val);

        // Notify the parent
        ci->_controlHandler(CONTROL_STOP, ci->_controlVal, ctxt, ip, tid);
    }
    
    CONTROL_ARGS _control_args;
    KNOB<string> _stopItext;
    ALARM_ITEXT * _itextAlarm[MAX_START_STOP];

    CONTROL_HANDLER _controlHandler;
    VOID * _controlVal;
};


/*! @defgroup CONTROLLER_START_SSCMARK
  @ingroup CONTROLLER
  Controller for detecting the start of an interval using a sequence of bytex BB xx xx xx xx 64 67 90
  Use -start_ssc_mark <hex-pattern>:<count>
*/

/*! @ingroup CONTROLLER_START_SSCMARK
*/
class CONTROL_START_SSCMARK
{
  public:
    CONTROL_START_SSCMARK(CONTROL_ARGS & control_args)
        : _control_args(control_args),
          _startItext(KNOB_MODE_APPEND, 
                      control_args.get_knob_family(),
                      "start_ssc_mark",
                      "",
                      "Trigger a start on seeing specified SSC marker -- "
                      "big-endian hex  without an 0x prefix",
                      control_args.get_prefix())
    {
        for (UINT32 i = 0; i < MAX_START_STOP; i++)
        {
             _itextAlarm[i] = NULL;
        }
    }
    
    /*! @ingroup CONTROLLER_START_SSCMARK
      Activate the controller if the -start_ssc knob is provided
      @return 1 if controller can start an interval, otherwise 0
    */
    INT32 Activate(CONTROL_HANDLER ch, VOID * val, BOOL passContext)
    {
        UINT32 numValues = _startItext.NumberOfValues();
        if (numValues == 0)
            return 0;

        ASSERT(numValues <= MAX_START_STOP, 
               "Maximum number of start_ssc_mark specifications "
                "cannot exceed "+decstr(MAX_START_STOP)+"\n");

        for (UINT32 i = 0; i < numValues; i++)
        {
            _itextAlarm[i] = new ALARM_ITEXT(passContext,
                                             _control_args.get_instrument_order());


            ADDRESS_COUNT  ac = ParsePatternCount(_startItext.Value(i).c_str());
            string full_hex("0x");
            full_hex += ac.name;
            UINT32 h = Uint32FromString(full_hex);
            unsigned char ssc_marker[] = { 0xbb, 0x00, 0x00, 0x00, 0x00, 0x64, 0x67, 0x90};
            for(int j=0;j<4;j++) 
                ssc_marker[1+j]= (h>>(j*8))&0xff;
            _itextAlarm[i]->Activate(ssc_marker, 8);
            _itextAlarm[i]->SetAlarm(Start, this, ac.tid, ac.rearm, ac.count, ac.always_enabled);
        }
        _controlHandler = ch;
        _controlVal = val;
        return 1;
    }
    bool IsActive() const { return _startItext.NumberOfValues() != 0; };

  private:
    static VOID Start(VOID * val, CONTEXT * ctxt, VOID * ip, THREADID tid)
    {
        CONTROL_START_SSCMARK * ci = static_cast<CONTROL_START_SSCMARK*>(val);

        // Notify the parent
        ci->_controlHandler(CONTROL_START, ci->_controlVal, ctxt, ip, tid);
    }
    
    CONTROL_ARGS _control_args;
    KNOB<string> _startItext;

    ALARM_ITEXT * _itextAlarm[MAX_START_STOP];

    CONTROL_HANDLER _controlHandler;
    VOID * _controlVal;
};


/*! @defgroup CONTROLLER_STOP_SSCMARK
  @ingroup CONTROLLER
  Controller for detecting the end of an interval using a sequence of bytex BB xx xx xx xx 64 67 90
  Use -stop_ssc_mark number
*/

/*! @ingroup CONTROLLER_STOP_SSCMARK
*/
class CONTROL_STOP_SSCMARK
{
  public:
    CONTROL_STOP_SSCMARK(CONTROL_ARGS & control_args) 
        : _control_args(control_args),
          _stopItext(KNOB_MODE_APPEND, 
                     control_args.get_knob_family(),
                     "stop_ssc_mark",
                     "",
                     "Trigger a stop on seeing specified SSC marker -- big-endian hex without an 0x prefix",
                     control_args.get_prefix())
    {
        for (UINT32 i = 0; i < MAX_START_STOP; i++)
        {
             _itextAlarm[i] = NULL;
        }
    }
    
    /*! @ingroup CONTROLLER_STOP_SSCMARK
      Activate the controller if the -stop_ssc knob is provided
      @return 1 if controller can stop an interval, otherwise 0
    */
    INT32 Activate(CONTROL_HANDLER ch, VOID * val, BOOL passContext)
    {
        UINT32 numValues = _stopItext.NumberOfValues();
        if (numValues == 0)
            return 0;

        ASSERT(numValues <= MAX_START_STOP, 
               "Maximum number of stop_ssc_mark specifications "
               "cannot exceed "+decstr(MAX_START_STOP)+"\n");

        for (UINT32 i = 0; i < numValues; i++)
        {
            _itextAlarm[i] = new ALARM_ITEXT(passContext,
                                                      _control_args.get_instrument_order());


            ADDRESS_COUNT  ac = ParsePatternCount(_stopItext.Value(i).c_str());
            string full_hex("0x");
            full_hex += ac.name;
            UINT32 h = Uint32FromString(full_hex);
            unsigned char ssc_marker[] = { 0xbb, 0x00, 0x00, 0x00, 0x00, 0x64, 0x67, 0x90};
            for(int j=0;j<4;j++) 
                ssc_marker[1+j]= (h>>(j*8))&0xff;
            _itextAlarm[i]->Activate(ssc_marker, 8);

            _itextAlarm[i]->SetAlarm(Stop, this, ac.tid, ac.rearm, ac.count, ac.always_enabled);
        }
        _controlHandler = ch;
        _controlVal = val;
        return 1;
    }
    bool IsActive() const { return _stopItext.NumberOfValues() != 0; };

  private:
    static VOID Stop(VOID * val, CONTEXT * ctxt, VOID * ip, THREADID tid)
    {
        CONTROL_STOP_SSCMARK * ci = static_cast<CONTROL_STOP_SSCMARK*>(val);

        // Notify the parent
        ci->_controlHandler(CONTROL_STOP, ci->_controlVal, ctxt, ip, tid);
    }
    
    CONTROL_ARGS _control_args;
    KNOB<string> _stopItext;
    ALARM_ITEXT * _itextAlarm[MAX_START_STOP];

    CONTROL_HANDLER _controlHandler;
    VOID * _controlVal;
};

#endif








#if defined(TARGET_IA32) || defined(TARGET_IA32E)
/*! @defgroup CONTROLLER_START_ISA_EXTENSION
  @ingroup CONTROLLER
  Controller for detecting the start of an interval using a the XED ISA extension for instructions.
  Use -start_extension <extension_name>
*/

/*! @ingroup CONTROLLER_START_ISA_EXTENSION
*/
class CONTROL_START_ISA_EXTENSION
{
  public:
    CONTROL_START_ISA_EXTENSION(CONTROL_ARGS & control_args) 
        : _control_args(control_args),
          _startISAExtension(KNOB_MODE_APPEND, 
                             control_args.get_knob_family(),
                             "start_extension",
                             "",
                             "Trigger a start on seeing an instruction from "
                             "this XED ISA extension",
                             control_args.get_prefix()
          )
    {
        for (UINT32 i = 0; i < MAX_START_STOP; i++)
        {
             _ISAExtensionAlarm[i] = NULL;
        }
    }
    
    /*! @ingroup CONTROLLER_START_ISA_EXTENSION
      Activate the controller if the -start_extension knob is provided
      @return 1 if controller can start an interval, otherwise 0
    */
    INT32 Activate(CONTROL_HANDLER ch, VOID * val, BOOL passContext)
    {
        UINT32 numValues = _startISAExtension.NumberOfValues();
        if (numValues == 0)
            return 0;

        ASSERT(numValues <= MAX_START_STOP, 
               "Maximum number of start_extension specifications "
               "cannot exceed " + decstr(MAX_START_STOP)+"\n");

        for (UINT32 i = 0; i < numValues; i++)
        {
            ADDRESS_COUNT  extension_and_count = ParseAddressCount(_startISAExtension.Value(i).c_str());

            xed_extension_enum_t extension = str2xed_extension_enum_t(extension_and_count.name.c_str());
            if (extension == XED_EXTENSION_INVALID) {
                cerr << "Bad ISA Extension name: " << _startISAExtension.Value(i) << endl;
                ASSERTX(0);
            }
            _ISAExtensionAlarm[i] = 
                    new ALARM_ISA_EXTENSION(passContext,
                                            _control_args.get_instrument_order());

            _ISAExtensionAlarm[i]->Activate();
            _ISAExtensionAlarm[i]->SetAlarm(
                extension,
                extension_and_count.count,
                Start,
                this,
                extension_and_count.tid,
                extension_and_count.rearm,
                extension_and_count.always_enabled);
        }
        _controlHandler = ch;
        _controlVal = val;
        return 1;
    }
    bool IsActive() const { return _startISAExtension.NumberOfValues() != 0; };

  private:
    static VOID Start(VOID * val, CONTEXT * ctxt, VOID * ip, THREADID tid)
    {
        CONTROL_START_ISA_EXTENSION * ci = static_cast<CONTROL_START_ISA_EXTENSION*>(val);

        // Notify the parent
        ci->_controlHandler(CONTROL_START, ci->_controlVal, ctxt, ip, tid);
    }
    
    CONTROL_ARGS _control_args;
    KNOB<string> _startISAExtension;

    ALARM_ISA_EXTENSION * _ISAExtensionAlarm[MAX_START_STOP];

    CONTROL_HANDLER _controlHandler;
    VOID * _controlVal;
};


/*! @defgroup CONTROLLER_START_ISA_CATEGORY
  @ingroup CONTROLLER
  Controller for detecting the start of an interval using a the XED ISA category for instructions.
  Use -start_category <category_name>
*/

/*! @ingroup CONTROLLER_START_ISA_CATEGORY
*/
class CONTROL_START_ISA_CATEGORY
{
  public:
    CONTROL_START_ISA_CATEGORY(CONTROL_ARGS & control_args)
        : _control_args(control_args),
          _startISACategory(KNOB_MODE_APPEND, 
                            control_args.get_knob_family(),
                            "start_category",
                            "",
                            "Trigger a start on seeing an instruction from "
                            "this XED ISA category",
                            control_args.get_prefix()
          )
    {
        for (UINT32 i = 0; i < MAX_START_STOP; i++)
        {
             _ISACategoryAlarm[i] = NULL;
        }
    }
    
    /*! @ingroup CONTROLLER_START_ISA_CATEGORY
      Activate the controller if the -start_category knob is provided
      @return 1 if controller can start an interval, otherwise 0
    */
    INT32 Activate(CONTROL_HANDLER ch, VOID * val, BOOL passContext)
    {
        //cerr << "CATSTART " << _startISACategory.Value() << endl;
        UINT32 numValues = _startISACategory.NumberOfValues();
        if (numValues == 0)
            return 0;

        ASSERT(numValues <= MAX_START_STOP, 
               "Maximum number of start_category specifications cannot exceed "+
               decstr(MAX_START_STOP)+"\n");

        for (UINT32 i = 0; i < numValues; i++)
        {
            ADDRESS_COUNT  category_and_count = ParseAddressCount(_startISACategory.Value(i).c_str());

            xed_category_enum_t category = str2xed_category_enum_t(category_and_count.name.c_str());
            //cerr << "CATSTART " << xed_category_enum_t2str(category) << endl; category_and_count.print();

            if (category == XED_CATEGORY_INVALID) {
                cerr << "Bad ISA Category name: " << _startISACategory.Value(i) << endl;
                ASSERTX(0);
            }
            _ISACategoryAlarm[i] = 
                 new ALARM_ISA_CATEGORY(passContext,
                                        _control_args.get_instrument_order());

            _ISACategoryAlarm[i]->Activate();
            _ISACategoryAlarm[i]->SetAlarm(category,
                                           category_and_count.count,
                                           Start,
                                           this, 
                                           category_and_count.tid,
                                           category_and_count.rearm,
                                           category_and_count.always_enabled);
        }
        _controlHandler = ch;
        _controlVal = val;
        return 1;
    }
    bool IsActive() const { return _startISACategory.NumberOfValues() != 0; };

  private:
    static VOID Start(VOID * val, CONTEXT * ctxt, VOID * ip, THREADID tid)
    {
        //cerr << "CATSTART START" << endl;
        CONTROL_START_ISA_CATEGORY * ci = static_cast<CONTROL_START_ISA_CATEGORY*>(val);

        // Notify the parent
        ci->_controlHandler(CONTROL_START, ci->_controlVal, ctxt, ip, tid);
    }
    CONTROL_ARGS _control_args;
    KNOB<string> _startISACategory;

    ALARM_ISA_CATEGORY * _ISACategoryAlarm[MAX_START_STOP];

    CONTROL_HANDLER _controlHandler;
    VOID * _controlVal;
};



////////////////////////////////////////////////////////////////////////////
// STOP
////////////////////////////////////////////////////////////////////////////

/*! @defgroup CONTROLLER_STOP_ISA_EXTENSION
  @ingroup CONTROLLER
  Controller for detecting the stop of an interval using a the XED ISA extension for instructions.
  Use -stop_extension <extension_name>
*/

/*! @ingroup CONTROLLER_STOP_ISA_EXTENSION
*/
class CONTROL_STOP_ISA_EXTENSION
{
  public:
    CONTROL_STOP_ISA_EXTENSION(CONTROL_ARGS & control_args) 
        : _control_args(control_args),
          _stopISAExtension(KNOB_MODE_APPEND, 
                            control_args.get_knob_family(),
                            "stop_extension",
                            "",
                            "Trigger a stop on seeing an instruction from this"
                            " XED ISA extension",
                            control_args.get_prefix()
          )
    {
        for (UINT32 i = 0; i < MAX_START_STOP; i++)
        {
             _ISAExtensionAlarm[i] = NULL;
        }
    }
    
    /*! @ingroup CONTROLLER_STOP_ISA_EXTENSION
      Activate the controller if the -stop_extension knob is provided
      @return 1 if controller can stop an interval, otherwise 0
    */
    INT32 Activate(CONTROL_HANDLER ch, VOID * val, BOOL passContext)
    {
        UINT32 numValues = _stopISAExtension.NumberOfValues();
        if (numValues == 0)
            return 0;

        ASSERT(numValues <= MAX_START_STOP, 
               "Maximum number of stop_extension specifications cannot exceed "+
                decstr(MAX_START_STOP)+"\n");

        for (UINT32 i = 0; i < numValues; i++)
        {
            ADDRESS_COUNT  extension_and_count = ParseAddressCount(_stopISAExtension.Value(i).c_str());

            xed_extension_enum_t extension = str2xed_extension_enum_t(extension_and_count.name.c_str());
            if (extension == XED_EXTENSION_INVALID) {
                cerr << "Bad ISA Extension name: " << _stopISAExtension.Value(i) << endl;
                ASSERTX(0);
            }
            _ISAExtensionAlarm[i] = new ALARM_ISA_EXTENSION(passContext,
                                                            _control_args.get_instrument_order());
            _ISAExtensionAlarm[i]->Activate();
            _ISAExtensionAlarm[i]->SetAlarm(
                extension,
                extension_and_count.count,
                Stop,
                this, 
                extension_and_count.tid,
                extension_and_count.rearm,
                extension_and_count.always_enabled);
        }
        _controlHandler = ch;
        _controlVal = val;
        return 1;
    }
    bool IsActive() const { return _stopISAExtension.NumberOfValues() != 0; }

  private:
    static VOID Stop(VOID * val, CONTEXT * ctxt, VOID * ip, THREADID tid)
    {
        CONTROL_STOP_ISA_EXTENSION * ci = static_cast<CONTROL_STOP_ISA_EXTENSION*>(val);

        // Notify the parent
        ci->_controlHandler(CONTROL_STOP, ci->_controlVal, ctxt, ip, tid);
    }
    
    CONTROL_ARGS _control_args;
    KNOB<string> _stopISAExtension;

    ALARM_ISA_EXTENSION * _ISAExtensionAlarm[MAX_START_STOP];

    CONTROL_HANDLER _controlHandler;
    VOID * _controlVal;
};


/*! @defgroup CONTROLLER_STOP_ISA_CATEGORY
  @ingroup CONTROLLER
  Controller for detecting the stop of an interval using a the XED ISA category for instructions.
  Use -stop_category <category_name>
*/

/*! @ingroup CONTROLLER_STOP_ISA_CATEGORY
*/
class CONTROL_STOP_ISA_CATEGORY
{
  public:
    CONTROL_STOP_ISA_CATEGORY(CONTROL_ARGS & control_args) 
        : _control_args(control_args),
          _stopISACategory(KNOB_MODE_APPEND, 
                           control_args.get_knob_family(),
                           "stop_category",
                           "INVALID",
                           "Trigger a stop on seeing an instruction from this "
                           "XED ISA category",
                           control_args.get_prefix()
          )
    {
        for (UINT32 i = 0; i < MAX_START_STOP; i++)
        {
            _ISACategoryAlarm[i] = NULL;
        }
    }
    
    /*! @ingroup CONTROLLER_STOP_ISA_CATEGORY
      Activate the controller if the -stop_category knob is provided
      @return 1 if controller can stop an interval, otherwise 0
    */
    INT32 Activate(CONTROL_HANDLER ch, VOID * val, BOOL passContext)
    {
        UINT32 numValues = _stopISACategory.NumberOfValues();
        if (numValues == 0)
            return 0;

        ASSERT(numValues <= MAX_START_STOP, 
               "Maximum number of stop_category specifications cannot exceed "+ 
               decstr(MAX_START_STOP)+"\n");

        for (UINT32 i = 0; i < numValues; i++)
        {
            ADDRESS_COUNT  category_and_count = ParseAddressCount(_stopISACategory.Value(i).c_str());

            xed_category_enum_t category = str2xed_category_enum_t(category_and_count.name.c_str());
            if (category == XED_CATEGORY_INVALID) {
                cerr << "Bad ISA Category name: " << _stopISACategory.Value(i) << endl;
                ASSERTX(0);
            }
            _ISACategoryAlarm[i] = 
                new ALARM_ISA_CATEGORY(passContext,
                                       _control_args.get_instrument_order());

            _ISACategoryAlarm[i]->Activate();
            _ISACategoryAlarm[i]->SetAlarm(category,
                                           category_and_count.count,
                                           Stop,
                                           this, 
                                           category_and_count.tid,
                                           category_and_count.rearm,
                                           category_and_count.always_enabled);
        }
        _controlHandler = ch;
        _controlVal = val;
        return 1;
    }
    bool IsActive() const { return _stopISACategory.NumberOfValues() != 0; };

  private:
    static VOID Stop(VOID * val, CONTEXT * ctxt, VOID * ip, THREADID tid)
    {
        CONTROL_STOP_ISA_CATEGORY * ci = static_cast<CONTROL_STOP_ISA_CATEGORY*>(val);

        // Notify the parent
        ci->_controlHandler(CONTROL_STOP, ci->_controlVal, ctxt, ip, tid);
    }
    
    CONTROL_ARGS _control_args;
    KNOB<string> _stopISACategory;

    ALARM_ISA_CATEGORY * _ISACategoryAlarm[MAX_START_STOP];

    CONTROL_HANDLER _controlHandler;
    VOID * _controlVal;
};



#endif

/*! @defgroup CONTROLLER_STOP_ADDRESS
  @ingroup CONTROLLER
  Controller for detecting the end of an interval using an address or symbol and a count
  Use -stop_address [address|address:count|symbol|symbol:count|address:count]
*/

/*! @ingroup CONTROLLER_STOP_ADDRESS
*/
class CONTROL_STOP_ADDRESS
{
  public:
    CONTROL_STOP_ADDRESS(CONTROL_ARGS & control_args)
        : _control_args(control_args),
          _stopAddress(KNOB_MODE_APPEND, 
                       control_args.get_knob_family(),
                       "stop_address", 
                       "",
                       "Address and count to trigger a stop (e.g. 0x400000,"
                       "main, memcpy:2, /lib/tls/libc.so.6+0x1563a:1)",
                       control_args.get_prefix()),
         _numStops(0)
    {
        for (UINT32 i = 0; i < MAX_START_STOP; i++)
        {
             _count[i] = 0;
             _always_enabled[i] = 0;
             _rearm[i] = 0;
             _tid[i] = 0;
             _addressAlarm[i] = NULL;
             _symbolAlarm[i] = NULL;
             _image_offset_Alarm[i] = NULL;
        }
    }
    
    /*! @ingroup CONTROLLER_STOP_ADDRESS
      Activate the controller if the -stop_address knob is provided
      @return 1 if controller can start an interval, otherwise 0
    */
    INT32 Activate(CONTROL_HANDLER ch, VOID * val, BOOL passContext)
    {
        _numStops = _stopAddress.NumberOfValues();
        if (_numStops == 0)
            return 0;

        ASSERT(_numStops <= MAX_START_STOP, 
               "Maximum number of stop_address specifications cannot exceed " +
               decstr(MAX_START_STOP)+"\n");

        for (UINT32 i = 0; i < _numStops; i++)
        {

            ADDRESS_COUNT  addressCount = ParseAddressCount(_stopAddress.Value(i));
            _count[i] = addressCount.count;
            _rearm[i] = addressCount.rearm;
            _always_enabled[i] = addressCount.always_enabled;
            _tid[i] =  addressCount.tid;

            if (addressCount.name != "")
            {
             if(addressCount.offset == 0)
             {
                _symbolAlarm[i] = 
                    new ALARM_SYMBOL_COUNT(passContext,
                                           _control_args.get_instrument_order());

                _symbolAlarm[i]->Activate(addressCount.name.c_str());
                _symbolAlarm[i]->SetAlarm(_count[i], Stop, this, 
                                       _tid[i],
                                       _rearm[i], _always_enabled[i]);
             }
             else
             {
#if defined(DEBUG_CONTROLLER)
                cerr << "Stop: " << i << ": Image " << addressCount.name
                     << " Offset:0x" << hex << addressCount.offset
                     << " Count: " << dec << _count[i] << endl;
#endif
                _image_offset_Alarm[i] = 
                    new ALARM_IMAGE_OFFSET_COUNT(passContext,
                                                 _control_args.get_instrument_order());

                _image_offset_Alarm[i]->Activate(addressCount.name.c_str(), 
                                              addressCount.offset);
                _image_offset_Alarm[i]->SetAlarm(_count[i], Stop, this, _tid[i],
                                              _rearm[i], _always_enabled[i]);
             }
         }
         else
         {
#if defined(DEBUG_CONTROLLER)
                cerr << "Stop: " << i << ": Address: 0x" << hex << addressCount.address
                     << " Count: " << dec << _count[i] << endl;
#endif
                _addressAlarm[i] = 
                    new ALARM_ADDRESS_COUNT(passContext,
                                            _control_args.get_instrument_order());

                _addressAlarm[i]->Activate(addressCount.address);
                _addressAlarm[i]->SetAlarm(_count[i], Stop, this, _tid[i],
                                        _rearm[i], _always_enabled[i]);
         }
        }

        _controlHandler = ch;
        _controlVal = val;

        return 0;
    }

  private:
    static VOID Stop(VOID * val, CONTEXT * ctxt, VOID * ip, THREADID tid)
    {
        CONTROL_STOP_ADDRESS * cs = static_cast<CONTROL_STOP_ADDRESS*>(val);

        // Notify the parent
        cs->_controlHandler(CONTROL_STOP, cs->_controlVal, ctxt, ip, tid);
    }

    CONTROL_ARGS _control_args;
    KNOB<string> _stopAddress;
    UINT32 _numStops;

    UINT64 _count[MAX_START_STOP];
    BOOL _always_enabled[MAX_START_STOP];
    BOOL _rearm[MAX_START_STOP];
    THREADID _tid[MAX_START_STOP];
    ALARM_ADDRESS_COUNT * _addressAlarm[MAX_START_STOP];
    ALARM_SYMBOL_COUNT * _symbolAlarm[MAX_START_STOP];
    ALARM_IMAGE_OFFSET_COUNT * _image_offset_Alarm[MAX_START_STOP];

    CONTROL_HANDLER _controlHandler;
    VOID * _controlVal;
};

/*! @defgroup CONTROLLER_STOP_ADDRESS_RELATIVE
  @ingroup CONTROLLER
  Controller for detecting the end of an interval using an address or symbol and a count *relative to the last START event*
  Use -stop_address_relative [address|address:count|symbol|symbol:count|address:count]
*/

/*! @ingroup CONTROLLER_STOP_ADDRESS_RELATIVE
*/
class CONTROL_STOP_ADDRESS_RELATIVE
{
  public:
    CONTROL_STOP_ADDRESS_RELATIVE(CONTROL_ARGS & control_args)
        : _control_args(control_args),
          _stopAddress_relative(KNOB_MODE_WRITEONCE, 
                                control_args.get_knob_family(),
                                "stop_address_relative", 
                                "",
                                "Address and count to trigger[after a START]  "
                                "a stop (e.g. 0x400000, main, memcpy:2, "
                                "/lib/tls/libc.so.6+0x1563a:1)",
                                control_args.get_prefix()),
         _knob_specified(0),
         _addressAlarm(0),
         _symbolAlarm(0),
         _image_offset_Alarm(0)
    {
    }
    
    /*! @ingroup CONTROLLER_STOP_ADDRESS_RELATIVE
      Activate the controller if the -stop_address knob is provided
      @return 1 if controller can start an interval, otherwise 0
    */
    INT32 Activate(CONTROL_HANDLER ch, VOID * val, BOOL passContext)
    {
        if(_stopAddress_relative.Value() == "") return 0;

        ADDRESS_COUNT  addressCount = ParseAddressCount(_stopAddress_relative);
        _count = addressCount.count;
        _rearm = addressCount.rearm;
        _always_enabled = addressCount.always_enabled;
        _tid =  addressCount.tid;

        if (addressCount.name != "")
        {
            _knob_specified = TRUE;
             if(addressCount.offset == 0)
             {
                _symbolAlarm = 
                    new ALARM_SYMBOL_COUNT(passContext,
                                           _control_args.get_instrument_order());

                _symbolAlarm->Activate(addressCount.name.c_str());
             }
             else
             {
#if defined(DEBUG_CONTROLLER)
                cerr << "Stop: " << i << ": Image " << addressCount.name
                     << " Offset:0x" << hex << addressCount.offset
                     << " Count: " << dec << _count[i] << endl;
#endif
                _image_offset_Alarm = 
                    new ALARM_IMAGE_OFFSET_COUNT(passContext,
                                                 _control_args.get_instrument_order());
                 
                _image_offset_Alarm->Activate(addressCount.name.c_str(), 
                                              addressCount.offset);
             }
         }
         else
         {
             _knob_specified = TRUE;
#if defined(DEBUG_CONTROLLER)
                cerr << "Stop: " << i << ": Address: 0x" << hex << addressCount.address
                     << " Count: " << dec << _count << endl;
#endif
             _addressAlarm = 
                    new ALARM_ADDRESS_COUNT(passContext,
                                            _control_args.get_instrument_order());

             _addressAlarm->Activate(addressCount.address);
         }
        _controlHandler = ch;
        _controlVal = val;

        return 0;
    };
    /*! @ingroup CONTROLLER_STOP_ADDRESS_RELATIVE
      Notify the controller about an event.  If the event is a START, this controller sets the address count alarm making the counting relative to the START event.
    */
    VOID Event(CONTROL_EVENT ev)
    {
        // If no stop_address_relative knob was specified, take no action
        if(!_knob_specified) return;
        switch(ev)
        {
          case CONTROL_START:
            if (_symbolAlarm)
                _symbolAlarm->SetAlarm(_count, Stop, this, 
                                       _tid,
                                       _rearm, _always_enabled);
            else if (_addressAlarm)
                _addressAlarm->SetAlarm(_count, Stop, this, _tid,
                                        _rearm, _always_enabled);
            else if (_image_offset_Alarm)
                _image_offset_Alarm->SetAlarm(_count, Stop, this, _tid,
                                              _rearm, _always_enabled);
            break;

          default:
            break;
        }
    };

  private:
    static VOID Stop(VOID * val, CONTEXT * ctxt, VOID * ip, THREADID tid)
    {
        CONTROL_STOP_ADDRESS_RELATIVE * cs = static_cast<CONTROL_STOP_ADDRESS_RELATIVE*>(val);

        // Notify the parent
        cs->_controlHandler(CONTROL_STOP, cs->_controlVal, ctxt, ip, tid);
    };

    CONTROL_ARGS _control_args;
    KNOB<string> _stopAddress_relative;
    BOOL _knob_specified;

    UINT64 _count;
    BOOL _always_enabled;
    BOOL _rearm;
    THREADID _tid;
    ALARM_ADDRESS_COUNT * _addressAlarm;
    ALARM_SYMBOL_COUNT * _symbolAlarm;
    ALARM_IMAGE_OFFSET_COUNT * _image_offset_Alarm;

    CONTROL_HANDLER _controlHandler;
    VOID * _controlVal;
};

////////////////////////////////////////////////////////////////////////////

////////////////////////////////////////////////////////////////////////////

/*! @defgroup CONTROLLER_FINI
  @ingroup CONTROLLER
  Controller ends interval when program exits, not controlled by a switch
*/

/*! @ingroup CONTROLLER_FINI
*/
class CONTROL_FINI
{
  public:
    CONTROL_FINI()
    {}
    
    /*! @ingroup CONTROLLER_FINI
      Always active, sends stop at the fini if we are in an interval
      @return 1 if controller can start an interval, otherwise 0
    */
    INT32 Activate(CONTROL_HANDLER ch, VOID * val)
    {
        _controlHandler = ch;
        _controlVal = val;

        PIN_AddFiniFunction(Fini, this);
        return 0;
    }

    /*! @ingroup CONTROLLER_FINI
      Notify the controller about a start event.
    */
    VOID Event(CONTROL_EVENT ev)
    {
        _ev = ev;
    }
            
  private:
    static VOID Fini(INT32 code, VOID * val)
    {
        CONTROL_FINI * cs = static_cast<CONTROL_FINI*>(val);

        // If we are in an interval, end it
        if (cs->_ev == CONTROL_START)
            cs->_controlHandler(CONTROL_STOP, cs->_controlVal, NULL, NULL, 0);

    }
    
    CONTROL_EVENT _ev;

    CONTROL_HANDLER _controlHandler;
    VOID * _controlVal;
};

/*! @defgroup CONTROLLER_SKIP
  @ingroup CONTROLLER
  Controller for counting instructions to skip before beginning an interval.
  Use -skip <n> to skip n instructions before starting an interval.
*/

/*! @ingroup CONTROLLER_SKIP
*/
class CONTROL_SKIP
{
  public:
    CONTROL_SKIP(CONTROL_ARGS & control_args)
        : _skipKnob(KNOB_MODE_WRITEONCE,
                    control_args.get_knob_family(),
                    "skip",
                    "",
                    "Number of instructions to skip from beginning",
                    control_args.get_prefix()),
          _control_args(control_args),
          _alarmIcount(0)
    {}
    
    /*! @ingroup CONTROLLER_SKIP
      Activate the controller if the -skip knob is provided
      @return true if controller can start an interval
    */
    INT32 Activate(CONTROL_HANDLER ch, VOID * val, BOOL passContext)
    {
        _controlHandler = ch;
        _controlVal = val;
        
        if (_skipKnob.Value() == "")
            return 0;
        ADDRESS_COUNT ac = ParseCount(_skipKnob.Value().c_str() );
        _skip = ac.count;
        _tid = ac.tid;

        _alarmIcount = 
            new ALARM_ICOUNT(passContext,
                             _control_args.get_instrument_order());

        _alarmIcount->Activate();
        _alarmIcount->SetAlarm(_skip, Start, this, _tid);
        return 1;
    }

  private:
    static VOID Start(VOID * val, CONTEXT * ctxt, VOID * ip, THREADID tid)
    {
        CONTROL_SKIP * cs = static_cast<CONTROL_SKIP*>(val);

        // Notify the parent
        cs->_controlHandler(CONTROL_START, cs->_controlVal, ctxt, ip, tid);
    }
   
    KNOB<string> _skipKnob;
    CONTROL_ARGS _control_args;
    UINT64 _skip;
    THREADID _tid;
    ALARM_ICOUNT *_alarmIcount;
    CONTROL_HANDLER _controlHandler;
    VOID * _controlVal;
};

/*! @defgroup CONTROLLER_UNIFORM
  @ingroup CONTROLLER
  Controller for periodically counting instructions to skip before 
  beginning an interval.
  Use -uniform_period <n> to skip n instructions before starting an interval.
  Use -uniform_period_tid <t> to skip n instructions from thread t starting an
  interval
  Use -uniform_length <m> to end  the interval after m instructions.
  Use -uniform_length_tid <t> to end the interval after m instruction from thread t
*/

/*! @ingroup CONTROLLER_SKIP
*/
class CONTROL_UNIFORM
{
  public:
    CONTROL_UNIFORM(CONTROL_ARGS & control_args) 
        : _periodKnob(KNOB_MODE_WRITEONCE,
                      control_args.get_knob_family(),
                      "uniform_period",
                      "",
                      "Number of instructions to skip periodically",
                      control_args.get_prefix()),
          _lengthKnob(KNOB_MODE_WRITEONCE,
                      control_args.get_knob_family(),
                      "uniform_length",
                      "",
                      "Number of instructions to capture periodically",
                      control_args.get_prefix()),
          _skipKnob(KNOB_MODE_WRITEONCE,
                    control_args.get_knob_family(),
                    "uniform_skip",
                    "",
                    "Number of skip before uniform sampling starts. ",
                    control_args.get_prefix()),
          _countKnob(KNOB_MODE_WRITEONCE,
                     control_args.get_knob_family(),
                     "uniform_count",
                     "",
                     "Number of uniform samples to trigger. ",
                     control_args.get_prefix()),
          _period(0),
          _length(0),
          _skip(0),
          _sample_count(0),
          _period_tid(PIN_CONTROLLER_ALL_TIDS),
          _length_tid(PIN_CONTROLLER_ALL_TIDS),
          _control_args(control_args),
          _alarmPeriodIcount(0),
          _alarmLengthIcount(0),
          _alarmSkipIcount(0)
    {}
    
    /*! @ingroup CONTROLLER_UNIFORM
      Activate the controller if the -uniform_period  knob is provided
      @return true if controller can start an interval
    */
    INT32 Activate(CONTROL_HANDLER ch, VOID * val, BOOL passContext)
    {
        _controlHandler = ch;
        _controlVal = val;
        
        if (_periodKnob.Value() == "" && 
            _lengthKnob.Value() == "")
            return 0;
        
        _alarmPeriodIcount =  
            new ALARM_ICOUNT(passContext,
                             _control_args.get_instrument_order());
        
        _alarmLengthIcount =  
            new ALARM_ICOUNT(passContext,
                             _control_args.get_instrument_order());
        _alarmSkipIcount   =  
            new ALARM_ICOUNT(passContext,
                             _control_args.get_instrument_order());

        ADDRESS_COUNT lac = ParseCount(_lengthKnob.Value().c_str() );
        _length = lac.count;
        _length_tid = lac.tid;
        ADDRESS_COUNT pac = ParseCount(_periodKnob.Value().c_str() );
        _period = pac.count;
        _period_tid = pac.tid;
        if(_skipKnob.Value() != "")
        {
            ADDRESS_COUNT sac = ParseCount(_skipKnob.Value().c_str() );
            _skip = sac.count;
            _skip_tid = sac.tid;
            _skip_active = true;
        }
        else
        {
            _skip = 0;
            _skip_active = false;
        }
        if(_countKnob.Value() != "")
        {
            ADDRESS_COUNT cac = ParseCount(_countKnob.Value().c_str() );
            _count = cac.count;
        }
        else
        {
            // no count knob specified
            _count = (UINT64)-1; // Infinity
        }

        /* FIXME is it valid for the  length and period TIDs to be different? */

        if ( _period <= _length )
        {
            cerr << "Uniform period (" << _period << ") must be greater than uniform length (" 
                 << _length << ")" << endl;
            ASSERTX(0);
        }
        _active = true;
        _alarmPeriodIcount->Activate();
        _alarmLengthIcount->Activate();
        _alarmSkipIcount->Activate();
        if(_skip_active)
        {
            _alarmSkipIcount->SetAlarm(_skip, Start, this, _skip_tid);
        }
        else
        {
            _alarmPeriodIcount->SetAlarm(_period, Start, this, _period_tid);
        }
        return 1;
    }
    bool IsActive() const { return _active; };
    THREADID PeriodTid() const { return _period_tid;};
    THREADID LengthTid() const { return _length_tid;};
    BOOL IsDone() const { return _sample_count==_count; };

  private:
    static VOID Start(VOID * val, CONTEXT * ctxt, VOID * ip, THREADID tid)
    {
        CONTROL_UNIFORM * cu = static_cast<CONTROL_UNIFORM*>(val);

        if(cu->_sample_count < cu->_count)
        {
            // Set alarm for the beginning of the first/next interval
            cu->_alarmPeriodIcount->SetAlarm(cu->_period, Start, val, cu->_period_tid);
            if(cu->_skip_active)
            {
                cu->_skip_active = false;
                // This was a Start event at the end of Skip and we ignore it. 
                // Uniform sampling is now beginning. Do not notify
                // parent. Also do not start a length alarm. 
            }
            else
            {
                // Set alarm for the end of this interval
                cu->_alarmLengthIcount->SetAlarm(cu->_length, Stop, val, cu->_length_tid);
                // Notify the parent
                cu->_controlHandler(CONTROL_START, cu->_controlVal, ctxt, ip, tid);
            }
        }
    }
    static VOID Stop(VOID * val, CONTEXT * ctxt, VOID * ip, THREADID tid)
    {
        CONTROL_UNIFORM * cu = static_cast<CONTROL_UNIFORM*>(val);

        cu->_sample_count++;
        cu->_controlHandler(CONTROL_STOP, cu->_controlVal, ctxt, ip, tid);
    }
    
    KNOB<string> _periodKnob;
    KNOB<string> _lengthKnob;
    KNOB<string> _skipKnob;
    KNOB<string> _countKnob;
    CONTROL_HANDLER _controlHandler;
    VOID * _controlVal;
    bool _active;
    bool _skip_active;
    UINT64 _period;
    UINT64 _length;
    UINT64 _skip;
    UINT64 _count;
    UINT64 _sample_count;
    THREADID _period_tid;
    THREADID _length_tid;
    THREADID _skip_tid;
    CONTROL_ARGS _control_args;
    ALARM_ICOUNT *_alarmPeriodIcount;
    ALARM_ICOUNT *_alarmLengthIcount;
    ALARM_ICOUNT *_alarmSkipIcount;
};

/*! @defgroup CONTROLLER_INIT
  @ingroup CONTROLLER
  Controller for unconditionally starting at the beginning
*/

/*! @ingroup CONTROLLER_INIT
*/
class CONTROL_INIT
{
  public:
    CONTROL_INIT(CONTROL_ARGS & control_args)
                 
        : _first(true), _control_args(control_args)
    { }

    /*! @ingroup CONTROLLER_INIT
      Activate unconditionally
      @return true if controller can start an interval
    */
    INT32 Activate(CONTROL_HANDLER ch, VOID * val, BOOL passContext)
    {
        _controlHandler = ch;
        _controlVal = val;
        _passContext = passContext;
        TRACE_AddInstrumentFunction(OnTrace, this);
#ifdef TARGET_LINUX
        PIN_AddForkFunction(FPOINT_AFTER_IN_CHILD, AfterForkInChildCallback,  (VOID *)this);
#endif
        return 1;
    }

  private:
    static VOID OnTrace(TRACE trace, VOID *vthis)
    {
        CONTROL_INIT *me = static_cast<CONTROL_INIT*>(vthis);

        // Add an instrumentation point to the very first instruction.
        if (me->_first)
        {
            INS firstIns = BBL_InsHead(TRACE_BblHead(trace));
            if (me->_passContext)
            {
                INS_InsertCall(
                    firstIns, IPOINT_BEFORE, AFUNPTR(Start),
                    IARG_CALL_ORDER, me->_control_args.get_instrument_order(),
                    IARG_CONTEXT, IARG_INST_PTR,
                    IARG_THREAD_ID, IARG_PTR, me, IARG_END);
            }
            else
            {
                INS_InsertCall(
                    firstIns, IPOINT_BEFORE, AFUNPTR(Start),
                    IARG_CALL_ORDER, me->_control_args.get_instrument_order(),
                    IARG_PTR, static_cast<VOID *>(0), IARG_INST_PTR,
                    IARG_THREAD_ID, IARG_PTR, me, IARG_END);
            }
            me->_first = false;
        }
    }

#ifdef TARGET_LINUX
    // After fork() the child inherits all the data structures from the parent
    // so we need to reset the "_first" flag.
    static VOID AfterForkInChildCallback(THREADID tid, const CONTEXT* ctxt, VOID * arg)
    {
        CONTROL_INIT *me = static_cast<CONTROL_INIT*>(arg);
        me->_first = TRUE;
    }
#endif

    static VOID Start(CONTEXT *ctxt, ADDRINT ip, THREADID tid, VOID *vthis)
    {
        CONTROL_INIT *me = static_cast<CONTROL_INIT*>(vthis);
        me->_controlHandler(CONTROL_START, me->_controlVal, ctxt, reinterpret_cast<VOID *>(ip), tid);

        // We want to call the handler exactly once.  Invalidate the trace to prevent it from being called
        // again even if the program's first instruction is re-executed.
        CODECACHE_InvalidateTraceAtProgramAddress(ip);
    }

    BOOL _first;
    CONTROL_ARGS _control_args;
    CONTROL_HANDLER _controlHandler;
    VOID * _controlVal;
    BOOL _passContext;
};

#include "regions_control.H"

/*! @defgroup CONTROLLER_MULTI
  @ingroup CONTROLLER

  Controller that includes controllers for -skip -length -start_address -stop_address
  See @ref CONTROLLER_LENGTH, @ref CONTROLLER_SKIP, @ref CONTROLLER_START_ADDRESS, @ref CONTROLLER_STOP_ADDRESS, @ref CONTROLLER_UNIFORM,
*/

/*! @ingroup CONTROLLER_MULTI
*/
class CONTROL
{
  public:
    /*! @ingroup CONTROLLER_MULTI
      Open outstream
    */
    CONTROL(const string & prefix = "",
            string knob_family = "pintool:control",
            string knob_family_description = "Controller knobs",
            UINT32 instrument_order = CALL_ORDER_DEFAULT,
            BOOL activateInitIfNone = CONTROL_ACTIVATE_INIT)
        : _controller_knob_family(knob_family, knob_family_description),
          _outKnob(KNOB_MODE_WRITEONCE,
                   knob_family,
                   "control_log",
                   "",
                   "log file for start/stop conditions",
                   prefix
          ),
         _pintoolKnob(KNOB_MODE_WRITEONCE, 
                      knob_family,
                      "pintool_control", 
                      "",
                      "start/stop provided by pintool", 
                      prefix),
          _control_args(prefix, knob_family, instrument_order),
          _default_start_thread(false),
          _init(_control_args),
          _length(_control_args),
          _skip(_control_args),
          _startAddress(_control_args),
          _startTID(_control_args),
#if defined(TARGET_IA32) || defined(TARGET_IA32E)
          _startInt3(_control_args),
          _stopInt3(_control_args),
          _startItext(_control_args),
          _stopItext(_control_args),
          _startSscmark(_control_args),
          _stopSscmark(_control_args),
          _startISAExtension(_control_args),
          _startISACategory(_control_args),
          _stopISAExtension(_control_args),
          _stopISACategory(_control_args),
#endif
          _stopAddress(_control_args),
          _stopAddress_relative(_control_args),
          _uniform(_control_args),
          _activateInitIfNone(activateInitIfNone),
          _iregions(_control_args)
    {
        _first_init=1;
        _old_start=0;
    }
    /* 
     * register tool handler to controller
     * ch - function to call when event triggers 
     * val - argument to pass for the called function
     * passContext - context's necessity in the called function
    */
    VOID RegisterHandler(CONTROL_HANDLER ch, VOID* val, BOOL passContext) 
    {
        CONTROL_HANDLER_PARAMS params;
        params.handler = ch;
        params.val = val;
        params.passContext = passContext;
        _controlHandler.push_back(params);
    }
    /*! @ingroup CONTROLLER_MULTI
     *  Activate all the component controllers
     *
     *  activateInitIfNone - activate the CONTROL_INIT member if no other
     *  control is activated explicitly (i.e. thru knobs)
    */
    INT32 Activate() 
    {
        // context passing/not passing is global 
        BOOL passContextAll = shouldPassContext();

        if (_first_init == 0)
            return _old_start;
        _first_init = 0;

        /* only do the rest of this ONE TIME */
        
        string filename =  _outKnob.Value();

        if (filename != "")
        {
            _outstream = new ofstream(filename.c_str());
            _outstream->setf(ios::showbase);
        }

        // All the controllers call back via our LocalHandler -- 
        // which calls back to the
        // pintool which created this controller.
        // Only start controllers return 1. Others return 0.
        INT32 start = 0;
        start = start + _skip.Activate(LocalHandler, this, passContextAll);
        start = start + _length.Activate(LocalHandler, this , passContextAll);
        start = start + _startAddress.Activate(LocalHandler, 
                                               this,
                                               passContextAll);
        start = start + _startTID.Activate(LocalHandler, this, passContextAll);
#if defined(TARGET_IA32) || defined(TARGET_IA32E)
        start = start + _startInt3.Activate(LocalHandler, this, passContextAll);
        start = start + _stopInt3.Activate(LocalHandler, this, passContextAll);
        start = start + _startItext.Activate(LocalHandler, 
                                             this,
                                             passContextAll);
        start = start + _stopItext.Activate(LocalHandler, this, passContextAll);
        start = start + _startSscmark.Activate(LocalHandler, 
                                               this,
                                               passContextAll);
        start = start + _stopSscmark.Activate(LocalHandler, 
                                              this,
                                              passContextAll);
        start = start + _startISAExtension.Activate(LocalHandler, 
                                                    this,
                                                    passContextAll);
        start = start + _startISACategory.Activate(LocalHandler, 
                                                   this,
                                                   passContextAll);
        start = start + _stopISAExtension.Activate(LocalHandler, 
                                                   this,
                                                   passContextAll);
        start = start + _stopISACategory.Activate(LocalHandler, 
                                                  this,
                                                  passContextAll);
#endif
        start = start + _stopAddress.Activate(LocalHandler, 
                                              this,
                                              passContextAll);
        start = start + _stopAddress_relative.Activate(LocalHandler, 
                                                       this,
                                                       passContextAll);

        INT32 rstart = 0;
        rstart = _iregions.Activate(LocalHandler, this, passContextAll);
        
        
        if (rstart)
        {
            if(start)
            {
                cerr << "Can not combine regions with any other controller!" << endl;
                ASSERTX(0);
            }
            else 
                start = rstart;
        } 


        INT32 ustart = 0;
        ustart = _uniform.Activate(LocalHandler, this, passContextAll);
        if ( ustart )
        {
            if(start)
            {
                cerr << "Can not combine uniform with any other controller!" << endl;
                ASSERTX(0);
            } 
            else 
                start = ustart;
        }

        // Pintool controls start/stop, no other control knob can be provided
        if (_pintoolKnob)
        {
            if(start)
            {
                cerr << "Can not 'pintool_control' with any other controller!" << endl;
                ASSERTX(0);
            }
            start = 1;
        }

        // If none of the controllers has a start condition, then start immediately
        if ((start == 0) && _activateInitIfNone)
        {
            _default_start_thread = true;
            start = start + _init.Activate(LocalHandler, this, passContextAll);
        }
        // Always add fini handler for the end of the run
        start = start + _fini.Activate(LocalHandler, this);

        _old_start = start;
        return start;
    }

#if defined(TARGET_IA32) || defined(TARGET_IA32E)
    bool StartInt3Active() const { return _startInt3.IsActive(); };
    bool StopInt3Active() const { return _stopInt3.IsActive(); };

    bool StartItextActive() const { return _startItext.IsActive(); };
    bool StopItextActive() const { return _stopItext.IsActive(); };

    bool StartSscmarkActive() const { return _startSscmark.IsActive(); };
    bool StopSscmarkActive() const { return _stopSscmark.IsActive(); };

    bool StartISAExtensionActive() const { return _startISAExtension.IsActive(); };
    bool StartISACategoryActive() const { return _startISACategory.IsActive(); };
    bool StopISAExtensionActive() const { return _stopISAExtension.IsActive(); };
    bool StopISACategoryActive() const { return _stopISACategory.IsActive(); };
#endif
    bool StartAddressActive() const { return _startAddress.IsActive(); }
    bool StartTIDActive()     const { return _startTID.IsActive(); }

    bool IregionsActive() const { return _iregions.IsActive(); }
    bool UniformActive() const { return _uniform.IsActive(); };
    bool UniformIsDone() const { return _uniform.IsDone(); };
    BOOL PintoolControlEnabled() const { return _pintoolKnob; };
    IREGION * CurrentIregion(THREADID tid=0) const { return _iregions.LastTriggeredRegion(tid); };
    THREADID GetUniformPeriodTid() const { return _uniform.PeriodTid(); };
    THREADID GetUniformLengthTid() const { return _uniform.LengthTid(); };

    /* return 1 if the threads should start by default. The controller
     * currently starts thread 0 in this case, legacy. */
    BOOL DefaultStartThread() { return  _default_start_thread; }

    /*! @ingroup CONTROLLER_MULTI
     *  Trigger the specified event
     *
     *  @param[in] ev       Event to trigger
     *  @param[in] ctxt     Application CONTEXT at the point of the trigger. 
     *  @param[in] ip       Application instruction pointer at the point of 
     *                      the trigger. 
     *  @param[in] tid      Thread id 
     *
    */
    VOID PintoolControl(CONTROL_EVENT ev, CONTEXT * ctxt, VOID * ip, THREADID tid)
    {
        // Notify the parents
        list<CONTROL_HANDLER_PARAMS>::iterator it =
            _controlHandler.begin();
        for (; it != _controlHandler.end(); it++) 
            it->handler(ev, it->val, ctxt, ip, tid);
    }

  private:
    // passContext is a global decision
    // return true if any handler requires context 
    bool shouldPassContext() {
        list<CONTROL_HANDLER_PARAMS>::iterator it =
           _controlHandler.begin();
        for (; it != this->_controlHandler.end(); it++)
            if (it->passContext)
                return true;
        return false;        
    }
    static VOID LocalHandler(CONTROL_EVENT ev, VOID * val, CONTEXT * ctxt, VOID * ip, THREADID tid)
    {
        CONTROL * control = static_cast<CONTROL*>(val);

        // Notify all interested controls about this event
        control->_length.Event(ev); // to begin length counting 
        control->_stopAddress_relative.Event(ev); // to begin address counting 
        control->_fini.Event(ev);

        // Notify the parents
        list<CONTROL_HANDLER_PARAMS>::iterator it =
            control->_controlHandler.begin();
        for (; it != control->_controlHandler.end(); it++)
            it->handler(ev, it->val, ctxt, ip, tid);
    }

    KNOB_COMMENT _controller_knob_family;
    KNOB<string> _outKnob;
    KNOB<BOOL> _pintoolKnob;
    ofstream * _outstream;

    list<CONTROL_HANDLER_PARAMS> _controlHandler;
    CONTROL_ARGS _control_args;
    BOOL _default_start_thread;
    CONTROL_INIT _init;
    CONTROL_FINI _fini;
    CONTROL_LENGTH _length;
    CONTROL_SKIP _skip;
    CONTROL_START_ADDRESS _startAddress;
    CONTROL_START_THREADID _startTID;
#if defined(TARGET_IA32) || defined(TARGET_IA32E)
    CONTROL_START_INT3 _startInt3;
    CONTROL_STOP_INT3 _stopInt3;

    CONTROL_START_ITEXT _startItext;
    CONTROL_STOP_ITEXT _stopItext;

    CONTROL_START_SSCMARK _startSscmark;
    CONTROL_STOP_SSCMARK _stopSscmark;

    CONTROL_START_ISA_EXTENSION _startISAExtension;
    CONTROL_START_ISA_CATEGORY _startISACategory;
    CONTROL_STOP_ISA_EXTENSION _stopISAExtension;
    CONTROL_STOP_ISA_CATEGORY _stopISACategory;
#endif
    CONTROL_STOP_ADDRESS _stopAddress;
    CONTROL_STOP_ADDRESS_RELATIVE _stopAddress_relative;
    CONTROL_UNIFORM _uniform;
    BOOL _activateInitIfNone; 
    CONTROL_IREGIONS _iregions;

    /* avoid reinitialization */
    int _first_init;
    /* remember the value from the first invocation */
    int _old_start;

};
} //namespace
#endif
