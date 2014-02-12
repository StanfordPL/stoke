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
// @ORIGINAL_AUTHOR: Moshe Lazer

/*! @file
 *  Test pause_tool messages when attaching to Linux process  
 *  The application tests that pause_tool messages appears on INJECTOR stdout  
 */

#include <assert.h>
#include <stdio.h>
#include <signal.h>
#include <stdlib.h>
#include <string>
#include <list>
#include <sys/types.h>
#include <unistd.h>

using namespace std;


#define DECSTR(buf, num) { buf = (char *)malloc(10); sprintf(buf, "%d", num); }

inline void PrintArguments(char **inArgv)
{
    fprintf(stderr, "Going to run: ");
    for(unsigned int i=0; inArgv[i] != 0; ++i)
    {
        fprintf(stderr, "%s ", inArgv[i]);
    }
    fprintf(stderr, "\n");
}


/* AttachAndInstrument()
 * a special routine that runs $PIN
 */
void AttachAndInstrument(list <string > * pinArgs)
{
    list <string >::iterator pinArgIt = pinArgs->begin();

    string pinBinary = *pinArgIt;
    pinArgIt++;

    pid_t parent_pid = getpid();
    
    int stdoutDupFd = dup(STDOUT_FILENO); // duplicating stdout to new file descriptor
    close(STDOUT_FILENO); // closing stdout 

    pid_t child = fork();
    if (child) 
    {
        // INJECTEE is running with its stdout closed
        return;  
    }
    else
    {
        // inside child

        // open stdout using the application original output
        dup2(stdoutDupFd, STDOUT_FILENO); 

        // INJECTOR is running with the original stdout

        char **inArgv = new char*[pinArgs->size()+10];

        unsigned int idx = 0;
        inArgv[idx++] = (char *)pinBinary.c_str(); 
        inArgv[idx++] = (char*)"-pid"; 
        inArgv[idx] = (char *)malloc(10);
        sprintf(inArgv[idx++], "%d", parent_pid);

        for (; pinArgIt != pinArgs->end(); pinArgIt++)
        {
            inArgv[idx++]= (char *)pinArgIt->c_str();
        }
        inArgv[idx] = 0;
        
        PrintArguments(inArgv);

        // Activate pin INJECTOR
        execvp(inArgv[0], inArgv);
        fprintf(stderr, "ERROR: execv %s failed\n", inArgv[0]);
        kill(parent_pid, 9);
        return; 
    }
}


/*
 * Expected command line: <this exe> [-th_num NUM] -pin $PIN -pinarg <pin args > -t tool <tool args>
 */

void ParseCommandLine(int argc, char *argv[], list < string>* pinArgs)
{
    string pinBinary;
    for (int i=1; i<argc; i++)
    {
        string arg = string(argv[i]);
        if (arg == "-pin")
        {
            pinBinary = argv[++i];
        }
        else if (arg == "-pinarg")
        {
            for (int parg = ++i; parg < argc; parg++)
            {
                pinArgs->push_back(string(argv[parg]));
                ++i;
            }
        }
    }
    assert(!pinBinary.empty());
    pinArgs->push_front(pinBinary);
}



extern "C" int MainThreadReady(void)
{
    return 0;
}
    
int main(int argc, char *argv[])
{
   list <string> pinArgs;
   ParseCommandLine(argc, argv, &pinArgs);

   AttachAndInstrument(&pinArgs);

   // Wait for pin to attach
   while (!MainThreadReady())
   {
       sched_yield();
   }        

   return 0;
}

