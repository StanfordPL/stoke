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
 * This tool mimics the behavior of TPSS on Linux by adding probes to various libpthread functions.
 * However, in this tool these probes are merely empty wrappers that call the original functions.
 * The objective of the test is to verify that probe generation and insertion don't cause Pin
 * to crash.
 */

#include "pin.H"
#include <iostream>
#include <fstream>
#include <string>
#include <ctime>
#include <sys/types.h>
#include <sys/timeb.h>
#include <rpc/rpc.h>
#include <rpc/pmap_clnt.h>
#include <semaphore.h>
#include <dlfcn.h>
#include <signal.h>
#include <poll.h>

typedef int * INT_PTR;

typedef void * VOID_PTR;

ofstream OutFile;

/* ===================================================================== */
/* Commandline Switches                                                  */
/* ===================================================================== */

KNOB<string> KnobOutputFile(KNOB_MODE_WRITEONCE, "pintool",
    "o", "tpss_lin_libpthread.txt", "specify tool log file name");

/* ===================================================================== */
/* Utility functions                                                     */
/* ===================================================================== */

// Print help information
INT32 Usage()
{
    cerr << "This tool mimics the behavior of TPSS on Linux by adding probes to various libpthread functions." << endl;
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

int (*fptrpthread_spin_unlock)(pthread_spinlock_t * __lock);

int (*fptrpthread_create)(pthread_t *__newthread , __const pthread_attr_t *__attr , VOID_PTR(*__start_routine)(VOID_PTR) , VOID_PTR __arg );

int (*fptrpthread_join)(pthread_t __th, void** __thread_return);

int (*fptrpthread_barrier_init)(pthread_barrier_t *__barrier , __const pthread_barrierattr_t *__attr , unsigned int __count);

int (*fptrpthread_barrier_destroy)(pthread_barrier_t * __barrier);

int (*fptrpthread_barrier_wait)(pthread_barrier_t * __barrier);

int (*fptrpthread_mutex_init)(pthread_mutex_t * __mutex, __const pthread_mutexattr_t * __mutexattr);

int (*fptrpthread_mutex_destroy)(pthread_mutex_t * __mutex);

int (*fptrpthread_mutex_lock)(pthread_mutex_t *__mutex );

int (*fptrpthread_mutex_unlock)(pthread_mutex_t * __mutex);

int (*fptrpthread_mutex_timedlock)(pthread_mutex_t *__mutex , __const struct timespec *__abstime );

int (*fptrpthread_rwlock_init)(pthread_rwlock_t *__rwlock , __const pthread_rwlockattr_t *__attr );

int (*fptrpthread_rwlock_destroy)(pthread_rwlock_t * __rwlock);

int (*fptrpthread_rwlock_rdlock)(pthread_rwlock_t * __rwlock);

int (*fptrpthread_rwlock_wrlock)(pthread_rwlock_t * __rwlock);

int (*fptrpthread_rwlock_unlock)(pthread_rwlock_t * __rwlock);

int (*fptrpthread_rwlock_timedrdlock)(pthread_rwlock_t *__rwlock, __const struct timespec *__abstime);

int (*fptrpthread_rwlock_timedwrlock)(pthread_rwlock_t *__rwlock , __const struct timespec *__abstime );

void (*fptrpthread_exit)(void* __retval);

int (*fptrpthread_cancel)(pthread_t __pthread);

int (*fptrpthread_spin_init)(pthread_spinlock_t * __lock, int __pshared);

int (*fptrpthread_spin_destroy)(pthread_spinlock_t * __lock);

int (*fptrpthread_spin_lock)(pthread_spinlock_t * __lock);

int (*fptrpthread_cond_init)(pthread_cond_t *__cond , __const pthread_condattr_t *__cond_attr );

int (*fptrpthread_cond_destroy)(pthread_cond_t *__cond);

int (*fptrpthread_cond_broadcast)(pthread_cond_t *__cond);

int (*fptrpthread_cond_signal)(pthread_cond_t *__cond);

int (*fptrpthread_cond_timedwait)(pthread_cond_t *__cond, pthread_mutex_t *__mutex, __const struct timespec *__abstime );

int (*fptrpthread_cond_wait)(pthread_cond_t *__cond , pthread_mutex_t *__mutex);

int (*fptrpthread_key_create)(pthread_key_t * __key, void (*__destr_function) (VOID_PTR) );

int (*fptrpthread_key_delete)(pthread_key_t __key);

int (*fptrnanosleep)(__const struct timespec * __requested_time, struct timespec * __remaining);

int (*fptrsem_init)(sem_t *__sem, int __pshared, unsigned int __value);

int (*fptrsem_destroy)(sem_t * __sem);

int (*fptrsem_wait)(sem_t * __sem);

int (*fptrsem_post)(sem_t * __sem);

int (*fptrpthread_sigmask)(int __how, __const sigset_t *__newmask , sigset_t *__oldmask );

int (*fptrsigaction)(int __sig, __const struct sigaction *__act , struct sigaction *__oact );

int (*fptrsigsuspend)(__const sigset_t * __set);

int (*fptrpthread_mutex_trylock)(pthread_mutex_t *__mutex);

int (*fptrpthread_spin_trylock)(pthread_spinlock_t *__lock);

int (*fptrpthread_setspecific)(pthread_key_t __key, const VOID_PTR __value);

VOID_PTR (*fptrpthread_getspecific)(pthread_key_t __key);

pthread_t (*fptrpthread_self)(void);

void (*fptrpthread_cleanup_push)(void (*routine)(VOID_PTR), VOID_PTR __arg);

void (*fptrpthread_cleanup_pop)(int __execute);

int (*fptrpthread_attr_setstacksize)(pthread_attr_t *__attr, size_t __stacksize);

int (*fptrpthread_attr_getstacksize)(pthread_attr_t *__attr, size_t *__stacksize);

int (*fptrpthread_attr_setstack)(pthread_attr_t *__attr, VOID_PTR __stackaddr, size_t __stacksize);

int (*fptrpthread_attr_getstack)(pthread_attr_t *__attr, void **s__tackaddr, size_t *__stacksize);

int (*fptrpthread_getattr_np)(pthread_t, pthread_attr_t *);

int (*fptrpthread_attr_destroy)(pthread_attr_t *__attr);

int (*fptrpthread_setcancelstate)(int __state, int *__oldstate);

int (*fptrsem_timedwait)(sem_t *__sem, const struct timespec *__abs_timeout);

int (*fptrsystem)(const char *__command);

int (*fptrsigwait)(const sigset_t *__set, int *__sig);

pid_t (*fptrwait)(int *__status);

pid_t (*fptrwaitpid)(pid_t __pid, int *__status, int __options);

pid_t (*fptrwait3)(int *__status, int __options, struct rusage *__rusage);

pid_t (*fptrwait4)(pid_t __pid, int *status, int __options, struct rusage *__rusage);

int (*fptrflock)(int __fd, int __operation);

void (*fptrflockfile)(FILE *__filehandle);

void (*fptrfunlockfile)(FILE *__filehandle);

int (*fptrfcntl)(int __fd, int __cmd,VOID_PTR __argp);

/* ===================================================================== */
/* Probes - implementation of the wrapper functions                      */
/* ===================================================================== */

int mypthread_spin_unlock(pthread_spinlock_t * __lock)
{
   OutFile << CurrentTime() << "mypthread_spin_unlock called " << endl;
   OutFile.flush();
   int res = fptrpthread_spin_unlock(__lock);

   return res;
}

int mypthread_create(pthread_t *__newthread, __const pthread_attr_t *__attr, void *(*__start_routine)(void *), VOID_PTR __arg)
{
   OutFile << CurrentTime() << "mypthread_create called " << endl;
   OutFile.flush();
   int res = fptrpthread_create(__newthread, __attr, __start_routine, __arg);

   return res;
}


int mypthread_join(pthread_t __th, void** __thread_return)
{
   OutFile << CurrentTime() << "mypthread_join called " << endl;
   OutFile.flush();
   int res = fptrpthread_join(__th, __thread_return);

   return res;
}

int mypthread_barrier_init(pthread_barrier_t *__barrier, __const pthread_barrierattr_t *__attr, unsigned int __count)
{
   OutFile << CurrentTime() << "mypthread_barrier_init called " << endl;
   OutFile.flush();
   int res = fptrpthread_barrier_init(__barrier, __attr, __count);

   return res;
}

int mypthread_barrier_destroy(pthread_barrier_t * __barrier)
{
   OutFile << CurrentTime() << "mypthread_barrier_destroy called " << endl;
   OutFile.flush();
   int res = fptrpthread_barrier_destroy(__barrier);

   return res;
}

int mypthread_barrier_wait(pthread_barrier_t * __barrier)
{
   OutFile << CurrentTime() << "mypthread_barrier_wait called " << endl;
   OutFile.flush();
   int res = fptrpthread_barrier_wait(__barrier);

   return res;
}

int mypthread_mutex_init(pthread_mutex_t * __mutex, __const pthread_mutexattr_t * __mutexattr)
{
   OutFile << CurrentTime() << "mypthread_mutex_init called " << endl;
   OutFile.flush();
   int res = fptrpthread_mutex_init(__mutex, __mutexattr);

   return res;
}

int mypthread_mutex_destroy(pthread_mutex_t * __mutex)
{
   OutFile << CurrentTime() << "mypthread_mutex_destroy called " << endl;
   OutFile.flush();
   int res = fptrpthread_mutex_destroy(__mutex);

   return res;
}

int mypthread_mutex_lock(pthread_mutex_t * __mutex)
{
   OutFile << CurrentTime() << "mypthread_mutex_lock called " << endl;
   OutFile.flush();
   int res = fptrpthread_mutex_lock(__mutex);

   return res;
}

int mypthread_mutex_unlock(pthread_mutex_t * __mutex)
{
   OutFile << CurrentTime() << "mypthread_mutex_unlock called " << endl;
   OutFile.flush();
   int res = fptrpthread_mutex_unlock(__mutex);

   return res;
}

int mypthread_mutex_timedlock(pthread_mutex_t *__mutex, __const struct timespec *__abstime)
{
   OutFile << CurrentTime() << "mypthread_mutex_timedlock called " << endl;
   OutFile.flush();
   int res = fptrpthread_mutex_timedlock(__mutex, __abstime);

   return res;
}

int mypthread_rwlock_init(pthread_rwlock_t *__rwlock, __const pthread_rwlockattr_t *__attr)
{
   OutFile << CurrentTime() << "mypthread_rwlock_init called " << endl;
   OutFile.flush();
   int res = fptrpthread_rwlock_init(__rwlock, __attr);

   return res;
}

int mypthread_rwlock_destroy(pthread_rwlock_t * __rwlock)
{
   OutFile << CurrentTime() << "mypthread_rwlock_destroy called " << endl;
   OutFile.flush();
   int res = fptrpthread_rwlock_destroy(__rwlock);

   return res;
}

int mypthread_rwlock_rdlock(pthread_rwlock_t * __rwlock)
{
   OutFile << CurrentTime() << "mypthread_rwlock_rdlock called " << endl;
   OutFile.flush();
   int res = fptrpthread_rwlock_rdlock(__rwlock);

   return res;
}

int mypthread_rwlock_wrlock(pthread_rwlock_t * __rwlock)
{
   OutFile << CurrentTime() << "mypthread_rwlock_wrlock called " << endl;
   OutFile.flush();
   int res = fptrpthread_rwlock_wrlock(__rwlock);

   return res;
}

int mypthread_rwlock_unlock(pthread_rwlock_t * __rwlock)
{
   OutFile << CurrentTime() << "mypthread_rwlock_unlock called " << endl;
   OutFile.flush();
   int res = fptrpthread_rwlock_unlock(__rwlock);

   return res;
}

int mypthread_rwlock_timedrdlock(pthread_rwlock_t *__rwlock, __const struct timespec *__abstime)
{
   OutFile << CurrentTime() << "mypthread_rwlock_timedrdlock called " << endl;
   OutFile.flush();
   int res = fptrpthread_rwlock_timedrdlock(__rwlock, __abstime);

   return res;
}

int mypthread_rwlock_timedwrlock(pthread_rwlock_t *__rwlock, __const struct timespec *__abstime)
{
   OutFile << CurrentTime() << "mypthread_rwlock_timedwrlock called " << endl;
   OutFile.flush();
   int res = fptrpthread_rwlock_timedwrlock(__rwlock, __abstime);

   return res;
}

void mypthread_exit(void* __retval)
{
   OutFile << CurrentTime() << "mypthread_exit called " << endl;
   OutFile.flush();
   fptrpthread_exit(__retval);

}

int mypthread_cancel(pthread_t __thr)
{
   OutFile << CurrentTime() << "mypthread_cancel called " << endl;
   OutFile.flush();
   int res = fptrpthread_cancel(__thr);

   return res;
}

int mypthread_spin_init(pthread_spinlock_t * __lock, int __pshared)
{
   OutFile << CurrentTime() << "mypthread_spin_init called " << endl;
   OutFile.flush();
   int res = fptrpthread_spin_init(__lock, __pshared);

   return res;
}

int mypthread_spin_destroy(pthread_spinlock_t * __lock)
{
   OutFile << CurrentTime() << "mypthread_spin_destroy called " << endl;
   OutFile.flush();
   int res = fptrpthread_spin_destroy(__lock);

   return res;
}

int mypthread_spin_lock(pthread_spinlock_t * __lock)
{
   OutFile << CurrentTime() << "mypthread_spin_lock called " << endl;
   OutFile.flush();
   int res = fptrpthread_spin_lock(__lock);

   return res;
}

int mypthread_cond_init(pthread_cond_t *__cond, __const pthread_condattr_t *__cond_attr)
{
   OutFile << CurrentTime() << "mypthread_cond_init called " << endl;
   OutFile.flush();
   int res = fptrpthread_cond_init(__cond, __cond_attr);

   return res;
}

int mypthread_cond_destroy(pthread_cond_t * __cond)
{
   OutFile << CurrentTime() << "mypthread_cond_destroy called " << endl;
   OutFile.flush();
   int res = fptrpthread_cond_destroy(__cond);

   return res;
}

int mypthread_cond_broadcast(pthread_cond_t * __cond)
{
   OutFile << CurrentTime() << "mypthread_cond_broadcast called " << endl;
   OutFile.flush();
   int res = fptrpthread_cond_broadcast(__cond);

   return res;
}

int mypthread_cond_signal(pthread_cond_t * __cond)
{
   OutFile << CurrentTime() << "mypthread_cond_signal called " << endl;
   OutFile.flush();
   int res = fptrpthread_cond_signal(__cond);

   return res;
}

int mypthread_cond_timedwait(pthread_cond_t *__cond, pthread_mutex_t *__mutex, __const struct timespec *__abstime)
{
   OutFile << CurrentTime() << "mypthread_cond_timedwait called " << endl;
   OutFile.flush();
   int res = fptrpthread_cond_timedwait(__cond, __mutex, __abstime);

   return res;
}

int mypthread_cond_wait(pthread_cond_t *__cond, pthread_mutex_t *__mutex)
{
   OutFile << CurrentTime() << "mypthread_cond_wait called " << endl;
   OutFile.flush();
   int res = fptrpthread_cond_wait(__cond, __mutex);

   return res;
}

int mypthread_key_create(pthread_key_t * __key, void (*__destr_function) (void *) )
{
   OutFile << CurrentTime() << "mypthread_key_create called " << endl;
   OutFile.flush();
   int res = fptrpthread_key_create(__key, __destr_function);

   return res;
}

int mypthread_key_delete(pthread_key_t __key)
{
   OutFile << CurrentTime() << "mypthread_key_delete called " << endl;
   OutFile.flush();
   int res = fptrpthread_key_delete(__key);

   return res;
}

int mynanosleep(__const struct timespec * __requested_time, struct timespec * __remaining)
{
   OutFile << CurrentTime() << "mynanosleep called " << endl;
   OutFile.flush();
   int res = fptrnanosleep(__requested_time, __remaining);

   return res;
}

int mysem_init(sem_t * __sem, int __pshared, unsigned int __value)
{
   OutFile << CurrentTime() << "mysem_init called " << endl;
   OutFile.flush();
   int res = fptrsem_init(__sem, __pshared, __value);

   return res;
}

int mysem_destroy(sem_t * __sem)
{
   OutFile << CurrentTime() << "mysem_destroy called " << endl;
   OutFile.flush();
   int res = fptrsem_destroy(__sem);

   return res;
}

int mysem_wait(sem_t * __sem)
{
   OutFile << CurrentTime() << "mysem_wait called " << endl;
   OutFile.flush();
   int res = fptrsem_wait(__sem);

   return res;
}

int mysem_post(sem_t * __sem)
{
   OutFile << CurrentTime() << "mysem_post called " << endl;
   OutFile.flush();
   int res = fptrsem_post(__sem);

   return res;
}

int mypthread_sigmask(int __how, __const sigset_t *__newmask, sigset_t *__oldmask)
{
   OutFile << CurrentTime() << "mypthread_sigmask called " << endl;
   OutFile.flush();
   int res = fptrpthread_sigmask(__how, __newmask, __oldmask);

   return res;
}

int mysigaction(int __sig, __const struct sigaction *__act, struct sigaction *__oact)
{
   OutFile << CurrentTime() << "mysigaction called " << endl;
   OutFile.flush();
   int res = fptrsigaction(__sig, __act, __oact);

   return res;
}

int mysigsuspend(__const sigset_t * __set)
{
   OutFile << CurrentTime() << "mysigsuspend called " << endl;
   OutFile.flush();
   int res = fptrsigsuspend(__set);

   return res;
}

int mypthread_mutex_trylock(pthread_mutex_t * __mutex)
{
   OutFile << CurrentTime() << "mypthread_mutex_trylock called " << endl;
   OutFile.flush();
   int res = fptrpthread_mutex_trylock(__mutex);

   return res;
}

int mypthread_spin_trylock(pthread_spinlock_t * __lock)
{
   OutFile << CurrentTime() << "mypthread_spin_trylock called " << endl;
   OutFile.flush();
   int res = fptrpthread_spin_trylock(__lock);

   return res;
}

int mypthread_setspecific(pthread_key_t __key, const VOID_PTR  __value)
{
   OutFile << CurrentTime() << "mypthread_setspecific called " << endl;
   OutFile.flush();
   int res = fptrpthread_setspecific(__key, __value);

   return res;
}

VOID_PTR mypthread_getspecific(pthread_key_t __key)
{
   OutFile << CurrentTime() << "mypthread_getspecific called " << endl;
   OutFile.flush();
   VOID_PTR  res = fptrpthread_getspecific(__key);

   return res;
}

pthread_t mypthread_self(void)
{
   OutFile << CurrentTime() << "mypthread_self called " << endl;
   OutFile.flush();
   pthread_t res = fptrpthread_self();

   return res;
}

void mypthread_cleanup_push(void (*__routine)(void *),VOID_PTR  __arg)
{
   OutFile << CurrentTime() << "mypthread_cleanup_push called " << endl;
   OutFile.flush();
   fptrpthread_cleanup_push(__routine, __arg);
}

void mypthread_cleanup_pop(int __execute)
{
   OutFile << CurrentTime() << "mypthread_cleanup_pop called " << endl;
   OutFile.flush();
   fptrpthread_cleanup_pop(__execute);
}

int mypthread_attr_setstacksize(pthread_attr_t *__attr, size_t __stacksize)
{
   OutFile << CurrentTime() << "mypthread_attr_setstacksize called " << endl;
   OutFile.flush();
   int res = fptrpthread_attr_setstacksize(__attr, __stacksize);

   return res;
}

int mypthread_attr_getstacksize(pthread_attr_t *__attr, size_t *__stacksize)
{
   OutFile << CurrentTime() << "mypthread_attr_getstacksize called " << endl;
   OutFile.flush();
   int res = fptrpthread_attr_getstacksize(__attr, __stacksize);

   return res;
}

int mypthread_attr_setstack(pthread_attr_t *__attr, VOID_PTR __stackaddr, size_t __stacksize)
{
   OutFile << CurrentTime() << "mypthread_attr_setstack called " << endl;
   OutFile.flush();
   int res = fptrpthread_attr_setstack(__attr, __stackaddr, __stacksize);

   return res;
}

int mypthread_attr_getstack(pthread_attr_t *__attr, void **s__tackaddr, size_t *__stacksize)
{
   OutFile << CurrentTime() << "mypthread_attr_getstack called " << endl;
   OutFile.flush();
   int res = fptrpthread_attr_getstack(__attr, s__tackaddr, __stacksize);

   return res;
}

int mypthread_getattr_np(pthread_t __thr, pthread_attr_t *__attr)
{
   OutFile << CurrentTime() << "mypthread_getattr_np called " << endl;
   OutFile.flush();
   int res = fptrpthread_getattr_np(__thr, __attr);
   return res;
}

int mypthread_attr_destroy(pthread_attr_t *__attr)
{
   OutFile << CurrentTime() << "mypthread_attr_destroy called " << endl;
   OutFile.flush();
   int res = fptrpthread_attr_destroy(__attr);

   return res;
}

int mypthread_setcancelstate(int __state, int *__oldstate)
{
   OutFile << CurrentTime() << "mypthread_setcancelstate called " << endl;
   OutFile.flush();
   int res = fptrpthread_setcancelstate(__state, __oldstate);

   return res;
}

int mysem_timedwait(sem_t *__sem, const struct timespec *__abs_timeout)
{
   OutFile << CurrentTime() << "mysem_timedwait called " << endl;
   OutFile.flush();
   int res = fptrsem_timedwait(__sem, __abs_timeout);

   return res;
}

int mysystem(const char *__command)
{
   OutFile << CurrentTime() << "mysystem called " << endl;
   OutFile.flush();
   int res = fptrsystem(__command);

   return res;
}

int mysigwait(const sigset_t *__set, int *__sig)
{
   OutFile << CurrentTime() << "mysigwait called " << endl;
   OutFile.flush();
   int res = fptrsigwait( __set, __sig);

   return res;
}

pid_t mywait(int *__status)
{
   OutFile << CurrentTime() << "mywait called " << endl;
   OutFile.flush();
   int res = fptrwait(__status);

   return res;
}

pid_t mywaitpid(pid_t __pid, int *__status, int __options)
{
   OutFile << CurrentTime() << "mywaitpid called " << endl;
   OutFile.flush();
   pid_t res = fptrwaitpid(__pid, __status, __options);

   return res;
}

pid_t mywait3(int *__status, int __options, struct rusage *__rusage)
{
   OutFile << CurrentTime() << "mywait3 called " << endl;
   OutFile.flush();
   pid_t res = fptrwait3(__status, __options, __rusage);

   return res;
}

pid_t mywait4(pid_t __pid, int *__status, int __options, struct rusage *__rusage)
{
   OutFile << CurrentTime() << "mywait4 called " << endl;
   OutFile.flush();
   pid_t res = fptrwait4(__pid, __status, __options, __rusage);

   return res;
}

int myflock(int __fd, int __operation)
{
   OutFile << CurrentTime() << "myflock called " << endl;
   OutFile.flush();
   int res = fptrflock(__fd, __operation);

   return res;
}

void myflockfile(FILE *__filehandle)
{
   OutFile << CurrentTime() << "myflockfile called " << endl;
   OutFile.flush();
   fptrflockfile(__filehandle);
}

void myfunlockfile(FILE *__filehandle)
{
   OutFile << CurrentTime() << "myfunlockfile called " << endl;
   OutFile.flush();
   fptrfunlockfile(__filehandle);
}

int myfcntl(int __fd, int __cmd,VOID_PTR  __argp)
{
   OutFile << CurrentTime() << "myfcntl called " << endl;
   OutFile.flush();
   int res = fptrfcntl(__fd, __cmd, __argp);

   return res;
}

/* ===================================================================== */
/* Instrumnetation functions                                             */
/* ===================================================================== */

// Image load callback - inserts the probes.
void ImgLoad(IMG img, void *v)
{
    // Called every time a new image is loaded

    if ( (IMG_Name(img).find("libpthread.so") != string::npos) ||
         (IMG_Name(img).find("LIBPTHREAD.SO") != string::npos) ||
         (IMG_Name(img).find("LIBPTHREAD.so") != string::npos) )
    {

        RTN rtnpthread_spin_unlock = RTN_FindByName(img, "pthread_spin_unlock");
        if (RTN_Valid(rtnpthread_spin_unlock) && RTN_IsSafeForProbedReplacement(rtnpthread_spin_unlock))
        {
            OutFile << CurrentTime() << "Inserting probe for pthread_spin_unlock at " << RTN_Address(rtnpthread_spin_unlock) << endl;
            OutFile.flush();
            AFUNPTR fptr = (RTN_ReplaceProbed(rtnpthread_spin_unlock, AFUNPTR(mypthread_spin_unlock)));
            fptrpthread_spin_unlock = (int (*)(pthread_spinlock_t *))fptr;
        }

        RTN rtnpthread_create = RTN_FindByName(img, "pthread_create");
        if (RTN_Valid(rtnpthread_create) && RTN_IsSafeForProbedReplacement(rtnpthread_create))
        {
            OutFile << CurrentTime() << "Inserting probe for pthread_create at " << RTN_Address(rtnpthread_create) << endl;
            OutFile.flush();
            AFUNPTR fptr = (RTN_ReplaceProbed(rtnpthread_create, AFUNPTR(mypthread_create)));
            fptrpthread_create = (int (*)(pthread_t *, __const pthread_attr_t *, void *(*)(void *), VOID_PTR))fptr;
        }

        RTN rtnpthread_join = RTN_FindByName(img, "pthread_join");
        if (RTN_Valid(rtnpthread_join) && RTN_IsSafeForProbedReplacement(rtnpthread_join))
        {
            OutFile << CurrentTime() << "Inserting probe for pthread_join at " << RTN_Address(rtnpthread_join) << endl;
            OutFile.flush();
            AFUNPTR fptr = (RTN_ReplaceProbed(rtnpthread_join, AFUNPTR(mypthread_join)));
            fptrpthread_join = (int (*)(pthread_t, void**))fptr;
        }

        RTN rtnpthread_barrier_init = RTN_FindByName(img, "pthread_barrier_init");
        if (RTN_Valid(rtnpthread_barrier_init) && RTN_IsSafeForProbedReplacement(rtnpthread_barrier_init))
        {
            OutFile << CurrentTime() << "Inserting probe for pthread_barrier_init at " << RTN_Address(rtnpthread_barrier_init) << endl;
            OutFile.flush();
            AFUNPTR fptr = (RTN_ReplaceProbed(rtnpthread_barrier_init, AFUNPTR(mypthread_barrier_init)));
            fptrpthread_barrier_init = (int (*)(pthread_barrier_t *, __const pthread_barrierattr_t *, unsigned int))fptr;
        }

        RTN rtnpthread_barrier_destroy = RTN_FindByName(img, "pthread_barrier_destroy");
        if (RTN_Valid(rtnpthread_barrier_destroy) && RTN_IsSafeForProbedReplacement(rtnpthread_barrier_destroy))
        {
            OutFile << CurrentTime() << "Inserting probe for pthread_barrier_destroy at " << RTN_Address(rtnpthread_barrier_destroy) << endl;
            OutFile.flush();
            AFUNPTR fptr = (RTN_ReplaceProbed(rtnpthread_barrier_destroy, AFUNPTR(mypthread_barrier_destroy)));
            fptrpthread_barrier_destroy = (int (*)(pthread_barrier_t *))fptr;
        }

        RTN rtnpthread_barrier_wait = RTN_FindByName(img, "pthread_barrier_wait");
        if (RTN_Valid(rtnpthread_barrier_wait) && RTN_IsSafeForProbedReplacement(rtnpthread_barrier_wait))
        {
            OutFile << CurrentTime() << "Inserting probe for pthread_barrier_wait at " << RTN_Address(rtnpthread_barrier_wait) << endl;
            OutFile.flush();
            AFUNPTR fptr = (RTN_ReplaceProbed(rtnpthread_barrier_wait, AFUNPTR(mypthread_barrier_wait)));
            fptrpthread_barrier_wait = (int (*)(pthread_barrier_t *))fptr;
        }

        RTN rtnpthread_mutex_init = RTN_FindByName(img, "pthread_mutex_init");
        if (RTN_Valid(rtnpthread_mutex_init) && RTN_IsSafeForProbedReplacement(rtnpthread_mutex_init))
        {
            OutFile << CurrentTime() << "Inserting probe for pthread_mutex_init at " << RTN_Address(rtnpthread_mutex_init) << endl;
            OutFile.flush();
            AFUNPTR fptr = (RTN_ReplaceProbed(rtnpthread_mutex_init, AFUNPTR(mypthread_mutex_init)));
            fptrpthread_mutex_init = (int (*)(pthread_mutex_t *, __const pthread_mutexattr_t *))fptr;
        }

        RTN rtnpthread_mutex_destroy = RTN_FindByName(img, "pthread_mutex_destroy");
        if (RTN_Valid(rtnpthread_mutex_destroy) && RTN_IsSafeForProbedReplacement(rtnpthread_mutex_destroy))
        {
            OutFile << CurrentTime() << "Inserting probe for pthread_mutex_destroy at " << RTN_Address(rtnpthread_mutex_destroy) << endl;
            OutFile.flush();
            AFUNPTR fptr = (RTN_ReplaceProbed(rtnpthread_mutex_destroy, AFUNPTR(mypthread_mutex_destroy)));
            fptrpthread_mutex_destroy = (int (*)(pthread_mutex_t *))fptr;
        }

        RTN rtnpthread_mutex_lock = RTN_FindByName(img, "pthread_mutex_lock");
        if (RTN_Valid(rtnpthread_mutex_lock) && RTN_IsSafeForProbedReplacement(rtnpthread_mutex_lock))
        {
            OutFile << CurrentTime() << "Inserting probe for pthread_mutex_lock at " << RTN_Address(rtnpthread_mutex_lock) << endl;
            OutFile.flush();
            AFUNPTR fptr = (RTN_ReplaceProbed(rtnpthread_mutex_lock, AFUNPTR(mypthread_mutex_lock)));
            fptrpthread_mutex_lock = (int (*)(pthread_mutex_t *))fptr;
        }

        RTN rtnpthread_mutex_unlock = RTN_FindByName(img, "pthread_mutex_unlock");
        if (RTN_Valid(rtnpthread_mutex_unlock) && RTN_IsSafeForProbedReplacement(rtnpthread_mutex_unlock))
        {
            OutFile << CurrentTime() << "Inserting probe for pthread_mutex_unlock at " << RTN_Address(rtnpthread_mutex_unlock) << endl;
            OutFile.flush();
            AFUNPTR fptr = (RTN_ReplaceProbed(rtnpthread_mutex_unlock, AFUNPTR(mypthread_mutex_unlock)));
            fptrpthread_mutex_unlock = (int (*)(pthread_mutex_t *))fptr;
        }

        RTN rtnpthread_mutex_timedlock = RTN_FindByName(img, "pthread_mutex_timedlock");
        if (RTN_Valid(rtnpthread_mutex_timedlock) && RTN_IsSafeForProbedReplacement(rtnpthread_mutex_timedlock))
        {
            OutFile << CurrentTime() << "Inserting probe for pthread_mutex_timedlock at " << RTN_Address(rtnpthread_mutex_timedlock) << endl;
            OutFile.flush();
            AFUNPTR fptr = (RTN_ReplaceProbed(rtnpthread_mutex_timedlock, AFUNPTR(mypthread_mutex_timedlock)));
            fptrpthread_mutex_timedlock = (int (*)(pthread_mutex_t *, __const struct timespec *))fptr;
        }

        RTN rtnpthread_rwlock_init = RTN_FindByName(img, "pthread_rwlock_init");
        if (RTN_Valid(rtnpthread_rwlock_init) && RTN_IsSafeForProbedReplacement(rtnpthread_rwlock_init))
        {
            OutFile << CurrentTime() << "Inserting probe for pthread_rwlock_init at " << RTN_Address(rtnpthread_rwlock_init) << endl;
            OutFile.flush();
            AFUNPTR fptr = (RTN_ReplaceProbed(rtnpthread_rwlock_init, AFUNPTR(mypthread_rwlock_init)));
            fptrpthread_rwlock_init = (int (*)(pthread_rwlock_t *, __const pthread_rwlockattr_t *))fptr;
        }

        RTN rtnpthread_rwlock_destroy = RTN_FindByName(img, "pthread_rwlock_destroy");
        if (RTN_Valid(rtnpthread_rwlock_destroy) && RTN_IsSafeForProbedReplacement(rtnpthread_rwlock_destroy))
        {
            OutFile << CurrentTime() << "Inserting probe for pthread_rwlock_destroy at " << RTN_Address(rtnpthread_rwlock_destroy) << endl;
            OutFile.flush();
            AFUNPTR fptr = (RTN_ReplaceProbed(rtnpthread_rwlock_destroy, AFUNPTR(mypthread_rwlock_destroy)));
            fptrpthread_rwlock_destroy = (int (*)(pthread_rwlock_t *))fptr;
        }

        RTN rtnpthread_rwlock_rdlock = RTN_FindByName(img, "pthread_rwlock_rdlock");
        if (RTN_Valid(rtnpthread_rwlock_rdlock) && RTN_IsSafeForProbedReplacement(rtnpthread_rwlock_rdlock))
        {
            OutFile << CurrentTime() << "Inserting probe for pthread_rwlock_rdlock at " << RTN_Address(rtnpthread_rwlock_rdlock) << endl;
            OutFile.flush();
            AFUNPTR fptr = (RTN_ReplaceProbed(rtnpthread_rwlock_rdlock, AFUNPTR(mypthread_rwlock_rdlock)));
            fptrpthread_rwlock_rdlock = (int (*)(pthread_rwlock_t *))fptr;
        }

        RTN rtnpthread_rwlock_wrlock = RTN_FindByName(img, "pthread_rwlock_wrlock");
        if (RTN_Valid(rtnpthread_rwlock_wrlock) && RTN_IsSafeForProbedReplacement(rtnpthread_rwlock_wrlock))
        {
            OutFile << CurrentTime() << "Inserting probe for pthread_rwlock_wrlock at " << RTN_Address(rtnpthread_rwlock_wrlock) << endl;
            OutFile.flush();
            AFUNPTR fptr = (RTN_ReplaceProbed(rtnpthread_rwlock_wrlock, AFUNPTR(mypthread_rwlock_wrlock)));
            fptrpthread_rwlock_wrlock = (int (*)(pthread_rwlock_t *))fptr;
        }

        RTN rtnpthread_rwlock_unlock = RTN_FindByName(img, "pthread_rwlock_unlock");
        if (RTN_Valid(rtnpthread_rwlock_unlock) && RTN_IsSafeForProbedReplacement(rtnpthread_rwlock_unlock))
        {
            OutFile << CurrentTime() << "Inserting probe for pthread_rwlock_unlock at " << RTN_Address(rtnpthread_rwlock_unlock) << endl;
            OutFile.flush();
            AFUNPTR fptr = (RTN_ReplaceProbed(rtnpthread_rwlock_unlock, AFUNPTR(mypthread_rwlock_unlock)));
            fptrpthread_rwlock_unlock = (int (*)(pthread_rwlock_t *))fptr;
        }

        RTN rtnpthread_rwlock_timedrdlock = RTN_FindByName(img, "pthread_rwlock_timedrdlock");
        if (RTN_Valid(rtnpthread_rwlock_timedrdlock) && RTN_IsSafeForProbedReplacement(rtnpthread_rwlock_timedrdlock))
        {
            OutFile << CurrentTime() << "Inserting probe for pthread_rwlock_timedrdlock at " << RTN_Address(rtnpthread_rwlock_timedrdlock) << endl;
            OutFile.flush();
            AFUNPTR fptr = (RTN_ReplaceProbed(rtnpthread_rwlock_timedrdlock, AFUNPTR(mypthread_rwlock_timedrdlock)));
            fptrpthread_rwlock_timedrdlock = (int (*)(pthread_rwlock_t *, __const struct timespec *))fptr;
        }

        RTN rtnpthread_rwlock_timedwrlock = RTN_FindByName(img, "pthread_rwlock_timedwrlock");
        if (RTN_Valid(rtnpthread_rwlock_timedwrlock) && RTN_IsSafeForProbedReplacement(rtnpthread_rwlock_timedwrlock))
        {
            OutFile << CurrentTime() << "Inserting probe for pthread_rwlock_timedwrlock at " << RTN_Address(rtnpthread_rwlock_timedwrlock) << endl;
            OutFile.flush();
            AFUNPTR fptr = (RTN_ReplaceProbed(rtnpthread_rwlock_timedwrlock, AFUNPTR(mypthread_rwlock_timedwrlock)));
            fptrpthread_rwlock_timedwrlock = (int (*)(pthread_rwlock_t *, __const struct timespec *))fptr;
        }

        RTN rtnpthread_exit = RTN_FindByName(img, "pthread_exit");
        if (RTN_Valid(rtnpthread_exit) && RTN_IsSafeForProbedReplacement(rtnpthread_exit))
        {
            OutFile << CurrentTime() << "Inserting probe for pthread_exit at " << RTN_Address(rtnpthread_exit) << endl;
            OutFile.flush();
            AFUNPTR fptr = (RTN_ReplaceProbed(rtnpthread_exit, AFUNPTR(mypthread_exit)));
            fptrpthread_exit = (void (*)(void* ))fptr;
        }

        RTN rtnpthread_cancel = RTN_FindByName(img, "pthread_cancel");
        if (RTN_Valid(rtnpthread_cancel) && RTN_IsSafeForProbedReplacement(rtnpthread_cancel))
        {
            OutFile << CurrentTime() << "Inserting probe for pthread_cancel at " << RTN_Address(rtnpthread_cancel) << endl;
            OutFile.flush();
            AFUNPTR fptr = (RTN_ReplaceProbed(rtnpthread_cancel, AFUNPTR(mypthread_cancel)));
            fptrpthread_cancel = (int (*)(pthread_t))fptr;
        }

        RTN rtnpthread_spin_init = RTN_FindByName(img, "pthread_spin_init");
        if (RTN_Valid(rtnpthread_spin_init) && RTN_IsSafeForProbedReplacement(rtnpthread_spin_init))
        {
            OutFile << CurrentTime() << "Inserting probe for pthread_spin_init at " << RTN_Address(rtnpthread_spin_init) << endl;
            OutFile.flush();
            AFUNPTR fptr = (RTN_ReplaceProbed(rtnpthread_spin_init, AFUNPTR(mypthread_spin_init)));
            fptrpthread_spin_init = (int (*)(pthread_spinlock_t *, int ))fptr;
        }

        RTN rtnpthread_spin_destroy = RTN_FindByName(img, "pthread_spin_destroy");
        if (RTN_Valid(rtnpthread_spin_destroy) && RTN_IsSafeForProbedReplacement(rtnpthread_spin_destroy))
        {
            OutFile << CurrentTime() << "Inserting probe for pthread_spin_destroy at " << RTN_Address(rtnpthread_spin_destroy) << endl;
            OutFile.flush();
            AFUNPTR fptr = (RTN_ReplaceProbed(rtnpthread_spin_destroy, AFUNPTR(mypthread_spin_destroy)));
            fptrpthread_spin_destroy = (int (*)(pthread_spinlock_t *))fptr;
        }

        RTN rtnpthread_spin_lock = RTN_FindByName(img, "pthread_spin_lock");
        if (RTN_Valid(rtnpthread_spin_lock) && RTN_IsSafeForProbedReplacement(rtnpthread_spin_lock))
        {
            OutFile << CurrentTime() << "Inserting probe for pthread_spin_lock at " << RTN_Address(rtnpthread_spin_lock) << endl;
            OutFile.flush();
            AFUNPTR fptr = (RTN_ReplaceProbed(rtnpthread_spin_lock, AFUNPTR(mypthread_spin_lock)));
            fptrpthread_spin_lock = (int (*)(pthread_spinlock_t *))fptr;
        }

        RTN rtnpthread_cond_init = RTN_FindByName(img, "pthread_cond_init");
        if (RTN_Valid(rtnpthread_cond_init) && RTN_IsSafeForProbedReplacement(rtnpthread_cond_init))
        {
            OutFile << CurrentTime() << "Inserting probe for pthread_cond_init at " << RTN_Address(rtnpthread_cond_init) << endl;
            OutFile.flush();
            AFUNPTR fptr = (RTN_ReplaceProbed(rtnpthread_cond_init, AFUNPTR(mypthread_cond_init)));
            fptrpthread_cond_init = (int (*)(pthread_cond_t *, __const pthread_condattr_t *))fptr;
        }

        RTN rtnpthread_cond_destroy = RTN_FindByName(img, "pthread_cond_destroy");
        if (RTN_Valid(rtnpthread_cond_destroy) && RTN_IsSafeForProbedReplacement(rtnpthread_cond_destroy))
        {
            OutFile << CurrentTime() << "Inserting probe for pthread_cond_destroy at " << RTN_Address(rtnpthread_cond_destroy) << endl;
            OutFile.flush();
            AFUNPTR fptr = (RTN_ReplaceProbed(rtnpthread_cond_destroy, AFUNPTR(mypthread_cond_destroy)));
            fptrpthread_cond_destroy = (int (*)(pthread_cond_t *))fptr;
        }

        RTN rtnpthread_cond_broadcast = RTN_FindByName(img, "pthread_cond_broadcast");
        if (RTN_Valid(rtnpthread_cond_broadcast) && RTN_IsSafeForProbedReplacement(rtnpthread_cond_broadcast))
        {
            OutFile << CurrentTime() << "Inserting probe for pthread_cond_broadcast at " << RTN_Address(rtnpthread_cond_broadcast) << endl;
            OutFile.flush();
            AFUNPTR fptr = (RTN_ReplaceProbed(rtnpthread_cond_broadcast, AFUNPTR(mypthread_cond_broadcast)));
            fptrpthread_cond_broadcast = (int (*)(pthread_cond_t *))fptr;
        }

        RTN rtnpthread_cond_signal = RTN_FindByName(img, "pthread_cond_signal");
        if (RTN_Valid(rtnpthread_cond_signal) && RTN_IsSafeForProbedReplacement(rtnpthread_cond_signal))
        {
            OutFile << CurrentTime() << "Inserting probe for pthread_cond_signal at " << RTN_Address(rtnpthread_cond_signal) << endl;
            OutFile.flush();
            AFUNPTR fptr = (RTN_ReplaceProbed(rtnpthread_cond_signal, AFUNPTR(mypthread_cond_signal)));
            fptrpthread_cond_signal = (int (*)(pthread_cond_t *))fptr;
        }

        RTN rtnpthread_cond_timedwait = RTN_FindByName(img, "pthread_cond_timedwait");
        if (RTN_Valid(rtnpthread_cond_timedwait) && RTN_IsSafeForProbedReplacement(rtnpthread_cond_timedwait))
        {
            OutFile << CurrentTime() << "Inserting probe for pthread_cond_timedwait at " << RTN_Address(rtnpthread_cond_timedwait) << endl;
            OutFile.flush();
            AFUNPTR fptr = (RTN_ReplaceProbed(rtnpthread_cond_timedwait, AFUNPTR(mypthread_cond_timedwait)));
            fptrpthread_cond_timedwait = (int (*)(pthread_cond_t *, pthread_mutex_t *, __const struct timespec *))fptr;
        }

        RTN rtnpthread_cond_wait = RTN_FindByName(img, "pthread_cond_wait");
        if (RTN_Valid(rtnpthread_cond_wait) && RTN_IsSafeForProbedReplacement(rtnpthread_cond_wait))
        {
            OutFile << CurrentTime() << "Inserting probe for pthread_cond_wait at " << RTN_Address(rtnpthread_cond_wait) << endl;
            OutFile.flush();
            AFUNPTR fptr = (RTN_ReplaceProbed(rtnpthread_cond_wait, AFUNPTR(mypthread_cond_wait)));
            fptrpthread_cond_wait = (int (*)(pthread_cond_t *, pthread_mutex_t *))fptr;
        }

        RTN rtnpthread_key_create = RTN_FindByName(img, "pthread_key_create");
        if (RTN_Valid(rtnpthread_key_create) && RTN_IsSafeForProbedReplacement(rtnpthread_key_create))
        {
            OutFile << CurrentTime() << "Inserting probe for pthread_key_create at " << RTN_Address(rtnpthread_key_create) << endl;
            OutFile.flush();
            AFUNPTR fptr = (RTN_ReplaceProbed(rtnpthread_key_create, AFUNPTR(mypthread_key_create)));
            fptrpthread_key_create = (int (*)(pthread_key_t *, void (*) (void *)))fptr;
        }

        RTN rtnnanosleep = RTN_FindByName(img, "nanosleep");
        if (RTN_Valid(rtnnanosleep) && RTN_IsSafeForProbedReplacement(rtnnanosleep))
        {
            OutFile << CurrentTime() << "Inserting probe for nanosleep at " << RTN_Address(rtnnanosleep) << endl;
            OutFile.flush();
            AFUNPTR fptr = (RTN_ReplaceProbed(rtnnanosleep, AFUNPTR(mynanosleep)));
            fptrnanosleep = (int (*)(__const struct timespec *, struct timespec *))fptr;
        }

        RTN rtnpthread_key_delete = RTN_FindByName(img, "pthread_key_delete");
        if (RTN_Valid(rtnpthread_key_delete) && RTN_IsSafeForProbedReplacement(rtnpthread_key_delete))
        {
            OutFile << CurrentTime() << "Inserting probe for pthread_key_delete at " << RTN_Address(rtnpthread_key_delete) << endl;
            OutFile.flush();
            AFUNPTR fptr = (RTN_ReplaceProbed(rtnpthread_key_delete, AFUNPTR(mypthread_key_delete)));
            fptrpthread_key_delete = (int (*)(pthread_key_t))fptr;
        }

        RTN rtnsem_init = RTN_FindByName(img, "sem_init");
        if (RTN_Valid(rtnsem_init) && RTN_IsSafeForProbedReplacement(rtnsem_init))
        {
            OutFile << CurrentTime() << "Inserting probe for sem_init at " << RTN_Address(rtnsem_init) << endl;
            OutFile.flush();
            AFUNPTR fptr = (RTN_ReplaceProbed(rtnsem_init, AFUNPTR(mysem_init)));
            fptrsem_init = (int (*)(sem_t *, int, unsigned int))fptr;
        }

        RTN rtnsem_destroy = RTN_FindByName(img, "sem_destroy");
        if (RTN_Valid(rtnsem_destroy) && RTN_IsSafeForProbedReplacement(rtnsem_destroy))
        {
            OutFile << CurrentTime() << "Inserting probe for sem_destroy at " << RTN_Address(rtnsem_destroy) << endl;
            OutFile.flush();
            AFUNPTR fptr = (RTN_ReplaceProbed(rtnsem_destroy, AFUNPTR(mysem_destroy)));
            fptrsem_destroy = (int (*)(sem_t *))fptr;
        }

        RTN rtnsem_wait = RTN_FindByName(img, "sem_wait");
        if (RTN_Valid(rtnsem_wait) && RTN_IsSafeForProbedReplacement(rtnsem_wait))
        {
            OutFile << CurrentTime() << "Inserting probe for sem_wait at " << RTN_Address(rtnsem_wait) << endl;
            OutFile.flush();
            AFUNPTR fptr = (RTN_ReplaceProbed(rtnsem_wait, AFUNPTR(mysem_wait)));
            fptrsem_wait = (int (*)(sem_t *))fptr;
        }

        RTN rtnsem_post = RTN_FindByName(img, "sem_post");
        if (RTN_Valid(rtnsem_post) && RTN_IsSafeForProbedReplacement(rtnsem_post))
        {
            OutFile << CurrentTime() << "Inserting probe for sem_post at " << RTN_Address(rtnsem_post) << endl;
            OutFile.flush();
            AFUNPTR fptr = (RTN_ReplaceProbed(rtnsem_post, AFUNPTR(mysem_post)));
            fptrsem_post = (int (*)(sem_t *))fptr;
        }

        RTN rtnpthread_sigmask = RTN_FindByName(img, "pthread_sigmask");
        if (RTN_Valid(rtnpthread_sigmask) && RTN_IsSafeForProbedReplacement(rtnpthread_sigmask))
        {
            OutFile << CurrentTime() << "Inserting probe for pthread_sigmask at " << RTN_Address(rtnpthread_sigmask) << endl;
            OutFile.flush();
            AFUNPTR fptr = (RTN_ReplaceProbed(rtnpthread_sigmask, AFUNPTR(mypthread_sigmask)));
            fptrpthread_sigmask = (int (*)(int, __const sigset_t *, sigset_t *))fptr;
        }

        RTN rtnsigaction = RTN_FindByName(img, "sigaction");
        if (RTN_Valid(rtnsigaction) && RTN_IsSafeForProbedReplacement(rtnsigaction))
        {
            OutFile << CurrentTime() << "Inserting probe for sigaction at " << RTN_Address(rtnsigaction) << endl;
            OutFile.flush();
            AFUNPTR fptr = (RTN_ReplaceProbed(rtnsigaction, AFUNPTR(mysigaction)));
            fptrsigaction = (int (*)(int, __const struct sigaction *, struct sigaction *))fptr;
        }

        RTN rtnsigsuspend = RTN_FindByName(img, "sigsuspend");
        if (RTN_Valid(rtnsigsuspend) && RTN_IsSafeForProbedReplacement(rtnsigsuspend))
        {
            OutFile << CurrentTime() << "Inserting probe for sigsuspend at " << RTN_Address(rtnsigsuspend) << endl;
            OutFile.flush();
            AFUNPTR fptr = (RTN_ReplaceProbed(rtnsigsuspend, AFUNPTR(mysigsuspend)));
            fptrsigsuspend = (int (*)(__const sigset_t *))fptr;
        }

        RTN rtnpthread_mutex_trylock = RTN_FindByName(img, "pthread_mutex_trylock");
        if (RTN_Valid(rtnpthread_mutex_trylock) && RTN_IsSafeForProbedReplacement(rtnpthread_mutex_trylock))
        {
            OutFile << CurrentTime() << "Inserting probe for pthread_mutex_trylock at " << RTN_Address(rtnpthread_mutex_trylock) << endl;
            OutFile.flush();
            AFUNPTR fptr = (RTN_ReplaceProbed(rtnpthread_mutex_trylock, AFUNPTR(mypthread_mutex_trylock)));
            fptrpthread_mutex_trylock= (int (*)(pthread_mutex_t * ))fptr;
        }

        RTN rtnpthread_spin_trylock = RTN_FindByName(img, "pthread_spin_trylock");
        if (RTN_Valid(rtnpthread_spin_trylock) && RTN_IsSafeForProbedReplacement(rtnpthread_spin_trylock))
        {
            OutFile << CurrentTime() << "Inserting probe for pthread_spin_trylock at " << RTN_Address(rtnpthread_spin_trylock) << endl;
            OutFile.flush();
            AFUNPTR fptr = (RTN_ReplaceProbed(rtnpthread_spin_trylock, AFUNPTR(mypthread_spin_trylock)));
            fptrpthread_spin_trylock= (int (*)(pthread_spinlock_t *))fptr;
        }

        RTN rtnpthread_setspecific = RTN_FindByName(img, "pthread_setspecific");
        if (RTN_Valid(rtnpthread_setspecific) && RTN_IsSafeForProbedReplacement(rtnpthread_setspecific))
        {
            OutFile << CurrentTime() << "Inserting probe for pthread_setspecific at " << RTN_Address(rtnpthread_setspecific) << endl;
            OutFile.flush();
            AFUNPTR fptr = (RTN_ReplaceProbed(rtnpthread_setspecific, AFUNPTR(mypthread_setspecific)));
            fptrpthread_setspecific= (int (*)(pthread_key_t, const VOID_PTR))fptr;
        }

        RTN rtnpthread_getspecific = RTN_FindByName(img, "pthread_getspecific");
        if (RTN_Valid(rtnpthread_getspecific) && RTN_IsSafeForProbedReplacement(rtnpthread_getspecific))
        {
            OutFile << CurrentTime() << "Inserting probe for pthread_getspecific at " << RTN_Address(rtnpthread_getspecific) << endl;
            OutFile.flush();
            AFUNPTR fptr = (RTN_ReplaceProbed(rtnpthread_getspecific, AFUNPTR(mypthread_getspecific)));
            fptrpthread_getspecific= (void *(*)(pthread_key_t))fptr;
        }

        RTN rtnpthread_self = RTN_FindByName(img, "pthread_self");
        if (RTN_Valid(rtnpthread_self) && RTN_IsSafeForProbedReplacement(rtnpthread_self))
        {
            OutFile << CurrentTime() << "Inserting probe for pthread_self at " << RTN_Address(rtnpthread_self) << endl;
            OutFile.flush();
            AFUNPTR fptr = (RTN_ReplaceProbed(rtnpthread_self, AFUNPTR(mypthread_self)));
            fptrpthread_self= (pthread_t(*)(void))fptr;
        }

        RTN rtnpthread_cleanup_push = RTN_FindByName(img, "pthread_cleanup_push");
        if (RTN_Valid(rtnpthread_cleanup_push) && RTN_IsSafeForProbedReplacement(rtnpthread_cleanup_push))
        {
            OutFile << CurrentTime() << "Inserting probe for pthread_cleanup_push at " << RTN_Address(rtnpthread_cleanup_push) << endl;
            OutFile.flush();
            AFUNPTR fptr = (RTN_ReplaceProbed(rtnpthread_cleanup_push, AFUNPTR(mypthread_cleanup_push)));
            fptrpthread_cleanup_push = (void(*)(void (*)(void *),void *))fptr;
        }

        RTN rtnpthread_cleanup_pop = RTN_FindByName(img, "pthread_cleanup_pop");
        if (RTN_Valid(rtnpthread_cleanup_pop) && RTN_IsSafeForProbedReplacement(rtnpthread_cleanup_pop))
        {
            OutFile << CurrentTime() << "Inserting probe for pthread_cleanup_pop at " << RTN_Address(rtnpthread_cleanup_pop) << endl;
            OutFile.flush();
            AFUNPTR fptr = (RTN_ReplaceProbed(rtnpthread_cleanup_pop, AFUNPTR(mypthread_cleanup_pop)));
            fptrpthread_cleanup_pop = (void(*)(int))fptr;
        }

        RTN rtnpthread_attr_setstacksize= RTN_FindByName(img, "pthread_attr_setstacksize");
        if (RTN_Valid(rtnpthread_attr_setstacksize) && RTN_IsSafeForProbedReplacement(rtnpthread_attr_setstacksize))
        {
            OutFile << CurrentTime() << "Inserting probe for pthread_attr_setstacksize at " << RTN_Address(rtnpthread_attr_setstacksize) << endl;
            OutFile.flush();
            AFUNPTR fptr = (RTN_ReplaceProbed(rtnpthread_attr_setstacksize, AFUNPTR(mypthread_attr_setstacksize)));
            fptrpthread_attr_setstacksize = (int(*)(pthread_attr_t *, size_t))fptr;
        }

        RTN rtnpthread_attr_getstacksize= RTN_FindByName(img, "pthread_attr_getstacksize");
        if (RTN_Valid(rtnpthread_attr_getstacksize) && RTN_IsSafeForProbedReplacement(rtnpthread_attr_getstacksize))
        {
            OutFile << CurrentTime() << "Inserting probe for pthread_attr_getstacksize at " << RTN_Address(rtnpthread_attr_getstacksize) << endl;
            OutFile.flush();
            AFUNPTR fptr = (RTN_ReplaceProbed(rtnpthread_attr_getstacksize, AFUNPTR(mypthread_attr_getstacksize)));
            fptrpthread_attr_getstacksize= (int(*)(pthread_attr_t *, size_t *))fptr;
        }

        RTN rtnpthread_attr_setstack= RTN_FindByName(img, "pthread_attr_setstack");
        if (RTN_Valid(rtnpthread_attr_setstack) && RTN_IsSafeForProbedReplacement(rtnpthread_attr_setstack))
        {
            OutFile << CurrentTime() << "Inserting probe for pthread_attr_setstack at " << RTN_Address(rtnpthread_attr_setstack) << endl;
            OutFile.flush();
            AFUNPTR fptr = (RTN_ReplaceProbed(rtnpthread_attr_setstack, AFUNPTR(mypthread_attr_setstack)));
            fptrpthread_attr_setstack= (int(*)(pthread_attr_t *, void *, size_t))fptr;
        }

        RTN rtnpthread_attr_getstack= RTN_FindByName(img, "pthread_attr_getstack");
        if (RTN_Valid(rtnpthread_attr_getstack) && RTN_IsSafeForProbedReplacement(rtnpthread_attr_getstack))
        {
            OutFile << CurrentTime() << "Inserting probe for pthread_attr_setstack at " << RTN_Address(rtnpthread_attr_getstack) << endl;
            OutFile.flush();
            AFUNPTR fptr = (RTN_ReplaceProbed(rtnpthread_attr_getstack, AFUNPTR(mypthread_attr_getstack)));
            fptrpthread_attr_getstack= (int(*)(pthread_attr_t *, void **s__tackaddr, size_t *))fptr;
        }

        RTN rtnpthread_getattr_np= RTN_FindByName(img, "pthread_getattr_np");
        if (RTN_Valid(rtnpthread_getattr_np) && RTN_IsSafeForProbedReplacement(rtnpthread_getattr_np))
        {
            OutFile << CurrentTime() << "Inserting probe for pthread_getattr_np at " << RTN_Address(rtnpthread_getattr_np) << endl;
            OutFile.flush();
            AFUNPTR fptr = (RTN_ReplaceProbed(rtnpthread_getattr_np, AFUNPTR(mypthread_getattr_np)));
            fptrpthread_getattr_np= (int(*)(pthread_t , pthread_attr_t *))fptr;
        }

        RTN rtnsystem = RTN_FindByName(img, "system");
        if (RTN_Valid(rtnsystem) && RTN_IsSafeForProbedReplacement(rtnsystem))
        {
            OutFile << CurrentTime() << "Inserting probe for system at " << RTN_Address(rtnsystem) << endl;
            OutFile.flush();
            AFUNPTR fptr = (RTN_ReplaceProbed(rtnsystem, AFUNPTR(mysystem)));
            fptrsystem = (int (*)(const char *))fptr;
        }

        RTN rtnwait = RTN_FindByName(img, "wait");
        if (RTN_Valid(rtnwait) && RTN_IsSafeForProbedReplacement(rtnwait))
        {
            OutFile << CurrentTime() << "Inserting probe for wait at " << RTN_Address(rtnwait) << endl;
            OutFile.flush();
            AFUNPTR fptr = (RTN_ReplaceProbed(rtnwait, AFUNPTR(mywait)));
            fptrwait = (pid_t (*)(int *))fptr;
        }

        RTN rtnwaitpid = RTN_FindByName(img, "waitpid");
        if (RTN_Valid(rtnwaitpid) && RTN_IsSafeForProbedReplacement(rtnwaitpid))
        {
            OutFile << CurrentTime() << "Inserting probe for waitpid at " << RTN_Address(rtnwaitpid) << endl;
            OutFile.flush();
            AFUNPTR fptr = (RTN_ReplaceProbed(rtnwaitpid, AFUNPTR(mywaitpid)));
            fptrwaitpid = (pid_t (*)(pid_t, int *, int))fptr;
        }

        RTN rtnwait3 = RTN_FindByName(img, "wait3");
        if (RTN_Valid(rtnwait3) && RTN_IsSafeForProbedReplacement(rtnwait3))
        {
            OutFile << CurrentTime() << "Inserting probe for wait3 at " << RTN_Address(rtnwait3) << endl;
            OutFile.flush();
            AFUNPTR fptr = (RTN_ReplaceProbed(rtnwait3, AFUNPTR(mywait3)));
            fptrwait3 = (pid_t (*)( int *, int , struct rusage * ))fptr;
        }

        RTN rtnwait4 = RTN_FindByName(img, "wait4");
        if (RTN_Valid(rtnwait3) && RTN_IsSafeForProbedReplacement(rtnwait4))
        {
            OutFile << CurrentTime() << "Inserting probe for wait4 at " << RTN_Address(rtnwait4) << endl;
            OutFile.flush();
            AFUNPTR fptr = (RTN_ReplaceProbed(rtnwait3, AFUNPTR(mywait4)));
            fptrwait4 = (pid_t (*)(pid_t, int *, int, struct rusage *))fptr;
        }

        RTN rtnflock = RTN_FindByName(img, "flock");
        if (RTN_Valid(rtnflock) && RTN_IsSafeForProbedReplacement(rtnflock))
        {
            OutFile << CurrentTime() << "Inserting probe for flock at " << RTN_Address(rtnflock) << endl;
            OutFile.flush();
            AFUNPTR fptr = (RTN_ReplaceProbed(rtnflock, AFUNPTR(myflock)));
            fptrflock= (int (*)(int, int))fptr;
        }

        RTN rtnflockfile = RTN_FindByName(img, "flockfile");
        if (RTN_Valid(rtnflockfile) && RTN_IsSafeForProbedReplacement(rtnflockfile))
        {
            OutFile << CurrentTime() << "Inserting probe for flockfile at " << RTN_Address(rtnflockfile) << endl;
            OutFile.flush();
            AFUNPTR fptr = (RTN_ReplaceProbed(rtnflockfile, AFUNPTR(myflockfile)));
            fptrflockfile = (void (*)(FILE *))fptr;
        }

        RTN rtnfunlockfile= RTN_FindByName(img, "funlockfile");
        if (RTN_Valid(rtnfunlockfile) && RTN_IsSafeForProbedReplacement(rtnfunlockfile))
        {
            OutFile << CurrentTime() << "Inserting probe for funlockfile at " << RTN_Address(rtnfunlockfile) << endl;
            OutFile.flush();
            AFUNPTR fptr = (RTN_ReplaceProbed(rtnfunlockfile, AFUNPTR(myfunlockfile)));
            fptrfunlockfile = (void (*)(FILE *))fptr;
        }

        RTN rtnfcntl= RTN_FindByName(img, "fcntl");
        if (RTN_Valid(rtnfcntl) && RTN_IsSafeForProbedReplacement(rtnfcntl))
        {
            OutFile << CurrentTime() << "Inserting probe for fcntl at " << RTN_Address(rtnfcntl) << endl;
            OutFile.flush();
            AFUNPTR fptr = (RTN_ReplaceProbed(rtnfcntl, AFUNPTR(myfcntl)));
            fptrfcntl = (int (*)(int, int ,void *))fptr;
        }

    } // libpthread.so
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
