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
 * runpin_app.cpp
 *
 *  Created on: Feb 2, 2012
 *      Author: bkemper
 */
#include <stdlib.h>
#include <stdio.h>
#include <iostream>
#include <string>

bool check_var_value(const char* var, const char * value) {
    std::string var_str(getenv(var));
    if (var_str == value) {
        return true;
    }
    return false;
}

int main(int argc, char *argv[]) {
#if defined(TARGET_LINUX)
    // Extract the kernel version
    // 
    FILE* pipe = popen("uname -r", "r");
    if (!pipe) 
    {
        std::cerr << "Failed to get kernel version!" << std::endl;
        exit(1);
    }

    char buffer[128];
    std::string kernel_ver = "";
    while(!feof(pipe)) {
        if(fgets(buffer, 128, pipe) != NULL)
            kernel_ver += buffer;
    }
    pclose(pipe);

    if (!(std::string(getenv("LD_LIBRARY_PATH")).find("/usr/lib") != std::string::npos))
    {
        std::cout << "Failed in application, while testing LD_LIBRARY_PATH!" << std::endl;
        exit(1);
    }

    if (!(std::string(getenv("LD_ASSUME_KERNEL")).substr(0, 10) == kernel_ver.substr(0, 10)))
    {
        std::cout << "Failed in application, while testing LD_ASSUME_KERNEL!" << std::endl;
        exit(1);
    }

    if (!check_var_value("LD_BIND_NOW", "1"))
    {
        std::cout << "Failed in application, while testing LD_BIND_NOW!" << std::endl;
        exit(1);
    }
    
    if (!check_var_value("LD_PRELOAD", "libm.so")) 
    {
        std::cout << "Failed in application, while testing LD_PRELOAD!" << std::endl;
        exit(1);
    }
#elif defined(TARGET_MAC)
    if (!(std::string(getenv("DYLD_LIBRARY_PATH")).find("/usr/lib") != std::string::npos)) {
        std::cout << "Failed in application!" << std::endl;
        exit(1);
    }
#endif
    std::cout << "Application got env vars successfully!" << std::endl;
    return 0;
}
