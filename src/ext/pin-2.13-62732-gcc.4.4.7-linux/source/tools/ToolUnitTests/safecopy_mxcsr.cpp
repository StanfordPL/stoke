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

/*! @file
 *  Tool that tests the PIN_SafeCopy() function does not affect the mxcsr. 
 */

#include "pin.H"
#include <iostream>
#include <fstream>
#include <string.h>

#if defined(TARGET_WINDOWS)
namespace WINDOWS
{
#include <windows.h>
}
#else
#include <unistd.h>
#include <sys/mman.h>
#endif

// The original test value was 0x9fc0. However, due to a bug in Linux kernels after 2.6.32, the DAZ bit is not restored
// properly when returning from the kernel after a signal handler. So the test value was changed to 0x9f80.
const int mxscrTestValue = 0x9f80;
extern "C" void SetMxcsr(const int *mxcsrVal);
extern "C" void GetMxcsr(int *mxcsrVal);

/* ================================================================== */
// Global variables 
/* ================================================================== */
KNOB<string> KnobOutputFile(KNOB_MODE_WRITEONCE,         "pintool",
                            "o", "safecopy.out", "specify output file name");

std::ofstream out;

VOID * probeAddr = 0; // base address of a range overwritten by a probe 

/* ================================================================== */
// Utilities
/* ================================================================== */
#if defined(TARGET_WINDOWS)

size_t GetPageSize()
{
    WINDOWS::SYSTEM_INFO sysInfo;
    WINDOWS::GetSystemInfo(&sysInfo);
    return static_cast<size_t>(sysInfo.dwPageSize);
}

VOID * MemAlloc(size_t size)
{
    return WINDOWS::VirtualAlloc(0, size, MEM_COMMIT, PAGE_READWRITE);
}

VOID MemFree(VOID * addr, size_t size)
{
    WINDOWS::VirtualFree(addr, 0, MEM_RELEASE);
}

BOOL MemProtect(VOID * addr, size_t size, BOOL enableAccess)
{
    WINDOWS::DWORD oldProtect;
    return WINDOWS::VirtualProtect(addr, size, 
                    (enableAccess? PAGE_READWRITE : PAGE_NOACCESS), &oldProtect);
}

#else

size_t GetPageSize()
{
    return static_cast<size_t>(getpagesize());
}

VOID MemFree(VOID * addr, size_t size)
{
    munmap(addr, size);
}

BOOL MemProtect(VOID * addr, size_t size, BOOL enableAccess)
{
    
    return (-1 != mprotect(addr, size, (enableAccess? (PROT_READ | PROT_WRITE) : PROT_NONE)));
}

VOID * MemAlloc(size_t size)
{
#if defined(TARGET_MAC) || defined(TARGET_BSD)
    VOID * addr = mmap(0, size, PROT_READ | PROT_WRITE, MAP_ANON | MAP_PRIVATE, -1, 0);
#else
    VOID * addr = mmap(0, size, PROT_READ | PROT_WRITE, MAP_ANONYMOUS | MAP_PRIVATE, 0, 0);
#endif
    if (addr != MAP_FAILED)
    {
        return addr;
    }
    return 0;
}

#endif


/*!
 * Test the PIN_SafeCopy() function in the following scenarios:
 * A. Successful copy of an entire memory region
 * B. Partial copy of a memory region, whose tail is inaccessible
 * C. Failure to copy an inaccessible memory region
 */
VOID SafeCopyTest()
{
    size_t pageSize = GetPageSize();

    CHAR * src = (CHAR *)MemAlloc(2*pageSize);
    ASSERTX(src != 0);
    CHAR * srcBuf = src + 1; // +1 for testing unaligned access


    CHAR * dst = (CHAR *)MemAlloc(2*pageSize);
    ASSERTX(dst != 0);
    CHAR * dstBuf = dst + 1; // +1 for testing unaligned access

    size_t bufSize = 2*pageSize - 1;
    size_t halfBufSize = pageSize - 1;
    size_t copySize;

    //A.
    for (unsigned int i = 0; i < bufSize; ++i)
    {
        src[i] = i/256;
        dst[i] = 0;
    }
    int mxcsrValueBeforeSafeCopy;
    GetMxcsr (&mxcsrValueBeforeSafeCopy);
    SetMxcsr (&mxscrTestValue);
    copySize = PIN_SafeCopy(dstBuf, srcBuf, bufSize);
    int mxcsrValueAfterSafeCopy;
    GetMxcsr (&mxcsrValueAfterSafeCopy);
    SetMxcsr (reinterpret_cast<const int *> (&mxcsrValueBeforeSafeCopy));
    ASSERT((mxscrTestValue == mxcsrValueAfterSafeCopy), "SafeCopy (A) failed due to unexpected mxcsr value after SafeCopy.\n");
    ASSERT(((copySize == bufSize) && (memcmp(dstBuf, srcBuf, bufSize) == 0)), "SafeCopy (A) failed.\n");
    out << "SafeCopy (A): Entire buffer has been copied successfully." << endl;

    //B.
    for (unsigned int i = 0; i < pageSize; ++i)
    {
        dst[i] = 0;
    }
    MemProtect(src + pageSize, pageSize, FALSE); // second half of src is inaccessible
    copySize = PIN_SafeCopy(dstBuf, srcBuf, bufSize); 
    ASSERT(((copySize == halfBufSize) && (memcmp(dstBuf, srcBuf, halfBufSize) == 0)), "SafeCopy (B) failed.\n");

    // Check to see that all accessible bytes near the end of the first page are copied successfully
    for (unsigned int sz = 1; sz < 16; ++sz)
    {
        for (unsigned int i = 0; i < sz; ++i)
        {
            dstBuf[i] = 0;
        }
        
        GetMxcsr (&mxcsrValueBeforeSafeCopy);
        SetMxcsr (&mxscrTestValue);
        copySize = PIN_SafeCopy(dstBuf, src + pageSize - sz, pageSize); 
        GetMxcsr (&mxcsrValueAfterSafeCopy);
        SetMxcsr (reinterpret_cast<const int *> (&mxcsrValueBeforeSafeCopy));
        ASSERT((mxscrTestValue == mxcsrValueAfterSafeCopy), "SafeCopy (B) failed due to unexpected mxcsr value after SafeCopy.\n");
        ASSERT(((copySize == sz) && (memcmp(dstBuf, src + pageSize - sz, sz) == 0)), "SafeCopy (B) failed.\n");
    }

    out << "SafeCopy (B): Accessible part of the buffer has been copied successfully."  << endl;

    //C.
    MemProtect(dst, pageSize, FALSE); // dst is inaccessible
    GetMxcsr (&mxcsrValueBeforeSafeCopy);
    SetMxcsr (&mxscrTestValue);
    copySize = PIN_SafeCopy(dstBuf, srcBuf, bufSize); 
    GetMxcsr (&mxcsrValueAfterSafeCopy);
    SetMxcsr (reinterpret_cast<const int *> (&mxcsrValueBeforeSafeCopy));
    ASSERT((mxscrTestValue == mxcsrValueAfterSafeCopy), "SafeCopy (C) failed due to unexpected mxcsr value after SafeCopy.\n");
    ASSERT((copySize == 0), "SafeCopy (C) failed.\n");
    out << "SafeCopy (C): Inaccessible buffer has not been copied."  << endl;

    MemFree(src, 2*pageSize);
    MemFree(dst, 2*pageSize);
}

/*!
 * Test SafeCopy in the trace analysis routine
 */
VOID SafeCopyTestInTrace()
{
    static BOOL first = TRUE;
    if (first)
    {
        first = FALSE;
        out << "Test SafeCopy in the trace analysis routine." << endl;
        SafeCopyTest();
    }
}

/*!
 * Test SafeCopy in the trace instrumentation callback
 */
VOID Trace(TRACE trace, VOID *v)
{
    static BOOL first = TRUE;
    if (first)
    {
        first = FALSE;
        out << "Test SafeCopy in the trace instrumentation callback." << endl;
        SafeCopyTest();
        TRACE_InsertCall(trace, IPOINT_BEFORE, (AFUNPTR)SafeCopyTestInTrace, IARG_END);
    }

    // Verify that pin-inserted probes are not visible through PIN_SafeCopy
    if (probeAddr != 0)
    {
        out << "Test SafeCopy in a region overwritten by probe." << endl;
        CHAR buffer[8];
        int mxcsrValueBeforeSafeCopy, mxcsrValueAfterSafeCopy;
        GetMxcsr (&mxcsrValueBeforeSafeCopy);
        SetMxcsr (&mxscrTestValue);
        size_t copySize = PIN_SafeCopy(buffer, probeAddr, sizeof(buffer)); 
        GetMxcsr (&mxcsrValueAfterSafeCopy);
        SetMxcsr (reinterpret_cast<const int *> (&mxcsrValueBeforeSafeCopy));
        ASSERT((mxscrTestValue == mxcsrValueAfterSafeCopy), "SafeCopy failed in a region overwritten by probe due to unexpected mxcsr value after SafeCopy.\n");
        ASSERT((copySize == sizeof(buffer)), "SafeCopy failed in a region overwritten by probe.\n");
        ASSERT((memcmp(buffer, probeAddr, copySize) != 0), "Pin inserted probes are visible through SafeCopy.\n");
        probeAddr = 0;
    }
}

/*!
 * Image instrumentation callback
 */
VOID ImageLoad(IMG img, VOID *v)
{
#if defined(TARGET_WINDOWS)
    // Pin on Windows inserts a probe that intercepts APCs at KiApcUserDispatcher
    RTN rtn = RTN_FindByName(img, "KiUserApcDispatcher");
    if (RTN_Valid(rtn))
    {
        probeAddr = (VOID *)RTN_Address(rtn);
    }
#endif
}

VOID Fini(INT32 code, VOID *v)
{
    out <<  "SafeCopy test completed." << endl;
}

/*!
 * The main procedure of the tool.
 */
int main(int argc, char *argv[])
{
    PIN_InitSymbols();
    PIN_Init(argc,argv);

    out.open(KnobOutputFile.Value().c_str());
    
    // Register function to be called to instrument traces
    TRACE_AddInstrumentFunction(Trace, 0);

    // Register function to be called to instrument images
    IMG_AddInstrumentFunction(ImageLoad, 0);

    // Register function to be called when the application exits
    PIN_AddFiniFunction(Fini, 0);

    // Start the program, never returns
    PIN_StartProgram();
    
    return 0;
}

/* ===================================================================== */
/* eof */
/* ===================================================================== */
