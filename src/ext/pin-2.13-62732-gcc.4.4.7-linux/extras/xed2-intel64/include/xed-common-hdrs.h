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
/// @file xed-common-hdrs.h
/// 



#ifndef _XED_COMMON_HDRS_H_
# define _XED_COMMON_HDRS_H_



#if defined(__FreeBSD__)
# define XED_BSD
#endif
#if defined(__linux__)
# define XED_LINUX
#endif
#if defined(_MSC_VER)
# define XED_WINDOWS
#endif
#if defined(__APPLE__)
# define XED_MAC
#endif


#if defined(XED_DLL)
//  __declspec(dllexport) works with GNU GCC or MS compilers, but not ICC
//  on linux

#  if defined(XED_WINDOWS)
#     define XED_DLL_EXPORT __declspec(dllexport)
#     define XED_DLL_IMPORT __declspec(dllimport)
#  elif defined(XED_LINUX)  || defined(XED_BSD) || defined(XED_MAC)
#     define XED_DLL_EXPORT __attribute__((visibility("default")))
#     define XED_DLL_IMPORT
#  else
#     define XED_DLL_EXPORT
#     define XED_DLL_IMPORT
#  endif
    
#  if defined(XED_BUILD)
    /* when building XED, we export symbols */
#    define XED_DLL_GLOBAL XED_DLL_EXPORT
#  else
    /* when building XED clients, we import symbols */
#    define XED_DLL_GLOBAL XED_DLL_IMPORT
#  endif
#else
# define XED_DLL_EXPORT 
# define XED_DLL_IMPORT
# define XED_DLL_GLOBAL
#endif

    
#if !defined(XED_MESSAGES)
# define XED_MESSAGES 0
#endif

#if defined(XED_OMIT_ENCODER)
     /* do not emit an encoder */
#else
# define XED_ENCODER
#endif

#if defined(XED_OMIT_DECODER)
     /* do not emit a decoder */
#else
# define XED_DECODER
#endif

#endif

