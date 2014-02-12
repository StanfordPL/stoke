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

#if !defined(_XED_SYMBOL_TABLE_H_)
#define _XED_SYMBOL_TABLE_H_
extern "C" {
#include "xed-interface.h"
#include "xed-examples-util.h"
}
#include <vector>
#include <map>
#include <iostream>
#include <iomanip>
class xed_local_symbol_table_t {
  public:
    std::vector<xed_uint64_t>    svec;
    std::map<xed_uint64_t,char*> smap;
};

class xed_symbol_table_t {
  public:
    xed_local_symbol_table_t gtab;
    /* section number maps to a local symbol table */
    std::map<xed_uint32_t,xed_local_symbol_table_t*> local_map;
    
    /* the symbol table for the current section */
    xed_local_symbol_table_t* curtab;
    
    xed_symbol_table_t() {
        curtab = 0;
    }

    xed_local_symbol_table_t* get_local_map(xed_uint32_t section) {
        std::map<xed_uint32_t,xed_local_symbol_table_t*>::iterator i;
        i = local_map.find(section);
        if (i != local_map.end())
            return i->second;
        return 0;
    }
    xed_local_symbol_table_t* make_local_map(xed_uint32_t section) {
        xed_local_symbol_table_t* n = new xed_local_symbol_table_t;
        local_map[section] = n;
        return n;
    }
    
    void set_current_table(xed_uint32_t section) {
        curtab = get_local_map(section);
    }

    void add_local_symbol(xed_uint64_t addr, char* name, xed_uint32_t section) {
        xed_local_symbol_table_t* ltab = get_local_map(section);
        if (ltab == 0) 
            ltab = make_local_map(section);
        ltab->smap[addr] = name;
        if (0) // debug 
            std::cerr << "adding " << std::hex << addr << " "
                      << name << " section: " << section << std::endl;
    }
    void add_global_symbol(xed_uint64_t addr, char* name) {
        gtab.smap[addr] = name;
    }
};


void make_symbol_vector(xed_symbol_table_t* symbol_table);

char* get_symbol(xed_uint64_t a, void* symbol_table);

int xed_disassembly_callback_function(
    xed_uint64_t address,
    char* symbol_buffer,
    xed_uint32_t buffer_length,
    xed_uint64_t* offset,
    void* caller_data);
#endif
