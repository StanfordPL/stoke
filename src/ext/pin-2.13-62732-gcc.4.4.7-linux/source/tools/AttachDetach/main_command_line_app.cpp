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
   Test the scenario when Pin is trying to attach  to an application process
   which its main thread is a zombie thread using the command line.
   Pin would not attach to the application in this scenario.  
   Instead, Pin will give a message to the user notifing why Pin didn't attach to the application and the 
   application will continue to run natively.
*/

#include <stdio.h>
#include <unistd.h>
#include <stdlib.h>
#include <pthread.h>
#include <sys/types.h>
#include <sys/wait.h>
#include <fstream>
#include <sstream>
#include "zombie_utils.h"
#include <iostream>
#include <sys/syscall.h>

using namespace std;


pid_t zombieThreadPid;

const char * fileName; //  The message that Pin can't attach to the application will be redirected to this file.

/*
 * This function is the invoked when the secondary thread starts execution.
 */
void* SecondaryThreadMain(void* v) 
{
    // Wait until Pin notifies the user that it can't attach to it since the main thread of the application is a zombie thread.
    while(!NotifyUserPinUnableToAttach(fileName)) sleep(1);
    pthread_exit(0);  
}

/*
    Expected argv arguments:
    [1] pin executable
    [2] -slow_assert
    [3] tool
    [4] output file
*/
int main(int argc, char *argv[])
{
    if(argc!=5)
    {
       fprintf(stderr, "Not enough arguments\n" );
       fflush(stderr);
       exit(RES_INVALID_ARGS);
    }

    pid_t first_child_pid;
    pid_t parentPid = getpid();
    fileName = argv[4];
    first_child_pid = fork ();  
    
    if (first_child_pid > 0) 
    {
        //Inside parent 1   
        pthread_t tid;
        pthread_create(&tid, NULL, SecondaryThreadMain, NULL);

        // After calling to thread_exit(0) function, the main thread is going to become a zombie thread. Pin should not attach 
        // to the application. Instead, Pin should give a message to the user notifing why Pin didn't attach to the application and the 
        // application will continue to run natively.
        pthread_exit(0); 
    }
    else 
    { 
        // Inside child 1
        pid_t second_child_pid = fork ();
        if (second_child_pid > 0)
        {
            // Inside parent 2
            waitpid(second_child_pid, 0, 0);
            exit(RES_SUCCESS);
        }
        else
        { 
            //Inside child 2
            char attachPid[MAX_SIZE];
            sprintf(attachPid, "%d", parentPid);

            // wait until the main thread call to the pthread_exit(0) function and become a zombie thrad.
            while(!isZombie(parentPid)) sleep(10);

            execl(argv[1], argv[1], argv[2], "-probe", "-pid", attachPid, "-t",  argv[3], NULL); // never return
            perror("execl failed while trying to attach Pin to the application\n");
            exit(RES_EXEC_FAILED);
        }
    }
    return 0;
}
