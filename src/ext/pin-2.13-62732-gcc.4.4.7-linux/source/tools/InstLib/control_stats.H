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
#ifndef CONTROL_STATS_H
#define CONTROL_STATS_H


namespace INSTLIB 
{
/*! @defgroup CONTROLLER_STATS

 This controls the emitting and reset of stats. It can be used in
 conjunction with a controller from Instlib/control.H.

*/

/*! @ingroup CONTROLLER_STATS
  Event that is passed to handler when controller detects the beginning or end of an interval
*/
typedef enum 
{
    CONTROL_STATS_INVALID,
    CONTROL_STATS_EMIT, ///< Emit stats
    CONTROL_STATS_RESET ///< Zero stats
} CONTROL_STATS_EVENT;

/*! @ingroup CONTROLLER_STATS
  Type for generic event handler
*/

typedef VOID (*CONTROL_STATS_HANDLER)(CONTROL_STATS_EVENT, VOID*, CONTEXT*, VOID *, THREADID tid);

//#define DEBUG_STATS_CONTROLLER
/*! @defgroup CONTROLLER_STATS_EVENT_ADDRESS
  @ingroup CONTROLLER
  Controller for detecting address or symbol and a count and a generic simple event.
  Use -stop_address [address|address:count|symbol|symbol:count|address:count]
*/

/*! @ingroup CONTROLLER_STATS_EVENT_ADDRESS 

The address specified for a stats controller can be a hex address, a
symbol, a symbol with an occurence-count, an offset in an image, It can
also have the :rearm qualifier which causes the alarm to rearm itself after
event occurs.
*/
class CONTROL_STATS_EVENT_ADDRESS
{
  public:
    CONTROL_STATS_EVENT_ADDRESS(CONTROL_STATS_EVENT ev,
                                const string& knob_name,
                                const string& knob_family="pintool:control") 
        : _event(ev),
          _interestingAddress(KNOB_MODE_WRITEONCE, 
                              knob_family,
                              knob_name,
                              "0", 
                              "Address and count to trigger an event (e.g. 0x400000, main, memcpy:2, /lib/tls/libc.so.6+0x1563a:1, emit_marker:rearm:always)"),
          _addressAlarm(0),
          _symbolAlarm(0)
    {
    }
    
    /*! @ingroup CONTROLLER_STATS_EVENT_ADDRESS
      Activate the controller if the -address  knob is provided
      @return 0
    */
    INT32 CheckKnobs(CONTROL_STATS_HANDLER ch, VOID * val)
    {
        if (_interestingAddress.Value() == "0")
            return 0;

        ADDRESS_COUNT  addressCount = ParseAddressCount(_interestingAddress);
        _count = addressCount.count;
        
        if (addressCount.name != "")
        {
            if(addressCount.offset == 0)
            {
                _symbolAlarm = new ALARM_SYMBOL_COUNT;
                _symbolAlarm->Activate(addressCount.name.c_str());
                _symbolAlarm->SetAlarm(_count, EventCallback, this, 
                                       addressCount.tid,
                                       addressCount.rearm, addressCount.always_enabled);
            }
            else
            {
#if defined(DEBUG_STATS_CONTROLLER)
                cerr << "Image " << addressCount.name << " Offset:0x"
                     << hex << addressCount.offset << " Count: " << dec << _count << endl;
#endif
                _image_offset_Alarm = new ALARM_IMAGE_OFFSET_COUNT;
                _image_offset_Alarm->Activate(addressCount.name.c_str(), addressCount.offset);
                _image_offset_Alarm->SetAlarm(_count, EventCallback, this, 
                                              addressCount.tid,
                                              addressCount.rearm, addressCount.always_enabled);
            }
        }
        else
        {
#if defined(DEBUG_STATS_CONTROLLER)
                cerr << "Address: 0x" << addressCount.address << " Count: " << dec << _count << endl;
#endif
                _addressAlarm = new ALARM_ADDRESS_COUNT;
                _addressAlarm->Activate(addressCount.address);
                _addressAlarm->SetAlarm(_count, EventCallback, this,
                                        addressCount.tid,
                                        addressCount.rearm, addressCount.always_enabled);
        }

        _controlHandler = ch;
        _controlVal = val;

        return 0;
    }
            
  private:
    static VOID EventCallback(VOID * val, CONTEXT* dummy_context, VOID * ip, THREADID tid)
    {
        CONTROL_STATS_EVENT_ADDRESS * cs = static_cast<CONTROL_STATS_EVENT_ADDRESS*>(val);

        // Notify the parent
        cs->_controlHandler(cs->_event, cs->_controlVal, dummy_context, ip, tid);
    }
    
    CONTROL_STATS_EVENT _event;
    KNOB<string> _interestingAddress;

    UINT64 _count;
    ALARM_ADDRESS_COUNT * _addressAlarm;
    ALARM_SYMBOL_COUNT * _symbolAlarm;
    ALARM_IMAGE_OFFSET_COUNT * _image_offset_Alarm;

    CONTROL_STATS_HANDLER _controlHandler;
    VOID * _controlVal;
};

////////////////////////////////////////////////////////////////////////////

/*! @defgroup CONTROLLER_MULTI_STATS
  @ingroup CONTROLLER_STATS

  Controller for stats that has a -emit_stats_address and a -zero_stats_address option
  See @ref CONTROLLER_STATS_EVENT_ADDRESSS .

*/

/*! @ingroup CONTROLLER_MULTI_STATS
*/
class CONTROL_STATS
{
  public:
    /*! @ingroup CONTROLLER_MULTI_STATS
      Open outstream
    */
    CONTROL_STATS(const string& prefix = "", const string& knob_family="pintool:control")
        : _zeroStatsAddress(CONTROL_STATS_RESET, prefix+"zero_stats_address", knob_family),
          _emitStatsAddress(CONTROL_STATS_EMIT, prefix+"emit_stats_address", knob_family)
    {
    }
    /*! @ingroup CONTROLLER_MULTI_STATS
      Activate all the component controllers
    */
    VOID CheckKnobs(CONTROL_STATS_HANDLER ch, VOID * val)
    {
        _val = val;
        _controlHandler = ch;
        _zeroStatsAddress.CheckKnobs(LocalHandler, this);
        _emitStatsAddress.CheckKnobs(LocalHandler, this);
    }

  private:
    static VOID LocalHandler(CONTROL_STATS_EVENT ev, VOID * val, CONTEXT* dummy_context, VOID * ip, THREADID tid)
    {
        CONTROL_STATS * control = static_cast<CONTROL_STATS*>(val);

        // Notify the parent
        control->_controlHandler(ev, control->_val, dummy_context,ip, tid);
    }

    CONTROL_STATS_HANDLER _controlHandler;
    VOID * _val;

    CONTROL_STATS_EVENT_ADDRESS _zeroStatsAddress;
    CONTROL_STATS_EVENT_ADDRESS _emitStatsAddress;
};


} // namespace
#endif
