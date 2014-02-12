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

/// @file xed-min.cpp
/// @brief how to discover enum names for xed_iclass_enum_t

/*************************************************************************
   When using XED as a DLL or shared object, the enumerations can change
   from one version of XED to another if instructions (or features) are
   added. Each XED enumeration must be mapped to something your XED client
   can use for indepedent compilation.  This example shows how to discover
   the XED values for the xed_iclass_enum_t and construct a mapping from
   names that are constant to your tool to names that can vary.  You would
   need to this for each XED enumeration that your XED client uses.

   This builds a one map so that you can map things from your clients code
   to XED's names as would be required for an encoder. For a decoder you'd
   also need to invert the mapping so that you can mape from XED names to
   your client's names.
**************************************************************************/

#include "xed-interface.h"
#include <stdio.h>
#include <string.h>
#include <stdlib.h>

int main(int argc, char** argv);


typedef enum {  /* these are the names that'll use in my code */
    MY_ICLASS_ADD, 
    MY_ICLASS_SUB,
    MY_ICLASS_LAST
} my_iclass_enum_t;

/* A mapping from my (simple) client names to the XED names which can
 * vary. */
typedef struct {
    char const* const string_name;
    int xed_name; /* discovered  and passed to XED n*/
} iclass_interface_t;


iclass_interface_t xed_iclass_interface[] = {
    { "ADD", -1},
    { "SUB", -1}
};

void dump_inst(const xed_inst_t* p) {
    /* N-squared maching... */
    xed_iclass_enum_t ic = xed_inst_iclass(p);
    char const* const xed_name = xed_iclass_enum_t2str(ic);
    iclass_interface_t* table_base = xed_iclass_interface;
    int j=0;

    while( j < MY_ICLASS_LAST) {
        if (strcmp(table_base[j].string_name, xed_name) == 0) {
            if (table_base[j].xed_name == -1) {
                printf("%s maps to %d\n", xed_name, (int)ic);
                table_base[j].xed_name = ic;
            }
            break;
        }
        j++;
    }
}

void build_map_to_xed(void) {
    int i;
    for(i=0;i<XED_MAX_INST_TABLE_NODES;i++)  {
        dump_inst(xed_inst_table_base()+i);
    }
}

/* map from xed values to values I know about  - dynamically allocated */
int* xed2my_enum = 0;

void invert_map(void) {
    int n = xed_iclass_enum_t_last();
    int i;
    
    xed2my_enum = malloc(sizeof(int)*n);
    
    for(i=0;i<n;i++) {
        xed2my_enum[i] = -1;
    }
    for (i=0;i<MY_ICLASS_LAST;i++) {
        xed2my_enum[ xed_iclass_interface[i].xed_name ] = i;
        printf("%s xed=%d client=%d\n", xed_iclass_interface[i].string_name,
               xed_iclass_interface[i].xed_name,
               i);
    }
}

int main(int argc, char** argv) {
    // initialize the XED tables -- one time.
    xed_tables_init();


    build_map_to_xed();
    invert_map();

    return 0;
    (void) argc; (void) argv; //pacify compiler
}
