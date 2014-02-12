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
#ifndef FOLLOW_CHILD_H
#define FOLLOW_CHILD_H

#ifndef TARGET_WINDOWS

#if defined(TARGET_LINUX) && !defined(TARGET_ANDROID)
#include <syscall.h>
#endif

#if defined(TARGET_MAC) || defined(TARGET_BSD) || defined(TARGET_ANDROID)
#include <sys/syscall.h>
#    ifdef TARGET_ANDROID
// Android NDK doesn't support the SYS_* convention.
#    define SYS_execve __NR_execve
#    endif
#endif

namespace INSTLIB 
{

/*! @defgroup FOLLOW_CHILD
 *
 * Instrumentation for injecting pin in child processes. Pin will always be
 * in the child and parent after a fork. By default, pin will not be in a
 * process after an exec system call. This tool intercepts the exec system
 * call and inserts a Pin command line prefix so pin will also be present
 * after exec.
 *
 */

/*! @ingroup FOLLOW_CHILD
 *
 * The example below can be found in InstLibExamples/follow_child.cpp
 *
  \include follow_child.cpp
*/
class FOLLOW_CHILD
{
  public:
    /*! @ingroup FOLLOW_CHILD
     *
     * Constructor
     */
    FOLLOW_CHILD()
    {
        _prefix = 0;
        _active = FALSE;
    };
    
    /*! @ingroup FOLLOW_CHILD
     *
     * Set the prefix to be used for the next child. The prefix is the full
     * pathname to the pin binary followed by everything up to and
     * including the --. It is stored as array of pointers to tokens. Most
     * users can simply use the argv array that is passed to the main of
     * the tool.
     */
    VOID SetPrefix(CHAR *prefix[])
    {
        ASSERTX(_active == TRUE);
        _prefix = prefix;
    }

    /*! @ingroup FOLLOW_CHILD
     *
     * Activate, must be called before PIN_StartProgram
     */
    VOID Activate()
    {
        ASSERTX(_active == FALSE);
        _active = TRUE;
        INS_AddInstrumentFunction(Instruction, this);
    }

  private:
    /*
     * Instrumentation function
     *
     * Instrument all the system calls to look for exec
     */
    static VOID Instruction(INS ins, VOID * v)
    {
        if (!static_cast<FOLLOW_CHILD*>(v)->_active || !INS_IsSyscall(ins))
            return;

        INS_InsertCall(ins, IPOINT_BEFORE, AFUNPTR(StaticFollowExec),
                       IARG_PTR,
                       v,
                       IARG_SYSCALL_NUMBER,
                       IARG_SYSARG_REFERENCE, 0, IARG_SYSARG_REFERENCE, 1, IARG_SYSARG_REFERENCE, 2,
                       IARG_END);
    }

    /*
     * Analysis function must be static member functions. We pass the
     * object and use this wrapper to get to the member function
     */
    static VOID StaticFollowExec(FOLLOW_CHILD * me, int syscallNumber, CHAR const ** filename, CHAR const **argv[], VOID * envp)
    {
        me->FollowExec(syscallNumber, filename, argv, envp);
    }

    /*
     * Analysis function.
     *
     * If this is an exec system call, rewrite the arguments to insert the pin prefix
     */
    VOID FollowExec(int syscallNumber, CHAR const ** filename, CHAR const **argv[], VOID * envp)
    {
        if (syscallNumber != SYS_execve)
            return;
    
        CHAR const * const appFilenameKnob = "-app_filename";
        
        // Construct a new argv array
        
        // Compute size of pin prefix, ends with '--'
        INT32 newArgvSize = 0;
        for (INT32 i = 0; strcmp(_prefix[i],"--") != 0; i++)
        {
            if (strcmp(_prefix[i], appFilenameKnob) == 0)
            {
                // Don't count the appFilenameKnob
                i++;
            }
            else
            {
                newArgvSize++;
            }
            
        }
        
        // Add space for "-app_filename <file> --"
        newArgvSize += 3;
    
        // Compute size of application argv, ends with 0
        for (INT32 i = 0; (*argv)[i] != 0; i++)
        {
            newArgvSize++;
        }
        
        // Add space for 0
        newArgvSize++;
    
        // We are about to do an exec, so this is not a true memory leak
        CHAR const ** newArgv = new CHAR const *[newArgvSize];
        INT32 newArgc = 0;

        // Add Pin binary name
        newArgv[newArgc++] = PIN_VmFullPath();

        // Add "-app_filename <file>"
        newArgv[newArgc++] = appFilenameKnob;
        newArgv[newArgc++] = *filename;

        // Add rest of pin prefix, skipping binary name
        for (INT32 i = 1; strcmp(_prefix[i],"--") != 0; i++)
        {
            if (strcmp(_prefix[i], appFilenameKnob) == 0)
            {
                // Delete the appFilenameKnob
                i++;
            }
            else
            {
                newArgv[newArgc++] = _prefix[i];
            }
        }

        // Add "--"
        newArgv[newArgc++] = "--";

        // Add application argv
        for (INT32 i = 0; (*argv)[i] != 0; i++)
        {
            newArgv[newArgc++] = (*argv)[i];
        }
        // Add terminating 0
        newArgv[newArgc++] = 0;
                           
        ASSERTX(newArgc == newArgvSize);
        
        // Change the system call arguments
        *filename = newArgv[0];
        *argv = newArgv;

        const BOOL debug = FALSE;

        if (debug)
        {
            cout << "New argv filename: " << *filename << endl;
            for (INT32 i = 0; newArgv[i] != 0; i++)
            {
                cout << "  " << newArgv[i];
            }
            cout << endl;
        }
    }

    BOOL _active;
    CHAR const * const *_prefix;
};


}

#endif
#endif
