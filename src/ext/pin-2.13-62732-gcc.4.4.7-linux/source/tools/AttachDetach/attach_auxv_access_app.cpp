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
/*! @file
 *
 * This is a regression test for an issue discovered on Android.
 * When a process starts with superuser privileges and then 
 * these privileges are diminished, /proc/self/auxv becomes
 * unavailable. The Pin Client used to rely on /proc/self/auxv
 * to figure out main image load offset, which caused an assert
 * when the resource was unavailable. The Pin Client now gets
 * this info from the injector process, that always has enough
 * privileges to look at the injectee's aux vector.
 * The application must be launched as superuser. After launch
 * it uses seteuid to reduce privileges. Afterward it waits
 * until Pin attaches and exits.
 */

#include <stdio.h>
#include <unistd.h>
#include <sched.h>
#include <signal.h>
#include <stdlib.h>
#include <string>
#include <list>
#include <assert.h>

using namespace std;

/* Pin doesn't kill the process if if failed to attach, exit on SIGALRM */
void ExitOnAlarm(int sig)
{
    fprintf(stderr, "Pin is not attached, exit on SIGALRM\n");
	exit(0);
}

extern "C" int PinAttached()
{
	return 0;
}

void PrintArguments(char **inArgv)
{
    fprintf(stderr, "Going to run: ");
    for(unsigned int i=0; inArgv[i] != 0; ++i)
    {
        fprintf(stderr, "%s ", inArgv[i]);
    }
    fprintf(stderr, "\n");
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

void StartPin(list <string>* pinArgs)
{
    pid_t appPid = getpid();
    pid_t child = fork();
    if (child != 0)
        return;
    
    /* here is the child */
    // sleeping to give the parent time to diminish its privileges.
    sleep(2);
    printf("resumed child \n");
    fprintf (stderr, "uid: %d euid: %d gid: %d egid: %d\n", getuid(), geteuid(), getgid(), getegid());

    // start Pin from child
    char **inArgv = new char*[pinArgs->size()+10];
    
    // Pin binary in the first
    list <string>::iterator pinArgIt = pinArgs->begin();
    string pinBinary = *pinArgIt;
    pinArgIt++;
    
    // build pin arguments:
    unsigned int idx = 0;
    inArgv[idx++] = (char *)pinBinary.c_str(); 
    inArgv[idx++] = (char*)"-pid"; 
    inArgv[idx] = (char *)malloc(10);
    sprintf(inArgv[idx++], "%d", appPid);
    
    for (; pinArgIt != pinArgs->end(); pinArgIt++)
    {
        inArgv[idx++]= (char *)pinArgIt->c_str();
    }
    inArgv[idx] = 0;
    
    PrintArguments(inArgv);
    
    execvp(inArgv[0], inArgv);
    fprintf(stderr, "ERROR: execv %s failed\n", inArgv[0]);
    
    exit(1);
}

main(int argc, char * argv[])
{
    int i;
	
    list <string> pinArgs;

    if (getuid() != 0)
    {
        fprintf(stderr, "ERROR: did not start with root privileges\n");
        exit(1);
    }

    ParseCommandLine(argc, argv, &pinArgs);

    StartPin(&pinArgs);

    if (setreuid(2000, 2000) < 0)
    {
        fprintf(stderr, "ERROR: setuid(2000) failed\n");
        exit(1);
    }

    /* Exit in 20 sec */
    signal(SIGALRM, ExitOnAlarm);    
    alarm(20);

    printf("Before pause, waiting on PinAttached\n");

    while (!PinAttached())
    {
        sched_yield();
        printf(".");
        sleep(2);
    }
    printf("After pause\n");
}
/*
 *  eof
 */
