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
#include <pthread.h>
#include <unistd.h>
#include <sys/wait.h>

#define NUM_OF_THREADS 5

void RunApp(char *app)
{
	pid_t child = fork();
	if (child == 0)
	{
		execv(app, 0);
	}
	else
	{
		int status = 0;
		waitpid(child, &status, 0);
		if (WIFEXITED(status))
		{
			if (WEXITSTATUS(status) != 0)
			{
				fprintf(stderr, 
				"APPLICATION ERROR: The child prs fails with status 0x%x\n", 
						WEXITSTATUS(status));
				exit(-1);
			}
		}
	}
}
		
void *ThreadFunc(void *arg)
{
	char * app = (char*) arg;
	while (1)
	{
		RunApp(app);
		sleep(1);
	}
}
	
int main(int argc, char **argv)
{
	if (argc <=1)
	{
		printf("Specify application to run\n");
		return -1;
	}
	pthread_t thHandle[NUM_OF_THREADS];
	
	for (unsigned int i=0; i < NUM_OF_THREADS; ++i)
	{
		pthread_create(&thHandle[i], NULL, ThreadFunc, (void *)argv[1]);
	}
	
	while (1)
	{
		RunApp(argv[1]);
		sleep(1);
	}

	return 0;
}
