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
#include <winsock2.h> 
#include <windows.h> 
#include <stdio.h> 

//=======================================================================
// This is the application for testing the funreplace_alert tool.
// It uses alertable system call and receives callbacks in a function
// replaced by the tool.
//=======================================================================

static void init_server( void )
{
    struct WSAData wsaData;
    SOCKET socketFd;
    char yes;
    struct sockaddr_in localAddr;

    // Initialize winsock2:
    WSAStartup( MAKEWORD(2, 0), &wsaData );

    // socket:
    socketFd = socket( AF_INET, SOCK_STREAM, 0 );
    yes = 1;
    setsockopt( socketFd, SOL_SOCKET, SO_REUSEADDR, &yes, sizeof(int) );

    // bind:
    localAddr.sin_family = AF_INET;
    localAddr.sin_port = 0;
    localAddr.sin_addr.s_addr = htonl( INADDR_ANY ); // use my local IP address
    memset( &(localAddr.sin_zero), '\0', 8 );
    bind( socketFd, (struct sockaddr*)&localAddr, sizeof(struct sockaddr) );

    // listen:            
    printf( "--> mpi::init_server, before listen() ...\n" ); fflush( stdout );

    //listen() internally throws exception on ia32. Exceptions are not supported
    //in replacement functions, so we comment it this call to listen().
    //listen( socketFd, 3 );

    printf( "--> mpi::init_server, after listen() ...\n" ); fflush( stdout );
}

//=======================================================================

extern "C" __declspec(dllexport) 
void my_mpi_init( void )
{
    printf( "--> mpi::mpi_init\n" ); fflush( stdout );
    init_server();
}

int main()
{
    my_mpi_init();
    return 0;
}

