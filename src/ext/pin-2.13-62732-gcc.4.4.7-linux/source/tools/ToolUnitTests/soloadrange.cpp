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
#include <string.h>
#include <iostream>
#include <fstream>
#include <string>
#include <linux/limits.h>
#include "pin.H"

// On new Linux systems realpath is replaced with a safer version realpath_chk,
// this function is implemented only in GLIBC_2.4 and therefore is not supported
// with Pin-probes runtime. The replacement of realpath is implemented in <stdlib.h>
// This definition replaces the include of stdlib.h and preserve the "old" function.
extern "C" char *realpath (__const char *__restrict __name, char *__restrict __resolved);

using namespace std;

ofstream out("soloadrange.out");

BOOL CheckImage(const char *name, ADDRINT low, ADDRINT high)
{
    FILE *fp = fopen("/proc/self/maps", "r");
    char buff[1024];
    ADDRINT glow = 0, ghigh = 0;
    while(fgets(buff, 1024, fp) != NULL)
    {
        ADDRINT mapl, maph;
        if (strstr(buff, name) != 0)
        {
            if(sscanf(buff, "%lx-%lx", (unsigned long *)&mapl, (unsigned long *)&maph) != 2)
                continue;

            if(glow == 0) glow = mapl;
            if(ghigh == 0) ghigh = maph;
            if(mapl < glow) glow = mapl;
            if(maph > ghigh) ghigh = maph;
        }    
    }
    fclose(fp);

    if (glow == 0 || ghigh == 0)
        return TRUE;

    if (low < glow || high > ghigh)
    {
        return FALSE;
    }

    return TRUE;
}
    

VOID ImageLoad(IMG img, VOID * v)
{
    string name = IMG_Name(img);

    char realname[PATH_MAX];
    if(realpath(name.c_str(), realname) == NULL)
        return;

    name = string(realname);
    string::size_type pos = name.rfind('/');
    if (pos != string::npos)
        name = name.substr(pos + 1);
    
    static BOOL stat = TRUE;
    if (name.find("libc-") != string::npos)
    {
        stat = FALSE;
        return;
    }

    if (stat)
        return;

    ADDRINT low = IMG_LowAddress(img);
    ADDRINT high = IMG_HighAddress(img);

    if (!CheckImage(realname, low, high))
    {
        out << "IMG name: " << name <<  " Low: " << low << " High: " << high << " " << "FAILED" << endl;
    }
}

int main(INT32 argc, CHAR **argv)
{
    PIN_Init(argc, argv);

    out << hex;
    
    IMG_AddInstrumentFunction(ImageLoad, 0);
    
    // Never returns
    PIN_StartProgram();
    
    return 0;
}
