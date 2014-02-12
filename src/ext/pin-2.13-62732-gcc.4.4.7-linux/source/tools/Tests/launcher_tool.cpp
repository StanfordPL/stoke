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
#include "pin.H"
#include <iostream>
#include <stdlib.h>
#include <string>

/* ===================================================================== */
/* Print Help Message                                                    */
/* ===================================================================== */
INT32 Usage()
{
    cerr <<
        "This tool checks that the launcher setups the environment correctly. \n"
        "\n";
    cerr << KNOB_BASE::StringKnobSummary();
    cerr << endl;
    return -1;
}

/* ===================================================================== */
/* Main                                                                  */
/* ===================================================================== */
int main(int argc, char *argv[])
{
    if( PIN_Init(argc,argv) )
    {
        return Usage();
    }

#if defined(TARGET_LINUX)
    // Check that LD_LIBRARY_PATH contains the required libraries to the VM.
    //
    char* ld_library_path = getenv("LD_LIBRARY_PATH");
    if (ld_library_path) {
        std::string ld_path(ld_library_path);
        // Adding ':' after each string because they all new to be before the old values in the
        // LD_LIBRARY_PATH.
        //
        bool not_found_32_glibc   = ld_path.find("/ia32/runtime/glibc:")    == std::string::npos;
        bool not_found_64_glibc   = ld_path.find("/intel64/runtime/glibc:") == std::string::npos;
        bool not_found_32_runtime = ld_path.find("/ia32/runtime:")          == std::string::npos;
        bool not_found_64_runtime = ld_path.find("/intel64/runtime:")       == std::string::npos;
        bool not_found_token      = ld_path.find("/usr/lib")                == std::string::npos;
        if (not_found_32_glibc || not_found_32_runtime || not_found_64_glibc || not_found_64_runtime ||
            not_found_token) {
            std::cout << "Failed! LD_LIBRARY_PATH = " << ld_library_path << std::endl;
            exit(1);
        }
    }
#elif defined(TARGET_MAC)
    // Check that DYLD_LIBRARY_PATH doesn't contain anything and is unset.
    //
    char* dyld_library_path = getenv("DYLD_LIBRARY_PATH");
    if (dyld_library_path) {
        std::cout << "Failed in tool! Found: " << dyld_library_path << std::endl;
        exit(1);
    }
#endif

    std::cout << "Tool success!" << std::endl;

    // Never returns
    PIN_StartProgram();

    return 0;
}
/* ===================================================================== */
/* eof */
/* ===================================================================== */
