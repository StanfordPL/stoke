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
#if defined(TARGET_WINDOWS)
# include <Windows.h>
# define EXPORT_SYM __declspec( dllexport )
#else
# define EXPORT_SYM
#endif

// Empty function - this is simply a placeholder for the tool to start printing register values.
extern "C" EXPORT_SYM void Start()
{
    // do nothing
}

// Empty function - this is simply a placeholder for the tool to stop printing register values.
extern "C" EXPORT_SYM void Stop()
{
    // do nothing
}

// Do some calculations and let the tool print the registers.
long double Work()
{
    int inta = 1;
    int intb = 2;
    int intc = inta - intb;
    int intd = intb - inta;
    int inte = intc * intd;

    long double lda = 1234.5678;
    long double ldb = 8765.4321;
    long double ldc = lda / ldb;
    long double ldd = ldb / lda;
    long double lde = ldc + ldd;
    return (lde * (long double)inte);
}

int main()
{
    Start();
    Work();
    Stop();
}
