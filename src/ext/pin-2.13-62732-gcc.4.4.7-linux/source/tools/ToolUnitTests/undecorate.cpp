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
 * Check interface PIN_UndecorateSymbolName()
 *
 */

#include <stdio.h>
#include <stdlib.h>

#include <fstream>
#include <iostream>

#include "pin.H"

KNOB<string> KnobOutput(KNOB_MODE_WRITEONCE,"pintool", "o", "undecorate.out", "Name for log file");
KNOB<BOOL>   KnobVerbose(KNOB_MODE_WRITEONCE,"pintool", "v", "0", "Verbose output to log file");

static ofstream out;

// Define the names we expect to demangle
static struct 
{
    const string fullName;
    const string noArgsName;
} testNames[] = {
    {"A method<A>(A&)", "method<A>" },
    {"A::method1(std::vector<int, std::allocator<int> > const&)", "A::method1"},
    {"A::method2(std::string)","A::method2"},
    {"method1<A>::method1()","method1<A>::method1"},
    {"A::method3(std::string) const","A::method3"},
    {"Foo()","Foo"},
    {"int my_operator<int>(int const&)", "my_operator<int>"}
};

VOID ImageLoad(IMG img, VOID *v)
{
    for (SEC sec = IMG_SecHead(img); SEC_Valid(sec); sec = SEC_Next(sec) )
    {
        for (RTN rtn = SEC_RtnHead(sec); RTN_Valid(rtn); rtn = RTN_Next(rtn) )
        {
            string rtnName = RTN_Name(rtn);
            if (rtnName.find("method") != string::npos ||
                rtnName.find("Foo")    != string::npos ||
                rtnName.find("my_operator") != string::npos)
            {
                // The tested application has class "A" with interface "method"
                // We just check that A::method is successfully demangled
                string demangledName = PIN_UndecorateSymbolName(rtnName, UNDECORATION_COMPLETE);
                string demangledNameNoParams = PIN_UndecorateSymbolName(rtnName, UNDECORATION_NAME_ONLY);
            
                out << "Mangled name: " << rtnName << endl;
                out << "Full demangled name: " << demangledName << endl;
                out << "Demangled name w/o parameters: " << demangledNameNoParams << endl;

                BOOL matched = FALSE;
                for (UINT32 i=0; i<sizeof(testNames)/sizeof(testNames[0]); i++)
                {
                    if (demangledName == testNames[i].fullName &&
                        demangledNameNoParams == testNames[i].noArgsName)
                    {
                        matched = TRUE;
                        break;
                    }
                }

                if (!matched)
                {
                    cout << "Error in demangling: " << endl;
                    cout << "Mangled name: " << rtnName << endl;
                    cout << "Demangled name: " << demangledName << endl;
                    cout << "Demangled name, no parameters: " << demangledNameNoParams << endl;
                    exit(-1);
                }
                continue;
            }
            if (rtnName.find("@@") != string::npos)
            {
                // Check C and C++ names demangling with version (Linux)
                // Like
                //     _ZNSt11char_traitsIcE2eqERKcS2_@@GLIBCXX_3.4.5
                //     localeconv@@GLIBC_2.2
                string name = PIN_UndecorateSymbolName(rtnName, UNDECORATION_COMPLETE);
                
                if (rtnName.find("_Z") == 0)
                {
                    out << "C++ name with version: " << rtnName << endl;
                    out << "Demangled name: " << name << endl;
                }
                else
                {                    
                    out << "C name with version: " << rtnName << endl;
                    out << "Demangled name: " << name << endl;
                }
                if (name.find("@@") != string::npos)
                {
                    printf("Error: undecorated name should not include \"@@\"\n");
                    exit(-1);
                }
                continue;
            }

            // Otherwise just demangle the name both ways but normally don't bother to print them.
            // We can't easily tell what the results should be, but throwing a lot more
            // names at our demangler must be a good thng to do, and this should include
            // all the names from the standard C++ runtime, is a reasonable stress test.
            string complete = PIN_UndecorateSymbolName(rtnName, UNDECORATION_COMPLETE);
            string nameOnly = PIN_UndecorateSymbolName(rtnName, UNDECORATION_NAME_ONLY);

            if (KnobVerbose)
            {
                out << rtnName << " => " << endl;
                out << "   " << complete << endl;
                out << "   " << nameOnly << endl;
            }
        }
    }
}

int main(INT32 argc, CHAR **argv)
{
    PIN_InitSymbols();
    PIN_Init(argc, argv);
    
    out.open(KnobOutput.Value().c_str());
    
    IMG_AddInstrumentFunction(ImageLoad, 0);
    
    // Never returns
    PIN_StartProgram();
    
    return 0;
}
