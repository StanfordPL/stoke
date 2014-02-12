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
#include "regvalues.h"

#ifdef TARGET_MIC
# define ALIGNED __attribute__ ((aligned (64)))
#else
# define ALIGNED
#endif

unsigned char fpSaveArea[FPSAVEAREASIZE] = { 0 };

// Application register values
const unsigned char gprval[GPRSIZEMAX] =      { 0x11, 0x22, 0x33, 0x44, 0x55, 0x66, 0x77, 0x88 };
const unsigned char * gpr32val = &gprval[0];
const unsigned char * gpr16val = &gprval[0];
const unsigned char * gprlval = &gprval[0];
const unsigned char * gprhval = &gprval[1];
const unsigned char stval[STSIZE] =           { 0x00, 0xc8, 0x95, 0x04, 0xe6, 0x3d, 0xa1, 0xc3, 0xf8, 0x3f };
const unsigned char xmmval[XMMSIZE] =         { 0xcc, 0xcc, 0xcc, 0xcc, 0xcc, 0xcc, 0xcc, 0xcc,
                                                0xcc, 0xcc, 0xcc, 0xcc, 0xcc, 0xcc, 0xcc, 0xcc };
const unsigned char ymmval[YMMSIZE] =         { 0xdd, 0xdd, 0xdd, 0xdd, 0xdd, 0xdd, 0xdd, 0xdd,
                                                0xdd, 0xdd, 0xdd, 0xdd, 0xdd, 0xdd, 0xdd, 0xdd,
                                                0xdd, 0xdd, 0xdd, 0xdd, 0xdd, 0xdd, 0xdd, 0xdd,
                                                0xdd, 0xdd, 0xdd, 0xdd, 0xdd, 0xdd, 0xdd, 0xdd };
const unsigned char ALIGNED zmmval[ZMMSIZE] = { 0xee, 0xee, 0xee, 0xee, 0xee, 0xee, 0xee, 0xee,
                                                0xee, 0xee, 0xee, 0xee, 0xee, 0xee, 0xee, 0xee,
                                                0xee, 0xee, 0xee, 0xee, 0xee, 0xee, 0xee, 0xee,
                                                0xee, 0xee, 0xee, 0xee, 0xee, 0xee, 0xee, 0xee,
                                                0xee, 0xee, 0xee, 0xee, 0xee, 0xee, 0xee, 0xee,
                                                0xee, 0xee, 0xee, 0xee, 0xee, 0xee, 0xee, 0xee,
                                                0xee, 0xee, 0xee, 0xee, 0xee, 0xee, 0xee, 0xee,
                                                0xee, 0xee, 0xee, 0xee, 0xee, 0xee, 0xee, 0xee };
const unsigned char kval[KSIZE] =             { 0xff, 0xff };

// Tool register values
const unsigned char tgprval[GPRSIZEMAX] =     { 0x12, 0x34, 0x56, 0x78, 0x9a, 0xbc, 0xde, 0xf0 };
const unsigned char * tgpr32val = &tgprval[0];
const unsigned char * tgpr16val = &tgprval[0];
const unsigned char * tgprlval = &tgprval[0];
const unsigned char * tgprhval = &tgprval[1];

const unsigned char tstval[STSIZEALLIGNED] =  { 0x00, 0xc0, 0x2c, 0x70, 0x7c, 0xc4, 0x8b, 0xde, 0xfc, 0x3f };
const unsigned char txmmval[XMMSIZE] =        { 0xc3, 0xc3, 0xc3, 0xc3, 0xc3, 0xc3, 0xc3, 0xc3,
                                                0xc3, 0xc3, 0xc3, 0xc3, 0xc3, 0xc3, 0xc3, 0xc3 };
const unsigned char tymmval[YMMSIZE] =        { 0xd4, 0xd4, 0xd4, 0xd4, 0xd4, 0xd4, 0xd4, 0xd4,
                                                0xd4, 0xd4, 0xd4, 0xd4, 0xd4, 0xd4, 0xd4, 0xd4,
                                                0xd4, 0xd4, 0xd4, 0xd4, 0xd4, 0xd4, 0xd4, 0xd4,
                                                0xd4, 0xd4, 0xd4, 0xd4, 0xd4, 0xd4, 0xd4, 0xd4 };
const unsigned char ALIGNED tzmmval[ZMMSIZE] ={ 0xe5, 0xe5, 0xe5, 0xe5, 0xe5, 0xe5, 0xe5, 0xe5,
                                                0xe5, 0xe5, 0xe5, 0xe5, 0xe5, 0xe5, 0xe5, 0xe5,
                                                0xe5, 0xe5, 0xe5, 0xe5, 0xe5, 0xe5, 0xe5, 0xe5,
                                                0xe5, 0xe5, 0xe5, 0xe5, 0xe5, 0xe5, 0xe5, 0xe5,
                                                0xe5, 0xe5, 0xe5, 0xe5, 0xe5, 0xe5, 0xe5, 0xe5,
                                                0xe5, 0xe5, 0xe5, 0xe5, 0xe5, 0xe5, 0xe5, 0xe5,
                                                0xe5, 0xe5, 0xe5, 0xe5, 0xe5, 0xe5, 0xe5, 0xe5,
                                                0xe5, 0xe5, 0xe5, 0xe5, 0xe5, 0xe5, 0xe5, 0xe5 };
const unsigned char tkval[KSIZEALLIGNED] =    { 0xf6, 0xf6, 0xf6, 0xf6, 0xf6, 0xf6, 0xf6, 0xf6 };

// Modified application register values
unsigned char agprval[GPRSIZE] = { 0 };
unsigned char astval[STSIZE] = { 0 };
unsigned char axmmval[XMMSIZE] = { 0 };
unsigned char aymmval[YMMSIZE] = { 0 };
unsigned char ALIGNED azmmval[ZMMSIZE] = { 0 };
unsigned char akval[KSIZE] = { 0 };
