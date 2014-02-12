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
// <ORIGINAL-AUTHOR>: Greg Lueck
// <COMPONENT>: fund
// <FILE-TYPE>: component public header

#ifndef FUND_CONFIG_H
#define FUND_CONFIG_H

// Possible CPU types.
//
#define FUND_CPU_NONE       0
#define FUND_CPU_IA32       1
#define FUND_CPU_INTEL64    2
#define FUND_CPU_IA64       3
#define FUND_CPU_MIC        4

// Possible OS types.
//
#define FUND_OS_NONE        0
#define FUND_OS_LINUX       1
#define FUND_OS_WINDOWS     2
#define FUND_OS_MAC         3
#define FUND_OS_BSD         4
#define FUND_OS_ANDROID     5

// If the build system doesn't pre-define these, look for a header with
// the definition.  This allows an installation to hard-code a configuration,
// thus eliminating the need for these macros to be defined on the compiler
// command line.
//
#if !defined(FUND_TC_HOSTCPU)
#   include "fund/config-hostcpu.h"
#endif
#if !defined(FUND_TC_HOSTOS)
#   include "fund/config-hostos.h"
#endif
#if !defined(FUND_TC_TARGETCPU)
#   include "fund/config-targetcpu.h"
#endif
#if !defined(FUND_TC_TARGETOS)
#   include "fund/config-targetos.h"
#endif


#if (FUND_TC_HOSTCPU == FUND_CPU_IA32) && (FUND_TC_HOSTOS == FUND_OS_LINUX)
#   define FUND_HOST_IA32
#   define FUND_HOST_X86
#   define FUND_HOST_LINUX
#   define FUND_HOST_UNIX
#   define FUND_HOST_IA32_LINUX
#   define FUND_HOST_IA32_UNIX
#   define FUND_HOST_X86_LINUX
#   define FUND_HOST_X86_UNIX
#elif (FUND_TC_HOSTCPU == FUND_CPU_INTEL64) && (FUND_TC_HOSTOS == FUND_OS_LINUX)
#   define FUND_HOST_INTEL64
#   define FUND_HOST_64X86
#   define FUND_HOST_X86
#   define FUND_HOST_LINUX
#   define FUND_HOST_UNIX
#   define FUND_HOST_INTEL64_LINUX
#   define FUND_HOST_INTEL64_UNIX
#   define FUND_HOST_64X86_LINUX
#   define FUND_HOST_64X86_UNIX
#   define FUND_HOST_X86_LINUX
#   define FUND_HOST_X86_UNIX
#elif (FUND_TC_HOSTCPU == FUND_CPU_IA64) && (FUND_TC_HOSTOS == FUND_OS_LINUX)
#   define FUND_HOST_IA64
#   define FUND_HOST_LINUX
#   define FUND_HOST_UNIX
#   define FUND_HOST_IA64_LINUX
#   define FUND_HOST_IA64_UNIX
#elif (FUND_TC_HOSTCPU == FUND_CPU_MIC) && (FUND_TC_HOSTOS == FUND_OS_LINUX)
#   define FUND_HOST_MIC
#   define FUND_HOST_64X86
#   define FUND_HOST_X86
#   define FUND_HOST_LINUX
#   define FUND_HOST_UNIX
#   define FUND_HOST_MIC_LINUX
#   define FUND_HOST_MIC_UNIX
#   define FUND_HOST_64X86_LINUX
#   define FUND_HOST_64X86_UNIX
#   define FUND_HOST_X86_LINUX
#   define FUND_HOST_X86_UNIX
#elif (FUND_TC_HOSTCPU == FUND_CPU_IA32) && (FUND_TC_HOSTOS == FUND_OS_WINDOWS)
#   define FUND_HOST_IA32
#   define FUND_HOST_X86
#   define FUND_HOST_WINDOWS
#   define FUND_HOST_IA32_WINDOWS
#   define FUND_HOST_X86_WINDOWS
#elif (FUND_TC_HOSTCPU == FUND_CPU_INTEL64) && (FUND_TC_HOSTOS == FUND_OS_WINDOWS)
#   define FUND_HOST_INTEL64
#   define FUND_HOST_64X86
#   define FUND_HOST_X86
#   define FUND_HOST_WINDOWS
#   define FUND_HOST_INTEL64_WINDOWS
#   define FUND_HOST_64X86_WINDOWS
#   define FUND_HOST_X86_WINDOWS
#elif (FUND_TC_HOSTCPU == FUND_CPU_IA32) && (FUND_TC_HOSTOS == FUND_OS_MAC)
#   define FUND_HOST_IA32
#   define FUND_HOST_X86
#   define FUND_HOST_MAC
#   define FUND_HOST_UNIX
#   define FUND_HOST_IA32_MAC
#   define FUND_HOST_IA32_UNIX
#   define FUND_HOST_X86_MAC
#   define FUND_HOST_X86_UNIX
#elif (FUND_TC_HOSTCPU == FUND_CPU_INTEL64) && (FUND_TC_HOSTOS == FUND_OS_MAC)
#   define FUND_HOST_INTEL64
#   define FUND_HOST_64X86
#   define FUND_HOST_X86
#   define FUND_HOST_MAC
#   define FUND_HOST_UNIX
#   define FUND_HOST_INTEL64_MAC
#   define FUND_HOST_INTEL64_UNIX
#   define FUND_HOST_64X86_MAC
#   define FUND_HOST_64X86_UNIX
#   define FUND_HOST_X86_MAC
#   define FUND_HOST_X86_UNIX
#elif (FUND_TC_HOSTCPU == FUND_CPU_INTEL64) && (FUND_TC_HOSTOS == FUND_OS_BSD)
#   define FUND_HOST_INTEL64
#   define FUND_HOST_64X86
#   define FUND_HOST_X86
#   define FUND_HOST_BSD
#   define FUND_HOST_UNIX
#   define FUND_HOST_INTEL64_BSD
#   define FUND_HOST_INTEL64_UNIX
#   define FUND_HOST_64X86_BSD
#   define FUND_HOST_64X86_UNIX
#   define FUND_HOST_X86_BSD
#   define FUND_HOST_X86_UNIX
# elif (FUND_TC_HOSTCPU == FUND_CPU_IA32) && (FUND_TC_HOSTOS == FUND_OS_ANDROID)
/* 
 * Android definitions are a superset of android-specific definitions and the 
 * regular Linux definitions
 */
#   define FUND_HOST_IA32
#   define FUND_HOST_X86
#   define FUND_HOST_ANDROID
#   define FUND_HOST_UNIX
#   define FUND_HOST_IA32_ANDROID
#   define FUND_HOST_IA32_UNIX
#   define FUND_HOST_X86_ANDROID
#   define FUND_HOST_X86_UNIX 
#   define FUND_HOST_LINUX
#   define FUND_HOST_IA32_LINUX
#   define FUND_HOST_X86_LINUX
# else
#   error "Illegal host CPU / OS combination"
#endif

#if (FUND_TC_TARGETCPU == FUND_CPU_IA32) && (FUND_TC_TARGETOS == FUND_OS_LINUX)
#   define FUND_TARGET_IA32
#   define FUND_TARGET_X86
#   define FUND_TARGET_LINUX
#   define FUND_TARGET_UNIX
#   define FUND_TARGET_IA32_LINUX
#   define FUND_TARGET_IA32_UNIX
#   define FUND_TARGET_X86_LINUX
#   define FUND_TARGET_X86_UNIX
#elif (FUND_TC_TARGETCPU == FUND_CPU_INTEL64) && (FUND_TC_TARGETOS == FUND_OS_LINUX)
#   define FUND_TARGET_INTEL64
#   define FUND_TARGET_64X86
#   define FUND_TARGET_X86
#   define FUND_TARGET_LINUX
#   define FUND_TARGET_UNIX
#   define FUND_TARGET_INTEL64_LINUX
#   define FUND_TARGET_INTEL64_UNIX
#   define FUND_TARGET_64X86_LINUX
#   define FUND_TARGET_64X86_UNIX
#   define FUND_TARGET_X86_LINUX
#   define FUND_TARGET_X86_UNIX
#elif (FUND_TC_TARGETCPU == FUND_CPU_IA64) && (FUND_TC_TARGETOS == FUND_OS_LINUX)
#   define FUND_TARGET_IA64
#   define FUND_TARGET_LINUX
#   define FUND_TARGET_UNIX
#   define FUND_TARGET_IA64_LINUX
#   define FUND_TARGET_IA64_UNIX
#elif (FUND_TC_TARGETCPU == FUND_CPU_MIC) && (FUND_TC_TARGETOS == FUND_OS_LINUX)
#   define FUND_TARGET_MIC
#   define FUND_TARGET_64X86
#   define FUND_TARGET_X86
#   define FUND_TARGET_LINUX
#   define FUND_TARGET_UNIX
#   define FUND_TARGET_MIC_LINUX
#   define FUND_TARGET_MIC_UNIX
#   define FUND_TARGET_64X86_LINUX
#   define FUND_TARGET_64X86_UNIX
#   define FUND_TARGET_X86_LINUX
#   define FUND_TARGET_X86_UNIX
#elif (FUND_TC_TARGETCPU == FUND_CPU_IA32) && (FUND_TC_TARGETOS == FUND_OS_WINDOWS)
#   define FUND_TARGET_IA32
#   define FUND_TARGET_X86
#   define FUND_TARGET_WINDOWS
#   define FUND_TARGET_IA32_WINDOWS
#   define FUND_TARGET_X86_WINDOWS
#elif (FUND_TC_TARGETCPU == FUND_CPU_INTEL64) && (FUND_TC_TARGETOS == FUND_OS_WINDOWS)
#   define FUND_TARGET_INTEL64
#   define FUND_TARGET_64X86
#   define FUND_TARGET_X86
#   define FUND_TARGET_WINDOWS
#   define FUND_TARGET_INTEL64_WINDOWS
#   define FUND_TARGET_64X86_WINDOWS
#   define FUND_TARGET_X86_WINDOWS
#elif (FUND_TC_TARGETCPU == FUND_CPU_IA32) && (FUND_TC_TARGETOS == FUND_OS_MAC)
#   define FUND_TARGET_IA32
#   define FUND_TARGET_X86
#   define FUND_TARGET_MAC
#   define FUND_TARGET_UNIX
#   define FUND_TARGET_IA32_MAC
#   define FUND_TARGET_IA32_UNIX
#   define FUND_TARGET_X86_MAC
#   define FUND_TARGET_X86_UNIX
#elif (FUND_TC_TARGETCPU == FUND_CPU_INTEL64) && (FUND_TC_TARGETOS == FUND_OS_MAC)
#   define FUND_TARGET_INTEL64
#   define FUND_TARGET_64X86
#   define FUND_TARGET_X86
#   define FUND_TARGET_MAC
#   define FUND_TARGET_UNIX
#   define FUND_TARGET_INTEL64_MAC
#   define FUND_TARGET_INTEL64_UNIX
#   define FUND_TARGET_64X86_MAC
#   define FUND_TARGET_64X86_UNIX
#   define FUND_TARGET_X86_MAC
#   define FUND_TARGET_X86_UNIX
#elif (FUND_TC_TARGETCPU == FUND_CPU_INTEL64) && (FUND_TC_TARGETOS == FUND_OS_BSD)
#   define FUND_TARGET_INTEL64
#   define FUND_TARGET_X86
#   define FUND_TARGET_64X86
#   define FUND_TARGET_BSD
#   define FUND_TARGET_UNIX
#   define FUND_TARGET_INTEL64_BSD
#   define FUND_TARGET_INTEL64_UNIX
#   define FUND_TARGET_64X86_BSD
#   define FUND_TARGET_64X86_UNIX
#   define FUND_TARGET_X86_BSD
#   define FUND_TARGET_X86_UNIX
#elif (FUND_TC_TARGETCPU == FUND_CPU_IA32) && (FUND_TC_TARGETOS == FUND_OS_NONE)
#   define FUND_TARGET_IA32
#   define FUND_TARGET_X86
#elif (FUND_TC_TARGETCPU == FUND_CPU_INTEL64) && (FUND_TC_TARGETOS == FUND_OS_NONE)
#   define FUND_TARGET_INTEL64
#   define FUND_TARGET_64X86
#   define FUND_TARGET_X86
#elif (FUND_TC_TARGETCPU == FUND_CPU_IA64) && (FUND_TC_TARGETOS == FUND_OS_NONE)
#   define FUND_TARGET_IA64
#elif (FUND_TC_TARGETCPU == FUND_CPU_MIC) && (FUND_TC_TARGETOS == FUND_OS_NONE)
#   define FUND_TARGET_MIC
#   define FUND_TARGET_64X86
#   define FUND_TARGET_X86
#elif (FUND_TC_TARGETCPU == FUND_CPU_NONE) && (FUND_TC_TARGETOS == FUND_OS_LINUX)
#   define FUND_TARGET_LINUX
#   define FUND_TARGET_UNIX
#elif (FUND_TC_TARGETCPU == FUND_CPU_NONE) && (FUND_TC_TARGETOS == FUND_OS_WINDOWS)
#   define FUND_TARGET_WINDOWS
#elif (FUND_TC_TARGETCPU == FUND_CPU_NONE) && (FUND_TC_TARGETOS == FUND_OS_MAC)
#   define FUND_TARGET_MAC
#   define FUND_TARGET_UNIX
#elif (FUND_TC_TARGETCPU == FUND_CPU_NONE) && (FUND_TC_TARGETOS == FUND_OS_BSD)
#   define FUND_TARGET_BSD
#   define FUND_TARGET_UNIX
#elif (FUND_TC_TARGETCPU == FUND_CPU_IA32) && (FUND_TC_TARGETOS == FUND_OS_ANDROID)
#   define FUND_TARGET_IA32
#   define FUND_TARGET_X86 
#   define FUND_TARGET_ANDROID
#   define FUND_TARGET_UNIX
#   define FUND_TARGET_IA32_ANDROID
#   define FUND_TARGET_IA32_UNIX
#   define FUND_TARGET_X86_ANDROID
#   define FUND_TARGET_X86_UNIX
#   define FUND_TARGET_LINUX
#   define FUND_TARGET_IA32_LINUX
#   define FUND_TARGET_X86_LINUX
#elif (FUND_TC_TARGETCPU == FUND_CPU_NONE) && (FUND_TC_TARGETOS == FUND_OS_NONE)
#else
#   error "Illegal target CPU / OS combination"
#endif

#endif // file guard
