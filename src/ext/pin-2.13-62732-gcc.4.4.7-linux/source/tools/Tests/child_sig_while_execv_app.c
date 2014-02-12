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
#include <stdio.h>
#include <sys/types.h>
#include <unistd.h>
#include <sys/types.h>
#include <sys/wait.h>
#include <errno.h>
#include <stdlib.h>
#include <unistd.h>
#include <signal.h>
#include <string.h>

/*

This test creates the scenario in which prcocess that runs under Pin that fail in execv syscall.
The process in this case calls waitpid to wait for its injector to exit, in this point the process
receives a siganl and exit from the waitpid syscall with errno==EINTR.

To generate this scenario the application creates 10 child processes that sends many SIGCHLD to parent process.
The parent process use execvp to run simple application located in ./obj-intel64 .
The execvp tries to run the simple application by activating execv on each directory in system PATH.
This is causing many failures in execv syscall activation.

The scenario of many SIGCHLD signals along with many failures in execv bring us to the requested case.

*/

static void hdl (int sig, siginfo_t *siginfo, void *context)
{
}

int main(int argc, char **argv)
{
    char * args[] = {"child_sig_while_execv", "0", NULL};
    int iteration = 0;
    int child_pid = 0;
    int parent_id=getpid();
    int i;
    

    // Set long path to make sure execvp will fail on many execv tries 
    setenv("PATH", "/usr/intel/bin:/sbin:/bin:/usr/sbin:/usr/X386/bin:/usr/local:/usr/local/bin:/usr/ucb:/usr/afsws/bin:/usr/afsws/etc:/usr/ccs/bin:/opt/kde3/bin:/usr/kerberos/bin:/usr/local/bin:/bin:/usr/bin:/usr/X11R6/bin:/bin:/tmp:/tmp_proj:.:./obj-intel64", 1);

    struct sigaction act;
    memset (&act, '\0', sizeof(act));
    // Use the sa_sigaction field because the handles has two additional parameters
    act.sa_sigaction = &hdl;
    // The SA_SIGINFO flag tells sigaction() to use the sa_sigaction field, not sa_handler. 
    act.sa_flags = SA_SIGINFO;
    if (sigaction(SIGCHLD, &act, NULL) < 0) {
        perror ("sigaction");
        return 1;
    }


    int fd[2]; 
    char buf[2];
    if (pipe(fd) == -1){ 
        fprintf(stderr, "Unable to open pipe "); 
        return 1; 
    } 
     
    // create 10 child processes
    for(i=0;i<10;i++)
        if(parent_id==getpid())
            fork();
        
    if(parent_id==getpid()) // if parent
    {
        close(fd[0]); // Close unused read end
        close(fd[1]); // send EOF to signal exec start
        execvp("child_sig_while_execv_simple_app", args);
        
        // In case execvp fail
        perror("EXECV ERROR: exec failed");
        return 1;
    }
    
    close(fd[1]);         // Close unused write end
    read(fd[0], &buf, 1); // wait until parent ready for exec
    close(fd[0]);

    // send SIGCHLD to parent, one of them will hit when parent is waiting on waitpid
    // and will cause it to exit the waitpid with errno==EINTR.
    for(i=0;i<15;i++)
        kill(parent_id , SIGCHLD );
    return 0;
    
}
