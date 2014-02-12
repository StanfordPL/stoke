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
#include "instlib.H"
#include "portability.H"
#include <iostream>
#include <sstream>
#include <iomanip>
#include <fstream>
#include <cstdlib>
using namespace std;


extern "C" void InitXed ()
{
    xed_tables_init();
}

static char nibble_to_ascii_hex(UINT8 i) {
    if (i<10) return i+'0';
    if (i<16) return i-10+'A';
    return '?';
}

static void print_hex_line(char* buf, const UINT8* array, const int length) {
  int n = length;
  int i=0;
  if (length == 0)
      n = XED_MAX_INSTRUCTION_BYTES;
  for( i=0 ; i< n; i++)     {
      buf[2*i+0] = nibble_to_ascii_hex(array[i]>>4);
      buf[2*i+1] = nibble_to_ascii_hex(array[i]&0xF);
  }
  buf[2*i]=0;
}

extern "C" UINT32 GetInstructionLenAndDisasm (UINT8 *ip, string *str)
{
    xed_state_t dstate;
    xed_decoded_inst_t xedd;
    
    xed_state_zero(&dstate);

    if (sizeof(ADDRINT) == 4) 
        xed_state_init(&dstate,     
                       XED_MACHINE_MODE_LEGACY_32,
                       XED_ADDRESS_WIDTH_32b, 
                       XED_ADDRESS_WIDTH_32b);
    else
        xed_state_init(&dstate,
                       XED_MACHINE_MODE_LONG_64,
                       XED_ADDRESS_WIDTH_64b, 
                       XED_ADDRESS_WIDTH_64b);

    xed_decoded_inst_zero_set_mode(&xedd, &dstate);
    
    
    xed_error_enum_t xed_error = xed_decode(&xedd, reinterpret_cast<const UINT8*>(ip), 15);
    if (XED_ERROR_NONE != xed_error)
    {
        fprintf (stderr, "***Error in decoding exception causing instruction at %p\n", ip);
        return (0);
    }
    UINT32 decLen = xed_decoded_inst_get_length(&xedd);
    ostringstream os;
    iostream::fmtflags fmt = os.flags();
    {
        char buffer[200];
        unsigned int dec_len = 0;
        unsigned int sp = 0;
        
        os << std::setfill('0')
           << std::hex
           << std::setw(sizeof(ADDRINT)*2)
           << reinterpret_cast<UINT64>(ip)
           << std::dec
           << ": "
           << std::setfill(' ')
           << std::setw(4);

        os << xed_extension_enum_t2str(xed_decoded_inst_get_extension(&xedd));
        
        print_hex_line(buffer, reinterpret_cast<UINT8*>(ip), decLen);
        os << " " << buffer;
        for ( sp=dec_len; sp < 12; sp++)     // pad out the instruction bytes
            os << "  ";
        os << " ";
        memset(buffer,0,200);
        int dis_okay = xed_format(XED_SYNTAX_INTEL, &xedd, buffer, 200, (ADDRINT)ip);
        if (dis_okay) 
            os << buffer << endl;
        else
            os << "Error disasassembling ip 0x" << std::hex << ip << std::dec << endl;
    }
    os.flags(fmt);
    *str = os.str();
    return (decLen);
}




