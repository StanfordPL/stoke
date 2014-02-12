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
/* ===================================================================== */
/* Application to test that LD_BIND_NOW is not set in the application */
/* ===================================================================== */

#include <stdio.h>
#include <stdlib.h>
#include <sys/wait.h>

void check_ld_bind()
{
    const char *bind = getenv("LD_BIND_NOW");
    if (bind)
    {
        fprintf(stderr, "Found LD_BIND_NOW, existing...\n");
        exit(1);
    }
}

int main(int argc, char *argv[])
{
    int status = 0;
    pid_t pid;

    check_ld_bind();

    if ((pid = fork()) == 0)
    {
        // In the child, here again check for LD_BIND_NOW
        check_ld_bind();
        if (argc > 1 && strcmp(argv[1], "-child") == 0)
        {
            // execute the same application but without params
            char *childArgvArray[2];
            childArgvArray[0] = argv[0];
            childArgvArray[1] = NULL;
            fprintf(stderr, "Going to execv...\n");
            execv(childArgvArray[0], childArgvArray);
            fprintf(stderr, "execv failed, existing...\n");
        }
    }
    else
    {
        // Parent: wait for the child
        waitpid(pid, &status, 0);
        if (!WIFEXITED(status) || WEXITSTATUS(status) != 0)
        {
            fprintf(stderr, " Child has returned with exit error (pid:%d)\n", getpid());
            return 1;
        }
    }

    fprintf(stderr, "LD_BIND_NOW was not found in %d\n", getpid());
    return(0);
}
