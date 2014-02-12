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
#include <sys/types.h>
#include <sys/wait.h>
#include <unistd.h>
#include <cstdio>
#include <cstdlib>
#include <sched.h>
#include <signal.h>
#include <errno.h>

#define TIMEOUT 20

/*
 * This application is part of the test: "fork_vm_lock.test" ". This test checks that no deadlock has occured when  
 * child process tries to acquire the VM lock in a post fork callback in this child process.
 */

enum RESULT {
    RES_SUCCESS = 0,
    RES_FORK_FAILED,
    RES_TIMEOUT,
    RES_WAITPID_FAILED
};

bool alarmRinged = false;
 
/*
 * A signal handler for SIGALRM
 */
void SigAlrmHandler( int signum, siginfo_t *siginfo, void *uctxt)
{ 
    alarmRinged = true;
}
 
int main() {

    /* Register the signal handler */
    struct sigaction sSigaction;
    sSigaction.sa_sigaction = SigAlrmHandler;
    sigaction(SIGALRM, &sSigaction, NULL);
  
    pid_t child = fork();
    
    if (child < 0)
    {
        fprintf(stderr, "FAILED: unable to create the child process\n");
        exit(RES_FORK_FAILED);
    }
  
    if (child > 0)
    {
        //in parent
        alarm(TIMEOUT); //send SIGALRM after TIMEOUT second.
        while(1)
        {
            if (waitpid(child, 0, 0) < 0)
            {
                // waitpid failed
                if (errno == EINTR)
                {
                    // failure was due to a signal
                    if (!alarmRinged) continue; // signal was not SIGALRM - continue to wait
                    
                    // signal was SIGALRM - kill the child to avoid a hung test and exit
                    fprintf(stderr, "FAILED: the TIMEOUT has passed and the child process didn't terminate\n");
                    kill(child, 9);
                    exit(RES_TIMEOUT);
                }
                else
                {
                    // failure was due to an unexpected reason
                    fprintf(stderr, "FAILED: waitpid failed unexpectedly\n");
                    exit(RES_WAITPID_FAILED);
                }
            }   
            else
            {
                // waitpid succeeded - child exited normally
                break;
            }
        }
    }
  
    if (child == 0) 
    {
        // child does nothing
    }
  
    return RES_SUCCESS;
}
