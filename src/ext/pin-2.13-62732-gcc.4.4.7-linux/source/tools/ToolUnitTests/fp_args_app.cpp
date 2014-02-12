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
#if defined(TARGET_WINDOWS)
#define EXPORT_CSYM extern "C" __declspec( dllexport )
#else
#define EXPORT_CSYM extern "C"
#endif


EXPORT_CSYM int fp_func3(int i1, float f2, int i3)
{
    printf("fp_func3 parameters: %d, %f, %d\n", i1, f2, i3);
    fflush (stdout);
    return i1+i3;
}

EXPORT_CSYM float fp_func4(double d1, float f2, int i3, double d4)
{
    printf("fp_func4 parameters: %e, %f, %d, %e\n", d1, f2, i3, d4);
    fflush (stdout);
    if (d4 < 6)
        return f2-0.4;
    return f2+0.1;
}

EXPORT_CSYM double fp_func1(double d1)
{
    if (d1 > 0.5)
    {
        return d1-0.1;
    }
    return d1+0.1;
}

int main()
{
    int ires = fp_func3(8, 0.53, 9);
    printf("fp_func3 result %d\n\n", ires);
    fflush (stdout);

    float fres = fp_func4(0.33333334444, 0.45, 5, 23.7878787878);
    printf("fp_func4 result %f\n\n", fres);
    fflush (stdout);

    double dres = fp_func1(0.33333334444);
    printf("fp_func1 result %e\n\n", dres);
    fflush (stdout);

    return 0;
}
