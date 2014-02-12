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
// features.h does not exist on FreeBSD and Mac
#ifdef TARGET_LINUX
// features initializes the system's state, including the state of __USE_GNU
#include <features.h>
#endif

// If __USE_GNU is defined, we don't need to do anything.
// If we defined it ourselves, we need to undefine it later.
#ifndef __USE_GNU
    #define __USE_GNU
    #define APP_UNDEF_USE_GNU
#endif

#ifdef TARGET_ANDROID
#include "android_ucontext.h"
#else
#include <sys/ucontext.h>
#endif

// If we defined __USE_GNU ourselves, we need to undefine it here.
#ifdef APP_UNDEF_USE_GNU
    #undef __USE_GNU
    #undef APP_UNDEF_USE_GNU
#endif

#include <stdio.h>
#include <stdlib.h>
#include <signal.h>
#include <assert.h>
#include <setjmp.h>

int p_safe_exit;

void install_signal_handler(void);
void signal_handler(int, siginfo_t *, void *);
void generate_hlt_segv(int val);

void install_signal_handler() {
  int ret_val;
  struct sigaction s_sigaction;
  struct sigaction *p_sigaction = &s_sigaction;

  /* Register the signal hander using the siginfo interface*/
  p_sigaction->sa_sigaction = signal_handler;
  p_sigaction->sa_flags = SA_SIGINFO;

  /* Don't mask any other signals */
  sigemptyset(&p_sigaction->sa_mask);

  ret_val = sigaction(SIGSEGV, p_sigaction, NULL);
  if(ret_val) {
    perror("ERROR, sigaction failed");
    exit(1);
  }
}

void generate_hlt_segv(int val) {
  int *p = 0;

  p_safe_exit = (int)&&safe_exit;

  printf("EIP of segfault: 0x%x (only accurate with if compiled with -O)\n", (int)&&hlt_segfault);

 hlt_segfault:
  __asm__ __volatile__ ("hlt");


  printf("ERROR!\n");

 safe_exit:
  printf("EIP of safe exit: 0x%x\n", p_safe_exit);
}

void signal_handler(int signum, siginfo_t *siginfo, void *_uctxt) {
  int ret_val;
  ucontext_t *uctxt = (ucontext_t *)_uctxt;
  ucontext_t signal_ctxt;

#if defined(TARGET_MAC)
  printf("signal %d (captured EIP: 0x%x)\n", signum,
         uctxt->uc_mcontext->__ss.__eip);

  uctxt->uc_mcontext->__ss.__eip = p_safe_exit;
#else
  printf("signal %d (captured EIP: 0x%x)\n", signum,
         uctxt->uc_mcontext.gregs[REG_EIP]);

  uctxt->uc_mcontext.gregs[REG_EIP] = p_safe_exit;
#endif
}

int main(int argc, char **argv) {
  install_signal_handler();

  generate_hlt_segv(1);
  return 0;
}
