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
 * This tool mimics the behavior of TPSS on Linux by adding probes to various libc functions.
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
#include <time.h>
#include <link.h>
#include <unistd.h>
#include <sys/socket.h>
#include <sys/types.h>
#include <sys/epoll.h>
#include <sys/ipc.h>
#include <sys/sem.h>
#include <signal.h>
#include <sys/ipc.h>
#include <sys/msg.h>
#include <sys/types.h>
#include <sys/wait.h>
#include <sys/time.h>
#include <sys/resource.h>
#include <sys/uio.h>
#include <sys/ioctl.h>
#include <sys/file.h>
#include <stdlib.h>
#include <errno.h>
#include <sys/mman.h>
#include <stdio.h>
#include <string.h>
#include <wchar.h>
#include <sys/socket.h>
#include <sys/utsname.h>
#include <sched.h>
#include <time.h>

/* ===================================================================== */
/* Commandline Switches                                                  */
/* ===================================================================== */

typedef int * INT_PTR;

typedef void * VOID_PTR;

typedef char * CHAR_PTR;

ofstream OutFile;

KNOB<string> KnobOutputFile(KNOB_MODE_WRITEONCE, "pintool", "o", "tpss_lin_libc.txt",
        "specify tool log file name");

/* ===================================================================== */
/* Utility functions                                                     */
/* ===================================================================== */

// Print help information
INT32 Usage() {
    cerr
            << "This tool mimics the behavior of TPSS on Linux by adding probes to various libc functions."
            << endl;
    cerr << KNOB_BASE::StringKnobSummary();
    cerr << endl;
    return 1;
}

// Utility function to return the time
string CurrentTime() {
    char tmpbuf[128];
    time_t thetime = time(NULL);
    ctime_r(&thetime, tmpbuf);
    return tmpbuf;
}

/* ===================================================================== */
/* Function signatures - these functions will be probed                  */
/* ===================================================================== */

int (*fptrnanosleep)(const struct timespec *__rqtp, struct timespec *__rmtp);

int (*fptrdl_iterate_phdr)(int (*__callback)(struct dl_phdr_info *__info, size_t __size,
    VOID_PTR __data), VOID_PTR __data);

int (*fptrsystem)(const CHAR_PTR __command);

unsigned int (*fptralarm)(unsigned int __seconds);

ssize_t (*fptrrecvmsg)(int __socket, struct msghdr *__message, int __flags);

ssize_t (*fptrsendmsg)(int __sockfd, const struct msghdr *__msg, int __flags);

int (*fptrpause)(void);

int (*fptrsigtimedwait)(const sigset_t *__set, siginfo_t *__info, const struct timespec *__timeout);

int (*fptrsigwaitinfo)(const sigset_t *__set, siginfo_t *__info);

int (*fptrepoll_wait)(int __epfd, struct epoll_event *__events, int __maxevents,
    int __timeout);

int (*fptrepoll_pwait)(int __epfd, struct epoll_event *__events,
    int __maxevents, int __timeout, const sigset_t *__sigmask);

int (*fptrppoll)(struct pollfd *__fds, nfds_t __nfds,
    const struct timespec *__timeout_ts, const sigset_t *__sigmask);

int (*fptrmsgsnd)(int __msqid, const VOID_PTR __msgp, size_t __msgsz, int __msgflg);

ssize_t (*fptrmsgrcv)(int __msqid, VOID_PTR __msgp, size_t __msgsz, long __msgtyp, int __msgflg);

int (*fptrsemop)(int __semid, struct sembuf *__sops, unsigned __nsops);

int (*fptrsemtimedop)(int __semid, struct sembuf *__sops);

int (*fptrusleep)(useconds_t __usec);

useconds_t (*fptrualarm)(useconds_t __usecs, useconds_t __interval);

int (*fptrgetitimer)(int __which, struct itimerval *__curr_value);

int (*fptrsigwait)(const sigset_t *__set, INT_PTR __sig);

int (*fptrmsgget)(key_t __key, int __msgflg);

int (*fptrsemget)(key_t __key, int __nsems, int __semflg);

pid_t (*fptrwait)(INT_PTR __status);

pid_t (*fptrwaitpid)(pid_t __pid, INT_PTR __atus, int __options);

int (*fptrwaitid)(idtype_t __idtype, id_t __id, siginfo_t *__infop,int __options);

pid_t (*fptrwait3)(INT_PTR __status, int __options, struct rusage *__rusage);

pid_t (*fptrwait4)(pid_t __pid, INT_PTR status, int __options, struct rusage *__rusage);

ssize_t (*fptrreadv)(int __fd, const struct iovec *__iov, int __iovcnt);

ssize_t (*fptrwritev)(int __fd, const struct iovec *__iov, int __iovcnt);

int (*fptrflock)(int __fd, int __operation);

void (*fptrflockfile)(FILE *__filehandle);

void (*fptrfunlockfile)(FILE *__filehandle);

int (*fptrlockf)(int __fd, int __cmd, off_t __len);

int (*fptrsetenv)(const CHAR_PTR __name, const CHAR_PTR __value, int __overwrite);

int (*fptrunsetenv)(const CHAR_PTR __name);

CHAR_PTR (*fptrgetenv)(const CHAR_PTR __name);

void (*fptrperror)(const CHAR_PTR __s);

VOID_PTR (*fptrmmap)(VOID_PTR __addr, size_t __len, int __prot, int __flags,
        int __fildes, off_t __off);

int (*fptrmunmap)(VOID_PTR __addr, size_t __len);

int (*fptrfileno)(FILE *__stream);

pid_t (*fptrgetpid)(void);

pid_t (*fptrgetppid)(void);

VOID_PTR (*fptrmemset)(VOID_PTR __s, int __c, size_t __n);

VOID_PTR (*fptrmemcpy)(VOID_PTR __dest, const VOID_PTR __src, size_t __n);

int (*fptraccess)(const CHAR_PTR __pathname, int __mode);

off_t (*fptrlseek)(int __fd, off_t __offset, int __whence);

off64_t (*fptrlseek64)(int __fd, off64_t __offset, int __whence);

int (*fptrfdatasync)(int __fd);

int (*fptrunlink)(const CHAR_PTR __pathname);

size_t (*fptrstrlen)(const CHAR_PTR __s);

size_t (*fptrwcslen)(const wchar_t *__s);

CHAR_PTR (*fptrstrcpy)(CHAR_PTR __dest, const CHAR_PTR __src);

CHAR_PTR (*fptrstrncpy)(CHAR_PTR __dest, const CHAR_PTR __src, size_t __n);

CHAR_PTR (*fptrstrcat)(CHAR_PTR __dest, const CHAR_PTR __src);

CHAR_PTR (*fptrstrstr)(const CHAR_PTR __haystack, const CHAR_PTR __needle);

CHAR_PTR (*fptrstrchr0)(const CHAR_PTR __s, int __c);

CHAR_PTR (*fptrstrrchr)(const CHAR_PTR __s, int __c);

int (*fptrstrcmp)(const CHAR_PTR __s1, const CHAR_PTR __s2);

int (*fptrstrncmp)(const CHAR_PTR __s1, const CHAR_PTR __s2, size_t __n);

int (*fptrsigaddset)(sigset_t *__set, int __signum);

int (*fptrsigdelset)(sigset_t *__set, int __signum);

int (*fptrsigismember)(const sigset_t *__set, int __signum);

CHAR_PTR (*fptrstrerror)(int __errnum);

int (*fptrbind)(int __sockfd, const struct sockaddr *__addr, socklen_t __addrlen);

int (*fptrlisten)(int __sockfd, int __backlog);

int (*fptruname)(struct utsname *__name);

int (*fptrgethostname)(CHAR_PTR __name, size_t __len);

int (*fptrkill)(pid_t __pid, int __sig);

int (*fptrsched_yield)(void);

int (*fptrtimer_settime)(timer_t __timerid, int __flags, const struct itimerspec * __value, struct itimerspec * __ovalue);

int (*fptrsigaltstack)(const stack_t *__ss, stack_t *__oss);

int (*fptrshutdown)(int, int);

int (*fptrsleep)(unsigned int);

int (*fptrsocket)(int, int, int);

int (*fptrselect)(int, fd_set *__restrict, fd_set *__restrict, fd_set *__restrict, struct timeval *__restrict);

int (*fptrpoll)(struct pollfd *, nfds_t, int);

int (*fptraccept)(int, __SOCKADDR_ARG, socklen_t *__restrict);

int (*fptrconnect)(int, __CONST_SOCKADDR_ARG, socklen_t);

ssize_t (*fptrrecv)(int, VOID_PTR , size_t, int);

ssize_t (*fptrrecvfrom)(int, VOID_PTR __restrict, size_t, int, __SOCKADDR_ARG, socklen_t *__restrict);

ssize_t (*fptrsend)(int, __const VOID_PTR , size_t, int);

wint_t (*fptrgetwc)(__FILE *);

int (*fptrsetitimer)(__itimer_which_t, __const struct itimerval *__restrict, struct itimerval *__restrict);

int (*fptrsigpending)(sigset_t *);

int (*fptrsigaction)(int, __const struct sigaction *__restrict, struct sigaction *__restrict);

__sighandler_t (*fptrsignal)(int, __sighandler_t);

void (*fptrabort)();

ssize_t (*fptrsendto)(int, __const VOID_PTR , size_t, int, __CONST_SOCKADDR_ARG, socklen_t);

int (*fptr_IO_getc)(FILE *);

int (*fptrgetchar)();

wint_t (*fptrgetwchar)();

CHAR_PTR  (*fptrgets)(CHAR_PTR );

CHAR_PTR  (*fptrfgets)(CHAR_PTR __restrict, int, FILE *__restrict);

wint_t (*fptrfgetwc)(__FILE *);

size_t (*fptrfread)(VOID_PTR __restrict, size_t, size_t, FILE *__restrict);

size_t (*fptrfwrite)(__const VOID_PTR __restrict, size_t, size_t, FILE *__restrict);

int (*fptropen)(__const CHAR_PTR , int, mode_t);

int (*fptrgetw)(FILE *);

void (*fptrfgetc)(__FILE *);

wchar_t * (*fptrfgetws)(wchar_t *__restrict, int, __FILE *__restrict);

int (*fptrpipe)(int[2]);

ssize_t (*fptrread)(int, VOID_PTR , size_t);

ssize_t (*fptrwrite)(int, __const VOID_PTR , size_t);

FILE * (*fptrfopen)(__const CHAR_PTR __restrict, __const CHAR_PTR __restrict);

FILE * (*fptrfdopen)(int, __const CHAR_PTR );

int (*fptrclose)(int);

int (*fptrfclose)(FILE *);

int (*fptrcallrpc)(__const CHAR_PTR , u_long, u_long, u_long, xdrproc_t, __const CHAR_PTR , xdrproc_t, CHAR_PTR );

enum clnt_stat (*fptrclnt_broadcast)(u_long, u_long, u_long, xdrproc_t, caddr_t,
        xdrproc_t, caddr_t, resultproc_t);

CLIENT * (*fptrclntudp_create)(struct sockaddr_in *, u_long, u_long, struct timeval, INT_PTR );

CLIENT * (*fptrclntudp_bufcreate)(struct sockaddr_in *, u_long, u_long, struct timeval, INT_PTR , u_int, u_int);

struct pmaplist * (*fptrpmap_getmaps)(struct sockaddr_in *);

u_short (*fptrpmap_getport)(struct sockaddr_in *, u_long, u_long, u_int);

enum clnt_stat (*fptrpmap_rmtcall)(struct sockaddr_in *, u_long, u_long, u_long, xdrproc_t, caddr_t, xdrproc_t, caddr_t, struct timeval, u_long *);

bool_t (*fptrpmap_set)(u_long, u_long, int, u_short);

CLIENT * (*fptrclntraw_create)(u_long, u_long);

void (*fptrsvc_run)();

bool_t (*fptrsvc_sendreply)(SVCXPRT *, xdrproc_t, caddr_t);

SVCXPRT * (*fptrsvcraw_create)();

SVCXPRT * (*fptrsvctcp_create)(int, u_int, u_int);

SVCXPRT * (*fptrsvcudp_bufcreate)(int, u_int, u_int);

SVCXPRT * (*fptrsvcudp_create)(int);

void (*fptr_exit)(int);

int (*fptrsigprocmask)(int, __const sigset_t *__restrict, sigset_t *__restrict);

void (*fptrexit)(int);

int (*fptrpselect)(int, fd_set *__restrict, fd_set *__restrict, fd_set *__restrict, 
    const struct timespec *__restrict, const __sigset_t *__restrict);

int (*fptrioctl)(int __d, int __request, CHAR_PTR  __argp);

int (*fptrfcntl)(int __fd, int __cmd, VOID_PTR  __argp);

VOID_PTR (*fptr__libc_dlopen_mode)(const CHAR_PTR __name, int __mode);

INT_PTR  (*fptr__errno_location)(void);

int (*fptrsyscall)(int __number, long int __arg1, long int __arg2, long int __arg3,
     long int __arg4, long int __arg5, long int __arg6, long int __arg7);

/* ===================================================================== */
/* Probes - implementation of the wrapper functions                      */
/* ===================================================================== */

int mynanosleep(const struct timespec *__rqtp, struct timespec *__rmtp) 
{
    OutFile << CurrentTime() << "mynanosleep called " << endl;
    OutFile.flush();
    int res = fptrnanosleep(__rqtp, __rmtp);

    return res;
}
int mydl_iterate_phdr(
        int (*__callback)(struct dl_phdr_info *__info, size_t __size,
                VOID_PTR __data), VOID_PTR __sec_data) 
{
    OutFile << CurrentTime() << "mydl_iterate_phdr called " << endl;
    OutFile.flush();
    int res = fptrdl_iterate_phdr((__callback), __sec_data);
    return res;
}

int mysystem(const CHAR_PTR __command) 
{
    OutFile << CurrentTime() << "mysystem called " << endl;
    OutFile.flush();
    int res = fptrsystem(__command);

    return res;
}

unsigned int myalarm(unsigned int __seconds)
{
    OutFile << CurrentTime() << "myalarm called " << endl;
    OutFile.flush();
    unsigned int res = fptralarm(__seconds);

    return res;
}

ssize_t myrecvmsg(int __socket, struct msghdr *__message, int __flags)
{
    OutFile << CurrentTime() << "myrecvmsg called " << endl;
    OutFile.flush();
    ssize_t res = fptrrecvmsg(__socket, __message, __flags);

    return res;
}

ssize_t mysendmsg(int __sockfd, const struct msghdr *__msg, int __flags) 
{
    OutFile << CurrentTime() << "mysendmsg called " << endl;
    OutFile.flush();
    ssize_t res = fptrsendmsg(__sockfd, __msg, __flags);

    return res;
}

int mypause(void) 
{
    OutFile << CurrentTime() << "mypause called " << endl;
    OutFile.flush();
    int res = fptrpause();

    return res;
}

int mysigtimedwait(const sigset_t *__set, siginfo_t *__info,
        const struct timespec *__timeout) 
{
    OutFile << CurrentTime() << "mysigtimedwait called " << endl;
    OutFile.flush();
    int res = fptrsigtimedwait(__set, __info, __timeout);

    return res;
}

int mysigwaitinfo(const sigset_t *__set, siginfo_t *__info) 
{
    OutFile << CurrentTime() << "mysigwaitinfo called " << endl;
    OutFile.flush();
    int res = fptrsigwaitinfo(__set, __info);

    return res;
}

int myepoll_wait(int __epfd, struct epoll_event *__events, int __maxevents,
        int __timeout) 
{
    OutFile << CurrentTime() << "myepoll_wait called " << endl;
    OutFile.flush();
    int res = fptrepoll_wait(__epfd, __events, __maxevents, __timeout);

    return res;
}

int myepoll_pwait(int __epfd, struct epoll_event *__events, int __maxevents,
        int __timeout) 
{
    OutFile << CurrentTime() << "myepoll_pwait called " << endl;
    OutFile.flush();
    int res = fptrepoll_wait(__epfd, __events, __maxevents, __timeout);

    return res;
}

int myppoll(struct pollfd *__fds, nfds_t __nfds,
        const struct timespec *__timeout_ts, const sigset_t *__sigmask) 
{
    OutFile << CurrentTime() << "myppoll called " << endl;
    OutFile.flush();
    int res = fptrppoll(__fds, __nfds, __timeout_ts, __sigmask);

    return res;
}

int mymsgsnd(int __msqid, const VOID_PTR __msgp, size_t __msgsz, int __msgflg) 
{
    OutFile << CurrentTime() << "mymsgsnd called " << endl;
    OutFile.flush();
    int res = fptrmsgsnd(__msqid, __msgp, __msgsz, __msgflg);

    return res;
}

ssize_t mymsgrcv(int __msqid, VOID_PTR __msgp, size_t __msgsz, long __msgtyp,
        int __msgflg) 
{
    OutFile << CurrentTime() << "mymsgrcv called " << endl;
    OutFile.flush();
    ssize_t res = fptrmsgrcv(__msqid, __msgp, __msgsz, __msgtyp, __msgflg);

    return res;
}

int mysemtimedop(int __semid, struct sembuf *__sops) 
{
    OutFile << CurrentTime() << "mysemtimedop called " << endl;
    OutFile.flush();
    int res = fptrsemtimedop(__semid, __sops);

    return res;
}

int myusleep(useconds_t __usecs) 
{
    OutFile << CurrentTime() << "myusleep called " << endl;
    OutFile.flush();
    int res = fptrusleep(__usecs);

    return res;
}

useconds_t myualarm(useconds_t __usecs, useconds_t __interval) 
{
    OutFile << CurrentTime() << "myualarm called " << endl;
    OutFile.flush();
    useconds_t res = fptrualarm(__usecs, __interval);

    return res;
}

int mygetitimer(int __which, struct itimerval *__curr_value) 
{
    OutFile << CurrentTime() << "mygetitimer called " << endl;
    OutFile.flush();
    int res = fptrgetitimer(__which, __curr_value);

    return res;
}

int mysigwait(const sigset_t *__set, INT_PTR __sig) 
{
    OutFile << CurrentTime() << "mysigwait called " << endl;
    OutFile.flush();
    int res = fptrsigwait(__set, __sig);

    return res;
}

int mymsgget(key_t __key, int __msgflg) 
{
    OutFile << CurrentTime() << "mymsgget called " << endl;
    OutFile.flush();
    int res = fptrmsgget(__key, __msgflg);

    return res;
}

int mysemget(key_t __key, int __nsems, int __semflg) 
{
    OutFile << CurrentTime() << "mysemget called " << endl;
    OutFile.flush();
    int res = fptrsemget(__key, __nsems, __semflg);

    return res;
}

pid_t mywaitpid(pid_t __pid, INT_PTR __status, int __options) 
{
    OutFile << CurrentTime() << "mywaitpid called " << endl;
    OutFile.flush();
    pid_t res = fptrwaitpid(__pid, __status, __options);

    return res;
}

int mywaitid(idtype_t __idtype, id_t __id, siginfo_t *__infop, int __options)
{
    OutFile << CurrentTime() << "mywaittid called " << endl;
    OutFile.flush();
    int res = fptrwaitid(__idtype, __id, __infop, __options);

    return res;
}

pid_t mywait3(INT_PTR __status, int __options, struct rusage *__rusage) 
{
    OutFile << CurrentTime() << "mywait3 called " << endl;
    OutFile.flush();
    pid_t res = fptrwait3(__status, __options, __rusage);

    return res;
}

pid_t mywait4(pid_t __pid, INT_PTR __status, int __options,
        struct rusage *__rusage) 
{
    OutFile << CurrentTime() << "mywait4 called " << endl;
    OutFile.flush();
    pid_t res = fptrwait4(__pid, __status, __options, __rusage);

    return res;
}

ssize_t myreadv(int __fd, const struct iovec *__iov, int __iovcnt) 
{
    OutFile << CurrentTime() << "myreadv called " << endl;
    OutFile.flush();
    ssize_t res = fptrreadv(__fd, __iov, __iovcnt);

    return res;
}

ssize_t mywritev(int __fd, const struct iovec *__iov, int __iovcnt) 
{
    OutFile << CurrentTime() << "mywritev called " << endl;
    OutFile.flush();
    ssize_t res = fptrwritev(__fd, __iov, __iovcnt);

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

int mylockf(int __fd, int __cmd, off_t __len) 
{
    OutFile << CurrentTime() << "mylockf called " << endl;
    OutFile.flush();
    int res = fptrlockf(__fd, __cmd, __len);

    return res;
}

int mysetenv(const CHAR_PTR __name, const CHAR_PTR __value, int __overwrite) 
{
    OutFile << CurrentTime() << "mysetenv called " << endl;
    OutFile.flush();
    int res = fptrsetenv(__name, __value, __overwrite);

    return res;
}

int myunsetenv(const CHAR_PTR __name) 
{
    OutFile << CurrentTime() << "myunsetenv called " << endl;
    OutFile.flush();
    int res = fptrunsetenv(__name);

    return res;
}

CHAR_PTR  mygetenv(const CHAR_PTR __name) 
{
    OutFile << CurrentTime() << "mygetenv called " << endl;
    OutFile.flush();
    CHAR_PTR  res = fptrgetenv(__name);

    return res;
}

void myperror(const CHAR_PTR __s) 
{
    OutFile << CurrentTime() << "myperrorcalled " << endl;
    OutFile.flush();
    fptrperror(__s);

}

VOID_PTR  mymmap(VOID_PTR __addr, size_t __len, int __prot, int __flags, int __fildes,
        off_t __off) 
{
    OutFile << CurrentTime() << "mymmap called " << endl;
    OutFile.flush();
    VOID_PTR  res = fptrmmap(__addr, __len, __prot, __flags, __fildes, __off);

    return res;
}

int mymunmap(VOID_PTR __addr, size_t __len) 
{
    OutFile << CurrentTime() << "mymunmap called " << endl;
    OutFile.flush();
    int res = fptrmunmap(__addr, __len);

    return res;
}

int myfileno(FILE *__stream)
{   
    OutFile << CurrentTime() << "myfileno called " << endl;
    OutFile.flush();
    int res = fptrfileno(__stream);

    return res;
}

pid_t mygetpid(void) 
{
    OutFile << CurrentTime() << "mygetpid called " << endl;
    OutFile.flush();
    pid_t res = fptrgetpid();

    return res;
}

pid_t mygetppid(void) 
{
    OutFile << CurrentTime() << "mygetppid called " << endl;
    OutFile.flush();
    pid_t res = fptrgetppid();

    return res;
}

VOID_PTR  mymemset(VOID_PTR __s, int __c, size_t __n) {
    OutFile << CurrentTime() << "mymemset called " << endl;
    OutFile.flush();
    VOID_PTR  res = fptrmemset(__s, __c, __n);

    return res;
}

VOID_PTR  mymemcpy(VOID_PTR __dest, const VOID_PTR __src, size_t __n) 
{
    OutFile << CurrentTime() << "mymemcpy called " << endl;
    OutFile.flush();
    VOID_PTR  res = fptrmemcpy(__dest, __src, __n);

    return res;
}

int myaccess(const CHAR_PTR __pathname, int __mode) 
{
    OutFile << CurrentTime() << "myaccess called " << endl;
    OutFile.flush();
    int res = fptraccess(__pathname, __mode);

    return res;
}

off_t mylseek(int __fd, off_t __offset, int __whence) 
{
    OutFile << CurrentTime() << "mylseek called " << endl;
    OutFile.flush();
    off_t res = fptrlseek(__fd, __offset, __whence);

    return res;
}

off64_t mylseek64(int __fd, off64_t __offset, int __whence) 
{
    OutFile << CurrentTime() << "mylseek64 called " << endl;
    OutFile.flush();
    off64_t res = fptrlseek64(__fd, __offset, __whence);

    return res;
}

int myfdatasync(int __fd) {
    OutFile << CurrentTime() << "myfdatasync called " << endl;
    OutFile.flush();
    int res = fptrfdatasync(__fd);

    return res;
}

int myunlink(const CHAR_PTR __pathname) 
{
    OutFile << CurrentTime() << "myunlink called " << endl;
    OutFile.flush();
    int res = fptrunlink(__pathname);

    return res;
}

size_t mystrlen(const CHAR_PTR __s) 
{
    OutFile << CurrentTime() << "mystrlen called " << endl;
    OutFile.flush();
    size_t res = fptrstrlen(__s);

    return res;
}

size_t mywcslen(const wchar_t *__s)
{
    OutFile << CurrentTime() << "mywcslen called " << endl;
    OutFile.flush();
    size_t res = fptrwcslen(__s);

    return res;
}

CHAR_PTR  mystrcpy(CHAR_PTR __dest, const CHAR_PTR __src) 
{
    OutFile << CurrentTime() << "mystrcpy called " << endl;
    OutFile.flush();
    CHAR_PTR  res = fptrstrcpy(__dest, __src);

    return res;
}

CHAR_PTR  mystrncpy(CHAR_PTR __dest, const CHAR_PTR __src, size_t __n) 
{
    OutFile << CurrentTime() << "mystrncpy called " << endl;
    OutFile.flush();
    CHAR_PTR  res = fptrstrncpy(__dest, __src, __n);

    return res;
}

CHAR_PTR  mystrcat(CHAR_PTR __dest, const CHAR_PTR __src) 
{
    OutFile << CurrentTime() << "mystrcat called " << endl;
    OutFile.flush();
    CHAR_PTR  res = fptrstrcat(__dest, __src);

    return res;
}

CHAR_PTR  mystrstr(const CHAR_PTR __haystack, const CHAR_PTR __needle) 
{
    OutFile << CurrentTime() << "mystrstr called " << endl;
    OutFile.flush();
    CHAR_PTR  res = fptrstrstr(__haystack, __needle);

    return res;
}

CHAR_PTR  mystrchr0(const CHAR_PTR __s, int __c) 
{
    OutFile << CurrentTime() << "mystrchr0 called " << endl;
    OutFile.flush();
    CHAR_PTR  res = fptrstrchr0(__s, __c);

    return res;
}

CHAR_PTR  mystrrchr(const CHAR_PTR __s, int __c) 
{
    OutFile << CurrentTime() << "mystrrchr called " << endl;
    OutFile.flush();
    CHAR_PTR  res = fptrstrrchr(__s, __c);

    return res;
}

int mystrcmp(const CHAR_PTR __s1, const CHAR_PTR __s2) 
{
    OutFile << CurrentTime() << "mystrcmp called " << endl;
    OutFile.flush();
    int res = fptrstrcmp(__s1, __s2);

    return res;
}

int mystrncmp(const CHAR_PTR __s1, const CHAR_PTR __s2, size_t __n) 
{
    OutFile << CurrentTime() << "mystrncmp called " << endl;
    OutFile.flush();
    int res = fptrstrncmp(__s1, __s2, __n);

    return res;
}

int mysigaddset(sigset_t *__set, int __signum) 
{
    OutFile << CurrentTime() << "mysigaddset called " << endl;
    OutFile.flush();
    int res = fptrsigaddset(__set, __signum);

    return res;
}

int mysigdelset(sigset_t *__set, int __signum) {
    OutFile << CurrentTime() << "mysigdelset called " << endl;
    OutFile.flush();
    int res = fptrsigdelset(__set, __signum);

    return res;
}

int mysigismember(sigset_t *__set, int __signum)
{
    OutFile << CurrentTime() << "mysigismember called " << endl;
    OutFile.flush();
    int res = fptrsigismember(__set, __signum);

    return res;
}

CHAR_PTR  mystrerror(int __errnum) 
{
    OutFile << CurrentTime() << "mystrerror called " << endl;
    OutFile.flush();
    CHAR_PTR  res = fptrstrerror(__errnum);

    return res;
}

int mybind(int __sockfd, const struct sockaddr *__addr, socklen_t __addrlen) 
{
    OutFile << CurrentTime() << "mybind called " << endl;
    OutFile.flush();
    int res = fptrbind(__sockfd, __addr, __addrlen);

    return res;
}

int mylisten(int __sockfd, int __backlog) 
{
    OutFile << CurrentTime() << "mylisten called " << endl;
    OutFile.flush();
    int res = fptrlisten(__sockfd, __backlog);

    return res;
}

int myuname(struct utsname *__name) 
{
    OutFile << CurrentTime() << "myuname called " << endl;
    OutFile.flush();
    int res = fptruname(__name);

    return res;
}

int mygethostname(CHAR_PTR __name, size_t __len) 
{
    OutFile << CurrentTime() << "mygethostname called " << endl;
    OutFile.flush();
    int res = fptrgethostname(__name, __len);

    return res;
}

int mykill(pid_t __pid, int __sig) 
{
    OutFile << CurrentTime() << "mykill called " << endl;
    OutFile.flush();
    int res = fptrkill(__pid, __sig);

    return res;
}

int mysched_yield(void) 
{
    OutFile << CurrentTime() << "mysched_yield called " << endl;
    OutFile.flush();
    int res = fptrsched_yield();

    return res;
}

int mytimer_settime(timer_t __timerid, int __flags,
        const struct itimerspec * __value, struct itimerspec * __ovalue) 
{
    OutFile << CurrentTime() << "mytimer_settime called " << endl;
    OutFile.flush();
    int res = fptrtimer_settime(__timerid, __flags, __value, __ovalue);

    return res;
}

int mysigaltstack(const stack_t *__ss, stack_t *__oss) 
{
    OutFile << CurrentTime() << "mysigaltstacke called " << endl;
    OutFile.flush();
    int res = fptrsigaltstack(__ss, __oss);

    return res;
}

int mysleep(unsigned int __seconds) 
{
    OutFile << CurrentTime() << "mysleep called " << endl;
    OutFile.flush();
    int res = fptrsleep(__seconds);

    return res;
}

int mysocket(int __domain, int __type, int __protocol) 
{
    OutFile << CurrentTime() << "mysocket called " << endl;
    OutFile.flush();
    int res = fptrsocket(__domain, __type, __protocol);

    return res;
}

int myshutdown(int __fd, int __how) 
{
    OutFile << CurrentTime() << "myshutdown called " << endl;
    OutFile.flush();
    int res = fptrshutdown(__fd, __how);

    return res;
}

int myselect(int __nfds, fd_set *__restrict __readfds,
        fd_set *__restrict __writefds, fd_set *__restrict __exceptfds,
        struct timeval *__restrict __timeout) 
{
    OutFile << CurrentTime() << "myselect called " << endl;
    OutFile.flush();
    int res = fptrselect(__nfds, __readfds, __writefds, __exceptfds, __timeout);

    return res;
}

int mypoll(struct pollfd * __fds, nfds_t __nfds, int __timeout) 
{
    OutFile << CurrentTime() << "mypoll called " << endl;
    OutFile.flush();
    int res = fptrpoll(__fds, __nfds, __timeout);

    return res;
}

int myaccept(int __fd, __SOCKADDR_ARG __addr,
        socklen_t *__restrict __addr_len) 
{
    OutFile << CurrentTime() << "myaccept called " << endl;
    OutFile.flush();
    int res = fptraccept(__fd, __addr, __addr_len);

    return res;
}

int myconnect(int __fd, __CONST_SOCKADDR_ARG __addr, socklen_t __len) 
{
    OutFile << CurrentTime() << "myconnect called " << endl;
    OutFile.flush();
    int res = fptrconnect(__fd, __addr, __len);

    return res;
}

ssize_t myrecv(int __fd, VOID_PTR  __buf, size_t __n, int __flags) 
{
    OutFile << CurrentTime() << "myrecv called " << endl;
    OutFile.flush();
    ssize_t res = fptrrecv(__fd, __buf, __n, __flags);

    return res;
}

ssize_t myrecvfrom(int __fd, VOID_PTR __restrict __buf, size_t __n, int __flags,
        __SOCKADDR_ARG __addr, socklen_t *__restrict __addr_len) 
{
    OutFile << CurrentTime() << "myrecvfrom called " << endl;
    OutFile.flush();
    ssize_t res = fptrrecvfrom(__fd, __buf, __n, __flags, __addr, __addr_len);

    return res;
}

ssize_t mysend(int __fd, __const VOID_PTR  __buf, size_t __n, int __flags) 
{
    OutFile << CurrentTime() << "mysend called " << endl;
    OutFile.flush();
    ssize_t res = fptrsend(__fd, __buf, __n, __flags);

    return res;
}

wint_t mygetwc(__FILE * __stream) 
{
    OutFile << CurrentTime() << "mygetwc called " << endl;
    OutFile.flush();
    wint_t res = fptrgetwc(__stream);

    return res;
}

void myexit(int __status) 
{
    OutFile << CurrentTime() << "myexit called " << endl;
    OutFile.flush();
    fptrexit(__status);

}

int mysetitimer(__itimer_which_t  __which, __const
        struct itimerval *__restrict __new,
        struct itimerval *__restrict __old) 
{
    OutFile << CurrentTime() << "mysetitimer called " << endl;
    OutFile.flush();
    int res = fptrsetitimer(__which, __new, __old);

    return res;
}

int mysigpending(sigset_t * __set) 
{
    OutFile << CurrentTime() << "mysigpending called " << endl;
    OutFile.flush();
    int res = fptrsigpending(__set);

    return res;
}

__sighandler_t mysignal(int __sig, __sighandler_t  __handler) 

{
    OutFile << CurrentTime() << "mysignal called " << endl;
    OutFile.flush();
    __sighandler_t res = fptrsignal(__sig, __handler);

    return res;
}

void myabort() 
{
    OutFile << CurrentTime() << "myabort called " << endl;
    OutFile.flush();
    fptrabort();
}

int myclose(int __fd) 
{
    OutFile << CurrentTime() << "myclose called " << endl;
    OutFile.flush();
    int res = fptrclose(__fd);

    return res;
}

ssize_t mysendto(int __fd, __const VOID_PTR  __buf, size_t __n, int __flags,
        __CONST_SOCKADDR_ARG __addr, socklen_t __addr_len) 
{
    OutFile << CurrentTime() << "mysendto called " << endl;
    OutFile.flush();
    ssize_t res = fptrsendto(__fd, __buf, __n, __flags, __addr, __addr_len);

    return res;
}

int my_IO_getc(FILE * __stream) 
{
    OutFile << CurrentTime() << "my_IO_getc called " << endl;
    OutFile.flush();
    int res = fptr_IO_getc(__stream);

    return res;
}

int mygetchar()
{
    OutFile << CurrentTime() << "mygetchar called " << endl;
    OutFile.flush();
    int res = fptrgetchar();

    return res;
}

wint_t mygetwchar() 
{
    OutFile << CurrentTime() << "mygetwchar called " << endl;
    OutFile.flush();
    wint_t res = fptrgetwchar();

    return res;
}

CHAR_PTR  mygets(CHAR_PTR  __s) 
{
    OutFile << CurrentTime() << "mygets called " << endl;
    OutFile.flush();
    CHAR_PTR  res = fptrgets(__s);

    return res;
}

CHAR_PTR  myfgets(CHAR_PTR __restrict __s, int __n, FILE *__restrict __stream) 
{
    OutFile << CurrentTime() << "myfgets called " << endl;
    OutFile.flush();
    CHAR_PTR  res = fptrfgets(__s, __n, __stream);

    return res;
}

wint_t myfgetwc(__FILE * __stream) 
{
    OutFile << CurrentTime() << "myfgetwc called " << endl;
    OutFile.flush();
    wint_t res = fptrfgetwc(__stream);

    return res;
}

size_t myfread(VOID_PTR __restrict __ptr, size_t __size, size_t __n,
        FILE *__restrict __stream)
{
    OutFile << CurrentTime() << "myfread called " << endl;
    OutFile.flush();
    size_t res = fptrfread(__ptr, __size, __n, __stream);

    return res;
}

size_t myfwrite(__const VOID_PTR __restrict __ptr, size_t __size, size_t __n,
        FILE *__restrict __s) 
{
    OutFile << CurrentTime() << "myfwrite called " << endl;
    OutFile.flush();
    size_t res = fptrfwrite(__ptr, __size, __n, __s);

    return res;
}

int myopen(__const CHAR_PTR  __file, int __flags, mode_t __mode) 
{
    OutFile << CurrentTime() << "myopen called " << endl;
    OutFile.flush();
    int res = fptropen(__file, __flags, __mode);

    return res;
}

int mygetw(FILE * __stream) 
{
    OutFile << CurrentTime() << "mygetw called " << endl;
    OutFile.flush();
    int res = fptrgetw(__stream);

    return res;
}

void myfgetc(__FILE * __stream) 
{
    OutFile << CurrentTime() << "myfgetc called " << endl;
    OutFile.flush();
    fptrfgetc(__stream);

}

wchar_t * myfgetws(wchar_t *__restrict __ws, int __n,
        __FILE *__restrict __stream) 
        {
    OutFile << CurrentTime() << "myfgetws called " << endl;
    OutFile.flush();
    wchar_t * res = fptrfgetws(__ws, __n, __stream);

    return res;
}

int mypipe(int* __pipedes) 
{
    OutFile << CurrentTime() << "mypipe called " << endl;
    OutFile.flush();
    int res = fptrpipe(__pipedes);

    return res;
}

ssize_t myread(int __fd, VOID_PTR  __buf, size_t __nbytes) 
{
    OutFile << CurrentTime() << "myread called " << endl;
    OutFile.flush();
    ssize_t res = fptrread(__fd, __buf, __nbytes);

    return res;
}

ssize_t mywrite(int __fd, __const VOID_PTR  __buf, size_t __n) 
{
    OutFile << CurrentTime() << "mywrite called " << endl;
    OutFile.flush();
    ssize_t res = fptrwrite(__fd, __buf, __n);

    return res;
}

FILE * myfopen(__const CHAR_PTR __restrict __filename,
        __const CHAR_PTR __restrict __modes) 
{
    OutFile << CurrentTime() << "myfopen called " << endl;
    OutFile.flush();
    FILE * res = fptrfopen(__filename, __modes);

    return res;
}

FILE * myfdopen(int __fd, __const CHAR_PTR  __modes) 
{
    OutFile << CurrentTime() << "myfdopen called " << endl;
    OutFile.flush();
    FILE * res = fptrfdopen(__fd, __modes);

    return res;
}

int mycallrpc(__const CHAR_PTR  __host, u_long __prognum, u_long __versnum,
        u_long __procnum, xdrproc_t __inproc, __const CHAR_PTR  __in,
        xdrproc_t __outproc, CHAR_PTR  __out) 
{
    OutFile << CurrentTime() << "mycallrpc called " << endl;
    OutFile.flush();
    int res = fptrcallrpc(__host, __prognum, __versnum, __procnum, __inproc,
            __in, __outproc, __out);

    return res;
}

enum clnt_stat myclnt_broadcast(u_long __prog, u_long __vers, u_long __proc,
        xdrproc_t __xargs, caddr_t __argsp, xdrproc_t __xresults,
        caddr_t __resultsp, resultproc_t __eachresult) 
{
    OutFile << CurrentTime() << "myclnt_broadcast called " << endl;
    OutFile.flush();
    enum clnt_stat res = fptrclnt_broadcast(__prog, __vers, __proc, __xargs,
            __argsp, __xresults, __resultsp, __eachresult);

    return res;
}

CLIENT * myclntudp_create(struct sockaddr_in * __raddr, u_long __program,
        u_long __version, struct timeval __wait_resend, INT_PTR  __sockp) 
{
    OutFile << CurrentTime() << "myclntudp_create called " << endl;
    OutFile.flush();
    CLIENT * res = fptrclntudp_create(__raddr, __program, __version,
            __wait_resend, __sockp);

    return res;
}

CLIENT * myclntudp_bufcreate(struct sockaddr_in * __raddr, u_long __program,
        u_long __version, struct timeval __wait_resend, INT_PTR  __sockp,
        u_int __sendsz, u_int __recvsz) 
{
    OutFile << CurrentTime() << "myclntudp_bufcreate called " << endl;
    OutFile.flush();
    CLIENT * res = fptrclntudp_bufcreate(__raddr, __program, __version,
            __wait_resend, __sockp, __sendsz, __recvsz);

    return res;
}

struct pmaplist * mypmap_getmaps(struct sockaddr_in * __address) 
{
    OutFile << CurrentTime() << "mypmap_getmaps called " << endl;
    OutFile.flush();
    struct pmaplist * res = fptrpmap_getmaps(__address);

    return res;
}

u_short mypmap_getport(struct sockaddr_in * __address, u_long __program,
        u_long __version, u_int __protocol) 
{
    OutFile << CurrentTime() << "mypmap_getport called " << endl;
    OutFile.flush();
    u_short res = fptrpmap_getport(__address, __program, __version, __protocol);

    return res;
}

enum clnt_stat mypmap_rmtcall(struct sockaddr_in * __addr, u_long __prog,
        u_long __vers, u_long __proc, xdrproc_t __xdrargs, caddr_t __argsp,
        xdrproc_t __xdrres, caddr_t __resp, struct timeval __tout,
        u_long * __port_ptr) 
{
    OutFile << CurrentTime() << "mypmap_rmtcall called " << endl;
    OutFile.flush();
    enum clnt_stat res = fptrpmap_rmtcall(__addr, __prog, __vers, __proc,
            __xdrargs, __argsp, __xdrres, __resp, __tout, __port_ptr);

    return res;
}

bool_t mypmap_set(u_long __program, u_long __vers, int __protocol, u_short __port) 
{
    OutFile << CurrentTime() << "mypmap_set called " << endl;
    OutFile.flush();
    bool_t res = fptrpmap_set(__program, __vers, __protocol, __port);

    return res;
}

CLIENT * myclntraw_create(u_long __prog, u_long __vers) 
{
    OutFile << CurrentTime() << "myclntraw_create called " << endl;
    OutFile.flush();
    CLIENT * res = fptrclntraw_create(__prog, __vers);

    return res;
}

void mysvc_run()
{
    OutFile << CurrentTime() << "mysvc_run called " << endl;
    OutFile.flush();
    fptrsvc_run();
}

bool_t mysvc_sendreply(SVCXPRT * xprt, xdrproc_t __xdr_results,
        caddr_t __xdr_location) 
{
    OutFile << CurrentTime() << "mysvc_sendreply called " << endl;
    OutFile.flush();
    bool_t res = fptrsvc_sendreply(xprt, __xdr_results, __xdr_location);

    return res;
}

SVCXPRT * mysvcraw_create() 
{
    OutFile << CurrentTime() << "mysvcraw_create called " << endl;
    OutFile.flush();
    SVCXPRT * res = fptrsvcraw_create();

    return res;
}

SVCXPRT * mysvctcp_create(int __sock, u_int __sendsize, u_int __recvsize) 
{
    OutFile << CurrentTime() << "mypmap_rmtcall called " << endl;
    OutFile.flush();
    SVCXPRT * res = fptrsvctcp_create(__sock, __sendsize, __recvsize);

    return res;
}

SVCXPRT * mysvcudp_bufcreate(int __sock, u_int __sendsz, u_int __recvsz)
{
    OutFile << CurrentTime() << "mysvcudp_bufcreate called " << endl;
    OutFile.flush();
    SVCXPRT * res = fptrsvcudp_bufcreate(__sock, __sendsz, __recvsz);

    return res;
}

SVCXPRT * mysvcudp_create(int __sock)
{
    OutFile << CurrentTime() << "mysvcudp_create called " << endl;
    OutFile.flush();
    SVCXPRT * res = fptrsvcudp_create(__sock);

    return res;
}

void my_exit(int __status)
{
    OutFile << CurrentTime() << "my_exit called " << endl;
    OutFile.flush();
    fptr_exit(__status);

}

int my_nanosleep(const struct timespec *__rqtp, struct timespec *__rmtp) 
{
    OutFile << CurrentTime() << "my_nanosleep called " << endl;
    OutFile.flush();
    int res = fptrnanosleep(__rqtp, __rmtp);

    return res;
}

int mysigprocmask(int __how, __const sigset_t *__restrict __set,
        sigset_t *__restrict __oset) 
{
    OutFile << CurrentTime() << "mysigprocmask called " << endl;
    OutFile.flush();
    int res = fptrsigprocmask(__how, __set, __oset);

    return res;
}

int mypselect(int __nfds, fd_set *__restrict __readfds,
        fd_set *__restrict __writefds, fd_set *__restrict __exceptfds,
        const struct timespec *__restrict __timeout,
        const __sigset_t *__restrict __sigmask) 
{
    OutFile << CurrentTime() << "mypselect called " << endl;
    OutFile.flush();
    int res = fptrpselect(__nfds, __readfds, __writefds, __exceptfds, __timeout,
            __sigmask);

    return res;
}

pid_t mywait(INT_PTR __status) 
{
    OutFile << CurrentTime() << "mywait called " << endl;
    OutFile.flush();
    int res = fptrwait(__status);

    return res;
}

int myfclose(FILE * __stream) 
{
    OutFile << CurrentTime() << "myfclose called " << endl;
    OutFile.flush();
    int res = fptrfclose(__stream);

    return res;
}

int myioctl(int __d, int __request, CHAR_PTR  __argp) 
{
    OutFile << CurrentTime() << "myioctl called " << endl;
    OutFile.flush();
    int res = fptrioctl(__d, __request, __argp);

    return res;
}

int myfcntl(int __fd, int __cmd, VOID_PTR  __argp) 
{
    OutFile << CurrentTime() << "myfcntl called " << endl;
    OutFile.flush();
    int res = fptrfcntl(__fd, __cmd, __argp);

    return res;
}

VOID_PTR  my__libc_dlopen_mode(const CHAR_PTR __name, int __mode) 
{
    OutFile << CurrentTime() << "my__libc_dlopen_mode called " << endl;
    OutFile.flush();
    VOID_PTR  res = fptr__libc_dlopen_mode(__name, __mode);

    return res;
}

INT_PTR  my__errno_location(void) 
{
    OutFile << CurrentTime() << "my__errno_location called " << endl;
    OutFile.flush();
    INT_PTR  res = fptr__errno_location();

    return res;
}

int mysyscall(int __number, long int __arg1, long int __arg2, long int __arg3,
        long int __arg4, long int __arg5, long int __arg6, long int __arg7) 
{
    OutFile << CurrentTime() << "mysyscall called " << endl;
    OutFile.flush();
    int res = fptrsyscall(__number, __arg1, __arg2, __arg3, __arg4, __arg5,
            __arg6, __arg7);

    return res;
}

int mysigaction(int __sig, __const struct sigaction *__restrict __act,
        struct sigaction *__restrict __oact) 
{
    OutFile << CurrentTime() << "mysigaction called " << endl;
    OutFile.flush();
    int res = fptrsigaction(__sig, __act, __oact);

    return res;
}

/* ===================================================================== */
/* Instrumnetation functions                                             */
/* ===================================================================== */

// Image load callback - inserts the probes.
void ImgLoad(IMG img, VOID_PTR v) {
    // Called every time a new image is loaded
    if ((IMG_Name(img).find("libc.so") != string::npos)
            || (IMG_Name(img).find("LIBC.SO") != string::npos)
            || (IMG_Name(img).find("LIBC.so") != string::npos)) 
    {
            
        RTN rtnsleep = RTN_FindByName(img, "sleep");
        if (RTN_Valid(rtnsleep) && RTN_IsSafeForProbedReplacement(rtnsleep)) 
        {
            OutFile << CurrentTime() << "Inserting probe for sleep at "
                    << RTN_Address(rtnsleep) << endl;
            OutFile.flush();
            AFUNPTR fptr = (RTN_ReplaceProbed(rtnsleep, AFUNPTR(mysleep)));
            fptrsleep = (int (*)(unsigned int))fptr;
        }

        RTN rtnsocket = RTN_FindByName(img, "socket");
        if (RTN_Valid(rtnsocket) && RTN_IsSafeForProbedReplacement(rtnsocket))
        {
            OutFile << CurrentTime() << "Inserting probe for socket at "
                    << RTN_Address(rtnsocket) << endl;
            OutFile.flush();
            AFUNPTR fptr = (RTN_ReplaceProbed(rtnsocket, AFUNPTR(mysocket)));
            fptrsocket = (int (*)(int, int, int))fptr;
        }

        RTN rtnshutdown = RTN_FindByName(img, "shutdown");
        if (RTN_Valid(rtnshutdown)
                && RTN_IsSafeForProbedReplacement(rtnshutdown)) 
        {
            OutFile << CurrentTime() << "Inserting probe for shutdown at " << RTN_Address(rtnshutdown) << endl;
            OutFile.flush();
            AFUNPTR fptr = (RTN_ReplaceProbed(rtnshutdown, AFUNPTR(myshutdown)));
            fptrshutdown = (int (*)(int, int))fptr;
        }

        RTN rtnselect = RTN_FindByName(img, "select");
        if (RTN_Valid(rtnselect) && RTN_IsSafeForProbedReplacement(rtnselect)) 
        {
            OutFile << CurrentTime() << "Inserting probe for select at " << RTN_Address(rtnselect) << endl;
            OutFile.flush();
            AFUNPTR fptr = (RTN_ReplaceProbed(rtnselect, AFUNPTR(myselect)));
            fptrselect = (int (*)(int, fd_set *, fd_set *, fd_set *, struct timeval *))fptr;
        }

        RTN rtnpoll = RTN_FindByName(img, "poll");
        if (RTN_Valid(rtnpoll) && RTN_IsSafeForProbedReplacement(rtnpoll)) 
        {
            OutFile << CurrentTime() << "Inserting probe for poll at " << RTN_Address(rtnpoll) << endl;
            OutFile.flush();
            AFUNPTR fptr = (RTN_ReplaceProbed(rtnpoll, AFUNPTR(mypoll)));
            fptrpoll = (int (*)(struct pollfd *, nfds_t, int))fptr;
        }

        RTN rtnpselect = RTN_FindByName(img, "pselect");
        if (RTN_Valid(rtnpselect)
                && RTN_IsSafeForProbedReplacement(rtnpselect))
        {
            OutFile << CurrentTime() << "Inserting probe for pselect at "
                    << RTN_Address(rtnpselect) << endl;
            OutFile.flush();
            AFUNPTR fptr = (RTN_ReplaceProbed(rtnpselect, AFUNPTR(mypselect)));
            fptrpselect = (int (*)(int, fd_set *, fd_set *, fd_set *,
                    const struct timespec *, const __sigset_t *))fptr;
        }

        RTN rtnaccept = RTN_FindByName(img, "accept");
        if (RTN_Valid(rtnaccept) && RTN_IsSafeForProbedReplacement(rtnaccept)) 
        {
            OutFile << CurrentTime() << "Inserting probe for accept at " << RTN_Address(rtnaccept) << endl;
            OutFile.flush();
            AFUNPTR fptr = (RTN_ReplaceProbed(rtnaccept, AFUNPTR(myaccept)));
            fptraccept = (int (*)(int, __SOCKADDR_ARG, socklen_t *__restrict))fptr;
            }

        RTN rtnconnect = RTN_FindByName(img, "connect");
        if (RTN_Valid(rtnconnect) && RTN_IsSafeForProbedReplacement(rtnconnect))
        {
            OutFile << CurrentTime() << "Inserting probe for connect at " << RTN_Address(rtnconnect) << endl;
            OutFile.flush();
            AFUNPTR fptr = (RTN_ReplaceProbed(rtnconnect, AFUNPTR(myconnect)));
            fptrconnect = (int (*)(int, __CONST_SOCKADDR_ARG, socklen_t))fptr;
        }

        RTN rtnrecv = RTN_FindByName(img, "recv");
        if (RTN_Valid(rtnrecv) && RTN_IsSafeForProbedReplacement(rtnrecv))
        {
            OutFile << CurrentTime() << "Inserting probe for recv at " << RTN_Address(rtnrecv) << endl;
            OutFile.flush();
            AFUNPTR fptr = (RTN_ReplaceProbed(rtnrecv, AFUNPTR(myrecv)));
            fptrrecv = (ssize_t (*)(int, VOID_PTR , size_t, int))fptr;
        }

        RTN rtnrecvfrom = RTN_FindByName(img, "recvfrom");
        if (RTN_Valid(rtnrecvfrom) && RTN_IsSafeForProbedReplacement(rtnrecvfrom))
        {
            OutFile << CurrentTime() << "Inserting probe for recvfrom at " << RTN_Address(rtnrecvfrom) << endl;
            OutFile.flush();
            AFUNPTR fptr = (RTN_ReplaceProbed(rtnrecvfrom, AFUNPTR(myrecvfrom)));
            fptrrecvfrom = (ssize_t (*)(int, VOID_PTR , size_t, int, __SOCKADDR_ARG, socklen_t *))fptr;
        }

        RTN rtnsend = RTN_FindByName(img, "send");
        if (RTN_Valid(rtnsend) && RTN_IsSafeForProbedReplacement(rtnsend)) 
        {
            OutFile << CurrentTime() << "Inserting probe for send at " << RTN_Address(rtnsend) << endl;
            OutFile.flush();
            AFUNPTR fptr = (RTN_ReplaceProbed(rtnsend, AFUNPTR(mysend)));
			fptrsend = (ssize_t (*)(int, __const VOID_PTR, size_t, int))fptr;
        }

        RTN rtnsendto = RTN_FindByName(img, "sendto");
        if (RTN_Valid(rtnsendto) && RTN_IsSafeForProbedReplacement(rtnsendto)) 
        {
            OutFile << CurrentTime() << "Inserting probe for sendto at " << RTN_Address(rtnsendto) << endl;
            OutFile.flush();
            AFUNPTR fptr = (RTN_ReplaceProbed(rtnsendto, AFUNPTR(mysendto)));
            fptrsendto = (ssize_t (*)(int, __const VOID_PTR , size_t, int, __CONST_SOCKADDR_ARG, socklen_t))fptr;
        }

        RTN rtngetwc = RTN_FindByName(img, "getwc");
        if (RTN_Valid(rtngetwc) && RTN_IsSafeForProbedReplacement(rtngetwc)) 
        {
            OutFile << CurrentTime() << "Inserting probe for getwc at " << RTN_Address(rtngetwc) << endl;
            OutFile.flush();
            AFUNPTR fptr = (RTN_ReplaceProbed(rtngetwc, AFUNPTR(mygetwc)));
            fptrgetwc = (wint_t (*)(__FILE *))fptr;
        }

        RTN rtngetw = RTN_FindByName(img, "getw");
        if (RTN_Valid(rtngetw) && RTN_IsSafeForProbedReplacement(rtngetw))
        {
            OutFile << CurrentTime() << "Inserting probe for getw at " << RTN_Address(rtngetw) << endl;
            OutFile.flush();
            AFUNPTR fptr = (RTN_ReplaceProbed(rtngetw, AFUNPTR(mygetw)));
            fptrgetw = (int (*)(FILE *))fptr;
        }

        RTN rtn_IO_getc = RTN_FindByName(img, "_IO_getc");
        if (RTN_Valid(rtn_IO_getc)
                && RTN_IsSafeForProbedReplacement(rtn_IO_getc)) 
        {
            OutFile << CurrentTime() << "Inserting probe for _IO_getc at " << RTN_Address(rtn_IO_getc) << endl;
            OutFile.flush();
            AFUNPTR fptr = (RTN_ReplaceProbed(rtn_IO_getc, AFUNPTR(my_IO_getc)));
            fptr_IO_getc = (int (*)(FILE *))fptr;
        }

        RTN rtngetchar = RTN_FindByName(img, "getchar");
        if (RTN_Valid(rtngetchar) && RTN_IsSafeForProbedReplacement(rtngetchar)) 
        {
            OutFile << CurrentTime() << "Inserting probe for getchar at " << RTN_Address(rtngetchar) << endl;
            OutFile.flush();
            AFUNPTR fptr = (RTN_ReplaceProbed(rtngetchar, AFUNPTR(mygetchar)));
            fptrgetchar = (int (*)())fptr;
        }

        RTN rtngetwchar = RTN_FindByName(img, "getwchar");
        if (RTN_Valid(rtngetwchar) && RTN_IsSafeForProbedReplacement(rtngetwchar))
        {
            OutFile << CurrentTime() << "Inserting probe for getwchar at "
                    << RTN_Address(rtngetwchar) << endl;
            OutFile.flush();
            AFUNPTR fptr = (RTN_ReplaceProbed(rtngetwchar, AFUNPTR(mygetwchar)));
            fptrgetwchar = (wint_t (*)())fptr;
        }

        RTN rtngets = RTN_FindByName(img, "gets");
        if (RTN_Valid(rtngets) && RTN_IsSafeForProbedReplacement(rtngets))
        {
            OutFile << CurrentTime() << "Inserting probe for gets at " << RTN_Address(rtngets) << endl;
            OutFile.flush();
            AFUNPTR fptr = (RTN_ReplaceProbed(rtngets, AFUNPTR(mygets)));
            fptrgets = (CHAR_PTR  (*)(CHAR_PTR ))fptr;
        }

        RTN rtnfgetc = RTN_FindByName(img, "fgetc");
        if (RTN_Valid(rtnfgetc) && RTN_IsSafeForProbedReplacement(rtnfgetc)) 
        {
            OutFile << CurrentTime() << "Inserting probe for fgetc at " << RTN_Address(rtnfgetc) << endl;
            OutFile.flush();
            AFUNPTR fptr = (RTN_ReplaceProbed(rtnfgetc, AFUNPTR(myfgetc)));
            fptrfgetc = (void (*)(__FILE *))fptr;
        }

        RTN rtnfgetwc = RTN_FindByName(img, "fgetwc");
        if (RTN_Valid(rtnfgetwc) && RTN_IsSafeForProbedReplacement(rtnfgetwc)) 
        {
            OutFile << CurrentTime() << "Inserting probe for fgetwc at " << RTN_Address(rtnfgetwc) << endl;
            OutFile.flush();
            AFUNPTR fptr = (RTN_ReplaceProbed(rtnfgetwc, AFUNPTR(myfgetwc)));
            fptrfgetwc = (wint_t (*)(__FILE *))fptr;
        }

        RTN rtnfgets = RTN_FindByName(img, "fgets");
        if (RTN_Valid(rtnfgets) && RTN_IsSafeForProbedReplacement(rtnfgets)) 
        {
            OutFile << CurrentTime() << "Inserting probe for fgets at " << RTN_Address(rtnfgets) << endl;
            OutFile.flush();
            AFUNPTR fptr = (RTN_ReplaceProbed(rtnfgets, AFUNPTR(myfgets)));
            fptrfgets = (CHAR_PTR  (*)(CHAR_PTR __restrict, int,
                    FILE *__restrict))fptr;
        }

        RTN rtnfgetws = RTN_FindByName(img, "fgetws");
        if (RTN_Valid(rtnfgetws) && RTN_IsSafeForProbedReplacement(rtnfgetws))
        {
            OutFile << CurrentTime() << "Inserting probe for fgetws at " << RTN_Address(rtnfgetws) << endl;
            OutFile.flush();
            AFUNPTR fptr = (RTN_ReplaceProbed(rtnfgetws, AFUNPTR(myfgetws)));
            fptrfgetws = (wchar_t * (*)(wchar_t *, int, __FILE *))fptr;
        }

        RTN rtnfread = RTN_FindByName(img, "fread");
        if (RTN_Valid(rtnfread) && RTN_IsSafeForProbedReplacement(rtnfread))
        {
            OutFile << CurrentTime() << "Inserting probe for fread at " << RTN_Address(rtnfread) << endl;
            OutFile.flush();
            AFUNPTR fptr = (RTN_ReplaceProbed(rtnfread, AFUNPTR(myfread)));
            fptrfread = (size_t (*)(VOID_PTR , size_t, size_t, FILE *))fptr;
        }

        RTN rtnfwrite = RTN_FindByName(img, "fwrite");
        if (RTN_Valid(rtnfwrite) && RTN_IsSafeForProbedReplacement(rtnfwrite))
        {
            OutFile << CurrentTime() << "Inserting probe for fwrite at " << RTN_Address(rtnfwrite) << endl;
            OutFile.flush();
            AFUNPTR fptr = (RTN_ReplaceProbed(rtnfwrite, AFUNPTR(myfwrite)));
            fptrfwrite = (size_t (*)(__const VOID_PTR __restrict, size_t, size_t,
                    FILE *__restrict))fptr;
        }

        RTN rtnpipe = RTN_FindByName(img, "pipe");
        if (RTN_Valid(rtnpipe) && RTN_IsSafeForProbedReplacement(rtnpipe))
        {
            OutFile << CurrentTime() << "Inserting probe for pipe at " << RTN_Address(rtnpipe) << endl;
            OutFile.flush();
            AFUNPTR fptr = (RTN_ReplaceProbed(rtnpipe, AFUNPTR(mypipe)));
            fptrpipe = (int (*)(int[2]))fptr;
        }

        RTN rtnread = RTN_FindByName(img, "read");
        if (RTN_Valid(rtnread) && RTN_IsSafeForProbedReplacement(rtnread))
        {
            OutFile << CurrentTime() << "Inserting probe for read at " << RTN_Address(rtnread) << endl;
            OutFile.flush();
            AFUNPTR fptr = (RTN_ReplaceProbed(rtnread, AFUNPTR(myread)));
            fptrread = (ssize_t (*)(int, VOID_PTR , size_t))fptr;
        }

        RTN rtnwrite = RTN_FindByName(img, "write");
        if (RTN_Valid(rtnwrite) && RTN_IsSafeForProbedReplacement(rtnwrite))
        {
            OutFile << CurrentTime() << "Inserting probe for write at " << RTN_Address(rtnwrite) << endl;
            OutFile.flush();
            AFUNPTR fptr = (RTN_ReplaceProbed(rtnwrite, AFUNPTR(mywrite)));
            fptrwrite = (ssize_t (*)(int, __const VOID_PTR , size_t))fptr;
        }

        RTN rtnopen = RTN_FindByName(img, "open");
        if (RTN_Valid(rtnopen) && RTN_IsSafeForProbedReplacement(rtnopen)) 
        {
            OutFile << CurrentTime() << "Inserting probe for open at " << RTN_Address(rtnopen) << endl;
            OutFile.flush();
            AFUNPTR fptr = (RTN_ReplaceProbed(rtnopen, AFUNPTR(myopen)));
            fptropen = (int (*)(__const CHAR_PTR , int, mode_t))fptr;
        }

        RTN rtnfopen = RTN_FindByName(img, "fopen");
        if (RTN_Valid(rtnfopen) && RTN_IsSafeForProbedReplacement(rtnfopen))
        {
            OutFile << CurrentTime() << "Inserting probe for fopen at " << RTN_Address(rtnfopen) << endl;
            OutFile.flush();
            AFUNPTR fptr = (RTN_ReplaceProbed(rtnfopen, AFUNPTR(myfopen)));
            fptrfopen = (FILE * (*)(__const CHAR_PTR __restrict, __const CHAR_PTR __restrict))fptr;
        }

        RTN rtnfdopen = RTN_FindByName(img, "fdopen");
        if (RTN_Valid(rtnfdopen) && RTN_IsSafeForProbedReplacement(rtnfdopen))
        {
            OutFile << CurrentTime() << "Inserting probe for fdopen at " << RTN_Address(rtnfdopen) << endl;
            OutFile.flush();
            AFUNPTR fptr = (RTN_ReplaceProbed(rtnfdopen, AFUNPTR(myfdopen)));
            fptrfdopen = (FILE * (*)(int, __const CHAR_PTR ))fptr;
        }

        RTN rtnclose = RTN_FindByName(img, "close");
        if (RTN_Valid(rtnclose) && RTN_IsSafeForProbedReplacement(rtnclose))
        {
            OutFile << CurrentTime() << "Inserting probe for close at " << RTN_Address(rtnclose) << endl;
            OutFile.flush();
            AFUNPTR fptr = (RTN_ReplaceProbed(rtnclose, AFUNPTR(myclose)));
            fptrclose = (int (*)(int))fptr;
        }

        RTN rtnfclose = RTN_FindByName(img, "fclose");
        if (RTN_Valid(rtnfclose) && RTN_IsSafeForProbedReplacement(rtnfclose))
        {
            OutFile << CurrentTime() << "Inserting probe for fclose at " << RTN_Address(rtnfclose) << endl;
            OutFile.flush();
            AFUNPTR fptr = (RTN_ReplaceProbed(rtnfclose, AFUNPTR(myfclose)));
            fptrfclose = (int (*)(FILE *))fptr;
        }

        RTN rtncallrpc = RTN_FindByName(img, "callrpc");
        if (RTN_Valid(rtncallrpc)&& RTN_IsSafeForProbedReplacement(rtncallrpc))
        {
            OutFile << CurrentTime() << "Inserting probe for callrpc at " << RTN_Address(rtncallrpc) << endl;
            OutFile.flush();
            AFUNPTR fptr = (RTN_ReplaceProbed(rtncallrpc, AFUNPTR(mycallrpc)));
            fptrcallrpc = (int (*)(__const CHAR_PTR , u_long, u_long, u_long,
                    xdrproc_t, __const CHAR_PTR , xdrproc_t, CHAR_PTR ))fptr;
        }

        RTN rtnclnt_broadcast = RTN_FindByName(img, "clnt_broadcast");
        if (RTN_Valid(rtnclnt_broadcast)
                && RTN_IsSafeForProbedReplacement(rtnclnt_broadcast))
        {
            OutFile << CurrentTime() << "Inserting probe for clnt_broadcast at " << RTN_Address(rtnclnt_broadcast) << endl;
            OutFile.flush();
            AFUNPTR fptr = (RTN_ReplaceProbed(rtnclnt_broadcast, AFUNPTR(myclnt_broadcast)));
            fptrclnt_broadcast = (enum clnt_stat (*)(u_long, u_long, u_long,
                    xdrproc_t, caddr_t, xdrproc_t, caddr_t, resultproc_t))fptr;
        }

        RTN rtnclntudp_create = RTN_FindByName(img, "clntudp_create");
        if (RTN_Valid(rtnclntudp_create)
                && RTN_IsSafeForProbedReplacement(rtnclntudp_create)) 
        {
            OutFile << CurrentTime() << "Inserting probe for clntudp_create at " << RTN_Address(rtnclntudp_create) << endl;
            OutFile.flush();
            AFUNPTR fptr = (RTN_ReplaceProbed(rtnclntudp_create, AFUNPTR(myclntudp_create)));
            fptrclntudp_create = (CLIENT * (*)(struct sockaddr_in *, u_long,
                    u_long, struct timeval, INT_PTR ))fptr;
        }

        RTN rtnclntudp_bufcreate = RTN_FindByName(img, "clntudp_bufcreate");
        if (RTN_Valid(rtnclntudp_bufcreate) && RTN_IsSafeForProbedReplacement(rtnclntudp_bufcreate))
        {
            OutFile << CurrentTime() << "Inserting probe for clntudp_bufcreate at " << RTN_Address(rtnclntudp_bufcreate) << endl;
            OutFile.flush();
            AFUNPTR fptr = (RTN_ReplaceProbed(rtnclntudp_bufcreate, AFUNPTR(myclntudp_bufcreate)));
            fptrclntudp_bufcreate = (CLIENT * (*)(struct sockaddr_in *, u_long, u_long, struct timeval, INT_PTR , u_int, u_int))fptr;
        }

        RTN rtnpmap_getmaps = RTN_FindByName(img, "pmap_getmaps");
        if (RTN_Valid(rtnpmap_getmaps) && RTN_IsSafeForProbedReplacement(rtnpmap_getmaps)) 
        {
            OutFile << CurrentTime() << "Inserting probe for pmap_getmaps at " << RTN_Address(rtnpmap_getmaps) << endl;
            OutFile.flush();
            AFUNPTR fptr = (RTN_ReplaceProbed(rtnpmap_getmaps, AFUNPTR(mypmap_getmaps)));
            fptrpmap_getmaps = (struct pmaplist * (*)( struct sockaddr_in *))fptr;
        }

        RTN rtnpmap_getport = RTN_FindByName(img, "pmap_getport");
        if (RTN_Valid(rtnpmap_getport) && RTN_IsSafeForProbedReplacement(rtnpmap_getport))
        {
            OutFile << CurrentTime() << "Inserting probe for pmap_getport at " << RTN_Address(rtnpmap_getport) << endl;
            OutFile.flush();
            AFUNPTR fptr = (RTN_ReplaceProbed(rtnpmap_getport, AFUNPTR(mypmap_getport)));
            fptrpmap_getport = (u_short (*)(struct sockaddr_in *, u_long, u_long, u_int))fptr;
        }

        RTN rtnpmap_rmtcall = RTN_FindByName(img, "pmap_rmtcall");
        if (RTN_Valid(rtnpmap_rmtcall) && RTN_IsSafeForProbedReplacement(rtnpmap_rmtcall)) 
        {
            OutFile << CurrentTime() << "Inserting probe for pmap_rmtcall at " << RTN_Address(rtnpmap_rmtcall) << endl;
            OutFile.flush();
            AFUNPTR fptr = (RTN_ReplaceProbed(rtnpmap_rmtcall, AFUNPTR(mypmap_rmtcall)));
            fptrpmap_rmtcall = (enum clnt_stat (*)(struct sockaddr_in *, u_long,
                    u_long, u_long, xdrproc_t, caddr_t, xdrproc_t, caddr_t,
                    struct timeval, u_long *))fptr;
        }

        RTN rtnpmap_set = RTN_FindByName(img, "pmap_set");
        if (RTN_Valid(rtnpmap_set) && RTN_IsSafeForProbedReplacement(rtnpmap_set)) 
        {
            OutFile << CurrentTime() << "Inserting probe for pmap_set at " << RTN_Address(rtnpmap_set) << endl;
            OutFile.flush();
            AFUNPTR fptr = (RTN_ReplaceProbed(rtnpmap_set, AFUNPTR(mypmap_set)));
            fptrpmap_set = (bool_t (*)(u_long, u_long, int, u_short))fptr;
        }

        RTN rtnclntraw_create = RTN_FindByName(img, "clntraw_create");
        if (RTN_Valid(rtnclntraw_create)
                && RTN_IsSafeForProbedReplacement(rtnclntraw_create))
        {
            OutFile << CurrentTime() << "Inserting probe for clntraw_create at " << RTN_Address(rtnclntraw_create) << endl;
            OutFile.flush();
            AFUNPTR fptr = (RTN_ReplaceProbed(rtnclntraw_create, AFUNPTR(myclntraw_create)));
            fptrclntraw_create = (CLIENT * (*)(u_long, u_long))fptr;
        }

        RTN rtnsvc_run = RTN_FindByName(img, "svc_run");
        if (RTN_Valid(rtnsvc_run) && RTN_IsSafeForProbedReplacement(rtnsvc_run)) 
        {
            OutFile << CurrentTime() << "Inserting probe for svc_run at "
                    << RTN_Address(rtnsvc_run) << endl;
            OutFile.flush();
            AFUNPTR fptr = (RTN_ReplaceProbed(rtnsvc_run, AFUNPTR(mysvc_run)));
            fptrsvc_run = (void (*)())fptr;
        }
        
        RTN rtnsvc_sendreply = RTN_FindByName(img, "svc_sendreply");
        if (RTN_Valid(rtnsvc_sendreply) && RTN_IsSafeForProbedReplacement(rtnsvc_sendreply))
        {
            OutFile << CurrentTime() << "Inserting probe for svc_sendreply at " << RTN_Address(rtnsvc_sendreply) << endl;
            OutFile.flush();
            AFUNPTR fptr = (RTN_ReplaceProbed(rtnsvc_sendreply, AFUNPTR(mysvc_sendreply)));
            fptrsvc_sendreply = (bool_t (*)(SVCXPRT *, xdrproc_t, caddr_t))fptr;
        }

        RTN rtnsvcraw_create = RTN_FindByName(img, "svcraw_create");
        if (RTN_Valid(rtnsvcraw_create) && RTN_IsSafeForProbedReplacement(rtnsvcraw_create)) 
        {
            OutFile << CurrentTime() << "Inserting probe for svcraw_create at " << RTN_Address(rtnsvcraw_create) << endl;
            OutFile.flush();
            AFUNPTR fptr = (RTN_ReplaceProbed(rtnsvcraw_create, AFUNPTR(mysvcraw_create)));
            fptrsvcraw_create = (SVCXPRT * (*)())fptr;
        }

        RTN rtnsvctcp_create = RTN_FindByName(img, "svctcp_create");
        if (RTN_Valid(rtnsvctcp_create) && RTN_IsSafeForProbedReplacement(rtnsvctcp_create))
        {
            OutFile << CurrentTime() << "Inserting probe for svctcp_create at " << RTN_Address(rtnsvctcp_create) << endl;
            OutFile.flush();
            AFUNPTR fptr = (RTN_ReplaceProbed(rtnsvctcp_create, AFUNPTR(mysvctcp_create)));
            fptrsvctcp_create = (SVCXPRT * (*)(int, u_int, u_int))fptr;
        }

        RTN rtnsvcudp_bufcreate = RTN_FindByName(img, "svcudp_bufcreate");
        if (RTN_Valid(rtnsvcudp_bufcreate) && RTN_IsSafeForProbedReplacement(rtnsvcudp_bufcreate))
        {
            OutFile << CurrentTime() << "Inserting probe for svcudp_bufcreate at " << RTN_Address(rtnsvcudp_bufcreate) << endl;
            OutFile.flush();
            AFUNPTR fptr = (RTN_ReplaceProbed(rtnsvcudp_bufcreate, AFUNPTR(mysvcudp_bufcreate)));
            fptrsvcudp_bufcreate = (SVCXPRT * (*)(int, u_int, u_int))fptr;
        }

        RTN rtnsvcudp_create = RTN_FindByName(img, "svcudp_create");
        if (RTN_Valid(rtnsvcudp_create) && RTN_IsSafeForProbedReplacement(rtnsvcudp_create)) 
        {
            OutFile << CurrentTime() << "Inserting probe for svcudp_create at " << RTN_Address(rtnsvcudp_create) << endl;
            OutFile.flush();
            AFUNPTR fptr = (RTN_ReplaceProbed(rtnsvcudp_create, AFUNPTR(mysvcudp_create)));
            fptrsvcudp_create = (SVCXPRT * (*)(int))fptr;
        }

        RTN rtnabort = RTN_FindByName(img, "abort");
        if (RTN_Valid(rtnabort) && RTN_IsSafeForProbedReplacement(rtnabort)) 
        {
            OutFile << CurrentTime() << "Inserting probe for abort at " << RTN_Address(rtnabort) << endl;
            OutFile.flush();
            AFUNPTR fptr = (RTN_ReplaceProbed(rtnabort, AFUNPTR(myabort)));
            fptrabort = (void (*)())fptr;
        }

        RTN rtn_exit = RTN_FindByName(img, "_exit");
        if (RTN_Valid(rtn_exit) && RTN_IsSafeForProbedReplacement(rtn_exit)) 
        {
            OutFile << CurrentTime() << "Inserting probe for _exit at " << RTN_Address(rtn_exit) << endl;
            OutFile.flush();
            AFUNPTR fptr = (RTN_ReplaceProbed(rtn_exit, AFUNPTR(my_exit)));
            fptr_exit = (void (*)(int))fptr;
        }

        RTN rtnnanosleep = RTN_FindByName(img, "nanosleep");
        if (RTN_Valid(rtnnanosleep) && RTN_IsSafeForProbedReplacement(rtnnanosleep))
        {
            OutFile << CurrentTime() << "Inserting probe for nanosleep at " << RTN_Address(rtnnanosleep) << endl;
            OutFile.flush();
            AFUNPTR fptr = (RTN_ReplaceProbed(rtnnanosleep, AFUNPTR(my_nanosleep)));
            fptrnanosleep = (int (*)(const struct timespec *, struct timespec *))fptr;
        }

        RTN rtnsignal = RTN_FindByName(img, "signal");
        if (RTN_Valid(rtnsignal) && RTN_IsSafeForProbedReplacement(rtnsignal)) 
        {
            OutFile << CurrentTime() << "Inserting probe for signal at " << RTN_Address(rtnsignal) << endl;
            OutFile.flush();
            AFUNPTR fptr = (RTN_ReplaceProbed(rtnsignal, AFUNPTR(mysignal)));
            fptrsignal = (__sighandler_t (*)(int, __sighandler_t))fptr;
        }

        RTN rtnsigprocmask = RTN_FindByName(img, "sigprocmask");
        if (RTN_Valid(rtnsigprocmask) && RTN_IsSafeForProbedReplacement(rtnsigprocmask)) 
        {
            OutFile << CurrentTime() << "Inserting probe for sigprocmask at " << RTN_Address(rtnsigprocmask) << endl;
            OutFile.flush();
            AFUNPTR fptr = (RTN_ReplaceProbed(rtnsigprocmask, AFUNPTR(mysigprocmask)));
            fptrsigprocmask = (int (*)(int, __const sigset_t *__restrict, sigset_t *__restrict))fptr;
        }

        RTN rtnsigpending = RTN_FindByName(img, "sigpending");
        if (RTN_Valid(rtnsigpending) && RTN_IsSafeForProbedReplacement(rtnsigpending)) 
        {
            OutFile << CurrentTime() << "Inserting probe for sigpending at " << RTN_Address(rtnsigpending) << endl;
            OutFile.flush();
            AFUNPTR fptr = (RTN_ReplaceProbed(rtnsigpending, AFUNPTR(mysigpending)));
            fptrsigpending = (int (*)(sigset_t *))fptr;
        }

        RTN rtnsigaction = RTN_FindByName(img, "sigaction");
        if (RTN_Valid(rtnsigaction) && RTN_IsSafeForProbedReplacement(rtnsigaction)) 
        {
            OutFile << CurrentTime() << "Inserting probe for sigaction at " << RTN_Address(rtnsigaction) << endl;
            OutFile.flush();
            AFUNPTR fptr = (RTN_ReplaceProbed(rtnsigaction, AFUNPTR(mysigaction)));
            fptrsigaction = (int (*)(int __sig, __const struct sigaction *__restrict __act, struct sigaction *__restrict __oact))fptr;
        }

        RTN rtnsetitimer = RTN_FindByName(img, "setitimer");
        if (RTN_Valid(rtnsetitimer) && RTN_IsSafeForProbedReplacement(rtnsetitimer)) 
        {
            OutFile << CurrentTime() << "Inserting probe for setitimer at " << RTN_Address(rtnsetitimer) << endl;
            OutFile.flush();
            AFUNPTR fptr = (RTN_ReplaceProbed(rtnsetitimer, AFUNPTR(mysetitimer)));
            fptrsetitimer = (int (*)(__itimer_which_t,  __const struct itimerval *__restrict, struct itimerval *__restrict))fptr;
        }

        RTN rtnexit = RTN_FindByName(img, "exit");
        if (RTN_Valid(rtnexit) && RTN_IsSafeForProbedReplacement(rtnexit)) 
        {
            OutFile << CurrentTime() << "Inserting probe for exit at " << RTN_Address(rtnexit) << endl;
            OutFile.flush();
            AFUNPTR fptr = (RTN_ReplaceProbed(rtnexit, AFUNPTR(myexit)));
            fptrexit = (void (*)(int))fptr;
        }

        RTN rtndl_iterate_phdr = RTN_FindByName(img, "dl_iterate_phdr");
        if (RTN_Valid(rtnexit) && RTN_IsSafeForProbedReplacement(rtndl_iterate_phdr))
        {
            OutFile << CurrentTime() << "Inserting probe for dl_iterate_phdr at " << RTN_Address(rtndl_iterate_phdr) << endl;
            OutFile.flush();
            AFUNPTR fptr = (RTN_ReplaceProbed(rtndl_iterate_phdr, AFUNPTR(mydl_iterate_phdr)));
            fptrdl_iterate_phdr = (int (*)( int (*callback)(struct dl_phdr_info *info, size_t size, VOID_PTR data), VOID_PTR data))fptr;
        }

        RTN rtnsystem = RTN_FindByName(img, "system");
        if (RTN_Valid(rtnsystem) && RTN_IsSafeForProbedReplacement(rtnsystem)) 
        {
            OutFile << CurrentTime() << "Inserting probe for system at "
                    << RTN_Address(rtnsystem) << endl;
            OutFile.flush();
            AFUNPTR fptr = (RTN_ReplaceProbed(rtnsystem, AFUNPTR(mysystem)));
            fptrsystem = (int (*)(const CHAR_PTR ))fptr;
        }

        RTN rtnalarm = RTN_FindByName(img, "alarm");
        if (RTN_Valid(rtnalarm) && RTN_IsSafeForProbedReplacement(rtnalarm)) 
        {
            OutFile << CurrentTime() << "Inserting probe for alarm at "
                    << RTN_Address(rtnalarm) << endl;
            OutFile.flush();
            AFUNPTR fptr = (RTN_ReplaceProbed(rtnalarm, AFUNPTR(myalarm)));
            fptralarm = (unsigned int (*)(unsigned int))fptr;
        }

        RTN rtnrecvmsg = RTN_FindByName(img, "recvmsg");
        if (RTN_Valid(rtnrecvmsg) && RTN_IsSafeForProbedReplacement(rtnrecvmsg)) 
        {
            OutFile << CurrentTime() << "Inserting probe for recvmsg at " << RTN_Address(rtnrecvmsg) << endl;
            OutFile.flush();
            AFUNPTR fptr = (RTN_ReplaceProbed(rtnrecvmsg, AFUNPTR(myrecvmsg)));
            fptrrecvmsg = (ssize_t (*)(int, struct msghdr *, int))fptr;
        }

        RTN rtnsendmsg = RTN_FindByName(img, "sendmsg");
        if (RTN_Valid(rtnsendmsg) && RTN_IsSafeForProbedReplacement(rtnsendmsg))
        {
            OutFile << CurrentTime() << "Inserting probe for sendmsg at "
                    << RTN_Address(rtnsendmsg) << endl;
            OutFile.flush();
            AFUNPTR fptr = (RTN_ReplaceProbed(rtnsendmsg, AFUNPTR(mysendmsg)));
            fptrsendmsg = (ssize_t (*)(int, const struct msghdr *, int))fptr;
        }

        RTN rtnpause = RTN_FindByName(img, "pause");
        if (RTN_Valid(rtnpause) && RTN_IsSafeForProbedReplacement(rtnpause)) 
        {
            OutFile << CurrentTime() << "Inserting probe for pause at "
                    << RTN_Address(rtnpause) << endl;
            OutFile.flush();
            AFUNPTR fptr = (RTN_ReplaceProbed(rtnpause, AFUNPTR(mypause)));
            fptrpause = (int (*)(void))fptr;
        }

        RTN rtnsigtimedwait = RTN_FindByName(img, "sigtimedwait");
        if (RTN_Valid(rtnsigtimedwait) && RTN_IsSafeForProbedReplacement(rtnsigtimedwait)) 
        {
            OutFile << CurrentTime() << "Inserting probe for sigtimedwait at " << RTN_Address(rtnsigtimedwait) << endl;
            OutFile.flush();
            AFUNPTR fptr = (RTN_ReplaceProbed(rtnsigtimedwait, AFUNPTR(mysigtimedwait)));
            fptrsigtimedwait = (int (*)(const sigset_t *, siginfo_t *, const struct timespec *))fptr;
        }

        RTN rtnsigwaitinfo = RTN_FindByName(img, "sigwaitinfo");
        if (RTN_Valid(rtnsigwaitinfo) && RTN_IsSafeForProbedReplacement(rtnsigwaitinfo))
        {
            OutFile << CurrentTime() << "Inserting probe for sigwaitinfo at " << RTN_Address(rtnsigwaitinfo) << endl;
            OutFile.flush();
            AFUNPTR fptr = (RTN_ReplaceProbed(rtnsigwaitinfo, AFUNPTR(mysigwaitinfo)));
            fptrsigwaitinfo = (int (*)(const sigset_t *, siginfo_t *))fptr;
        }

        RTN rtnepoll_wait = RTN_FindByName(img, "epoll_wait");
        if (RTN_Valid(rtnepoll_wait) && RTN_IsSafeForProbedReplacement(rtnepoll_wait)) 
        {
            OutFile << CurrentTime() << "Inserting probe for epoll_wait at " << RTN_Address(rtnepoll_wait) << endl;
            OutFile.flush();
            AFUNPTR fptr = (RTN_ReplaceProbed(rtnepoll_wait, AFUNPTR(myepoll_wait)));
            fptrepoll_wait = (int (*)(int, struct epoll_event *, int, int))fptr;
        }

        RTN rtnppoll = RTN_FindByName(img, "ppoll");
        if (RTN_Valid(rtnppoll) && RTN_IsSafeForProbedReplacement(rtnppoll)) 
        {
            OutFile << CurrentTime() << "Inserting probe for ppoll at " << RTN_Address(rtnppoll) << endl;
            OutFile.flush();
            AFUNPTR fptr = (RTN_ReplaceProbed(rtnppoll, AFUNPTR(myppoll)));
            fptrppoll = (int (*)(struct pollfd *, nfds_t, const struct timespec *, const sigset_t *))fptr;
        }

        RTN rtnmsgsnd = RTN_FindByName(img, "msgsnd");
        if (RTN_Valid(rtnmsgsnd) && RTN_IsSafeForProbedReplacement(rtnmsgsnd)) 
        {
            OutFile << CurrentTime() << "Inserting probe for msgsnd at " << RTN_Address(rtnmsgsnd) << endl;
            OutFile.flush();
            AFUNPTR fptr = (RTN_ReplaceProbed(rtnmsgsnd, AFUNPTR(mymsgsnd)));
            fptrmsgsnd = (int (*)(int, const VOID_PTR , size_t, int))fptr;
        }

        RTN rtnmsgrcv = RTN_FindByName(img, "msgrcv");
        if (RTN_Valid(rtnmsgrcv) && RTN_IsSafeForProbedReplacement(rtnmsgrcv)) 
        {
            OutFile << CurrentTime() << "Inserting probe for msgrcv at " << RTN_Address(rtnmsgrcv) << endl;
            OutFile.flush();
            AFUNPTR fptr = (RTN_ReplaceProbed(rtnmsgrcv, AFUNPTR(mymsgrcv)));
            fptrmsgrcv = (ssize_t (*)(int, VOID_PTR , size_t, long, int))fptr;
        }

        RTN rtnsemop = RTN_FindByName(img, "semop");
        if (RTN_Valid(rtnsemop) && RTN_IsSafeForProbedReplacement(rtnsemop)) 
        {
            OutFile << CurrentTime() << "Inserting probe for semop at " << RTN_Address(rtnsemop) << endl;
            OutFile.flush();
            AFUNPTR fptr = (RTN_ReplaceProbed(rtnsemop, AFUNPTR(mymsgrcv)));
            fptrsemop = (int (*)(int, struct sembuf *, unsigned))fptr;
        }
        
        RTN rtnsemtimedop = RTN_FindByName(img, "semtimedop");
        if (RTN_Valid(rtnsemtimedop)
                && RTN_IsSafeForProbedReplacement(rtnsemtimedop)) {
            OutFile << CurrentTime() << "Inserting probe for semtimedop at "
                    << RTN_Address(rtnsemtimedop) << endl;
            OutFile.flush();
            AFUNPTR fptr = (RTN_ReplaceProbed(rtnsemtimedop,
                    AFUNPTR(mysemtimedop)));
            fptrsemtimedop = (int (*)(int, struct sembuf *))fptr;}

        RTN rtnusleep = RTN_FindByName(img, "usleep");
        if (RTN_Valid(rtnusleep) && RTN_IsSafeForProbedReplacement(rtnusleep)) {
            OutFile << CurrentTime() << "Inserting probe for usleep at "
                    << RTN_Address(rtnusleep) << endl;
            OutFile.flush();
            AFUNPTR fptr = (RTN_ReplaceProbed(rtnusleep, AFUNPTR(myusleep)));
            fptrusleep = (int (*)(useconds_t))fptr;}

        RTN rtnualarm = RTN_FindByName(img, "ualarm");
        if (RTN_Valid(rtnualarm) && RTN_IsSafeForProbedReplacement(rtnualarm)) {
            OutFile << CurrentTime() << "Inserting probe for ualarm at "
                    << RTN_Address(rtnualarm) << endl;
            OutFile.flush();
            AFUNPTR fptr = (RTN_ReplaceProbed(rtnualarm, AFUNPTR(myualarm)));
            fptrualarm = (useconds_t (*)(useconds_t, useconds_t))fptr;}

        RTN rtngetitimer = RTN_FindByName(img, "getitimer");
        if (RTN_Valid(rtngetitimer) && RTN_IsSafeForProbedReplacement(rtngetitimer))
        {
            OutFile << CurrentTime() << "Inserting probe for getitimer at " << RTN_Address(rtngetitimer) << endl;
            OutFile.flush();
            AFUNPTR fptr = (RTN_ReplaceProbed(rtngetitimer, AFUNPTR(mygetitimer)));
            fptrgetitimer = (int (*)(int, struct itimerval *))fptr;}

        RTN rtnsigwait = RTN_FindByName(img, "sigwait");
        if (RTN_Valid(rtnsigwait) && RTN_IsSafeForProbedReplacement(rtnsigwait))
        {
            OutFile << CurrentTime() << "Inserting probe for sigwait at " << RTN_Address(rtnsigwait) << endl;
            OutFile.flush();
            AFUNPTR fptr = (RTN_ReplaceProbed(rtnsigwait, AFUNPTR(mysigwait)));
            fptrsigwait = (int (*)(const sigset_t *, INT_PTR ))fptr;
        }

        RTN rtnmsgget = RTN_FindByName(img, "msgget");
        if (RTN_Valid(rtnmsgget) && RTN_IsSafeForProbedReplacement(rtnmsgget)) 
        {
            OutFile << CurrentTime() << "Inserting probe for msgget at " << RTN_Address(rtnmsgget) << endl;
            OutFile.flush();
            AFUNPTR fptr = (RTN_ReplaceProbed(rtnmsgget, AFUNPTR(mymsgget)));
            fptrmsgget = (int (*)(key_t, int))fptr;
        }

        RTN rtnsemget = RTN_FindByName(img, "semget");
        if (RTN_Valid(rtnsemget) && RTN_IsSafeForProbedReplacement(rtnsemget))
        {
            OutFile << CurrentTime() << "Inserting probe for semget at " << RTN_Address(rtnsemget) << endl;
            OutFile.flush();
            AFUNPTR fptr = (RTN_ReplaceProbed(rtnsemget, AFUNPTR(mysemget)));
            fptrsemget = (int (*)(key_t, int, int))fptr;
        }

        RTN rtnwait = RTN_FindByName(img, "wait");
        if (RTN_Valid(rtnwait) && RTN_IsSafeForProbedReplacement(rtnwait)) 
        {
            OutFile << CurrentTime() << "Inserting probe for wait at " << RTN_Address(rtnwait) << endl;
            OutFile.flush();
            AFUNPTR fptr = (RTN_ReplaceProbed(rtnwait, AFUNPTR(mywait)));
            fptrwait = (pid_t (*)(INT_PTR ))fptr;
        }

        RTN rtnwaitpid = RTN_FindByName(img, "waitpid");
        if (RTN_Valid(rtnwaitpid) && RTN_IsSafeForProbedReplacement(rtnwaitpid)) 
        {
            OutFile << CurrentTime() << "Inserting probe for waitpid at " << RTN_Address(rtnwaitpid) << endl;
            OutFile.flush();
            AFUNPTR fptr = (RTN_ReplaceProbed(rtnwaitpid, AFUNPTR(mywaitpid)));
            fptrwaitpid = (pid_t (*)(pid_t, INT_PTR , int))fptr;
        }

        RTN rtnwaitid = RTN_FindByName(img, "waitid");
        if (RTN_Valid(rtnwaitid) && RTN_IsSafeForProbedReplacement(rtnwaitid)) 
        {
            OutFile << CurrentTime() << "Inserting probe for waitid at " << RTN_Address(rtnwaitid) << endl;
            OutFile.flush();
            AFUNPTR fptr = (RTN_ReplaceProbed(rtnwaitid, AFUNPTR(mywaitid)));
            fptrwaitid = (int (*)(idtype_t, id_t, siginfo_t *, int))fptr;
        }

        RTN rtnwait3 = RTN_FindByName(img, "wait3");
        if (RTN_Valid(rtnwait3) && RTN_IsSafeForProbedReplacement(rtnwait3)) 
        {
            OutFile << CurrentTime() << "Inserting probe for wait3 at " << RTN_Address(rtnwait3) << endl;
            OutFile.flush();
            AFUNPTR fptr = (RTN_ReplaceProbed(rtnwait3, AFUNPTR(mywait3)));
            fptrwait3 = (pid_t (*)(INT_PTR , int, struct rusage *))fptr;
        }

        RTN rtnwait4 = RTN_FindByName(img, "wait4");
        if (RTN_Valid(rtnwait3) && RTN_IsSafeForProbedReplacement(rtnwait4)) 
        {
            OutFile << CurrentTime() << "Inserting probe for wait4 at " << RTN_Address(rtnwait4) << endl;
            OutFile.flush();
            AFUNPTR fptr = (RTN_ReplaceProbed(rtnwait3, AFUNPTR(mywait4)));
            fptrwait4 = (pid_t (*)(pid_t, INT_PTR , int, struct rusage *))fptr;
        }

        RTN rtnreadv = RTN_FindByName(img, "readv");
        if (RTN_Valid(rtnreadv) && RTN_IsSafeForProbedReplacement(rtnreadv)) 
        {
            OutFile << CurrentTime() << "Inserting probe for readv at " << RTN_Address(rtnreadv) << endl;
            OutFile.flush();
            AFUNPTR fptr = (RTN_ReplaceProbed(rtnreadv, AFUNPTR(myreadv)));
            fptrreadv = (ssize_t (*)(int, const struct iovec *, int))fptr;
        }

        RTN rtnwritev = RTN_FindByName(img, "writev");
        if (RTN_Valid(rtnwritev) && RTN_IsSafeForProbedReplacement(rtnwritev)) 
        {
            OutFile << CurrentTime() << "Inserting probe for writev at " << RTN_Address(rtnwritev) << endl;
            OutFile.flush();
            AFUNPTR fptr = (RTN_ReplaceProbed(rtnwritev, AFUNPTR(mywritev)));
            fptrwritev = (ssize_t (*)(int, const struct iovec *, int))fptr;
        }

        RTN rtnflockfile = RTN_FindByName(img, "flockfile");
        if (RTN_Valid(rtnflockfile) && RTN_IsSafeForProbedReplacement(rtnflockfile)) 
        {
            OutFile << CurrentTime() << "Inserting probe for flockfile at " << RTN_Address(rtnflockfile) << endl;
            OutFile.flush();
            AFUNPTR fptr = (RTN_ReplaceProbed(rtnflockfile, AFUNPTR(myflockfile)));
            fptrflockfile = (void (*)(FILE *))fptr;
        }
        RTN rtnfunlockfile = RTN_FindByName(img, "funlockfile");
        if (RTN_Valid(rtnfunlockfile)
                && RTN_IsSafeForProbedReplacement(rtnfunlockfile)) {
            OutFile << CurrentTime() << "Inserting probe for funlockfile at "
                    << RTN_Address(rtnfunlockfile) << endl;
            OutFile.flush();
            AFUNPTR fptr = (RTN_ReplaceProbed(rtnfunlockfile,
                    AFUNPTR(myfunlockfile)));
            fptrfunlockfile = (void (*)(FILE *))fptr;}

        RTN rtnlockf = RTN_FindByName(img, "lockf");
        if (RTN_Valid(rtnlockf) && RTN_IsSafeForProbedReplacement(rtnlockf))
        {
            OutFile << CurrentTime() << "Inserting probe for lockf at " << RTN_Address(rtnlockf) << endl;
            OutFile.flush();
            AFUNPTR fptr = (RTN_ReplaceProbed(rtnlockf, AFUNPTR(mylockf)));
            fptrlockf = (int (*)(int, int, off_t))fptr;
        }

        RTN rtnsetenv = RTN_FindByName(img, "setenv");
        if (RTN_Valid(rtnsetenv) && RTN_IsSafeForProbedReplacement(rtnsetenv)) 
        {
            OutFile << CurrentTime() << "Inserting probe for setenv at " << RTN_Address(rtnsetenv) << endl;
            OutFile.flush();
            AFUNPTR fptr = (RTN_ReplaceProbed(rtnsetenv, AFUNPTR(mysetenv)));
            fptrsetenv = (int (*)(const CHAR_PTR , const CHAR_PTR , int))fptr;
        }
            
        RTN rtnunsetenv = RTN_FindByName(img, "unsetenv");
        if (RTN_Valid(rtnunsetenv) && RTN_IsSafeForProbedReplacement(rtnunsetenv)) 
        {
            OutFile << CurrentTime() << "Inserting probe for unsetenv at " << RTN_Address(rtnunsetenv) << endl;
            OutFile.flush();
            AFUNPTR fptr = (RTN_ReplaceProbed(rtnunsetenv, AFUNPTR(myunsetenv)));
            fptrunsetenv = (int (*)(const CHAR_PTR ))fptr;
        }

        RTN rtngetenv = RTN_FindByName(img, "getenv");
        if (RTN_Valid(rtngetenv) && RTN_IsSafeForProbedReplacement(rtngetenv))
        {
            OutFile << CurrentTime() << "Inserting probe for getenv at "
                    << RTN_Address(rtngetenv) << endl;
            OutFile.flush();
            AFUNPTR fptr = (RTN_ReplaceProbed(rtngetenv, AFUNPTR(mygetenv)));
            fptrgetenv = (CHAR_PTR  (*)(const CHAR_PTR ))fptr;
        }

        RTN rtnperror = RTN_FindByName(img, "perror");
        if (RTN_Valid(rtnperror) && RTN_IsSafeForProbedReplacement(rtnperror)) 
        {
            OutFile << CurrentTime() << "Inserting probe for perror at "
                    << RTN_Address(rtnperror) << endl;
            OutFile.flush();
            AFUNPTR fptr = (RTN_ReplaceProbed(rtnperror, AFUNPTR(myperror)));
            fptrperror = (void (*)(const CHAR_PTR ))fptr;
        }

        RTN rtnmmap = RTN_FindByName(img, "mmap");
        if (RTN_Valid(rtnmmap) && RTN_IsSafeForProbedReplacement(rtnmmap)) 
        {
            OutFile << CurrentTime() << "Inserting probe for mmap at "
                    << RTN_Address(rtnmmap) << endl;
            OutFile.flush();
            AFUNPTR fptr = (RTN_ReplaceProbed(rtnmmap, AFUNPTR(mymmap)));
            fptrmmap = (VOID_PTR (*)(VOID_PTR , size_t, int, int, int, off_t))fptr;
        }

        RTN rtnmunmap = RTN_FindByName(img, "munmap");
        if (RTN_Valid(rtnmunmap) && RTN_IsSafeForProbedReplacement(rtnmunmap))
        {
            OutFile << CurrentTime() << "Inserting probe for munmap at "
                    << RTN_Address(rtnmunmap) << endl;
            OutFile.flush();
            AFUNPTR fptr = (RTN_ReplaceProbed(rtnmunmap, AFUNPTR(mymunmap)));
            fptrmunmap = (int (*)(VOID_PTR , size_t))fptr;
        }

        RTN rtnfileno = RTN_FindByName(img, "fileno");
        if (RTN_Valid(rtnfileno) && RTN_IsSafeForProbedReplacement(rtnfileno)) 
        {
            OutFile << CurrentTime() << "Inserting probe for fileno at "
                    << RTN_Address(rtnfileno) << endl;
            OutFile.flush();
            AFUNPTR fptr = (RTN_ReplaceProbed(rtnfileno, AFUNPTR(myfileno)));
            fptrfileno = (int (*)(FILE *))fptr;
        }

        RTN rtngetpid = RTN_FindByName(img, "getpid");
        if (RTN_Valid(rtngetpid) && RTN_IsSafeForProbedReplacement(rtngetpid)) 
        {
            OutFile << CurrentTime() << "Inserting probe for getpid at "
                    << RTN_Address(rtngetpid) << endl;
            OutFile.flush();
            AFUNPTR fptr = (RTN_ReplaceProbed(rtngetpid, AFUNPTR(mygetpid)));
            fptrgetpid = (pid_t (*)(void))fptr;
        }

        RTN rtngetppid = RTN_FindByName(img, "getppid");
        if (RTN_Valid(rtngetppid) && RTN_IsSafeForProbedReplacement(rtngetppid))
        {
            OutFile << CurrentTime() << "Inserting probe for getppid at " << RTN_Address(rtngetppid) << endl;
            OutFile.flush();
            AFUNPTR fptr = (RTN_ReplaceProbed(rtngetppid, AFUNPTR(mygetppid)));
            fptrgetppid = (pid_t (*)(void))fptr;
        }

        RTN rtnmemset = RTN_FindByName(img, "memset");
        if (RTN_Valid(rtnmemset) && RTN_IsSafeForProbedReplacement(rtnmemset)) 
        {
            OutFile << CurrentTime() << "Inserting probe for memset at " << RTN_Address(rtnmemset) << endl;
            OutFile.flush();
            AFUNPTR fptr = (RTN_ReplaceProbed(rtnmemset, AFUNPTR(mymemset)));
            fptrmemset = (VOID_PTR  (*)(VOID_PTR , int, size_t))fptr;
        }

        RTN rtnmemcpy = RTN_FindByName(img, "memcpy");
        if (RTN_Valid(rtnmemcpy) && RTN_IsSafeForProbedReplacement(rtnmemcpy)) 
        {
            OutFile << CurrentTime() << "Inserting probe for memcpy at " << RTN_Address(rtnmemcpy) << endl;
            OutFile.flush();
            AFUNPTR fptr = (RTN_ReplaceProbed(rtnmemcpy, AFUNPTR(mymemcpy)));
            fptrmemcpy = (VOID_PTR  (*)(VOID_PTR , const VOID_PTR , size_t))fptr;
        }

        RTN rtnaccess = RTN_FindByName(img, "access");
        if (RTN_Valid(rtnaccess) && RTN_IsSafeForProbedReplacement(rtnaccess)) 
        {
            OutFile << CurrentTime() << "Inserting probe for access at " << RTN_Address(rtnaccess) << endl;
            OutFile.flush();
            AFUNPTR fptr = (RTN_ReplaceProbed(rtnaccess, AFUNPTR(myaccess)));
            fptraccess = (int (*)(const CHAR_PTR , int))fptr;
        }

        RTN rtnlseek = RTN_FindByName(img, "lseek");
        if (RTN_Valid(rtnlseek) && RTN_IsSafeForProbedReplacement(rtnlseek))
        {
            OutFile << CurrentTime() << "Inserting probe for lseek at " << RTN_Address(rtnlseek) << endl;
            OutFile.flush();
            AFUNPTR fptr = (RTN_ReplaceProbed(rtnlseek, AFUNPTR(mylseek)));
            fptrlseek = (off_t (*)(int, off_t, int))fptr;
        }

        RTN rtnlseek64 = RTN_FindByName(img, "lseek64");
        if (RTN_Valid(rtnlseek64) && RTN_IsSafeForProbedReplacement(rtnlseek64)) 
        {
            OutFile << CurrentTime() << "Inserting probe for lseek64 at " << RTN_Address(rtnlseek64) << endl;
            OutFile.flush();
            AFUNPTR fptr = (RTN_ReplaceProbed(rtnlseek64, AFUNPTR(mylseek64)));
            fptrlseek64 = (off64_t (*)(int, off64_t, int))fptr;
        }

        RTN rtnfdatasync = RTN_FindByName(img, "fdatasync");
        if (RTN_Valid(rtnfdatasync) && RTN_IsSafeForProbedReplacement(rtnfdatasync))
        {
            OutFile << CurrentTime() << "Inserting probe for fdatasync at " << RTN_Address(rtnfdatasync) << endl;
            OutFile.flush();
            AFUNPTR fptr = (RTN_ReplaceProbed(rtnfdatasync, AFUNPTR(myfdatasync)));
            fptrfdatasync = (int (*)(int))fptr;
        }

        RTN rtnunlink = RTN_FindByName(img, "unlink");
        if (RTN_Valid(rtnunlink) && RTN_IsSafeForProbedReplacement(rtnunlink)) 
        {
            OutFile << CurrentTime() << "Inserting probe for unlink at " << RTN_Address(rtnunlink) << endl;
            OutFile.flush();
            AFUNPTR fptr = (RTN_ReplaceProbed(rtnunlink, AFUNPTR(myunlink)));
            fptrunlink = (int (*)(const CHAR_PTR ))fptr;
        }

        RTN rtnstrlen = RTN_FindByName(img, "strlen");
        if (RTN_Valid(rtnstrlen) && RTN_IsSafeForProbedReplacement(rtnstrlen))
        {
            OutFile << CurrentTime() << "Inserting probe for strlen at " << RTN_Address(rtnstrlen) << endl;
            OutFile.flush();
            AFUNPTR fptr = (RTN_ReplaceProbed(rtnstrlen, AFUNPTR(mystrlen)));
            fptrstrlen = (size_t (*)(const CHAR_PTR ))fptr;
        }

        RTN rtnwcslen = RTN_FindByName(img, "wcslen");
        if (RTN_Valid(rtnwcslen) && RTN_IsSafeForProbedReplacement(rtnwcslen))
        {
            OutFile << CurrentTime() << "Inserting probe for wcslen at "<< RTN_Address(rtnwcslen) << endl;
            OutFile.flush();
            AFUNPTR fptr = (RTN_ReplaceProbed(rtnwcslen, AFUNPTR(mywcslen)));
            fptrwcslen = (size_t (*)(const wchar_t *))fptr;
        }

        RTN rtnstrcpy = RTN_FindByName(img, "strcpy");
        if (RTN_Valid(rtnstrcpy) && RTN_IsSafeForProbedReplacement(rtnstrcpy))
        {
            OutFile << CurrentTime() << "Inserting probe for strcpy at " << RTN_Address(rtnstrcpy) << endl;
            OutFile.flush();
            AFUNPTR fptr = (RTN_ReplaceProbed(rtnstrcpy, AFUNPTR(mystrcpy)));
            fptrstrcpy = (CHAR_PTR  (*)(CHAR_PTR , const CHAR_PTR ))fptr;
        }

        RTN rtnstrncpy = RTN_FindByName(img, "strncpy");
        if (RTN_Valid(rtnstrncpy) && RTN_IsSafeForProbedReplacement(rtnstrncpy)) 
        {
            OutFile << CurrentTime() << "Inserting probe for strncpy at " << RTN_Address(rtnstrncpy) << endl;
            OutFile.flush();
            AFUNPTR fptr = (RTN_ReplaceProbed(rtnstrncpy, AFUNPTR(mystrcpy)));
            fptrstrncpy = (CHAR_PTR  (*)(CHAR_PTR , const CHAR_PTR , size_t))fptr;
        }

        RTN rtnstrcat = RTN_FindByName(img, "strcat");
        if (RTN_Valid(rtnstrcat) && RTN_IsSafeForProbedReplacement(rtnstrcat)) 
        {
            OutFile << CurrentTime() << "Inserting probe for strcat at " << RTN_Address(rtnstrcat) << endl;
            OutFile.flush();
            AFUNPTR fptr = (RTN_ReplaceProbed(rtnstrcat, AFUNPTR(mystrcat)));
            fptrstrcat = (CHAR_PTR  (*)(CHAR_PTR , const CHAR_PTR ))fptr;
        }

        RTN rtnstrstr = RTN_FindByName(img, "strstr");
        if (RTN_Valid(rtnstrstr) && RTN_IsSafeForProbedReplacement(rtnstrstr))
        {
            OutFile << CurrentTime() << "Inserting probe for strstr at " << RTN_Address(rtnstrstr) << endl;
            OutFile.flush();
            AFUNPTR fptr = (RTN_ReplaceProbed(rtnstrstr, AFUNPTR(mystrstr)));
            fptrstrstr = (CHAR_PTR  (*)(const CHAR_PTR , const CHAR_PTR ))fptr;
        }

        RTN rtnstrchr0 = RTN_FindByName(img, "strchr0");
        if (RTN_Valid(rtnstrchr0) && RTN_IsSafeForProbedReplacement(rtnstrchr0))
        {
            OutFile << CurrentTime() << "Inserting probe for strchr0 at " << RTN_Address(rtnstrchr0) << endl;
            OutFile.flush();
            AFUNPTR fptr = (RTN_ReplaceProbed(rtnstrchr0, AFUNPTR(mystrchr0)));
            fptrstrrchr = (CHAR_PTR  (*)(const CHAR_PTR , int))fptr;
        }

        RTN rtnstrrchr = RTN_FindByName(img, "strrchr");
        if (RTN_Valid(rtnstrrchr) && RTN_IsSafeForProbedReplacement(rtnstrrchr)) 
        {
            OutFile << CurrentTime() << "Inserting probe for strrchr at "
                    << RTN_Address(rtnstrrchr) << endl;
            OutFile.flush();
            AFUNPTR fptr = (RTN_ReplaceProbed(rtnstrrchr, AFUNPTR(mystrrchr)));
            fptrstrrchr = (CHAR_PTR  (*)(const CHAR_PTR , int))fptr;
        }

        RTN rtnstrcmp = RTN_FindByName(img, "strcmp");
        if (RTN_Valid(rtnstrcmp) && RTN_IsSafeForProbedReplacement(rtnstrcmp))
        {
            OutFile << CurrentTime() << "Inserting probe for strcmp at " << RTN_Address(rtnstrcmp) << endl;
            OutFile.flush();
            AFUNPTR fptr = (RTN_ReplaceProbed(rtnstrcmp, AFUNPTR(mystrcmp)));
            fptrstrcmp = (int (*)(const CHAR_PTR , const CHAR_PTR ))fptr;
        }

        RTN rtnstrncmp = RTN_FindByName(img, "strncmp");
        if (RTN_Valid(rtnstrncmp) && RTN_IsSafeForProbedReplacement(rtnstrncmp))
        {
            OutFile << CurrentTime() << "Inserting probe for strncmp at " << RTN_Address(rtnstrncmp) << endl;
            OutFile.flush();
            AFUNPTR fptr = (RTN_ReplaceProbed(rtnstrncmp, AFUNPTR(mystrncmp)));
            fptrstrncmp = (int (*)(const CHAR_PTR , const CHAR_PTR , size_t))fptr;
        }

        RTN rtnsigaddset = RTN_FindByName(img, "sigaddset");
        if (RTN_Valid(rtnsigaddset) && RTN_IsSafeForProbedReplacement(rtnsigaddset))
        {
            OutFile << CurrentTime() << "Inserting probe for sigaddset at " << RTN_Address(rtnsigaddset) << endl;
            OutFile.flush();
            AFUNPTR fptr = (RTN_ReplaceProbed(rtnsigaddset, AFUNPTR(mysigaddset)));
            fptrsigaddset = (int (*)(sigset_t *, int))fptr;
        }

        RTN rtnsigdelset = RTN_FindByName(img, "sigdelset");
        if (RTN_Valid(rtnsigdelset) && RTN_IsSafeForProbedReplacement(rtnsigdelset)) 
        {
            OutFile << CurrentTime() << "Inserting probe for sigdelset at "<< RTN_Address(rtnsigdelset) << endl;
            OutFile.flush();
            AFUNPTR fptr = (RTN_ReplaceProbed(rtnsigdelset, AFUNPTR(mysigdelset)));
            fptrsigdelset = (int (*)(sigset_t *, int))fptr;
        }

        RTN rtnsigismember = RTN_FindByName(img, "sigismember");
        if (RTN_Valid(rtnsigismember) && RTN_IsSafeForProbedReplacement(rtnsigismember)) 
        {
            OutFile << CurrentTime() << "Inserting probe for sigismember at " << RTN_Address(rtnsigismember) << endl;
            OutFile.flush();
            AFUNPTR fptr = (RTN_ReplaceProbed(rtnsigismember, AFUNPTR(mysigismember)));
            fptrsigdelset = (int (*)(sigset_t *, int))fptr;
        }

        RTN rtnstrerror = RTN_FindByName(img, "strerror");
        if (RTN_Valid(rtnstrerror) && RTN_IsSafeForProbedReplacement(rtnstrerror)) 
        {
            OutFile << CurrentTime() << "Inserting probe for strerror at " << RTN_Address(rtnstrerror) << endl;
            OutFile.flush();
            AFUNPTR fptr = (RTN_ReplaceProbed(rtnstrerror, AFUNPTR(mystrerror)));
            fptrstrerror = (CHAR_PTR  (*)(int))fptr;
        }

        RTN rtnbind = RTN_FindByName(img, "bind");
        if (RTN_Valid(rtnbind) && RTN_IsSafeForProbedReplacement(rtnbind)) 
        {
            OutFile << CurrentTime() << "Inserting probe for bind at " << RTN_Address(rtnbind) << endl;
            OutFile.flush();
            AFUNPTR fptr = (RTN_ReplaceProbed(rtnbind, AFUNPTR(mybind)));
            fptrbind = (int (*)(int, const struct sockaddr *, socklen_t))fptr;
        }

        RTN rtnlisten = RTN_FindByName(img, "listen");
        if (RTN_Valid(rtnlisten) && RTN_IsSafeForProbedReplacement(rtnlisten))
        {
            OutFile << CurrentTime() << "Inserting probe for listen at " << RTN_Address(rtnlisten) << endl;
            OutFile.flush();
            AFUNPTR fptr = (RTN_ReplaceProbed(rtnlisten, AFUNPTR(mylisten)));
            fptrlisten = (int (*)(int, int))fptr;
        }

        RTN rtnuname = RTN_FindByName(img, "uname");
        if (RTN_Valid(rtnuname) && RTN_IsSafeForProbedReplacement(rtnuname)) 
        {
            OutFile << CurrentTime() << "Inserting probe for uname at "    << RTN_Address(rtnuname) << endl;
            OutFile.flush();
            AFUNPTR fptr = (RTN_ReplaceProbed(rtnuname, AFUNPTR(myuname)));
            fptruname = (int (*)(struct utsname *))fptr;
        }

        RTN rtngethostname = RTN_FindByName(img, "gethostname");
        if (RTN_Valid(rtngethostname) && RTN_IsSafeForProbedReplacement(rtngethostname))
        {
            OutFile << CurrentTime() << "Inserting probe for gethostname at " << RTN_Address(rtngethostname) << endl;
            OutFile.flush();
            AFUNPTR fptr = (RTN_ReplaceProbed(rtngethostname, AFUNPTR(mygethostname)));
            fptrgethostname = (int (*)(CHAR_PTR , size_t))fptr;
        }

        RTN rtnkill = RTN_FindByName(img, "kill");
        if (RTN_Valid(rtnkill) && RTN_IsSafeForProbedReplacement(rtnkill)) 
        {
            OutFile << CurrentTime() << "Inserting probe for kill at " << RTN_Address(rtnkill) << endl;
            OutFile.flush();
            AFUNPTR fptr = (RTN_ReplaceProbed(rtnkill, AFUNPTR(mykill)));
            fptrkill = (int (*)(pid_t, int))fptr;
        }

        RTN rtnsched_yield = RTN_FindByName(img, "sched_yield");
        if (RTN_Valid(rtnsched_yield) && RTN_IsSafeForProbedReplacement(rtnsched_yield)) {
            OutFile << CurrentTime() << "Inserting probe for sched_yield at " << RTN_Address(rtnsched_yield) << endl;
            OutFile.flush();
            AFUNPTR fptr = (RTN_ReplaceProbed(rtnsched_yield, AFUNPTR(mysched_yield)));
            fptrsched_yield = (int (*)())fptr;
        }

        RTN rtntimer_settime = RTN_FindByName(img, "timer_settime");
        if (RTN_Valid(rtntimer_settime) && RTN_IsSafeForProbedReplacement(rtntimer_settime)) 
        {
            OutFile << CurrentTime() << "Inserting probe for timer_settime at " << RTN_Address(rtntimer_settime) << endl;
            OutFile.flush();
            AFUNPTR fptr = (RTN_ReplaceProbed(rtntimer_settime, AFUNPTR(mytimer_settime)));
            fptrtimer_settime = (int (*)(timer_t, int, const struct itimerspec *, struct itimerspec *))fptr;
        }

        RTN rtnsigaltstack = RTN_FindByName(img, "sigaltstack");
        if (RTN_Valid(rtnsigaltstack) && RTN_IsSafeForProbedReplacement(rtnsigaltstack))
        {
            OutFile << CurrentTime() << "Inserting probe for sigaltstack at " << RTN_Address(rtnsigaltstack) << endl;
            OutFile.flush();
            AFUNPTR fptr = (RTN_ReplaceProbed(rtnsigaltstack, AFUNPTR(mysigaltstack)));
            fptrsigaltstack = (int (*)(const stack_t *, stack_t *))fptr;
        }

        RTN rtnioctl = RTN_FindByName(img, "ioctl");
        if (RTN_Valid(rtnioctl) && RTN_IsSafeForProbedReplacement(rtnioctl))
        {
            OutFile << CurrentTime() << "Inserting probe for ioctl at " << RTN_Address(rtnioctl) << endl;
            OutFile.flush();
            AFUNPTR fptr = (RTN_ReplaceProbed(rtnioctl, AFUNPTR(myioctl)));
            fptrioctl = (int (*)(int, int, CHAR_PTR ))fptr;
        }

        RTN rtnflock = RTN_FindByName(img, "flock");
        if (RTN_Valid(rtnflock) && RTN_IsSafeForProbedReplacement(rtnflock)) 
        {
            OutFile << CurrentTime() << "Inserting probe for flock at " << RTN_Address(rtnflock) << endl;
            OutFile.flush();
            AFUNPTR fptr = (RTN_ReplaceProbed(rtnflock, AFUNPTR(myflock)));
            fptrflock = (int (*)(int, int))fptr;
        }

        RTN rtn__libc_dlopen_mode = RTN_FindByName(img, "__libc_dlopen_mode");
        if (RTN_Valid(rtn__libc_dlopen_mode) && RTN_IsSafeForProbedReplacement(rtn__libc_dlopen_mode)) 
        {
            OutFile << CurrentTime() << "Inserting probe for __libc_dlopen_mode at " << RTN_Address(rtn__libc_dlopen_mode) << endl;
            OutFile.flush();
            AFUNPTR fptr = (RTN_ReplaceProbed(rtn__libc_dlopen_mode, AFUNPTR(my__libc_dlopen_mode)));
            fptr__libc_dlopen_mode = (VOID_PTR  (*)(const CHAR_PTR , int))fptr;
        }

        RTN rtn__errno_location = RTN_FindByName(img, "__errno_location");
        if (RTN_Valid(rtn__errno_location) && RTN_IsSafeForProbedReplacement(rtn__errno_location))
        {
            OutFile << CurrentTime() << "Inserting probe for __errno_location at " << RTN_Address(rtn__errno_location) << endl;
            OutFile.flush();
            AFUNPTR fptr = (RTN_ReplaceProbed(rtn__errno_location, AFUNPTR(my__errno_location)));
            fptr__errno_location = (INT_PTR  (*)())fptr;
        }

        RTN rtnsyscall = RTN_FindByName(img, "syscall");
        if (RTN_Valid(rtnsyscall) && RTN_IsSafeForProbedReplacement(rtnsyscall)) 
        {
            OutFile << CurrentTime() << "Inserting probe for syscall at " << RTN_Address(rtnsyscall) << endl;
            OutFile.flush();
            AFUNPTR fptr = (RTN_ReplaceProbed(rtnsyscall, AFUNPTR(mysyscall)));
            fptrsyscall = (int (*)(int, long int, long int, long int, long int, long int, long int, long int))fptr;}
        }
        // finished instrumentation
    }

/* ===================================================================== */
/* Main function                                                         */
/* ===================================================================== */

int main(int argc, char *argv[]) {
    // Initialize Pin
    PIN_InitSymbols();
    if (PIN_Init(argc, argv)) {
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
