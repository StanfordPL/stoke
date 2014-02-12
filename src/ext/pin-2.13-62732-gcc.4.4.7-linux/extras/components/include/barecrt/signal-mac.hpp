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
// <ORIGINAL-AUTHOR>: Ady Tal
// <COMPONENT>: barecrt
// <FILE-TYPE>: component public header

#ifndef BARECRT_SIGNAL_MAC_HPP
#define BARECRT_SIGNAL_MAC_HPP

namespace BARECRT {

/*!
 * Enum of sigreturn flavors.
 * Taken from XNU sources: bsd/dev/i386/unix_signal.c
 */
enum SIGRET_FLAVOR
{
    UC_TRAD = 1,
    UC_FLAVOR = 30,
    UC_SET_ALT_STACK = 0x40000000,
    UC_RESET_ALT_STACK = 0x80000000
};

/*!
 * This function serves two purposes.  It can be called at the end
 * of the signal handler trampoline to return from the signal handler.
 * In this usage scenario, the function does not return.
 *
 * Alternatively, this function can be called from inside a signal
 * handler to tell the kernel that the alternate signal stack is no
 * longer used.  For example, this is useful if the handler manually
 * switches off the alternate signal stack.  In this scenario, the
 * function does return to its caller.
 *
 *  @param[in] ctxt     This parameter is only used in the first scenario.
 *                       It contains the context where execution resumes.
 *  @param[in] style    Defines the style of sigreturn
 *
 */
void SigReturn(void *ctxt, SIGRET_FLAVOR style);

} // namespace
#endif // file guard

