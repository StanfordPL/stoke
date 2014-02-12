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
#include <sys/types.h>
#include <string.h>
#include <stdlib.h>
#include <unistd.h>
#include <iostream>
#include <sys/wait.h>
using namespace std;

// launch types:
// 1. make <compiler> <compile flags> <source file name> <exe name>
//    - copy <source file name> to <unicode source file name>
//    - compile <unicode source file name>, executable name will be <exe name>
//    - delete all files it created except from the executable
// 2. test <path>/pin <pin flags + [pin tool]> -- <exe name>
//    - copy <exe name> to <unicode exe name>
//    - launch Pin 
//    - delete the files it created

int make(int argc, char * argv[]);
int test(int argc, char * argv[], char * envp[]);

int main(int argc, char * argv[], char * envp[])
{ 
    if(strcmp(argv[1], "make") == 0)
    {
        return make(argc - 2, &argv[2]);
    }	 
    if(strcmp(argv[1], "test") == 0)
    {
        return test(argc - 2, &argv[2], envp);
    }

    cout << "Bad arguments to Linux Unicode test launcher" << endl;
    return 0;    
}

//internationalization in Japanese (encoded in UTF-8)
static char i18n[] = {0xE5, 0x9B,  0xBD, 0xE9, 0x9A, 0x9B, 0xE5, 0x8C, 0x96, 0x00};
static string i18nStr(i18n);

// <compiler> <compile flags> <source file name>
int make(int argc, char * argv[])
{
    string compilerLine = "";

    //Build Compiler command line
    for(int i = 0; i < argc - 1; i++)
    {
        compilerLine += string(argv[i]) + string(" ");
    }

    // "cp <source file name> <Unicode file name>"
    string sourceFileName = argv[argc - 1];
    
    string newSourceFileName = string("prefix_") + i18nStr + string("_") + sourceFileName;    
    string copyStr = string("cp ") + sourceFileName + string(" ") + newSourceFileName;
    system(copyStr.c_str());

    // "<compiler> <compile flags> <Unicode file name>"
    compilerLine += string(" ") + newSourceFileName;
    system(compilerLine.c_str());

    // "del <unicode name>.*"
#ifndef TARGET_ANDROID
    string delStr = string("rm -f ") + newSourceFileName; 
#else
    // Android rm doesn't support -f switch
    string delStr = string("rm ") + newSourceFileName; 
#endif

    system(delStr.c_str());

    return 0;	
}

// <path>/pin <pin flags + [pin tool]> -- <exe name>
int test(int argc, char * argv[], char * envp[])
{
    int unicodeParamIndex = 0;
    char ** exeParams = new char*[argc + 2];
    
    string newUnicodeParamName;
    string exeName;
    string newExeName;

    string exeFullName = argv[argc-1];
    size_t namePos = exeFullName.rfind("/") + 1;
    string exeDir = exeFullName.substr(0, namePos);
    exeName = exeFullName.substr(namePos);
    newExeName = exeDir + string("prefix_") + i18nStr + string("_") + exeName;
    exeParams[argc - 1] = (char *)newExeName.c_str();
    exeParams[argc] = (char *)i18nStr.c_str();
    exeParams[argc + 1] = NULL; 
    // "cp <original name> <unicode name>"
    string copyStr = string("cp ") + exeFullName + string(" ") + newExeName;
    system(copyStr.c_str());
    
    // Build command line
    for(int i = 0; i < argc - 1; i++)
    {
        exeParams[i] = argv[i];
        if(strcmp("-uni_param", argv[i]) == 0)
        {
            unicodeParamIndex = i+1;
        }
    }
    
    if(unicodeParamIndex != 0)
    {
        newUnicodeParamName = newExeName;
        exeParams[unicodeParamIndex] = (char *)newUnicodeParamName.c_str();
    }
    
    int ret = 0;

    pid_t pid = fork();
    //child
    if(pid == 0)
    {
        //invoke pin
        int res = execve(exeParams[0], exeParams, envp);
        cerr << "failed to exec, status = " << res << endl;
        ret = 1;
    }
    if(pid < 0)
    {
        cout << "failed to fork, status = " <<  pid << endl;
        ret = 1;
    }
   
    int status = 0;
    wait(&status);
#ifndef TARGET_ANDROID
    string delStr = string("rm -f ") + newExeName;
#else
    // Android rm doesn't support -f switch
    string delStr = string("rm ") + newExeName;
#endif
    // "rm -f <unicode name>"
    system(delStr.c_str());
    return ret;	
}


