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
#include <unistd.h>
#include <string> 
#include <sstream>
#include <fstream>
#include <string>

using std::string;
using std::ostringstream;
using std::ifstream;

// Part of the message which Pin gives when it can't attach to the application since the main thread is a zombie thread
const string toFind = "E:The main thread of the application is a zombie thread. Pin can't attach to an application which its main thread is a zombie thread"; 

/*
 * Check if a thread is a zombie thread
 * @param[in] tid - thread system id
 */
bool isZombie(pid_t tid)
{
    string oneline;
    string String = static_cast<ostringstream*>( &(ostringstream() << ((int)tid )))->str();

    // Contains various information about the status of a process
    string filename = "/proc/" + String + "/status";
    ifstream inFile(filename.c_str());
    const string state = "State:";
    if (inFile.is_open())
    {
        while (inFile.good())
        {
            getline (inFile,oneline);
            int i;
            //Find the line which repesents the state of the thread
            for(i=0 ; i<state.length() ;++i)
            {
                 if(oneline[i] != state[i])
                 break;
            }
            if(i == state.length())
            {
                // Check if the thread is a zombie thread
                // The state is given by a sequence of characters.
                // The first character indicates the state of the process
                // 'Z' marks a zombie thread.
                for(int j=i ; j< oneline.length() ; ++j)
                {
                    if( isspace(oneline[j]))
                    {
                        continue;
                    }
                    // The current state of the process is zombie.
                    else if( oneline[j] == 'Z')
                    {
                        return true;
                    }
                    else
                    {
                        break;
                    }
                }
            }
        }
        inFile.close();
    }
    return false;
}

/*
 *  Check if Pin gave a message already that it can't attach to the application since the main thread is a zombie thread.
 *  @param[in] fileName-the message that Pin can't attach to the application will be redirected to this file.
 */
bool NotifyUserPinUnableToAttach(string fileName)
{
    string oneline;
    
    ifstream inFile(fileName.c_str()); 
    if (inFile.is_open()) 
    {
        while (inFile.good()) 
       {
            getline (inFile,oneline);
            if(oneline.find(toFind)==0)
            {
                return true;
            }
        }
        inFile.close();
    }
    return false;
}

