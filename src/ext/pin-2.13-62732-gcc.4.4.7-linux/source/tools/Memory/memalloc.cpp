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
#include <stdlib.h>
#include "pin.H"

/* ===================================================================== */
/* Commandline Switches */
/* ===================================================================== */

KNOB<string> KnobOutputFile(KNOB_MODE_WRITEONCE,    "pintool",
    "o", "memalloc.out", "specify memalloc file name");


/* ===================================================================== */
/* Globals */
/* ===================================================================== */

FILE * out;

/* ===================================================================== */
// Specific Linux code - 
// On fc5, we found that when running out of memory, the kernal memory
// was also exausted and the process was killed by SIGKILL.
// Therefore, use getrlimit64/setrlimit64 in order to make sure kernel 
// memory is not exausted. This limitation is also valuable for 64-bit 
// Linux systems in order to prevent memory trashing
//
// On FreeBSD we found the system to hang when kern.maxswzone isn't large
// enough to cover the entire swap area
/* ===================================================================== */

#ifdef TARGET_LINUX
#define GETRLIMIT getrlimit64
#define SETRLIMIT setrlimit64
typedef struct rlimit64 rlimit_t;
#endif

#if defined(TARGET_BSD) || defined(TARGET_MAC)
#define GETRLIMIT getrlimit
#define SETRLIMIT setrlimit
typedef struct rlimit rlimit_t;
#endif

#if defined(TARGET_LINUX) || defined(TARGET_BSD) || defined(TARGET_MAC)

#if defined(TARGET_LINUX)
#include <sys/sysinfo.h>

UINT64 GetTotalSwap()
{
    struct sysinfo info;

    if(sysinfo(&info) < 0)
        return 0;

	return (UINT64)info.totalswap * info.mem_unit;
}

#else
UINT64 GetTotalSwap()
{
	// Not supported on FreeBSD and Mac
	return 0;
}
#endif

#include <sys/resource.h>

#define TOP_LIMIT (1024*1024*1024)

void LimitAvailableSpace()
{
    size_t myLimit;
    rlimit_t rlim;

    // Get total swap in bytes (originally it is in mem units).
	UINT64 totalswap = GetTotalSwap();

    // Make the limit at most 40% of total swap area or 400Mb
    if(totalswap == 0)
    {
        myLimit = (TOP_LIMIT / 10) * 4;
    }
    else
    {
        if(totalswap > (UINT64)(TOP_LIMIT))
        {
            myLimit = (TOP_LIMIT / 10) * 4;
        }
        else
        {
            myLimit = (totalswap / 10) * 4;
        }
    }

    if(GETRLIMIT(RLIMIT_AS, &rlim) < 0)
    {
        fprintf(out, "failed to getrlimit: continue...\n");
        return;
    }

    if ((size_t)rlim.rlim_cur > myLimit);
    {
        rlim.rlim_cur = myLimit;
    }

    if(SETRLIMIT(RLIMIT_AS, &rlim) < 0)
    {
        fprintf(out, "failed to setrlimit: continue...\n");
        return;
    }
}
#endif

VOID Fini(INT32 code, VOID *v)
{
    void* reserve = malloc(1024*1024); //Reserving enough memory to allow Pin to allocate memory while
								       //shutting down.
    char *ptr;
    do
    {
        ptr = (char *)malloc(1024);
    } while (ptr != NULL);
    free(reserve);
    fprintf(out, "Got NULL while trying to allocate memory, test successful.\n");
    fclose(out);    
}

int main(int argc, char * argv[])
{
    PIN_Init(argc, argv);
    PIN_InitSymbols();

#if defined(TARGET_LINUX) || defined(TARGET_BSD)
    LimitAvailableSpace();
#endif

    out = fopen(KnobOutputFile.Value().c_str(), "w");

    PIN_AddFiniFunction(Fini, 0);
    // Never returns
    PIN_StartProgram();
 
    return 0;
}
