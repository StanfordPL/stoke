// Copyright 2013-2015 Eric Schkufza, Rahul Sharma, Berkeley Churchill, Stefan Heule
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

// See x64asm issue #12
// These instruction variants don't actually exist. Attempting to emit
// code for these will cause the cpu to mutate values in registers other
// than ah,dh,ch,bh.
CRC32_R32_RH
, CRC32_R64_RH
, MOVSX_R16_RH
, MOVSX_R32_RH
, MOVSX_R64_RH
, MOVZX_R16_RH
, MOVZX_R32_RH
, MOVZX_R64_RH

// See STOKE sandbox issue #253: This is the bit test (and clear/reset/set) family of
// instructions for memory operands.
, BT_M16_IMM8
, BT_M16_R16
, BT_M32_IMM8
, BT_M32_R32
, BT_M64_IMM8
, BT_M64_R64
, BTC_M16_IMM8
, BTC_M16_R16
, BTC_M32_IMM8
, BTC_M32_R32
, BTC_M64_IMM8
, BTC_M64_R64
, BTR_M16_IMM8
, BTR_M16_R16
, BTR_M32_IMM8
, BTR_M32_R32
, BTR_M64_IMM8
, BTR_M64_R64
, BTS_M16_IMM8
, BTS_M16_R16
, BTS_M32_IMM8
, BTS_M32_R32
, BTS_M64_IMM8
, BTS_M64_R64

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

// See STOKE sandbox issue #257. These are mov sreg variants.
, MOV_SREG_M16
, MOV_SREG_M64
, MOV_SREG_R16
, MOV_SREG_R64
, MOV_M16_SREG
, MOV_M64_SREG
, MOV_R16_SREG
, MOV_R64_SREG

// See STOKE sandbox issue #258. This is the swapgs instruction.
, SWAPGS

// See STOKE sandbox issue #259. These read/write MXCSR.
, LDMXCSR_M32
, STMXCSR_M32
, VLDMXCSR_M32
, VSTMXCSR_M32

// See STOKE sandbox issue #260. These are push/pop variants.
, PUSH_FS
, PUSH_GS
, PUSH_IMM16
, PUSH_IMM32
, PUSH_IMM8
, PUSH_M16
, PUSH_M64
, PUSH_R16
, POP_FS
, POP_FS_PREF66
, POP_GS
, POP_GS_PREF66
, POP_M16
, POP_M64
, POP_R16

// See STOKE sandbox issue #261. These are (push/pop)f(q) instructions.
, PUSHF
, PUSHFQ
, POPF
, POPFQ

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
