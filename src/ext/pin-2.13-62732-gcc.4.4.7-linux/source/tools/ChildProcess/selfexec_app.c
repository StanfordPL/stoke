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
#include <unistd.h>
#include <stdio.h>
#include <limits.h>
#include <string.h>
#include <dirent.h>

int get_num_descr()
{
    DIR *dir = opendir("/proc/self/fd");
    struct dirent *entry;
    int num = 0;

    while ((entry = readdir(dir)) != 0) {
        num++;
    }

    closedir(dir);

    return num;
}


int main(int argc, char *argv[])
{
    int i;
    char si[5];
    char fdstr[5];
    int num = 30; /* Number of recursive calls. */
    char fullpath[PATH_MAX];
    int origfds = 0, fds = 0;

    if (argc == 1)
    {
        i = 1;
        origfds = get_num_descr();
    } else {
        sscanf(argv[1],"%i",&i);
        sscanf(argv[2],"%i",&origfds);
    }

    if (argv[0][0] != '/')
        readlink("/proc/self/exe", fullpath, PATH_MAX);
    else
        strcpy(fullpath, argv[0]);

    i++;
    if (i <= num ) {
        sprintf(si,"%i",i);
        sprintf(fdstr, "%i", origfds);
        execlp(fullpath, "selfexec", si, fdstr, (char *)0);
    }

    printf("Number of recursive calls = %i.\n",--i);
    fds = get_num_descr();
    printf("Number of file descriptors: %d\n", fds);

    if (fds > origfds) {
        printf("Failed: number of open descriptors was increased\n");
        return 1;
    }

    return 0;
}
