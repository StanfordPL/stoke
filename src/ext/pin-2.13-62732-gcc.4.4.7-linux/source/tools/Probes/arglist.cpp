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
#include "arglist.h"
#include <stdlib.h>
#include <string.h>

ARGUMENTS_LIST::ARGUMENTS_LIST(int argc, const char* const*argv)
{
    m_argv = new char*[argc];
    for(int i=0; i<argc; i++)
    {
        m_argvStrList.push_back(argv[i]);
        m_argv[i] = new char[strlen(argv[i]) + 1];
        strcpy(m_argv[i], argv[i]);
    }
}

ARGUMENTS_LIST::~ARGUMENTS_LIST()
{
    CleanArray();
}

void ARGUMENTS_LIST::Add(const string& argsStr)
{
    int i=0;
    while (i<argsStr.size())
    {
        while (argsStr[i] == ' ') i++;
        int j=i;
        while((argsStr[j] != ' ') && (j < argsStr.size())) j++;
        string arg = argsStr.substr(i, j-i);
        m_argvStrList.push_back(arg);
        i = j;
    }
    CleanArray();
}

int ARGUMENTS_LIST::Argc() const
{
    return m_argvStrList.size();
}

char ** ARGUMENTS_LIST::Argv()
{
    if (!m_argv)
        BuildArray();
    return m_argv;
}

string  ARGUMENTS_LIST::String() const
{
    string fullStr;
    list<string>::const_iterator it = m_argvStrList.begin();
    for (; it != m_argvStrList.end(); ++it)
    {
        fullStr += *it;
        fullStr += " ";
    }
    return fullStr;

}

void ARGUMENTS_LIST::CleanArray()
{
    if (!m_argv) return;
    for(int i=0; i < Argc(); i++) delete [] m_argv[i];
    delete [] m_argv;
    m_argv = 0;
}

void ARGUMENTS_LIST::BuildArray()
{
    if (m_argv) CleanArray();

    m_argv = new char*[Argc()+1];
    list<string>::const_iterator it = m_argvStrList.begin();
    int i=0;
    for (; it != m_argvStrList.end(); ++it, ++i)
    {
        m_argv[i] = new char[it->size()+1];
        strcpy(m_argv[i], it->c_str());
    }
    m_argv[i] = 0;
}
