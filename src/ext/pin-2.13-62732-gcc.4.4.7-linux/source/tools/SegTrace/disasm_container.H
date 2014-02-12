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

#include <string>
#include <map>


/*!
 * A container which holds an instruction disassembly for a sparse collection of
 * interesting instructions.
 */
class DISASM_CONTAINER
{
  public:
    DISASM_CONTAINER()
    {
        PIN_InitLock(&_lock);
    }

    VOID Add(ADDRINT addr, const std::string &dis)
    {
        PIN_GetLock(&_lock, 1);
        _map[addr] = dis;
        PIN_ReleaseLock(&_lock);
    }

    std::string Get(ADDRINT addr)
    {
        PIN_GetLock(&_lock, 1);
        MAP::iterator it = _map.find(addr);
        if (it == _map.end())
        {
            PIN_ReleaseLock(&_lock);
            return "";
        }

        std::string dis = (*it).second;
        PIN_ReleaseLock(&_lock);
        return dis;
    }

  private:
    PIN_LOCK _lock;

    typedef std::map<ADDRINT, std::string> MAP;
    MAP _map;
};

