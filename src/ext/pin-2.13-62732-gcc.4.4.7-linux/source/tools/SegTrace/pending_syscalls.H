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
//
// @ORIGINAL_AUTHOR: Greg Lueck
//

#include <map>


/*!
 * Information about a "pending" system call.  (The tool has started processing it, but
 * not yet completed.)
 */
struct PENDING_SYSCALL
{
    PENDING_SYSCALL() : _number(0) {}
    PENDING_SYSCALL(ADDRINT fs, ADDRINT gs, ADDRINT num, ADDRINT a1, ADDRINT a2, ADDRINT a3, ADDRINT a4, ADDRINT a5)
    :
        _fs(fs), _gs(gs), _number(num), _arg1(a1), _arg2(a2), _arg3(a3), _arg4(a4), _arg5(a5)
    {}

    ADDRINT _fs;        // Value of FS prior to system call
    ADDRINT _gs;        // Value of GS prior to system call
    ADDRINT _number;    // System call number
    ADDRINT _arg1;      // First 5 arguments to system call
    ADDRINT _arg2;
    ADDRINT _arg3;
    ADDRINT _arg4;
    ADDRINT _arg5;
};


/*!
 * A container which can hold one pending system call for each thread.
 */
class PENDING_SYSCALLS
{
  public:
    PENDING_SYSCALLS()
    {
        PIN_InitLock(&_lock);
    }

    VOID Add(THREADID tid, const PENDING_SYSCALL &pend)
    {
        PIN_GetLock(&_lock, 1);
        _map[tid] = pend;
        PIN_ReleaseLock(&_lock);
    }

    BOOL Remove(THREADID tid, PENDING_SYSCALL *pend)
    {
        PIN_GetLock(&_lock, 1);
        MAP::iterator it = _map.find(tid);
        if (it == _map.end())
        {
            PIN_ReleaseLock(&_lock);
            return FALSE;
        }

        *pend = (*it).second;
        _map.erase(it);
        PIN_ReleaseLock(&_lock);
        return TRUE;
    }

  private:
    PIN_LOCK _lock;

    typedef std::map<UINT32, PENDING_SYSCALL> MAP;
    MAP _map;
};

