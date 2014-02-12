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
#include <windows.h>
#include <stdio.h>
int readln (FILE *fp, char *target) 
{
	int i = 0;
	while (1) {
	  target[i] = fgetc (fp);
	  if (EOF == target[i]) {
		  target[i] = ' ';
          return (EOF);
	  }
	  if ('\n' == target[i]) {
          target[i] = ' ';
		  break;
	  }
	  /*
	  if (0xa == target[i]) {
		  break;
	  }
	  if (0xd == target[i]) {
		  break;
	  }
	  */
	  i++;
	}
    return (EOF+1);
}
/*
../../build/Source/pin/pin-windows-intel64/pin.exe -slow_asserts  C:\Users\tevi\Documents\work\pin\pin_mc_malloc_2_9\build\Source\pin\pin-W-X-Y-ia32_intel64-windows\/Tests/obj-intel64/cp-pin.exe makefile makefile.winapp_ru
*/
int main (int argc, char *argv[])
{
    char correctCmdLine[1024];
    int i, j, k, correctCmdLineChar;
    int argvNum;

    memset (correctCmdLine, 0, 1024);
    FILE *fp = fopen ("pin_invoke.txt", "r");
    readln (fp, correctCmdLine);
    correctCmdLineChar = strlen (correctCmdLine);
    correctCmdLine[correctCmdLineChar] = ' ';
    
    for (i=1; i<argc; i++)
    {
        strcat (correctCmdLine, " ");
        strcat (correctCmdLine, (argv[i]));
    }
    correctCmdLineChar = 0;
    
    while (correctCmdLine[correctCmdLineChar] != 0)
    {
        if (correctCmdLine[correctCmdLineChar] == '/')
        {
            correctCmdLine[correctCmdLineChar] = '\\';
        }
        else if (correctCmdLine[correctCmdLineChar] == '-' && correctCmdLine[correctCmdLineChar+1] == '-')
        {
            correctCmdLine[correctCmdLineChar-1] = ' ';
        }
        correctCmdLineChar++;
    }
    
    printf ("%s\n", correctCmdLine);
}