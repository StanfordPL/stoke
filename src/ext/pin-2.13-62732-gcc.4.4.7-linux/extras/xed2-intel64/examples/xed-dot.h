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
#if !defined(_XED_DOT_H_)
# define _XED_DOT_H_

#include "xed-interface.h"
#include <stdio.h>

typedef struct xed_dot_node_s {
    char* name;
    struct xed_dot_node_s* next;
} xed_dot_node_t;

typedef enum {
    XED_DOT_EDGE_SOLID,
    XED_DOT_EDGE_DASHED,
    XED_DOT_EDGE_DOTTED
} xed_dot_edge_style_t;


typedef struct xed_dot_edge_s {
    xed_dot_node_t* src;
    xed_dot_node_t* dst;
    xed_dot_edge_style_t style;
    struct xed_dot_edge_s* next;
} xed_dot_edge_t;

typedef struct {
    xed_dot_edge_t* edges;
    xed_dot_node_t* nodes;
} xed_dot_graph_t;


xed_dot_graph_t* xed_dot_graph(void);
void xed_dot_graph_deallocate(xed_dot_graph_t* gg);

xed_dot_node_t* xed_dot_node(xed_dot_graph_t* g,
                             char const* const name);

void xed_dot_edge(xed_dot_graph_t* g,
                  xed_dot_node_t* src,
                  xed_dot_node_t* dst,
                  xed_dot_edge_style_t style);

void xed_dot_dump(FILE* f, xed_dot_graph_t* g);
#endif
