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
 * This tool mimics the behavior of TPSS on Linux by adding probes to various librt functions.
 * However, in this tool these probes are merely empty wrappers that call the original functions.
 * The objective of the test is to verify that probe generation and insertion don't cause Pin
 * to crash.

 */

#include "pin.H"
#include <iostream>
#include <fstream>
#include <mqueue.h>
#include <fcntl.h>
#include <sys/stat.h>

typedef struct timespec * STRUCT_TIMESPEC_PTR;

typedef char * CHAR_PTR;

typedef unsigned * UNSIGNED_PTR;

ofstream OutFile;

/* ===================================================================== */
/* Commandline Switches                                                  */
/* ===================================================================== */

KNOB<string> KnobOutputFile(KNOB_MODE_WRITEONCE, "pintool",
    "o", "tpss_lin_librt.txt", "specify tool log file name");

/* ===================================================================== */
/* Utility functions                                                     */
/* ===================================================================== */

// Print help information
INT32 Usage()
{
    cerr << "This tool mimics the behavior of TPSS on Linux by adding probes to various librt functions." << endl;
    cerr << KNOB_BASE::StringKnobSummary();
    cerr << endl;
    return 1;
}

// Utility function to return the time
string CurrentTime()
{
    char tmpbuf[128];
    time_t thetime = time(NULL);
    ctime_r(&thetime, tmpbuf);
    return tmpbuf;
}


/* ===================================================================== */
/* Function signatures - these functions will be probed                  */
/* ===================================================================== */

int (*fptrclock_nanosleep)(clockid_t __clock_id, int __flags, const STRUCT_TIMESPEC_PTR __rqtp, STRUCT_TIMESPEC_PTR __rmtp);

int (*fptrmq_close)(mqd_t __mqdes);

mqd_t (*fptrmq_open)(const CHAR_PTR __name, int __oflag);

ssize_t (*fptrmq_receive)(mqd_t __mqdes, CHAR_PTR __msg_ptr, size_t __msg_len, UNSIGNED_PTR __msg_prio);

ssize_t (*fptrmq_timedreceive)(mqd_t __mqdes, CHAR_PTR __msg_ptr, size_t __msg_len, UNSIGNED_PTR __msg_prio,  const STRUCT_TIMESPEC_PTR __abs_timeout);

int (*fptrmq_send)(mqd_t __mqdes, const CHAR_PTR __msg_ptr, size_t __msg_len, unsigned __msg_prio);

int (*fptrmq_timedsend)(mqd_t __mqdes, const CHAR_PTR __msg_ptr, size_t __msg_len, unsigned __msg_prio, const STRUCT_TIMESPEC_PTR __abs_timeout);

/* ===================================================================== */
/* Probes - implementation of the wrapper functions                      */
/* ===================================================================== */

int myclock_nanosleep(clockid_t __clock_id, int __flags, const STRUCT_TIMESPEC_PTR __rqtp, STRUCT_TIMESPEC_PTR __rmtp)
{
   OutFile << CurrentTime() << "myclock_nanosleep called " << endl;
   OutFile.flush();
   int res = fptrclock_nanosleep(__clock_id,  __flags, __rqtp, __rmtp);

   return res;
}

int mymq_close(mqd_t __mqdes)
{
   OutFile << CurrentTime() << "mymq_close called " << endl;
   OutFile.flush();
   int res = fptrmq_close(__mqdes);

   return res;
}

mqd_t mymq_open(const CHAR_PTR __name, int __oflag)
{
   OutFile << CurrentTime() << "mymq_open called " << endl;
   OutFile.flush();
   mqd_t res = fptrmq_open(__name, __oflag);

   return res;
}

ssize_t mymq_receive(mqd_t __mqdes, CHAR_PTR __msg_ptr, size_t __msg_len, UNSIGNED_PTR __msg_prio)
{
   OutFile << CurrentTime() << "mymq_receive called " << endl;
   OutFile.flush();
   ssize_t res = fptrmq_receive( __mqdes,  __msg_ptr,  __msg_len,  __msg_prio);

   return res;
}

ssize_t mymq_timedreceive(mqd_t __mqdes, CHAR_PTR __msg_ptr, size_t __msg_len, UNSIGNED_PTR __msg_prio,  const STRUCT_TIMESPEC_PTR __abs_timeout)
{
   OutFile << CurrentTime() << "mymq_timedreceive called " << endl;
   OutFile.flush();
   ssize_t res = fptrmq_timedreceive( __mqdes, __msg_ptr, __msg_len, __msg_prio, __abs_timeout);

   return res;
}

int mymq_send(mqd_t __mqdes, const CHAR_PTR __msg_ptr, size_t __msg_len, unsigned __msg_prio)
{
   OutFile << CurrentTime() << "mymq_send called " << endl;
   OutFile.flush();
   int res = fptrmq_send(__mqdes, __msg_ptr,  __msg_len,  __msg_prio);

   return res;
}

int mymq_timedsend(mqd_t __mqdes, const CHAR_PTR __msg_ptr, size_t __msg_len, unsigned __msg_prio, const STRUCT_TIMESPEC_PTR __abs_timeout)
{
   OutFile << CurrentTime() << "mymq_timedsend called " << endl;
   OutFile.flush();
   int res = fptrmq_timedsend(__mqdes, __msg_ptr, __msg_len, __msg_prio, __abs_timeout);

   return res;
}

/* ===================================================================== */
/* Instrumnetation functions                                             */
/* ===================================================================== */

// Image load callback - inserts the probes.
void ImgLoad(IMG img, void *v)
{
    // Called every time a new image is loaded

    if ( (IMG_Name(img).find("librt.so") != string::npos) ||
         (IMG_Name(img).find("LIBRT.SO") != string::npos) ||
         (IMG_Name(img).find("LIBRT.so") != string::npos) )
    {
        RTN rtnclock_nanosleep = RTN_FindByName(img, "clock_nanosleep");
        if (RTN_Valid(rtnclock_nanosleep) && RTN_IsSafeForProbedReplacement(rtnclock_nanosleep))
        {
            OutFile << CurrentTime() << "Inserting probe for clock_nanosleep at " << RTN_Address(rtnclock_nanosleep) << endl;
            OutFile.flush();
            AFUNPTR fptr = (RTN_ReplaceProbed(rtnclock_nanosleep, AFUNPTR(myclock_nanosleep)));
            fptrclock_nanosleep = (int (*)(clockid_t, int, const STRUCT_TIMESPEC_PTR, STRUCT_TIMESPEC_PTR))fptr;
        }

        RTN rtnmq_close = RTN_FindByName(img, "mq_close");
        if (RTN_Valid(rtnmq_close) && RTN_IsSafeForProbedReplacement(rtnmq_close))
        {
            OutFile << CurrentTime() << "Inserting probe for mq_close at " << RTN_Address(rtnmq_close) << endl;
            OutFile.flush();
            AFUNPTR fptr = (RTN_ReplaceProbed(rtnmq_close, AFUNPTR(mymq_close)));
            fptrmq_close = (int (*)(mqd_t))fptr;
        }

        RTN rtnmq_open = RTN_FindByName(img, "mq_open");
        if (RTN_Valid(rtnmq_open) && RTN_IsSafeForProbedReplacement(rtnmq_open))
        {
            OutFile << CurrentTime() << "Inserting probe for mq_open at " << RTN_Address(rtnmq_open) << endl;
            OutFile.flush();
            AFUNPTR fptr = (RTN_ReplaceProbed(rtnmq_open, AFUNPTR(mymq_open)));
            fptrmq_open = (int (*)(const CHAR_PTR, int))fptr;
        }

        RTN rtnmq_receive = RTN_FindByName(img, "mq_receive");
        if (RTN_Valid(rtnmq_receive) && RTN_IsSafeForProbedReplacement(rtnmq_receive))
        {
            OutFile << CurrentTime() << "Inserting probe for mq_receive at " << RTN_Address(rtnmq_receive) << endl;
            OutFile.flush();
            AFUNPTR fptr = (RTN_ReplaceProbed(rtnmq_receive, AFUNPTR(mymq_receive)));
            fptrmq_receive = (ssize_t (*)(mqd_t, CHAR_PTR, size_t, UNSIGNED_PTR))fptr;
        }

        RTN rtnmq_timedreceive = RTN_FindByName(img, "mq_timedreceive");
        if (RTN_Valid(rtnmq_timedreceive) && RTN_IsSafeForProbedReplacement(rtnmq_timedreceive))
        {
            OutFile << CurrentTime() << "Inserting probe for mq_timedreceive at " << RTN_Address(rtnmq_timedreceive) << endl;
            OutFile.flush();
            AFUNPTR fptr = (RTN_ReplaceProbed(rtnmq_timedreceive, AFUNPTR(mymq_timedreceive)));
            fptrmq_timedreceive = (ssize_t (*)(mqd_t, CHAR_PTR, size_t , UNSIGNED_PTR, const STRUCT_TIMESPEC_PTR))fptr;
        }

        RTN rtnmq_send = RTN_FindByName(img, "mq_send");
        if (RTN_Valid(rtnmq_send) && RTN_IsSafeForProbedReplacement(rtnmq_send))
        {
            OutFile << CurrentTime() << "Inserting probe for mq_send at " << RTN_Address(rtnmq_send) << endl;
            OutFile.flush();
            AFUNPTR fptr = (RTN_ReplaceProbed(rtnmq_send, AFUNPTR(mymq_send)));
            fptrmq_send = (int (*)(mqd_t, const CHAR_PTR, size_t, unsigned))fptr;
        }

        RTN rtnmq_timedsend = RTN_FindByName(img, "mq_timedsend");
        if (RTN_Valid(rtnmq_timedsend) && RTN_IsSafeForProbedReplacement(rtnmq_timedsend))
        {
            OutFile << CurrentTime() << "Inserting probe for mq_timedsend at " << RTN_Address(rtnmq_timedsend) << endl;
            OutFile.flush();
            AFUNPTR fptr = (RTN_ReplaceProbed(rtnmq_timedsend, AFUNPTR(mymq_timedsend)));
            fptrmq_timedsend = (int (*)(mqd_t, const CHAR_PTR, size_t , unsigned, const STRUCT_TIMESPEC_PTR ))fptr;
        }
    }
    // finished instrumentation
}

/* ===================================================================== */
/* Main function                                                         */
/* ===================================================================== */

int main(int argc, char *argv[])
{
    // Initialize Pin
    PIN_InitSymbols();
    if (PIN_Init(argc,argv))
    {
        return Usage();
    }

    OutFile.open(KnobOutputFile.Value().c_str());
    OutFile << hex;
    OutFile.setf(ios::showbase);
    OutFile << CurrentTime() << "started!" << endl;
    OutFile.flush();

    // Register the instrumentation callback
    IMG_AddInstrumentFunction(ImgLoad, 0);


    // Start the application
    PIN_StartProgramProbed(); // never returns

    return 0;
}
