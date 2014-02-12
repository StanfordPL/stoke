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
/*
  take xed_decoded_inst_t* and add it to a graph.
  The input operands are input edges.
  The output operands are output edges.
  Careful with "special" operands in new technologies
 */

#include "xed-dot.h"
#include "xed-examples-util.h"
#include <assert.h>
#include <stdlib.h>

xed_dot_graph_t* xed_dot_graph(void) {
    xed_dot_graph_t* g = 0;
    g = (xed_dot_graph_t*)malloc(sizeof(xed_dot_graph_t));
    assert(g != 0);
    g->edges = 0;
    g->nodes = 0;
    return g;
}
static void delete_nodes(xed_dot_graph_t* g) {
    xed_dot_node_t* p = g->nodes;
    while(p) {
        xed_dot_node_t* t = p;
        p = p->next;
        free(t);
    }
}
static void delete_edges(xed_dot_graph_t* g) {
    xed_dot_edge_t* p = g->edges;
    while(p) {
        xed_dot_edge_t* t = p;
        p = p->next;
        free(t);
    }
}
void xed_dot_graph_deallocate(xed_dot_graph_t* g)
{
    delete_nodes(g);
    delete_edges(g);
    free(g);
}

xed_dot_node_t* xed_dot_node(xed_dot_graph_t* g,
                             char const* const name) {
    xed_dot_node_t* n = 0;
    n = (xed_dot_node_t*)malloc(sizeof(xed_dot_node_t));
    assert(n != 0);
    n->name = xed_strdup(name);
    
    n->next = g->nodes;
    g->nodes = n;
    return n;
}


void xed_dot_edge(xed_dot_graph_t* g,
                  xed_dot_node_t* src,
                  xed_dot_node_t* dst,
                  xed_dot_edge_style_t style)
{
    xed_dot_edge_t* e = 0;
    e = (xed_dot_edge_t*)malloc(sizeof(xed_dot_edge_t));
    assert(e != 0);
    e->src = src;
    e->dst = dst;
    e->style = style;

    e->next = g->edges;
    g->edges = e;
}



void xed_dot_dump(FILE* f, xed_dot_graph_t* g) {
    xed_dot_edge_t* p = g->edges;
    fprintf(f,"digraph {\n");
    while(p) {
        fprintf(f, "\"%s\" -> \"%s\"",
                p->src->name,
                p->dst->name);
        
        switch(p->style) {
          case XED_DOT_EDGE_SOLID:
            break; /* nothing required */
          case XED_DOT_EDGE_DASHED:
            fprintf(f, "[ style = dashed ]");
            break;
          case XED_DOT_EDGE_DOTTED:
            fprintf(f, "[ style = dotted ]");
            break;
          default:
            break;
        }
        
        fprintf(f, ";\n");

        p = p->next;
    }
    fprintf(f,"}\n");
}
