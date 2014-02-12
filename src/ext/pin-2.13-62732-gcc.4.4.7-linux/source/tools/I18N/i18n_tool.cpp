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
#include <iostream>
#include <fstream>
#include <string>
#include "pin.H"

using namespace std;


/* ===================================================================== */
/* Commandline Switches */
/* ===================================================================== */

KNOB<string> KnobUnicodeExeName(KNOB_MODE_WRITEONCE, "pintool",
    "uni_param", "Default-Name.exe", "unicode param");


/* ===================================================================== */
/* Global Variables and Definitions */
/* ===================================================================== */

std::ofstream outfile;

#if defined(TARGET_WINDOWS)
#define MAINNAME "wmain"
#elif defined(TARGET_LINUX) || defined(TARGET_BSD)
#define MAINNAME "main"
#endif
/* ===================================================================== */

VOID ImageLoad(IMG img, VOID * v)
{
    // Looking for main symbol only in main image
    IMG_TYPE imgType = IMG_Type(img);
    if(imgType ==  IMG_TYPE_STATIC || imgType == IMG_TYPE_SHARED)
    {
        string imagePath = IMG_Name(img);
        string::size_type index1 = imagePath.find("prefix_");
        if(index1 != string::npos)
        {
            string image =  imagePath.substr(index1);
            outfile << "Image: " << image << endl;
        }

        for (SEC sec = IMG_SecHead(img); SEC_Valid(sec); sec = SEC_Next(sec))
        {
            for (RTN rtn = SEC_RtnHead(sec); RTN_Valid(rtn); rtn = RTN_Next(rtn))
            {
                if (RTN_Name(rtn) == MAINNAME)
                {
                    string  filePath;
                    PIN_GetSourceLocation(RTN_Address(rtn), NULL, NULL, &filePath);

                    if (filePath != "")
                    {
                        string::size_type index = filePath.find("prefix_");
                        if(index != string::npos)
                        {
                            string file =  filePath.substr(index);
                            outfile << "File: " << file << endl;
                        }
                    }
                }
            }
        }
    }
}

VOID Fini(INT32 code, VOID *)
{
    outfile.close();
}

int main(INT32 argc, CHAR **argv)
{
    PIN_InitSymbols();
    PIN_Init(argc, argv);

    outfile.open("i18n_tool.out");
    
    IMG img = IMG_Open(KnobUnicodeExeName.Value());
    if (IMG_Valid(img) == TRUE)
    {
    	string exeFullName = KnobUnicodeExeName.Value();
    	
        outfile << exeFullName.substr(exeFullName.rfind("/")+1) << endl;
        IMG_Close(img);     
    }  
     
    IMG_AddInstrumentFunction(ImageLoad, 0);
    PIN_AddFiniFunction(Fini, 0);

    // Never returns
    PIN_StartProgram();

    return 0;
}
