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
#include <assert.h>

/* Description:
 * This test checks that Pin does not crash when it runs with an illegal envp array.
 * The expected format of the envp array is an array of strings, each of the form
 * "KEY=VALUE", and the array should be terminated with a NULL pointer.
 * We expect Pin to ignore any illegal entries (i.e. not of the above mentioned form)
 * and to let the application handle these errors by itself. This test checks two
 * forms of illegal entries: one that holds only a KEY and an entry which holds an
 * empty string. We expect Pin to ignore the illegal entries and the test application
 * to run properly despite the illegal environment.
 */

/* Usage:
 * We assume that a copying test application is passed along with "from" and "to"
 * parameters. We will then use execve to run the test application with an illegal
 * environment to see if Pin crashes or ignores the environment.
 */
int main(int argc, char* argv[], char* envp[])
{
    int res;
    char* badEnvp[] = { "KEY", "", NULL };
    
    /* Make sure that we got at least the 3 arguments mentioned in the usage note.*/
    assert(argc >= 4);

    return execve(argv[1], &argv[1], badEnvp);
}
