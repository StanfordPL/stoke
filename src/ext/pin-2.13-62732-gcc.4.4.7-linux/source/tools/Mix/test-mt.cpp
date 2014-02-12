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
// test-mt.cpp -- a simple multithreaded test program. I added markers to
// this to trigger the controller.

// g++ -o test-mt test-mt.cpp -lpthread


////////////////////////////////////////////////////////////////////////////
#include <cassert>
#include <string>
#include <stdio.h>
#include <iostream>
#include <ostream>
#include <iomanip>
#include <cstdlib>
#include <cctype>

#include<pthread.h>
using namespace std;
////////////////////////////////////////////////////////////////////////////
// DEFINES
////////////////////////////////////////////////////////////////////////////

////////////////////////////////////////////////////////////////////////////
// TYPES
////////////////////////////////////////////////////////////////////////////

////////////////////////////////////////////////////////////////////////////
// PROTOTYPES
////////////////////////////////////////////////////////////////////////////
int main(int argc, char** argv, char** envp);

////////////////////////////////////////////////////////////////////////////
// GLOBALS
////////////////////////////////////////////////////////////////////////////
extern "C" {
// These functions are markers. The symbols are used to control tracing.
void marker_start_counting()
{
}
void marker_stop_counting()
{
}

void marker_emit_stats()
{
}

void marker_zero_stats()
{
}
}

class THREAD_STATE_T
{
    int x;
  public:
    THREAD_STATE_T() {
    }
};

pthread_mutex_t mutex;

void*
start_routine(void* arg)
{
    int r;

    marker_zero_stats();
    marker_start_counting();

    THREAD_STATE_T* thread_state = (THREAD_STATE_T*) arg;
    r =pthread_mutex_lock(&mutex);
    assert(r==0);
    cout << "I'm in a thread!" << endl;
    r =pthread_mutex_unlock(&mutex);
    assert(r==0);

    marker_emit_stats();
    
    for(unsigned int i=0;i<50; i++)
    {
        marker_zero_stats();
        marker_start_counting();

        r =pthread_mutex_lock(&mutex);
        assert(r==0);
        r =pthread_mutex_unlock(&mutex);

        marker_stop_counting();
        marker_emit_stats();
    }
    return 0;
}


int main(int argc, char** argv, char** envp)
{
    pthread_attr_t attr;
    int nthreads = (argc==2) ? atoi(argv[1]) : 4;
    THREAD_STATE_T* thread_state = new THREAD_STATE_T[nthreads];
    pthread_t* thread = new pthread_t[nthreads];
    int r;

    r = pthread_mutex_init(&mutex, 0);
    assert(r==0);
    
    r = pthread_attr_init(&attr);
    assert(r==0);

    for(int i=0;i<nthreads;i++)
    {
        r = pthread_create( thread+i,
                            &attr,
                            start_routine,
                            (void*) (thread_state+i) );
        assert(r==0);
    }

    r = pthread_mutex_lock(&mutex);
    assert(r==0);
    cout << "I'm in the main thread!" << endl;
    r = pthread_mutex_unlock(&mutex);
    assert(r==0);
 
    for(int i=0;i<nthreads;i++) {
        r = pthread_join(thread[i], 0);
        assert(r==0);
    }
    return 0;
}
 


////////////////////////////////////////////////////////////////////////////
