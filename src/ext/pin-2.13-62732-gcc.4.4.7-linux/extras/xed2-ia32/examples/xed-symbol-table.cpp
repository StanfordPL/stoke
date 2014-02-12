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

extern "C" {
#include "xed-interface.h"
#include "xed-portability.h"
#include "xed-examples-util.h"
}
#include <string.h>
#include <stdlib.h>
#include <iostream>
#include <iomanip>
#include <map>
#include <algorithm>
#include <vector>
#include "xed-symbol-table.H"
using namespace std;

void make_symbol_vector_local(xed_local_symbol_table_t* lsym) {
    map<xed_uint64_t,char*>::iterator i = lsym->smap.begin();
    for( ; i != lsym->smap.end() ;i ++) {
        lsym->svec.push_back(i->first);
    }
    sort(lsym->svec.begin(), lsym->svec.end());
}

void make_symbol_vector(xed_symbol_table_t* symbol_table)
{
    make_symbol_vector_local(&(symbol_table->gtab));

    std::map<xed_uint32_t,xed_local_symbol_table_t*>::iterator i;
    i = symbol_table->local_map.begin();
    for ( ; i != symbol_table->local_map.end() ; i++ ) {
        xed_local_symbol_table_t* lsym = i->second;
        make_symbol_vector_local(lsym);
    }
}



xed_bool_t find_symbol_address(vector<xed_uint64_t>& sym_vec, 
                               xed_uint64_t tgt,
                               xed_uint64_t& sym_addr) 
{
    vector<xed_uint64_t>::iterator i = lower_bound(sym_vec.begin(), 
                                                   sym_vec.end(), tgt);
    if (i == sym_vec.end())
        return 0;
    if (*i > tgt) {
        // take previous value
        if (i != sym_vec.begin()) {
            sym_addr = *(i-1);
            return 1;
        }
    }
    if (*i == tgt) {
        sym_addr = *i;
        return 1;
    }
    return 0;
}


xed_bool_t find_symbol_address_global(xed_uint64_t tgt,
                                      xed_symbol_table_t* symbol_table,
                                      xed_uint64_t& sym_addr) /* output*/
{
    xed_bool_t r = 0;
    if (symbol_table) {
        /* look global and then local */
        r = find_symbol_address(symbol_table->gtab.svec, tgt, sym_addr);
        if (r == 0 && symbol_table->curtab) {
            r = find_symbol_address(symbol_table->curtab->svec, tgt, sym_addr);
        }
    }
    return r;
}


char* get_symbol(xed_uint64_t a, void* caller_data) {
    xed_symbol_table_t* symbol_table = 
        reinterpret_cast<xed_symbol_table_t*>(caller_data);
    /* look in the global symbol table  first */
    map<xed_uint64_t,char*>::iterator i = symbol_table->gtab.smap.find(a);
    if (i != symbol_table->gtab.smap.end()) {
         return i->second;
    }
    /* look in the local symbol table if present */
    if (symbol_table->curtab) {
        map<xed_uint64_t,char*>::iterator j = 
            symbol_table->curtab->smap.find(a);
        if (j != symbol_table->curtab->smap.end()) {
            return j->second;
        }
    }
    return 0;
}


int xed_disassembly_callback_function(
    xed_uint64_t address,
    char* symbol_buffer,
    xed_uint32_t buffer_length,
    xed_uint64_t* offset,
    void* caller_data) 
{
    xed_uint64_t symbol_address;
    xed_symbol_table_t* symbol_table = 
        reinterpret_cast<xed_symbol_table_t*>(caller_data);
    xed_bool_t found = find_symbol_address_global(address, 
                                                  symbol_table, 
                                                  symbol_address);
    if (found) {
        char* symbol  = get_symbol(symbol_address, caller_data);
        if (symbol) {
            if (xed_strlen(symbol) < buffer_length)
                xed_strncpy(symbol_buffer, symbol, buffer_length);
            else {
                xed_strncpy(symbol_buffer, symbol, buffer_length-1);
                symbol_buffer[buffer_length-1]=0;
            }
            *offset = address - symbol_address;
            return 1;
        }
    }
    return 0;
}
