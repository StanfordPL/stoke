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
#ifndef RAISE_EXCEPTION_ADDRS_H
#define RAISE_EXCEPTION_ADDRS_H

/*
 * Labels for various instructions that raise exceptions.
 */
typedef struct {
    char *_unmappedRead;
    char *_unmappedReadAddr;
    char *_unmappedWrite;
    char *_unmappedWriteAddr;
    char *_inaccessibleRead;
    char *_inaccessibleReadAddr;
    char *_inaccessibleWrite;
    char *_inaccessibleWriteAddr;
    char *_misalignedRead;
    char *_misalignedWrite;
    char *_illegalInstruction;
    char *_privilegedInstruction;
    char *_integerDivideByZero;
    char *_integerOverflowTrap;
    char *_boundTrap;
    char *_x87DivideByZero;
    char *_x87Overflow;
    char *_x87Underflow;
    char *_x87Precision;
    char *_x87InvalidOperation;
    char *_x87DenormalizedOperand;
    char *_x87StackUnderflow;
    char *_x87StackOverflow;
    char *_x87MultipleExceptions;
    char *_simdDivideByZero;
    char *_simdOverflow;
    char *_simdUnderflow;
    char *_simdPrecision;
    char *_simdInvalidOperation;
    char *_simdDenormalizedOperand;
    char *_simdMultipleExceptions;
    char *_breakpointTrap;
} RAISE_EXCEPTION_ADDRS;

#endif
