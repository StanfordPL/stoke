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
#include <iostream>
#include <assert.h>
#include <stdio.h>
#include <stdlib.h>
#include <unistd.h>

using namespace std;

void run_again(char **argv);

int main(int argc, char **argv)
{
    if (argc < 2 )
    {
        printf("Expected at least 1 input parameter\n");
        return -1;
    }
    
    string expected_ld_preload_val = argv[1];
    
    bool second_run = false;
    if (argc == 3)
    {
        second_run = true;
    }
    
    char *ld_preload_val = getenv("LD_PRELOAD");
    if (!ld_preload_val)
    {
        printf("check_env ERROR: Unexpected or missing LD_PRELOAD\n");
        return -1;
    }
    if (ld_preload_val == expected_ld_preload_val)
    {
        if (!second_run)
        {
            run_again(argv);
        }
        return 0;
    }
    else
    {
        printf("%s\n", ld_preload_val);
    }
}

void run_again(char **argv)
{
    char *ld_preload_val = getenv("LD_PRELOAD");
#ifdef TARGET_ANDROID
    char ld_preload_new_val[] = "libm.so";
#else
    char ld_preload_new_val[] = "libm.so.6";
#endif

    setenv ("LD_PRELOAD", ld_preload_new_val,1);

    char *execv_argv[4];
    execv_argv[0] = argv[0];
    execv_argv[1] = (char *)"libm.so.6";
    execv_argv[2] = (char *)"1";
    execv_argv[3] = NULL;


    execv(execv_argv[0], execv_argv);

}
