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
 * This is an thread utilities file which supplies a generic API for all supported OSs.
 * The OS-specific implementation is in the corresponding threadUtils_<X>.cpp where <X>
 * is the first letter (lower case) of the OS name e.g. "threadUtils_l" for Linux.
 */

#ifndef THREAD_FINI_UTILS_H
#define THREAD_FINI_UTILS_H

#if defined(TARGET_WINDOWS)
#include <Windows.h>
typedef DWORD TidType;
#define EXPORT_SYM __declspec( dllexport )

#elif defined (TARGET_LINUX)
#include <pthread.h>
typedef pthread_t TidType;
#define EXPORT_SYM

#endif // OS type

#include <string>

using std::string;


/**************************************************
 * Results                                        *
 **************************************************/
enum Results {
    RES_SUCCESS = 0,        // 0
    RES_INIT_FAILED,        // 1
    RES_CREATE_FAILED,      // 2
    RES_LOCK_FAILED,        // 3
    RES_UNLOCK_FAILED,      // 4
    RES_CANCEL_FAILED,      // 5
    RES_JOIN_FAILED,        // 6
    RES_INVALID_ARGS,       // 7
    RES_UNKNOWN_OPTION,     // 8
    RES_EXIT_TIMEOUT,       // 9
    RES_CLONE_LOOP_FAILED,  // 10
    RES_UNEXPECTED_EXIT,    // 11
    RES_FORK_FAILED,        // 12
    RES_EXECV_FAILED,       // 13
    RES_EXIT_FAILED         // 14
};


/**************************************************
 * Error strings                                  *
 **************************************************/
const string errorStrings[] = { "success",                                                      // 0
                                "lock init failed",                                             // 1
                                "thread creation failed",                                       // 2
                                "lock failed",                                                  // 3
                                "unlock failed",                                                // 4
                                "thread cancel failed",                                         // 5
                                "thread join failed",                                           // 6
                                "invalid number of args received",                              // 7
                                "unknown arg received",                                         // 8
                                "the WAIT thread's timeout was reached",                        // 9
                                "thread creation failed in clone loop",                         // 10
                                "thread creation loop was terminated for an unknown reason",    // 11
                                "fork failed",                                                  // 12
                                "execv failed",                                                 // 13
                                "the tool failed to terminate the application"                  // 14
                               };


/**************************************************
 * Function declarations                          *
 **************************************************/
unsigned int GetTid();
void InitLocks();
bool CreateNewThread(TidType* tid, void* func, void* info);
void CancelThread(TidType tid);
void WaitForThread(TidType tid);
void ThreadExit();
void IncThreads();
void DecThreads();
int NumOfThreads();
void Print(const string& str);
void ErrorExit(Results res);
void DoSleep(unsigned int seconds);
void DoYield();
void EnterSafeCancellationPoint();

#endif // THREAD_FINI_UTILS_H
