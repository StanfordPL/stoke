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

/*! @file
 *  Generic memory management API. 
 */
#ifndef SYS_MEMORY_H
#define SYS_MEMORY_H

#include "stddef.h"

#ifdef __cplusplus
extern "C" {
#endif

typedef int BOOL;
#ifndef TRUE
#define TRUE 1
#endif
#ifndef FALSE
#define FALSE 0
#endif

/*!
 *  Memory protection attributes. 
 */
typedef enum 
{
    MEM_INACESSIBLE,
    MEM_READ_EXEC,
    MEM_READ_WRITE_EXEC
} MEM_PROTECTION;


/*!
 *  Return page size in bytes. 
 */
size_t GetPageSize();

/*!
 *  Allocate memory pages with the specified protection attributes. 
 */
void * MemAlloc(size_t size, MEM_PROTECTION protect);

/*!
 *  Free memory pages at the specified address. 
 */
void MemFree(void * addr, size_t size);

/*!
 *  Set specified protection for memory pages at the specified address. 
 */
BOOL MemProtect(void * addr, size_t size, MEM_PROTECTION protect);

#ifdef __cplusplus
}
#endif

#endif //SYS_MEMORY_H
/* ===================================================================== */
/* eof */
/* ===================================================================== */
