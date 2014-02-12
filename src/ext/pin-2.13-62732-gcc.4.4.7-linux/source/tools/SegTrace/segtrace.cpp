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
//
// @ORIGINAL_AUTHOR: Greg Lueck
//

/*! @file
 *
 * This file contains a tool that traces all uses and changes to the FS and GS
 * segments, which are typically used to implement thread-local storage on x86
 * platforms.  Currently, this tool only knows about the segment-related system
 * calls on Linux.
 */

#include "pin.H"
#include "pending_syscalls.H"
#include "disasm_container.H"

#include <iostream>
#include <ostream>
#include <fstream>
#include <iomanip>
#include <sstream>
#include <map>

#if defined(TARGET_LINUX)
#   include <sys/syscall.h>
#   include <asm/ldt.h>
#endif

#if defined(TARGET_LINUX) && defined(TARGET_IA32E)
#   include <asm/prctl.h>
#endif


// These constants are not defined on old kernels.
//
#ifndef __NR_set_thread_area
#   define __NR_set_thread_area 243
#endif
#ifndef __NR_get_thread_area
#   define __NR_get_thread_area 244
#endif
#ifndef SYS_set_thread_area
#   define SYS_set_thread_area __NR_set_thread_area
#endif
#ifndef SYS_get_thread_area
#   define SYS_get_thread_area __NR_get_thread_area
#endif
#ifndef CLONE_SETTLS
#   define CLONE_SETTLS 0x00080000
#endif

// Specifies a segment descriptor entry.  Used with modify_ldt(), etc.
//
struct USER_DESC
{
    UINT32 entry_number;
    ADDRINT base_addr;
    UINT32 limit;
    UINT32 seg_32bit:1;
    UINT32 contents:2;
    UINT32 read_exec_only:1;
    UINT32 limit_in_pages:1;
    UINT32 seg_not_present:1;
    UINT32 useable:1;
};

KNOB<string> KnobOutputFile(KNOB_MODE_WRITEONCE, "pintool", "o", "segtrace.out", "trace file");

std::ofstream Out;
PENDING_SYSCALLS *PendingSyscalls;  // Holds syscall information between "before" and "after" instrumentation
DISASM_CONTAINER *Disassemblies;    // Holds disassemblies for "interesting" instructions


static VOID Instruction(INS, VOID *);
static BOOL WritesSegment(INS, REG *);
static VOID OnSegReference(UINT32, ADDRINT, ADDRINT, THREADID);
static VOID OnSegWrite(UINT32, ADDRINT, ADDRINT, THREADID);
static VOID OnSyscallBefore(ADDRINT, ADDRINT, ADDRINT, ADDRINT, ADDRINT, ADDRINT, ADDRINT, ADDRINT, ADDRINT, THREADID);
static VOID OnSyscallAfter(ADDRINT, ADDRINT, ADDRINT, ADDRINT, THREADID);
static std::string Header(THREADID, ADDRINT);
static std::string PasteDisassembly(const std::string &, const std::string &);
static std::string SegName(REG);
static std::string SegSelector(ADDRINT);
static VOID SyscallEntry(THREADID threadIndex, CONTEXT *ctxt, SYSCALL_STANDARD std, VOID *v);
static VOID SyscallExit(THREADID threadIndex, CONTEXT *ctxt, SYSCALL_STANDARD std, VOID *v);

#if defined(TARGET_LINUX)
    static std::string UserDesc(USER_DESC *);
#endif

#if defined(TARGET_LINUX) && defined(TARGET_IA32E)
    static std::string PrctlFunc(ADDRINT);
#endif


int main(int argc, char * argv[])
{
    PIN_Init(argc, argv);

    Out.open(KnobOutputFile.Value().c_str());
    PendingSyscalls = new PENDING_SYSCALLS();
    Disassemblies = new DISASM_CONTAINER();

    INS_AddInstrumentFunction(Instruction, 0);
    PIN_AddSyscallEntryFunction(SyscallEntry, 0);
    PIN_AddSyscallExitFunction(SyscallExit, 0);

    PIN_StartProgram();
    return 0;
}


static VOID Instruction(INS ins, VOID *v)
{
    if (INS_SegmentPrefix(ins))
    {
        INS_InsertCall(ins, IPOINT_BEFORE, AFUNPTR(OnSegReference), IARG_UINT32, INS_SegmentRegPrefix(ins),
            IARG_REG_VALUE, INS_SegmentRegPrefix(ins), IARG_INST_PTR, IARG_THREAD_ID, IARG_END);
        Disassemblies->Add(INS_Address(ins), INS_Disassemble(ins));
    }

    REG seg;
    if (WritesSegment(ins, &seg))
    {
        INS_InsertCall(ins, IPOINT_AFTER, AFUNPTR(OnSegWrite), IARG_UINT32, seg, IARG_REG_VALUE, seg,
            IARG_INST_PTR, IARG_THREAD_ID, IARG_END);
        Disassemblies->Add(INS_Address(ins), INS_Disassemble(ins));
    }

    // For O/S's (Mac) that don't support PIN_AddSyscallEntryFunction(),
    // instrument the system call instruction.
    //
    if (INS_IsSyscall(ins) && INS_HasFallThrough(ins))
    {
        INS_InsertCall(ins, IPOINT_BEFORE, AFUNPTR(OnSyscallBefore), IARG_SYSCALL_NUMBER, IARG_SYSARG_VALUE, 0,
            IARG_SYSARG_VALUE, 1, IARG_SYSARG_VALUE, 2, IARG_SYSARG_VALUE, 3, IARG_SYSARG_VALUE, 4,
            IARG_REG_VALUE, REG_SEG_FS, IARG_REG_VALUE, REG_SEG_GS, IARG_INST_PTR, IARG_THREAD_ID, IARG_END);

        INS_InsertCall(ins, IPOINT_AFTER, AFUNPTR(OnSyscallAfter), IARG_SYSRET_VALUE,
            IARG_REG_VALUE, REG_SEG_FS, IARG_REG_VALUE, REG_SEG_GS, IARG_INST_PTR, IARG_THREAD_ID, IARG_END);
    }
}

static BOOL WritesSegment(INS ins, REG *seg)
{
    if (INS_RegWContain(ins, REG_SEG_FS))
    {
        *seg = REG_SEG_FS;
        return TRUE;
    }
    if (INS_RegWContain(ins, REG_SEG_GS))
    {
        *seg = REG_SEG_GS;
        return TRUE;
    }
    if (INS_RegWContain(ins, REG_SEG_ES))
    {
        *seg = REG_SEG_ES;
        return TRUE;
    }
    if (INS_RegWContain(ins, REG_SEG_CS))
    {
        *seg = REG_SEG_CS;
        return TRUE;
    }
    if (INS_RegWContain(ins, REG_SEG_DS))
    {
        *seg = REG_SEG_DS;
        return TRUE;
    }
    if (INS_RegWContain(ins, REG_SEG_SS))
    {
        *seg = REG_SEG_SS;
        return TRUE;
    }
    return FALSE;
}

static VOID OnSegReference(UINT32 ireg, ADDRINT val, ADDRINT pc, THREADID tid)
{
    REG reg = static_cast<REG>(ireg);
    std::ostringstream s;
    s << Header(tid, pc) << "reference via " << SegName(reg) << " " << SegSelector(val);
    Out << PasteDisassembly(s.str(), Disassemblies->Get(pc)) << std::endl;
}

static VOID OnSegWrite(UINT32 ireg, ADDRINT val, ADDRINT pc, THREADID tid)
{
    REG reg = static_cast<REG>(ireg);
    std::ostringstream s;
    s << Header(tid, pc) << "modify " << SegName(reg) << "=" << SegSelector(val);
    Out << PasteDisassembly(s.str(), Disassemblies->Get(pc)) << std::endl;
}

static VOID OnSyscallBefore(ADDRINT num, ADDRINT arg1, ADDRINT arg2, ADDRINT arg3, ADDRINT arg4, ADDRINT arg5,
    ADDRINT fs, ADDRINT gs, ADDRINT pc, THREADID tid)
{
    PendingSyscalls->Add(tid, PENDING_SYSCALL(fs, gs, num, arg1, arg2, arg3, arg4, arg5));

    switch (num)
    {
#if defined(TARGET_LINUX)
      case SYS_modify_ldt:
      {
        int func = static_cast<int>(arg1);
        if (func == 1)
        {
            USER_DESC *tls = reinterpret_cast<USER_DESC *>(arg2);
            Out << Header(tid, pc) << "modify_ldt(WRITE, " << UserDesc(tls) << ", 0x" <<
                std::hex << arg3 << ")" << std::endl;
        }
        else
        {
            Out << Header(tid, pc) << "modify_ldt(READ, 0x" << std::hex << arg2 <<
                ", 0x" << arg3 << ")" << std::endl;
        }
        break;
      }
#endif

#if defined(TARGET_LINUX) && defined(TARGET_IA32E)
      case SYS_arch_prctl:
        Out << Header(tid, pc) << "arch_prctl(" << PrctlFunc(arg1) << ", 0x" << std::hex << arg2 << ")" << std::endl;
        break;

      case SYS_clone:
      {
        int flags = static_cast<int>(arg1);
        if (flags & CLONE_SETTLS)
            Out << Header(tid, pc) << "clone(CLONE_SETTLS, 0x" << std::hex << arg5 << ")" << std::endl;
        break;
      }

      case SYS_set_thread_area:
        Out << Header(tid, pc) << "UNEXPECTED: set_thread_area" << std::endl;
        break;

      case SYS_get_thread_area:
        Out << Header(tid, pc) << "UNEXPECTED: get_thread_area" << std::endl;
        break;
#endif

#if defined(TARGET_LINUX) && defined(TARGET_IA32)
      case SYS_set_thread_area:
      {
        USER_DESC *tls = reinterpret_cast<USER_DESC *>(arg1);
        Out << Header(tid, pc) << "set_thread_area(" << UserDesc(tls) << ")" << std::endl;
        break;
      }

      case SYS_get_thread_area:
      {
        USER_DESC *tls = reinterpret_cast<USER_DESC *>(arg1);
        Out << Header(tid, pc) << "get_thread_area([entry_number=0x" << std::hex << tls->entry_number << "])" << std::endl;
        break;
      }

      case SYS_clone:
      {
        int flags = static_cast<int>(arg1);
        if (flags & CLONE_SETTLS)
        {
            USER_DESC *tls = reinterpret_cast<USER_DESC *>(arg4);
            Out << Header(tid, pc) << "clone(CLONE_SETTLS, " << UserDesc(tls) << ")" << std::endl;
        }
        break;
      }
#endif
    }
}

static VOID OnSyscallAfter(ADDRINT ret, ADDRINT fs, ADDRINT gs, ADDRINT pc, THREADID tid)
{
    PENDING_SYSCALL pend;
    if (!PendingSyscalls->Remove(tid, &pend))
        return;

    switch (pend._number)
    {
#if defined(TARGET_LINUX)
      case SYS_modify_ldt:
        if (ret == ADDRINT(-1))
            Out << Header(tid, pc) << "=>modify_ldt(FAILED)" << std::endl;
        break;
#endif

#if defined(TARGET_LINUX) && defined(TARGET_IA32E)
      case SYS_arch_prctl:
        if (ret == ADDRINT(-1))
            Out << Header(tid, pc) << "=>arch_prctl(FAILED)" << std::endl;
        break;
#endif

#if defined(TARGET_LINUX) && defined(TARGET_IA32)
      case SYS_set_thread_area:
        if (ret == ADDRINT(-1))
        {
            Out << Header(tid, pc) << "=>set_thread_area(FAILED)" << std::endl;
        }
        else
        {
            USER_DESC *tls = reinterpret_cast<USER_DESC *>(pend._arg1);
            Out << Header(tid, pc) << "=>set_thread_area(" << UserDesc(tls) << ")" << std::endl;
        }
        break;

      case SYS_get_thread_area:
        if (ret == ADDRINT(-1))
        {
            Out << Header(tid, pc) << "=>get_thread_area(FAILED)" << std::endl;
        }
        else
        {
            USER_DESC *tls = reinterpret_cast<USER_DESC *>(pend._arg1);
            Out << Header(tid, pc) << "=>get_thread_area(" << UserDesc(tls) << ")" << std::endl;
        }
        break;
#endif
    }

    if (fs != pend._fs)
        Out << Header(tid, pc) << "syscall modified FS=" << SegSelector(fs) << std::endl;
    if (gs != pend._gs)
        Out << Header(tid, pc) << "syscall modified GS=" << SegSelector(gs) << std::endl;
}

static VOID SyscallEntry(THREADID threadIndex, CONTEXT *ctxt, SYSCALL_STANDARD std, VOID *v)
{
    OnSyscallBefore(PIN_GetSyscallNumber(ctxt, std),
        PIN_GetSyscallArgument(ctxt, std, 0),
        PIN_GetSyscallArgument(ctxt, std, 1),
        PIN_GetSyscallArgument(ctxt, std, 2),
        PIN_GetSyscallArgument(ctxt, std, 3),
        PIN_GetSyscallArgument(ctxt, std, 4),
        PIN_GetContextReg(ctxt, REG_SEG_FS),
        PIN_GetContextReg(ctxt, REG_SEG_GS),
        PIN_GetContextReg(ctxt, REG_INST_PTR),
        threadIndex);
}

static VOID SyscallExit(THREADID threadIndex, CONTEXT *ctxt, SYSCALL_STANDARD std, VOID *v)
{
    OnSyscallAfter( PIN_GetSyscallReturn(ctxt, std), 
                    PIN_GetContextReg(ctxt, REG_SEG_FS),
                    PIN_GetContextReg(ctxt, REG_SEG_GS),
                    PIN_GetContextReg(ctxt, REG_INST_PTR),
                    threadIndex);
}

static std::string Header(THREADID tid, ADDRINT pc)
{
    std::ostringstream s;
    s << "tid " << std::dec << tid << ", pc 0x" << std::hex << pc << ": ";
    return s.str();
}

static std::string PasteDisassembly(const std::string &body, const std::string &dis)
{
    std::ostringstream s;
    s << std::left << std::setw(70) << body << dis;
    return s.str();
}

static std::string SegName(REG reg)
{
    switch (reg)
    {
      case REG_SEG_FS:
        return "FS";
      case REG_SEG_GS:
        return "GS";
      case REG_SEG_ES:
        return "ES";
      case REG_SEG_CS:
        return "CS";
      case REG_SEG_DS:
        return "DS";
      case REG_SEG_SS:
        return "SS";
      default:
        return "OTHER";
    }
}

static std::string SegSelector(ADDRINT val)
{
    std::ostringstream s;
    s << "[";
    if (val & 4)
        s << "LDT";
    else
        s << "GDT";
    s << " index=" << std::dec << (val >> 3);
    s << " priv=" << std::dec << (val & 3);
    s << "]";
    return s.str();
}

#if defined(TARGET_LINUX)
static std::string UserDesc(USER_DESC *tls)
{
    std::ostringstream s;
    s << "[";
    s << "index=" << std::dec << static_cast<INT32>(tls->entry_number);
    s << " base=0x" << std::hex << tls->base_addr;
    s << "]";
    return s.str();
}
#endif

#if defined(TARGET_LINUX) && defined(TARGET_IA32E)
static std::string PrctlFunc(ADDRINT fun)
{
    switch (fun)
    {
      case ARCH_SET_GS:
        return "ARCH_SET_GS";
      case ARCH_SET_FS:
        return "ARCH_SET_FS";
      case ARCH_GET_FS:
        return "ARCH_GET_FS";
      case ARCH_GET_GS:
        return "ARCH_GET_GS";
      default:
      {
        std::ostringstream s;
        s << "0x" << std::hex << fun;
        return s.str();
      }
    }
}
#endif
