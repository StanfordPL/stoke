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
// @ORIGINAL_AUTHOR: Alon Gafni
//

/*! @file
 *
 * PLEASE INCLUDE THIS FILE BEFORE ANY OTHER SYSTEM INCLUDE FILES !!!
 *  
 * This file comes to solve a problem with including <sys/ucontext.h>.
 * Some Pin-tools/tests get register values from the ucontext structure
 * by using the REG_XXX enum value as the index to the gregset_t array.
 *
 * Changes in the header files in the new Linux versions (starting from
 * Fedora-13) cause the REG_XXX to get undeclared on the Pin-tools/tests
 * that include <sys/ucontext.h>.  To fix that, this file should be
 * included at the beginning of Pin-tools/tests (before any other system 
 * files are included) instead of the <sys/ucontext.h> file.
 * 
 */


// DETAILED DESCRIPTION:
//
// In order to declare REG_XXX, we need to include sys/ucontext.h while
// having the __USE_GNU macro defined.  On systems older than Fedora-13
// we can achieve this by simply defining __USE_GNU before including
// ucontext.h.
// On Fedora-13 however, sys/ucontext.h is included from inside signal.h,
// and we cannot define __USE_GNU before including signal.h because doing
// that will affect other functions inside signal.h.
//
// Therefore, the solution to this problem is to include sys/ucontext.h
// as early as possible inside the application, define __USE_GNU
// beforehand and revert it to the state it was before we defined it
// (i.e. undefine it if it wasn't defined before).
//
// Since we use REG_XXX inside several Pin-tools/tests, this file is used
// to avoid code re-write - every Pin-tool/test that uses REG_XXX should
// include this file instead of sys/ucontext.h.
//


// features.h does not exist on FreeBSD
#ifndef TARGET_BSD
// features initializes the system's state, including the state of __USE_GNU 
#include <features.h>
#endif

// If __USE_GNU is defined, we don't need to do anything.
// If we defined it ourselves, we need to undefine it later.
#ifndef __USE_GNU
    #define __USE_GNU
    #define PINTOOL_UNDEF_USE_GNU
#endif

#include <ucontext.h>

// If we defined __USE_GNU ourselves, we need to undefine it here.
#ifdef PINTOOL_UNDEF_USE_GNU
    #undef __USE_GNU
    #undef PINTOOL_UNDEF_USE_GNU
#endif
