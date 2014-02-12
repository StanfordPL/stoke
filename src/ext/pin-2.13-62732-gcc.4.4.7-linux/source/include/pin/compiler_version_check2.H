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
  @ORIGINAL_AUTHOR: Robert Muth
  This header file ensures that pin and the pintool will be compiled with compatible
  compilers.
  It relies on the generated file cc_used_XXX.H
*/

/*
 * Check CPU target of compiler
 */
#if defined(TARGET_IA32) && defined(__GNUG__) && !defined(__i386__)
#  error "Pin kit is for the IA-32 architecture, but compiler targets a different ISA"
#endif
#if defined(TARGET_IA32E) && defined(__GNUG__) && !defined(__x86_64__)
#  error "Pin kit is for the Intel(R) 64 architecture, but compiler targets a different ISA"
#endif

#if defined(TARGET_IA32)

# if defined(TARGET_WINDOWS)
#  include "cc_used_ia32_w.CVH"
# elif defined(TARGET_LINUX)
#  include "cc_used_ia32_l.CVH"
# elif defined(TARGET_MAC)
#  include "cc_used_ia32_m.CVH"
# else
#  error "Unknown target os for the IA-32 architecture"
# endif

#elif defined(TARGET_IA32E)

# if defined(TARGET_WINDOWS)
#  include "cc_used_ia32e_w.CVH"
# elif defined(TARGET_LINUX)
#  include "cc_used_ia32e_l.CVH"
# elif defined(TARGET_BSD)
#  include "cc_used_ia32e_b.CVH"
# elif defined(TARGET_MAC)
#  include "cc_used_ia32e_m.CVH"
# else
#  error "Unknown target os for the Intel(R) 64 architecture"
# endif

#elif defined(TARGET_MIC)

# if defined(TARGET_LINUX)
#  include "cc_used_ia32e_l.CVH"
# else
#  error "Unknown target os for the Intel(R) Many Integrated Core architecture"
# endif

#else
# error "Unknown target architecture"
#endif

#if defined(_MSC_VER)
#elif defined(__INTEL_COMPILER)
#elif defined(__GNUC__)
#else
#error "pin must be compiled with Microsoft CL, Intel ICC/ICL  or with gcc/g++"
#endif

#if defined(_MSC_VER)
/* FIXME skipping compiler checks for now */
#else

#if !defined(CC_USED__) || !defined(CC_USED_MINOR__) || !defined(CC_USED_PATCHLEVEL__) || !defined(CC_USED_ABI_VERSION)
#error "internal error pin compiler configuration not available "
#endif

#if !defined(__GXX_ABI_VERSION) || CC_USED_ABI_VERSION != __GXX_ABI_VERSION
#error The C++ ABI of your compiler does not match the ABI of the pin kit.
#endif

#if CC_USED_ABI_VERSION == 102

// We know that the compiler is a 3.2.x or 3.3.x because the ABI of compler and kit match
#if CC_USED_ABI_VERSION != __GXX_ABI_VERSION \
    || __GNUC_MINOR__ < CC_USED_MINOR__ \
    || __GNUC_MINOR == CC_USED_MINOR__ && __GNUC_PATCHLEVEL__ < CC_USED_PATCH_LEVEL
#error This kit requires gcc 3.2.x or 3.3.x with a version >= compiler version of the kit
#endif

#elif CC_USED_ABI_VERSION == 1002

#if CC_USED_ABI_VERSION != __GXX_ABI_VERSION
#error This kit requires gcc 3.4 or later
#endif

#else

#error Kit has unknown compiler ABI

#endif

#endif


/*
 * On Windows verify that tool is being compiled with /D_SECURE_SCL=0
 * Tool must be compiled this way because otherwise STL containers shared
 * between PIN and the TOOL can have different memory layouts
 */
#if defined(TARGET_WINDOWS)
#if !defined(_SECURE_SCL) || (_SECURE_SCL != 0)
#error PIN is compiled with /D_SECURE_SCL=0 so tool must also be compiled with /D_SECURE_SCL=0
#endif
#endif

