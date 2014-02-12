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
#include <stdlib.h>
#include <signal.h>
#include <string.h>

static void Handle(int);


int main(int argc, char **argv)
{
    int setHandler;
    struct sigaction act;


    if (argc == 2 && strcmp(argv[1], "yes") == 0)
    {
        setHandler = 1;
    }
    else if (argc == 2 && strcmp(argv[1], "no") == 0)
    {
        setHandler = 0;
    }
    else
    {
        fprintf(stderr, "Specify either 'yes' or 'no'\n");
        return 1;
    }

    if (setHandler)
    {
        act.sa_handler = Handle;
        act.sa_flags = 0;
        sigemptyset(&act.sa_mask);
        if (sigaction(SIGUSR1, &act, 0) != 0)
        {
            fprintf(stderr, "Unable to set up USR1 handler\n");
            return 1;
        }
    }

    raise(SIGUSR1);
    printf("Application did not get SIGUSR1\n");

    return 0;
}


static void Handle(int sig)
{
    printf("Application got SIGUSR1\n");
    exit(0);
}
