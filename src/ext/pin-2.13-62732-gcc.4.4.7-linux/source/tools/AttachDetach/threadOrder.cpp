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
#include <pthread.h>
#include <cstdio>
#include <cassert>
#include <signal.h>
#include <unistd.h>
#include <errno.h>

const int READ = 0;
const int WRITE = 1;
int appToTool[2];

void* doSecondaryThread(void* dummy) {
    close(appToTool[WRITE]); // This will release the parent and start Pin.
    while (true); // Wait here for program termination.
    return NULL;
}

void doMainAppThread() {
    pthread_t tid;
    pthread_create(&tid, 0, doSecondaryThread, 0);
    pthread_join(tid, 0); // Wait here for program termination.
}

/*
 * Expected argv arguments:
 * [1] pin executable
 * [2] "-slow_asserts"
 * [3] tool
 */
int main(int agrc, char* argv[]) {
    if (pipe(appToTool) != 0) {
        fprintf(stderr, "pipe creation failed...\n");
        return -1;
    }

    pid_t parentPid = getpid();

    pid_t childPid = fork();
    if (childPid < 0) {
        fprintf(stderr, "fork failed...\n");
        return -1;
    }

    // Parent's code - runs the application.
    if (childPid != 0) {
        close(appToTool[READ]);
        doMainAppThread(); // never returns
        return -1;
    }
    
    // Child's code - attaches pin and the tool to the application.
    else {
        close(appToTool[WRITE]);
        char buf [2];
        read(appToTool[READ], buf, 1); // Wait here until both threads of the app have been created.
        close(appToTool[READ]);
        char parentPidStr[24]; // Long enough to hold at least 64 bits of integer as a string.
        sprintf(parentPidStr, "%d", parentPid);
        execl(argv[1], argv[1], argv[2], "-pid", parentPidStr, "-t", argv[3], NULL); // never returns
        fprintf(stderr, "execl failed with errno: %d\n", errno);
        kill(parentPid, 9);
        return -1;
    }
}
