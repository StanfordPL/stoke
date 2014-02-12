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
/// @file xed-tester.cpp


extern "C" {
#include "xed-interface.h"
}
#include <iostream>
#include <iomanip>
using namespace std;
int main(int argc, char** argv);

class xed_test_t
{
  public:
    unsigned int len;
    unsigned char itext[15];
};

xed_test_t tests[] = {
    { 2, { 0, 0 } },
    { 2, { 2, 0 } },
    { 2, { 0xF3, 0x90 } },
    { 0 }
};

int main(int argc, char** argv) {
    unsigned int i,j;
    xed_tables_init();
    xed_state_t dstate;
    xed_state_zero(&dstate);
    xed_state_init(&dstate,
                   XED_MACHINE_MODE_LEGACY_32, 
                   XED_ADDRESS_WIDTH_32b, 
                   XED_ADDRESS_WIDTH_32b);
    for (  i=0; tests[i].len ; i++) {
        xed_decoded_inst_t xedd;
        xed_decoded_inst_zero_set_mode(&xedd, &dstate);
        cout << hex << "Testing: ";
        for( j=0; j< tests[i].len; j++) {
            cout << setfill('0') << setw(2);
            cout << XED_STATIC_CAST(unsigned int,tests[i].itext[j]) << " ";
        }
        cout << endl;
        xed_error_enum_t xed_error;
        xed_error = xed_decode(&xedd, 
                               XED_REINTERPRET_CAST(xed_uint8_t*,tests[i].itext),
                               tests[i].len);
        xed_bool_t okay = (xed_error == XED_ERROR_NONE);
        if (okay) {
            cout << "OK" << endl;
        }
    }
    (void) argc; (void) argv; //pacify compiler
}
