// Copyright 2013-2015 Stanford University
//
// Licensed under the Apache License, Version 2.0 (the "License");
// you may not use this file except in compliance with the License.
// You may obtain a copy of the License at
//
//     http://www.apache.org/licenses/LICENSE-2.0
//
// Unless required by applicable law or agreed to in writing, software
// distributed under the License is distributed on an "AS IS" BASIS,
// WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
// See the License for the specific language governing permissions and
// limitations under the License.

// NOTE: this lists all opcodes that are unsupported by the sandbox.  all
// other instructions are supported, but it is assumed that they are
// well-formed.  In particular, the following instructions can be malformed
// (see x64asm issue #12), and the sandbox may behave in unexpected ways
// if they are executed: MOVSX_R16_RH, MOVSX_R32_RH, MOVSX_R64_RH,
// MOVZX_R16_RH, MOVZX_R32_RH, MOVZX_R64_RH

// These are instructions that have to do with reading/writing segment
// registers. For the time being, STOKE has no way of dealing with these
// so any attempt to modify them from their default values would likely
// be catastrophic.
MOV_SREG_M16
, MOV_SREG_M64
, MOV_SREG_R16
, MOV_SREG_R64
, MOV_M16_SREG
, MOV_M64_SREG
, MOV_R16_SREG
, MOV_R64_SREG
, PUSH_FS
, PUSH_GS
, POP_FS
, POP_FS_PREF66
, POP_GS
, POP_GS_PREF66

// See STOKE sandbox issue #254. These instructions modify the dflag.
, STD
, CLD

// See STOKE sandbox issue #256. These are the (rd/wr)(fs/gs)base instructions.
, RDFSBASE_R32
, RDFSBASE_R64
, RDGSBASE_R32
, RDGSBASE_R64
, WRFSBASE_R32
, WRFSBASE_R64
, WRGSBASE_R32
, WRGSBASE_R64

// See STOKE sandbox issue #258. This is the swapgs instruction.
, SWAPGS

// See STOKE sandbox issue #259. These read/write MXCSR.
, LDMXCSR_M32
, STMXCSR_M32
, VLDMXCSR_M32
, VSTMXCSR_M32

// See STOKE sandbox issue #262. This is the invpcid instruction.
, INVPCID_R64_M128

// See STOKE sandbox issue #263. This is the clflush instruction.
, CLFLUSH_M8

// See STOKE sandbox issue #265. These are the mwait and lock instructions.
, MWAIT
, LOCK
, MONITOR

// See STOKE sandbox issue #266. These are maskmov instructions.
, MASKMOVDQU_XMM_XMM
, VMASKMOVDQU_XMM_XMM
, MASKMOVQ_MM_MM

// See STOKE issue #316. These are string instructions
, CMPS_M16_M16 // CMPS m16, m16
, CMPS_M32_M32 // CMPS m32, m32
, CMPS_M64_M64 // CMPS m64, m64
, CMPS_M8_M8 // CMPS m8, m8
, CMPSB // CMPSB
, CMPSD // CMPSD
, CMPSQ // CMPSQ
, CMPSW // CMPSW
, INS_M16_DX // INS m16, DX
, INS_M32_DX // INS m32, DX
, INS_M8_DX // INS m8, DX
, INSB // INSB
, INSD // INSD
, INSW // INSW
, LODS_M16 // LODS m16
, LODS_M32 // LODS m32
, LODS_M64 // LODS m64
, LODS_M8 // LODS m8
, LODSB // LODSB
, LODSD // LODSD
, LODSQ // LODSQ
, LODSW // LODSW
, MOVS_M16_M16 // MOVS m16, m16
, MOVS_M32_M32 // MOVS m32, m32
, MOVS_M64_M64 // MOVS m64, m64
, MOVS_M8_M8 // MOVS m8, m8
, MOVSB // MOVSB
, MOVSD // MOVSD
, MOVSQ // MOVSQ
, MOVSW // MOVSW
, OUTS_DX_M16 // OUTS DX, m16
, OUTS_DX_M32 // OUTS DX, m32
, OUTS_DX_M8 // OUTS DX, m8
, OUTSB // OUTSB
, OUTSD // OUTSD
, OUTSW // OUTSW
, SCAS_M16 // SCAS m16
, SCAS_M32 // SCAS m32
, SCAS_M64 // SCAS m64
, SCAS_M8 // SCAS m8
, SCASB // SCASB
, SCASD // SCASD
, SCASQ // SCASQ
, SCASW // SCASW
, STOS_M16 // STOS m16
, STOS_M32 // STOS m32
, STOS_M64 // STOS m64
, STOS_M8 // STOS m8
, STOSB // STOSB
, STOSD // STOSD
, STOSQ // STOSQ
, STOSW // STOSW
, REP_INS_M16_DX // REP_INS m16, DX
, REP_INS_M32_DX // REP_INS m32, DX
, REP_INS_M64_DX // REP_INS m64, DX
, REP_INS_M8_DX // REP_INS m8, DX
, REP_INS_M8_DX_1 // REP_INS m8, DX
, REP_LODS_AL // REP_LODS AL
, REP_LODS_AL_1 // REP_LODS AL
, REP_LODS_AX // REP_LODS AX
, REP_LODS_EAX // REP_LODS EAX
, REP_LODS_RAX // REP_LODS RAX
, REP_MOVS_M16_M16 // REP_MOVS m16, m16
, REP_MOVS_M32_M32 // REP_MOVS m32, m32
, REP_MOVS_M64_M64 // REP_MOVS m64, m64
, REP_MOVS_M8_M8 // REP_MOVS m8, m8
, REP_MOVS_M8_M8_1 // REP_MOVS m8, m8
, REP_OUTS_DX_M16 // REP_OUTS DX, m16
, REP_OUTS_DX_M32 // REP_OUTS DX, m32
, REP_OUTS_DX_M64 // REP_OUTS DX, m64
, REP_OUTS_DX_M8 // REP_OUTS DX, m8
, REP_OUTS_DX_M8_1 // REP_OUTS DX, m8
, REP_STOS_M16 // REP_STOS m16
, REP_STOS_M32 // REP_STOS m32
, REP_STOS_M64 // REP_STOS m64
, REP_STOS_M8 // REP_STOS m8
, REP_STOS_M8_1 // REP_STOS m8
, REPE_CMPS_M16_M16 // REPE_CMPS m16, m16
, REPE_CMPS_M32_M32 // REPE_CMPS m32, m32
, REPE_CMPS_M64_M64 // REPE_CMPS m64, m64
, REPE_CMPS_M8_M8 // REPE_CMPS m8, m8
, REPE_CMPS_M8_M8_1 // REPE_CMPS m8, m8
, REPE_SCAS_M16 // REPE_SCAS m16
, REPE_SCAS_M32 // REPE_SCAS m32
, REPE_SCAS_M64 // REPE_SCAS m64
, REPE_SCAS_M8 // REPE_SCAS m8
, REPNE_CMPS_M16_M16 // REPNE_CMPS m16, m16
, REPNE_CMPS_M32_M32 // REPNE_CMPS m32, m32
, REPNE_CMPS_M64_M64 // REPNE_CMPS m64, m64
, REPNE_CMPS_M8_M8 // REPNE_CMPS m8, m8
, REPNE_CMPS_M8_M8_1 // REPNE_CMPS m8, m8
, REPNE_SCAS_M16 // REPNE_SCAS m16
, REPNE_SCAS_M32 // REPNE_SCAS m32
, REPNE_SCAS_M64 // REPNE_SCAS m64
, REPNE_SCAS_M8 // REPNE_SCAS m8
, REPNE_SCAS_M8_1 // REPNE_SCAS m8

// These read/write from peripheral devices
, IN_AL_DX // IN AL, DX
, IN_AL_IMM8 // IN AL, imm8
, IN_AX_DX // IN AX, DX
, IN_AX_IMM8 // IN AX, imm8
, IN_EAX_DX // IN EAX, DX
, IN_EAX_IMM8 // IN EAX, imm8
, OUT_DX_AL // OUT DX, AL
, OUT_DX_AX // OUT DX, AX
, OUT_DX_EAX // OUT DX, EAX
, OUT_IMM8_AL // OUT imm8, AL
, OUT_IMM8_AX // OUT imm8, AX
, OUT_IMM8_EAX // OUT imm8, EAX

// These instructions read/write the segment registers
, LSL_R16_M16 // LSL r16, m16
, LSL_R16_R16 // LSL r16, r16
, LSL_R32_M16 // LSL r32, m16
, LSL_R32_R32 // LSL r32, r32
, LSL_R64_M16 // LSL r64, m16
, LSL_R64_R32 // LSL r64, r32
, LSS_R16_FARPTR1616 // LSS r16, m16:16
, LSS_R32_FARPTR1632 // LSS r32, m16:32
, LSS_R64_FARPTR1664 // LSS r64, m16:64

// These instructions seem to read/write fs and gs
, LFS_R16_FARPTR1616 // LFS r16, m16:16
, LFS_R32_FARPTR1632 // LFS r32, m16:32
, LFS_R64_FARPTR1664 // LFS r64, m16:64
, LGS_R16_FARPTR1616 // LGS r16, m16:16
, LGS_R32_FARPTR1632 // LGS r32, m16:32
, LGS_R64_FARPTR1664 // LGS r64, m16:64

// These instruction load access rights at memory address
, LAR_R16_M16 // LAR r16, m16
, LAR_R16_R16 // LAR r16, r16
, LAR_R32_M16 // LAR r32, m16
, LAR_R32_R32 // LAR r32, r32
, LAR_R64_M16 // LAR r64, m16
, LAR_R64_R32 // LAR r64, r32

// These instructions use xsave
, XGETBV // XGETBV
, XRSTOR_M16 // XRSTOR m16
, XRSTOR_M32 // XRSTOR m32
, XRSTOR_M64 // XRSTOR m64
, XRSTOR64_M16 // XRSTOR64 m16
, XRSTOR64_M32 // XRSTOR64 m32
, XRSTOR64_M64 // XRSTOR64 m64
, XSAVE_M16 // XSAVE m16
, XSAVE_M32 // XSAVE m32
, XSAVE_M64 // XSAVE m64
, XSAVE64_M16 // XSAVE64 m16
, XSAVE64_M32 // XSAVE64 m32
, XSAVE64_M64 // XSAVE64 m64
, XSAVEOPT_M16 // XSAVEOPT m16
, XSAVEOPT_M32 // XSAVEOPT m32
, XSAVEOPT_M64 // XSAVEOPT m64
, XSAVEOPT64_M16 // XSAVEOPT64 m16
, XSAVEOPT64_M32 // XSAVEOPT64 m32
, XSAVEOPT64_M64 // XSAVEOPT64 m64

// These instructions require pretty serious understanding of rips
, CALL_FARPTR1616 // CALL m16:16
, CALL_FARPTR1632 // CALL m16:32
, CALL_FARPTR1664 // CALL m16:64
, CALL_M64 // CALL m64
, CALL_R64 // CALL r64
, CALL_REL32 // CALL rel32

// These instructions implicitly modify rsp
, ENTER_IMM8_IMM16 // ENTER imm8, imm16
, ENTER_ONE_IMM16 // ENTER 1, imm16
, ENTER_ZERO_IMM16 // ENTER 0, imm16
, SYSENTER // SYSENTER
, SYSCALL // SYSCALL
, SYSEXIT // SYSEXIT
, SYSEXIT_PREFREXW // SYSEXIT pw
, SYSRET // SYSRET
, SYSRET_PREFREXW // SYSRET pw

// See issue #463. I'm not sure why this isn't working correctly,
// but it's sort of a distinction with a difference whether we support
// this or not since gcc won't ever emit this instruction
, LEAVE_PREF66
