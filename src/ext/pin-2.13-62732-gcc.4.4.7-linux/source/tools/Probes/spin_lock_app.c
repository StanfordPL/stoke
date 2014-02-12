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
#include <pthread.h>

volatile int lock=0;

static void * child(void * v)
{
    printf("Child: calling pthread_spin_lock()\n");
    sleep(3);
    int locked = pthread_spin_lock( &lock );
    printf("Child: acquired spinlock\n");
    locked = pthread_spin_unlock( &lock );
    printf("Child: released spinlock\n");
    return 0;
}

int main()
{
    pthread_t child_thread;
    
    pthread_spin_init( &lock, PTHREAD_PROCESS_PRIVATE );
    
    printf("Main: calling pthread_spin_lock()\n");
    int locked = pthread_spin_lock( &lock );
    printf("Main: acquired spinlock\n");

    int status = pthread_create(&child_thread, 0, child, 0);
    if (status != 0 )
        printf("Main: could not create chikd thread\n" );
    
    sleep(10);
    
    locked = pthread_spin_unlock( &lock );
    printf("Main: released spinlock\n");
    
    pthread_join(child_thread, 0);
}
