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
 *  Runnable and function objects. 
 */
#ifndef RUNNABLE_H
#define RUNNABLE_H

#include <string>
#include <iostream>
#if defined(TARGET_LINUX) || defined(TARGET_BSD)
# include <stdlib.h> /* gcc4.3.x required */
#endif
using namespace std;

/*!
 * Abstract interface of a runnable object.
 */
class RUNNABLE_OBJ
{
public:
    virtual void Run() = 0;
    virtual ~RUNNABLE_OBJ() {}
};

/*!
 * Abstract function object.
 */
class FUNC_OBJ : public RUNNABLE_OBJ
{
public:

    // Execute the function.
    // @return  <this> object that contains result of the function invocation.
    virtual FUNC_OBJ & Execute() = 0;

    // Execute the function and return to the caller even if the function threw an 
    // exception. 
    // The function is NOT thread-safe.
    // @return  <this> object that contains result of the function invocation.
    virtual FUNC_OBJ & ExecuteSafe();

    // Implementation of the RUNNABLE_OBJ::Run() function.
    void Run() {Execute();}

    // Return boolean status of the last Execute() invocation. 
    // @return  TRUE - the function succeeded and returned an expected result
    //          FALSE - the function failed or returned an unexpected result
    virtual bool Status() const = 0;

    // Return human-readable string representation of the status of the last 
    // Execute() invocation. 
    virtual string ErrorMessage() const
    {
        if (Status())
        {
            return "Success";
        }
        else
        {
            return "Failure";
        }
    }

    // Check the status of the last Execute() invocation. Print error message and 
    // exit abnormally if the function failed.
    void AssertStatus()
    {
        if (!Status())
        {
            cerr << Name() << ": " << ErrorMessage() << endl;
            exit(1);
        }
    }

    // Return name of the function.
    virtual string Name() const = 0;

    // Create a copy of this object.
    virtual FUNC_OBJ * Clone() const = 0;

    // Virtual destructor
    virtual ~FUNC_OBJ() {}

protected:

    // Handle exception.
    // @param[in]  exceptIp    address of the instruction that caused the exception
    // @return  <this> object that contains result of the exception handling.
    virtual FUNC_OBJ &  HandleException(void * exceptIp) {return *this;}
};


/*!
 * Class that represents a position-independent function.
 */
class PI_FUNC : public FUNC_OBJ
{
public:

    // Copy the function body into specified buffer. 
    // @return  <this> object that represents the function in the new location.
    virtual PI_FUNC & Copy(void * buffer) = 0;

    // Base address of the function's code range.
    virtual void * Start() const = 0;

    // Size of the function's code range.
    virtual size_t Size() const = 0;

    // Max. size of the function's code range
    static const size_t MAX_SIZE = 8192;
};

#endif //RUNNABLE_H

/* ===================================================================== */
/* eof */
/* ===================================================================== */
