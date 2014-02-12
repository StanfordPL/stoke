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
#include <string>

using std::string;

#define EXPORT_SYM extern "C"

/*
 *maximum pid length
 */
static int MAX_SIZE = 128;  

/*
 * Check if a thread is a zombie thread.
 * @param[in] tid - thread system id.
 */
bool isZombie(pid_t tid);

/*
 *  Check if Pin gave a message already that it can't attach to the application since the main thread is a zombie thread.
 *  @param[in] fileName-the message that Pin can't attach to the application will be redirected to this file.
 */
bool NotifyUserPinUnableToAttach(string fileName);
/**************************************************
 * Possible exit status                           *
 **************************************************/
enum ExitType {
    RES_SUCCESS = 0,      // 0
    RES_FORK_FAILED,      // 1
    RES_EXEC_FAILED,      // 2
    RES_LOAD_FAILED,      // 3
    RES_PIPE_ERROR,       // 4 
    RES_INVALID_ARGS      // 5
};
