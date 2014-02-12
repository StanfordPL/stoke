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
 * This application is used by the test: "child_process_injection1.test"
 * This application is used to check that when Pin injection to a child process fails 
 * due to lack of permissions, the child process runs natively.
 */

#include <sys/types.h>
#include <sys/wait.h>

#include <unistd.h>
#include <stdio.h>
#include <stdlib.h>

int main(int argc, char * argv[])
{
    
    pid_t pid = fork();
    if (pid == 0)
    {
        char *childArgvArray[2];
        char * s = (char *)("/usr/bin/chfn");
        childArgvArray[0] = (char *)s;
        childArgvArray[1] = (char *)("--help");
        /*
         * Pin injection should fail since it doesn't have permission to the child process 
         * (since this application has been given the setuid attribute).
         * The application should run natively.
         */
        int err = execv(s, childArgvArray); 
        fprintf(stdout, "%s\n", "Child report: Execve failed ");
    }
    else
    {
        int status;     
        waitpid(pid, &status, 0);
        fprintf(stdout, "%s%d\n", "status", status);
        if (status !=0)
           fprintf(stdout, "%s%d\n", "Parent report: Child process failed. Status of the child process is "
           , WEXITSTATUS(status));
        else
           fprintf(stdout, "%s\n", "Parent report: Child process exited successfully");
    }
    return 0;
}
