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
#ifndef TIME_WARP_H
#define TIME_WARP_H

namespace INSTLIB 
{
/*! @defgroup TIME_WARPER
  It is often desirable to use instrumentation to change behavior of program
  in certain ways so that different runs of the program (with the same input)
  are same. Time_warper allows uses to modify non-repitative constructs
  such as instructions reading the cycle counters and system calls reading
  time of the day.
*/


/*! @defgroup TIME_WARPER_RDTSC
  @ingroup TIME_WARPER
  Modify the behaviors of RDTSC instruction on IA-32 and Intel(R) 64 architectures.
*/

/*! @ingroup TIME_WARPER_RDTSC
*/
class TIME_WARP_RDTSC
{
  public:
    TIME_WARP_RDTSC():_enableKnob(KNOB_MODE_WRITEONCE, "pintool", "rdtsc_warp", "0", 
                                  "Modify the behavior of RDTSC")
    {
        _edx_eax = 1ULL;
        _eax= 0;
        _edx= 0;
    }

    bool IsActive()
    {
        return (_enableKnob);
    }

    /*! @ingroup TIME_WARPER_RDTSC
      Activate the controller if the -length knob is provided
      @return 1 if controller can start an interval, otherwise 0
    */
    INT32 CheckKnobs(VOID * val)
    {
        if (_enableKnob==0)
            return 0;
#if defined(TARGET_IA32) || defined(TARGET_IA32E)
        // Register Instruction to be called to instrument instructions
        TRACE_AddInstrumentFunction(ProcessRDTSC, this);
#endif
        return 1;
    }

  private:
    KNOB<BOOL>  _enableKnob;
    UINT64 _edx_eax;
    UINT32 _eax;
    UINT32 _edx;

    static UINT32 SwizzleEdx(TIME_WARP_RDTSC *rd)
    {
        rd->_edx = (rd->_edx_eax & 0xffffffff00000000ULL) >> 32;
        // cerr << "SwizzleEdx() returning 0x"<< hex << edx << endl;
        return rd->_edx;
    }

    static UINT32 SwizzleEax(TIME_WARP_RDTSC *rd)
    {
        rd->_eax = rd->_edx_eax & 0x00000000ffffffffULL;
        rd->_edx_eax+=100;
        // cerr << "SwizzleEax() edx_eax= 0x"<< hex << edx_eax << endl;
        // cerr << "SwizzleEax() returning 0x"<< hex << eax << endl;
        return rd->_eax;
    }
    static VOID PrintEaxEdx(ADDRINT reax, ADDRINT redx)
    {
        cerr << "PrintEaxEdx():reg eax = 0x"<< hex << reax << endl;
        cerr << "PrintEaxEdx():reg edx = 0x"<< hex << redx << endl;
    }

#if defined(TARGET_IA32) || defined(TARGET_IA32E)
    // Pin calls this function every time a new trace is encountered
    // Goal: Make rdtsc repeatable  across runs
    // NOTE: We are using TRACE instrumentation because it has higher
    // precedence than INS instrumentation.
    static VOID ProcessRDTSC(TRACE trace, VOID *v)
    {
        
        for (BBL bbl = TRACE_BblHead(trace); BBL_Valid(bbl); bbl = BBL_Next(bbl))
        {
            for (INS ins = BBL_InsHead(bbl); INS_Valid(ins); ins = INS_Next(ins))
            {
                if(INS_IsRDTSC(ins))
                {
                    INS_InsertCall(ins, IPOINT_AFTER,
                                   (AFUNPTR)SwizzleEdx,IARG_PTR, v, IARG_RETURN_REGS, REG_GDX, IARG_END);
                    INS_InsertCall(ins, IPOINT_AFTER,
                                   (AFUNPTR)SwizzleEax,IARG_PTR, v, IARG_RETURN_REGS, REG_GAX, IARG_END);
                }
            }
        }
    }
#endif
};

/*! @ingroup TIME_WARPER_MULTI
*/
class TIME_WARP
{
  public:
    /*! @ingroup TIME_WARPER_MULTI
    */
    /*! @ingroup TIME_WARPER_MULTI
      Activate all the component controllers
    */
    INT32 CheckKnobs(VOID * val)
    {
        _val = val;
        INT32 start = 0;
        start = start + _rdtsc.CheckKnobs(this);
        return start;
    }
    bool RDTSC_modified() { return _rdtsc.IsActive(); };

  private:
    VOID * _val;

    TIME_WARP_RDTSC _rdtsc;
};
}
#endif
