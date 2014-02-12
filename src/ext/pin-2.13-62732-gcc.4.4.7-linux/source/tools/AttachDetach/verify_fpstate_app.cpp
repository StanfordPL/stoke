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
// @ORIGINAL_AUTHOR: Elena Demikhovsky

/*! @file
 *  The test verifies that FP state of thread is not changed by Pin injection
 */
#include <assert.h>
#include <stdio.h>
#include <string.h>
#include <sys/types.h>
#include <unistd.h>
#if defined(TARGET_ANDROID)
#include "android_ucontext.h"
#endif
#include <pthread.h>
#include <sys/wait.h>
#include <stdlib.h>
#include <string>
#include <list>
#include <sys/syscall.h>
#include <sched.h>


using namespace std;


struct ThreadLock
{
    unsigned long _tid;
};

extern "C" void InitLock(ThreadLock *lock);
extern "C" void GetLock(ThreadLock *lock, unsigned long tid);
extern "C" void ReleaseLock(ThreadLock *lock);

/* 
 * The total number of threads that should run in this process
 * The number may be changed in command line with -th_num
 */
unsigned int numOfSecondaryThreads = 4;

/*
 * Get thread Id
 */
pid_t GetTid()
{
     return syscall(__NR_gettid);
}

#define FP_STATE_SIZE 512
#ifdef TARGET_IA32
struct fxsave
{
    unsigned short _fcw;
    unsigned short _fsw;
    unsigned char  _ftw;
    unsigned char  _pad1;
    unsigned short _fop;
    unsigned int _fpuip;
    unsigned short _cs;
    unsigned short _pad2;
    unsigned int _fpudp;
    unsigned short _ds;
    unsigned short _pad3;
    unsigned int _mxcsr;
    unsigned int _mxcsrmask;
    unsigned char  _st[8 * 16];
    unsigned char  _xmm[8 * 16];
    unsigned char  _reserved[56 * 4];
};

struct KernelFpstate
{
    struct _libc_fpstate _fpregs_mem;   // user-visible FP register state (_mcontext points to this)
    struct fxsave _fxsave;           // full FP state as saved by fxsave instruction
};
#else
struct fxsave 
{
    unsigned short   _cwd;
    unsigned short   _swd;
    unsigned short   _twd;    /* Note this is not the same as the 32bit/x87/FSAVE twd */
    unsigned short   _fop;
    unsigned long    _rip;
    unsigned long    _rdp;
    unsigned int     _mxcsr;
    unsigned int     _mxcsrmask;
    unsigned int     _st[32];   /* 8*16 bytes for each FP-reg */
    unsigned char    _xmm[16 * 16];  /* 16*16 bytes for each XMM-reg  */
    unsigned int     _reserved[24];
};

struct KernelFpstate
{
    struct fxsave _fxsave;   // user-visible FP register state (_mcontext points to this)
};

#endif
 
extern "C" void ReadFpContext(unsigned char *buf);

int CompareFpStates(unsigned char *fpBuf1, unsigned char *fpBuf2)
{
    KernelFpstate *fpState1 = reinterpret_cast < KernelFpstate * > (fpBuf1);
    KernelFpstate *fpState2 = reinterpret_cast < KernelFpstate * > (fpBuf2);
    return memcmp(&(fpState1->_fxsave), &(fpState2->_fxsave), 
                    sizeof(fpState1->_fxsave)- sizeof(fpState1->_fxsave._reserved));
}

void  PrintFpState(pid_t tid, unsigned char *fpBuf)
{
    KernelFpstate *fpState = reinterpret_cast < KernelFpstate * > (fpBuf);
    unsigned int *buf = (unsigned int *)&(fpState->_fxsave);
    unsigned int bufSize = sizeof(struct fxsave) - 
            sizeof (fpState->_fxsave._reserved) - 
            sizeof (fpState->_fxsave._xmm) -
            sizeof (fpState->_fxsave._st);
    for (unsigned int i=0; i< bufSize/sizeof(unsigned int); i++)
    {
        fprintf(stderr, "%08x ", buf[i]);
    }
    fprintf(stderr, "\n");
    // print fp registers
    buf = (unsigned int *)&(fpState->_fxsave._st);
    bufSize = sizeof (fpState->_fxsave._st);
    
    for (unsigned int i=0; i< bufSize/16; i++)
    {
        fprintf(stderr, "st%d = %08x %08x %08x %08x ", i, 
                buf[i*4+0], buf[i*4+1], buf[i*4+2], buf[i*4+3]);
    }
    fprintf(stderr, "\n");
    // print xmm registers
    buf = (unsigned int *)&(fpState->_fxsave._xmm);
    bufSize = sizeof (fpState->_fxsave._xmm);
    
    for (unsigned int i=0; i< bufSize/16; i++)
    {
        fprintf(stderr, "xmm%d = %08x %08x %08x %08x ", i, 
                buf[i*4+0], buf[i*4+1], buf[i*4+2], buf[i*4+3]);
    }
    fprintf(stderr, "\n");
    
}

bool waitForPin = true;
volatile unsigned int secThreadStarted = 0;
ThreadLock mutex;

void * ThreadFunc(void * arg)
{
    unsigned char *buf1 = new unsigned char[FP_STATE_SIZE+16];
    // align 16
    unsigned char *fpstateBuf1 = (unsigned char*)((((long)buf1+16)>>4) << 4);
    memset(fpstateBuf1, 0, FP_STATE_SIZE);

    unsigned char *buf2 = new unsigned char[FP_STATE_SIZE+16];
    // align 16
    unsigned char *fpstateBuf2 = (unsigned char*)((((long)buf2+16)>>4) << 4);
    memset(fpstateBuf2, 0, FP_STATE_SIZE);
    
    
    // Do not call any routine that can change FP state
    // between two reads:
    
    // This is the first read
    ReadFpContext(fpstateBuf1);
    
    GetLock(&mutex, (unsigned long)GetTid());
    ++secThreadStarted;
    ReleaseLock(&mutex);
    
    while (waitForPin)
    {
        sched_yield();
    }
    
    // This is the second read
    ReadFpContext(fpstateBuf2);
    
    unsigned long res;
    GetLock(&mutex, (unsigned long)GetTid());
    if (CompareFpStates(fpstateBuf1, fpstateBuf2))
    {
        printf("Fp state was changed in thread %d\n", GetTid());
        fprintf(stderr, "\n\nApplication FP state for thread %d:\n", GetTid());
        PrintFpState(GetTid(), fpstateBuf1);
        
        fprintf(stderr, "\n\nApplication+Pin FP state for thread %d:\n", GetTid());
        PrintFpState(GetTid(), fpstateBuf2);
        res = 0;
    }
    else
    {
        res = 1;
    }
    ReleaseLock(&mutex);
    delete [] buf1;
    delete [] buf2;
    return (void *)res;
}
    

#define DECSTR(buf, num) { buf = (char *)malloc(10); sprintf(buf, "%d", num); }

inline void PrintArguments(char **inArgv)
{
    fprintf(stderr, "Going to run: ");
    for(unsigned int i=0; inArgv[i] != 0; ++i)
    {
        fprintf(stderr, "%s ", inArgv[i]);
    }
    fprintf(stderr, "\n");
}


/* AttachAndInstrument()
 * a special routine that runs $PIN
 */
void AttachAndInstrument(list <string > * pinArgs)
{
    list <string >::iterator pinArgIt = pinArgs->begin();

    string pinBinary = *pinArgIt;
    pinArgIt++;

    pid_t parent_pid = getppid();


    char **inArgv = new char*[pinArgs->size()+10];

    unsigned int idx = 0;
    inArgv[idx++] = (char *)pinBinary.c_str(); 
    inArgv[idx++] = (char*)"-pid"; 
    inArgv[idx] = (char *)malloc(10);
    sprintf(inArgv[idx++], "%d", parent_pid);

    for (; pinArgIt != pinArgs->end(); pinArgIt++)
    {
        inArgv[idx++]= (char *)pinArgIt->c_str();
    }
    inArgv[idx] = 0;
    
    PrintArguments(inArgv);

    execvp(inArgv[0], inArgv);
    fprintf(stderr, "ERROR: execv %s failed\n", inArgv[0]);
    kill(parent_pid, 9);
    return; 
}



/*
 * Expected command line: <this exe> [-th_num NUM] -pin $PIN -pinarg <pin args > -t tool <tool args>
 */

void ParseCommandLine(int argc, char *argv[], list < string>* pinArgs)
{
    string pinBinary;
    for (int i=1; i<argc; i++)
    {
        string arg = string(argv[i]);
        if (arg == "-th_num")
        {
            numOfSecondaryThreads = atoi(argv[++i]) - 1;
        }
        else if (arg == "-pin")
        {
            pinBinary = argv[++i];
        }
        else if (arg == "-pinarg")
        {
            for (int parg = ++i; parg < argc; parg++)
            {
                pinArgs->push_back(string(argv[parg]));
                ++i;
            }
        }
    }
    if (pinBinary.empty())
    {
        fprintf(stderr, "-pin parameter should be specified\n");
    }
    else
    {
        pinArgs->push_front(pinBinary);
    }
}

pthread_t *thHandle;
// This function should be replaced by Pin tool.
extern "C" int ThreadsReady(unsigned int numOfThreads)
{
    assert(numOfThreads == numOfSecondaryThreads+1);
    return 0;
}
    
int main(int argc, char *argv[])
{
    list <string> pinArgs;
    ParseCommandLine(argc, argv, &pinArgs);
    
    // initialize a mutex that will be used by threads
    InitLock(&mutex);
    
    thHandle = new pthread_t[numOfSecondaryThreads];

    // start all secondary threads
    for (unsigned int i = 0; i < numOfSecondaryThreads; i++)
    {
        pthread_create(&thHandle[i], 0, ThreadFunc, (void *)i);
    }

    while (secThreadStarted < numOfSecondaryThreads)
    {
        sched_yield();
    }
    
    /*
     * Allocate 2 buffers for FP state. The first buffer is filled before attach.
     * The second is just after.
     * We should avoid any operation that change XMM registers between two reads
    */
    float a = 3.5;
    float b = a/5.003;
    
    char fpbuf[100];
    sprintf(fpbuf, "%f", b);
    
    unsigned char *buf1 = new unsigned char[FP_STATE_SIZE+16];
    // align 16
    unsigned char *fpstateBuf1 = (unsigned char*)((((long)buf1+16)>>4) << 4);
    memset(fpstateBuf1, 0, FP_STATE_SIZE);

    unsigned char *buf2 = new unsigned char[FP_STATE_SIZE+16];
    // align 16
    unsigned char *fpstateBuf2 = (unsigned char*)((((long)buf2+16)>>4) << 4);
    memset(fpstateBuf2, 0, FP_STATE_SIZE);

    // === First read is here
    ReadFpContext(fpstateBuf1);
    
    // I assume that fork() does not touch xmm registers
    pid_t child = fork();

    if (child == 0)
    {
        AttachAndInstrument(&pinArgs);
    }
    
    // Give enough time for all threads to get started 
    while (!ThreadsReady(numOfSecondaryThreads+1))
    {
        sched_yield();
    }
    
    // === Second read is here
    ReadFpContext(fpstateBuf2);        
    
    // tell other threads that Pin is attached
    waitForPin = false;    

    // now all secondary threads should exit
    // the returned value is not 0 if FP state wasn't correctly set 
    // after Pin attach
    
    bool result = true;
    for (unsigned int i = 0; i < numOfSecondaryThreads; i++)
    {
        void * threadRetVal;
        pthread_join(thHandle[i], &threadRetVal);
        if (threadRetVal != (void *)1)
        {
            result = false;
        }
    }
    if (!result)
    {
        printf("ERROR: FP registers are changed after Pin attach\n");
        return -1;
    }

    // Check the main thread    

    if (CompareFpStates(fpstateBuf1, fpstateBuf2))
    {
        printf("Fp state was changed in the main thread %d\n", GetTid());
        fprintf(stderr, "\n\nApplication FP state for thread %d:\n", GetTid());
        PrintFpState(GetTid(), fpstateBuf1);
        fprintf(stderr, "\n\nApplication+Pin FP state for thread %d:\n", GetTid());
        PrintFpState(GetTid(), fpstateBuf2);
        return -1;
    }

    delete [] buf1;
    delete [] buf2;
    
    printf("SUCCESS: FP registers are preserved after Pin attach\n");
    return 0;
}

