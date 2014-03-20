// Copyright 2014 eric schkufza
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

// This file was created using Agner Fog's instruction tables for Haswell.
// Entries correspond to latency. The following conventions have been used.

// Control instructions: label definitions, calls, returns, jumps, are
// assigned a latency of zero.

// Entries which are given non-integer values in Agner's table are rounded
// up to the nearest integer value.

// Entries which cannot be reasonably measured are assigned the sentinel
// value 999.

0 // LABEL_DEFN

, 2 // ADC AL, imm8
, 2 // ADC AX, imm16
, 2 // ADC EAX, imm32
, 7 // ADC m16, imm16
, 7 // ADC m16, imm8
, 7 // ADC m16, r16
, 7 // ADC m32, imm32
, 7 // ADC m32, imm8
, 7 // ADC m32, r32
, 7 // ADC m64, imm32
, 7 // ADC m64, imm8
, 7 // ADC m64, r64
, 7 // ADC m8, imm8
, 7 // ADC m8, rb
, 7 // ADC m8, rh
, 7 // ADC m8, rl
, 2 // ADC r16, imm16
, 2 // ADC r16, imm8
, 999 // ADC r16, m16
, 2 // ADC r16, r16
, 2 // ADC r32, imm32
, 2 // ADC r32, imm8
, 999 // ADC r32, m32
, 2 // ADC r32, r32
, 2 // ADC r64, imm32
, 2 // ADC r64, imm8
, 999 // ADC r64, m64
, 2 // ADC r64, r64
, 2 // ADC RAX, imm32
, 2 // ADC rb, imm8
, 999 // ADC rb, m8
, 2 // ADC rb, rb
, 2 // ADC rb, rl
, 2 // ADC rh, imm8
, 999 // ADC rh, m8
, 2 // ADC rh, rh
, 2 // ADC rh, rl
, 2 // ADC rl, imm8
, 999 // ADC rl, m8
, 2 // ADC rl, rb
, 2 // ADC rl, rh
, 2 // ADC rl, rl

, 1 // ADD AL, imm8
, 1 // ADD AX, imm16
, 1 // ADD EAX, imm32
, 6 // ADD m16, imm16
, 6 // ADD m16, imm8
, 6 // ADD m16, r16
, 6 // ADD m32, imm32
, 6 // ADD m32, imm8
, 6 // ADD m32, r32
, 6 // ADD m64, imm32
, 6 // ADD m64, imm8
, 6 // ADD m64, r64
, 6 // ADD m8, imm8
, 6 // ADD m8, rb
, 6 // ADD m8, rh
, 6 // ADD m8, rl
, 1 // ADD r16, imm16
, 1 // ADD r16, imm8
, 1 // ADD r16, m16
, 1 // ADD r16, r16
, 1 // ADD r32, imm32
, 1 // ADD r32, imm8
, 999 // ADD r32, m32
, 1 // ADD r32, r32
, 1 // ADD r64, imm32
, 1 // ADD r64, imm8
, 999 // ADD r64, m64
, 1 // ADD r64, r64
, 1 // ADD RAX, imm32
, 1 // ADD rb, imm8
, 999 // ADD rb, m8
, 1 // ADD rb, rb
, 1 // ADD rb, rl
, 1 // ADD rh, imm8
, 999 // ADD rh, m8
, 1 // ADD rh, rh
, 1 // ADD rh, rl
, 1 // ADD rl, imm8
, 999 // ADD rl, m8
, 1 // ADD rl, rb
, 1 // ADD rl, rh
, 1 // ADD rl, rl

, 999 // ADDPD xmm, m128
, 3 // ADDPD xmm, xmm
, 999 // ADDPS xmm, m128
, 3 // ADDPS xmm, xmm
, 999 // ADDSD xmm, m64
, 3 // ADDSD xmm, xmm
, 999 // ADDSS xmm, m32
, 3 // ADDSS xmm, xmm

, 999 // ADDSUBPD xmm, m128
, 3 // ADDSUBPD xmm, xmm
, 999 // ADDSUBPS xmm, m128
, 3 // ADDSUBPS xmm, xmm

, 999 // AESDEC xmm, m128
, 7 // AESDEC xmm, xmm
, 999 // AESDECLAST xmm, m128
, 7 // AESDECLAST xmm, xmm
, 999 // AESENC xmm, m128
, 7 // AESENC xmm, xmm
, 999 // AESENCLAST xmm, m128
, 7 // AESENCLAST xmm, xmm
, 999 // AESIMC xmm, m128
, 14 // AESIMC xmm, xmm
, 999 // AESKEYGENASSIST xmm, m128, imm8
, 10 // AESKEYGENASSIST xmm, xmm, imm8

, 1 // AND AL, imm8
, 1 // AND AX, imm16
, 1 // AND EAX, imm32
, 6 // AND m16, imm16
, 6 // AND m16, imm8
, 6 // AND m16, r16
, 6 // AND m32, imm32
, 6 // AND m32, imm8
, 6 // AND m32, r32
, 6 // AND m64, imm32
, 6 // AND m64, imm8
, 6 // AND m64, r64
, 6 // AND m8, imm8
, 6 // AND m8, rb
, 6 // AND m8, rh
, 6 // AND m8, rl
, 1 // AND r16, imm16
, 1 // AND r16, imm8
, 999 // AND r16, m16
, 1 // AND r16, r16
, 1 // AND r32, imm32
, 1 // AND r32, imm8
, 999 // AND r32, m32
, 1 // AND r32, r32
, 1 // AND r64, imm32
, 1 // AND r64, imm8
, 999 // AND r64, m64
, 1 // AND r64, r64
, 1 // AND RAX, imm32
, 1 // AND rb, imm8
, 999 // AND rb, m8
, 1 // AND rb, rb
, 1 // AND rb, rl
, 1 // AND rh, imm8
, 999 // AND rh, m8
, 1 // AND rh, rh
, 1 // AND rh, rl
, 1 // AND rl, imm8
, 999 // AND rl, m8
, 1 // AND rl, rb
, 1 // AND rl, rh
, 1 // AND rl, rl

, 1 // ANDN r32, r32, m32
, 1 // ANDN r32, r32, r32
, 1 // ANDN r64, r64, m64
, 1 // ANDN r64, r64, r64

, 999 // ANDNPD xmm, m128
, 1 // ANDNPD xmm, xmm
, 999 // ANDNPS xmm, m128
, 1 // ANDNPS xmm, xmm
, 999 // ANDPD xmm, m128
, 1 // ANDPD xmm, xmm
, 999 // ANDPS xmm, m128
, 1 // ANDPS xmm, xmm

, 999 // BEXTR r32, m32, r32
, 2 // BEXTR r32, r32, r32
, 999 // BEXTR r64, m64, r64
, 2 // BEXTR r64, r64, r64

, 999 // BLENDPD xmm, m128, imm8
, 1 // BLENDPD xmm, xmm, imm8
, 999 // BLENDPS xmm, m128, imm8
, 1 // BLENDPS xmm, xmm, imm8

, 999 // BLENDVPD xmm, m128, <XMM1>
, 2 // BLENDVPD xmm, xmm, <XMM1>
, 999 // BLENDVPS xmm, m128, <XMM1>
, 2 // BLENDVPS xmm, xmm, <XMM1>

, 999 // BLSI r32, m32
, 1 // BLSI r32, r32
, 999 // BLSI r64, m64
, 1 // BLSI r64, r64
, 999 // BLSMSK r32, m32
, 1 // BLSMSK r32, r32
, 999 // BLSMSK r64, m64
, 1 // BLSMSK r64, r64
, 999 // BLSR r32, m32
, 1 // BLSR r32, r32
, 999 // BLSR r64, m64
, 1 // BLSR r64, r64

, 999 // BSF r32, m32
, 3 // BSF r32, r32
, 999 // BSF r64, m64
, 3 // BSF r64, r64
, 999 // BSR r16, m16
, 3 // BSR r16, r16
, 999 // BSR r32, m32
, 3 // BSR r32, r32
, 999 // BSR r64, m64
, 3 // BSR r64, r64

, 1 // BSWAP r32
, 2 // BSWAP r64

, 999 // BT m16, imm8
, 999 // BT m16, r16
, 999 // BT m32, imm8
, 999 // BT m32, r32
, 999 // BT m64, imm8
, 999 // BT m64, r64
, 1 // BT r16, imm8
, 1 // BT r16, r16
, 1 // BT r32, imm8
, 1 // BT r32, r32
, 1 // BT r64, imm8
, 1 // BT r64, r64
, 999 // BTC m16, imm8
, 999 // BTC m16, r16
, 999 // BTC m32, imm8
, 999 // BTC m32, r32
, 999 // BTC m64, imm8
, 999 // BTC m64, r64
, 1 // BTC r16, imm8
, 1 // BTC r16, r16
, 1 // BTC r32, imm8
, 1 // BTC r32, r32
, 1 // BTC r64, imm8
, 1 // BTC r64, r64
, 999 // BTR m16, imm8
, 999 // BTR m16, r16
, 999 // BTR m32, imm8
, 999 // BTR m32, r32
, 999 // BTR m64, imm8
, 999 // BTR m64, r64
, 1 // BTR r16, imm8
, 1 // BTR r16, r16
, 1 // BTR r32, imm8
, 1 // BTR r32, r32
, 1 // BTR r64, imm8
, 1 // BTR r64, r64
, 999 // BTS m16, imm8
, 999 // BTS m16, r16
, 999 // BTS m32, imm8
, 999 // BTS m32, r32
, 999 // BTS m64, imm8
, 999 // BTS m64, r64
, 1 // BTS r16, imm8
, 1 // BTS r16, r16
, 1 // BTS r32, imm8
, 1 // BTS r32, r32
, 1 // BTS r64, imm8
, 1 // BTS r64, r64

, 999 // BZHI r32, m32, r32
, 1 // BZHI r32, r32, r32
, 999 // BZHI r64, m64, r64
, 1 // BZHI r64, r64, r64

, 0 // CALL m16:16
, 0 // CALL m16:31
, 0 // CALL m16:64
, 0 // CALL m64
, 0 // CALL r64
, 0 // CALL rel31
, 0 // CALL label

, 1 // CBW
, 1 // CDQ
, 1 // CDQE

, 999 // CLC

, 999 // CLD

, 999 // CLFLUSH m8

, 999 // CLI

, 1 // CMC

, 999 // CMOVA r16, m16
, 2 // CMOVA r16, r16
, 999 // CMOVA r32, m32
, 2 // CMOVA r32, r32
, 999 // CMOVA r64, m64
, 2 // CMOVA r64, r64
, 999 // CMOVAE r16, m16
, 2 // CMOVAE r16, r16
, 999 // CMOVAE r32, m32
, 2 // CMOVAE r32, r32
, 999 // CMOVAE r64, m64
, 2 // CMOVAE r64, r64
, 999 // CMOVB r16, m16
, 2 // CMOVB r16, r16
, 999 // CMOVB r32, m32
, 2 // CMOVB r32, r32
, 999 // CMOVB r64, m64
, 2 // CMOVB r64, r64
, 999 // CMOVBE r16, m16
, 2 // CMOVBE r16, r16
, 999 // CMOVBE r32, m32
, 2 // CMOVBE r32, r32
, 999 // CMOVBE r64, m64
, 2 // CMOVBE r64, r64
, 999 // CMOVC r16, m16
, 2 // CMOVC r16, r16
, 999 // CMOVC r32, m32
, 2 // CMOVC r32, r32
, 999 // CMOVC r64, m64
, 2 // CMOVC r64, r64
, 999 // CMOVE r16, m16
, 2 // CMOVE r16, r16
, 999 // CMOVE r32, m32
, 2 // CMOVE r32, r32
, 999 // CMOVE r64, m64
, 2 // CMOVE r64, r64
, 999 // CMOVG r16, m16
, 2 // CMOVG r16, r16
, 999 // CMOVG r32, m32
, 2 // CMOVG r32, r32
, 999 // CMOVG r64, m64
, 2 // CMOVG r64, r64
, 999 // CMOVGE r16, m16
, 2 // CMOVGE r16, r16
, 999 // CMOVGE r32, m32
, 2 // CMOVGE r32, r32
, 999 // CMOVGE r64, m64
, 2 // CMOVGE r64, r64
, 999 // CMOVL r16, m16
, 2 // CMOVL r16, r16
, 999 // CMOVL r32, m32
, 2 // CMOVL r32, r32
, 999 // CMOVL r64, m64
, 2 // CMOVL r64, r64
, 999 // CMOVLE r16, m16
, 2 // CMOVLE r16, r16
, 999 // CMOVLE r32, m32
, 2 // CMOVLE r32, r32
, 999 // CMOVLE r64, m64
, 2 // CMOVLE r64, r64
, 999 // CMOVNA r16, m16
, 2 // CMOVNA r16, r16
, 999 // CMOVNA r32, m32
, 2 // CMOVNA r32, r32
, 999 // CMOVNA r64, m64
, 2 // CMOVNA r64, r64
, 999 // CMOVNAE r16, m16
, 2 // CMOVNAE r16, r16
, 999 // CMOVNAE r32, m32
, 2 // CMOVNAE r32, r32
, 999 // CMOVNAE r64, m64
, 2 // CMOVNAE r64, r64
, 999 // CMOVNB r16, m16
, 2 // CMOVNB r16, r16
, 999 // CMOVNB r32, m32
, 2 // CMOVNB r32, r32
, 999 // CMOVNB r64, m64
, 2 // CMOVNB r64, r64
, 999 // CMOVNBE r16, m16
, 2 // CMOVNBE r16, r16
, 999 // CMOVNBE r32, m32
, 2 // CMOVNBE r32, r32
, 999 // CMOVNBE r64, m64
, 2 // CMOVNBE r64, r64
, 999 // CMOVNC r16, m16
, 2 // CMOVNC r16, r16
, 999 // CMOVNC r32, m32
, 2 // CMOVNC r32, r32
, 999 // CMOVNC r64, m64
, 2 // CMOVNC r64, r64
, 999 // CMOVNE r16, m16
, 2 // CMOVNE r16, r16
, 999 // CMOVNE r32, m32
, 2 // CMOVNE r32, r32
, 999 // CMOVNE r64, m64
, 2 // CMOVNE r64, r64
, 999 // CMOVNG r16, m16
, 2 // CMOVNG r16, r16
, 999 // CMOVNG r32, m32
, 2 // CMOVNG r32, r32
, 999 // CMOVNG r64, m64
, 2 // CMOVNG r64, r64
, 999 // CMOVNGE r16, m16
, 2 // CMOVNGE r16, r16
, 999 // CMOVNGE r32, m32
, 2 // CMOVNGE r32, r32
, 999 // CMOVNGE r64, m64
, 2 // CMOVNGE r64, r64
, 999 // CMOVNL r16, m16
, 2 // CMOVNL r16, r16
, 999 // CMOVNL r32, m32
, 2 // CMOVNL r32, r32
, 999 // CMOVNL r64, m64
, 2 // CMOVNL r64, r64
, 999 // CMOVNLE r16, m16
, 2 // CMOVNLE r16, r16
, 999 // CMOVNLE r32, m32
, 2 // CMOVNLE r32, r32
, 999 // CMOVNLE r64, m64
, 2 // CMOVNLE r64, r64
, 999 // CMOVNO r16, m16
, 2 // CMOVNO r16, r16
, 999 // CMOVNO r32, m32
, 2 // CMOVNO r32, r32
, 999 // CMOVNO r64, m64
, 2 // CMOVNO r64, r64
, 999 // CMOVNP r16, m16
, 2 // CMOVNP r16, r16
, 999 // CMOVNP r32, m32
, 2 // CMOVNP r32, r32
, 999 // CMOVNP r64, m64
, 2 // CMOVNP r64, r64
, 999 // CMOVNS r16, m16
, 2 // CMOVNS r16, r16
, 999 // CMOVNS r32, m32
, 2 // CMOVNS r32, r32
, 999 // CMOVNS r64, m64
, 2 // CMOVNS r64, r64
, 999 // CMOVNZ r16, m16
, 2 // CMOVNZ r16, r16
, 999 // CMOVNZ r32, m32
, 2 // CMOVNZ r32, r32
, 999 // CMOVNZ r64, m64
, 2 // CMOVNZ r64, r64
, 999 // CMOVO r16, m16
, 2 // CMOVO r16, r16
, 999 // CMOVO r32, m32
, 2 // CMOVO r32, r32
, 999 // CMOVO r64, m64
, 2 // CMOVO r64, r64
, 999 // CMOVP r16, m16
, 2 // CMOVP r16, r16
, 999 // CMOVP r32, m32
, 2 // CMOVP r32, r32
, 999 // CMOVP r64, m64
, 2 // CMOVP r64, r64
, 999 // CMOVPE r16, m16
, 2 // CMOVPE r16, r16
, 999 // CMOVPE r32, m32
, 2 // CMOVPE r32, r32
, 999 // CMOVPE r64, m64
, 2 // CMOVPE r64, r64
, 999 // CMOVPO r16, m16
, 2 // CMOVPO r16, r16
, 999 // CMOVPO r32, m32
, 2 // CMOVPO r32, r32
, 999 // CMOVPO r64, m64
, 2 // CMOVPO r64, r64
, 999 // CMOVS r16, m16
, 2 // CMOVS r16, r16
, 999 // CMOVS r32, m32
, 2 // CMOVS r32, r32
, 999 // CMOVS r64, m64
, 2 // CMOVS r64, r64
, 999 // CMOVZ r16, m16
, 2 // CMOVZ r16, r16
, 999 // CMOVZ r32, m32
, 2 // CMOVZ r32, r32
, 999 // CMOVZ r64, m64
, 2 // CMOVZ r64, r64

, 1 // CMP AL, imm8
, 1 // CMP AX, imm16
, 1 // CMP EAX, imm32
, 1 // CMP m16, imm16
, 1 // CMP m16, imm8
, 1 // CMP m16, r16
, 1 // CMP m32, imm32
, 1 // CMP m32, imm8
, 1 // CMP m32, r32
, 1 // CMP m64, imm32
, 1 // CMP m64, imm8
, 1 // CMP m64, r64
, 1 // CMP m8, imm8
, 1 // CMP m8, rb
, 1 // CMP m8, rh
, 1 // CMP m8, rl
, 1 // CMP r16, imm16
, 1 // CMP r16, imm8
, 1 // CMP r16, m16
, 1 // CMP r16, r16
, 1 // CMP r32, imm32
, 1 // CMP r32, imm8
, 1 // CMP r32, m32
, 1 // CMP r32, r32
, 1 // CMP r64, imm32
, 1 // CMP r64, imm8
, 1 // CMP r64, m64
, 1 // CMP r64, r64
, 1 // CMP RAX, imm32
, 1 // CMP rb, imm8
, 1 // CMP rb, m8
, 1 // CMP rb, rb
, 1 // CMP rb, rl
, 1 // CMP rh, imm8
, 1 // CMP rh, m8
, 1 // CMP rh, rh
, 1 // CMP rh, rl
, 1 // CMP rl, imm8
, 1 // CMP rl, m8
, 1 // CMP rl, rb
, 1 // CMP rl, rh
, 1 // CMP rl, rl

, 999 // CMPPD xmm, m128, imm8
, 3 // CMPPD xmm, xmm, imm8
, 999 // CMPPS xmm, m128, imm8
, 3 // CMPPS xmm, xmm, imm8

, 999 // CMPS m16, m16
, 999 // CMPS m32, m32
, 999 // CMPS m64, m64
, 999 // CMPS m8, m8
, 999 // CMPSB
, 999 // CMPSD

, 999 // CMPSD xmm, m64, imm8
, 3 // CMPSD xmm, xmm, imm8

, 999 // CMPSQ

, 999 // CMPSS xmm, m32, imm8
, 3 // CMPSS xmm, xmm, imm8

, 999 // CMPSW

, 999 // CMPXCHG m16, r16
, 999 // CMPXCHG m32, r32
, 999 // CMPXCHG m64, r64
, 999 // CMPXCHG m8, rb
, 999 // CMPXCHG m8, rh
, 999 // CMPXCHG m8, rl
, 999 // CMPXCHG r16, r16
, 999 // CMPXCHG r32, r32
, 999 // CMPXCHG r64, r64
, 999 // CMPXCHG rb, rb
, 999 // CMPXCHG rb, rl
, 999 // CMPXCHG rh, rh
, 999 // CMPXCHG rh, rl
, 999 // CMPXCHG rl, rb
, 999 // CMPXCHG rl, rh
, 999 // CMPXCHG rl, rl
, 999 // CMPXCHG16B m128
, 999 // CMPXCHG8B m64

, 999 // COMISD xmm, m64
, 999 // COMISD xmm, xmm
, 999 // COMISS xmm, m32
, 999 // COMISS xmm, xmm

, 250 // CPUID

, 1 // CQO

, 999 // CRC32 r32, m16
, 999 // CRC32 r32, m32
, 999 // CRC32 r32, m8
, 3 // CRC32 r32, r16
, 3 // CRC32 r32, r32
, 3 // CRC32 r32, rb
, 3 // CRC32 r32, rh
, 3 // CRC32 r32, rl
, 999 // CRC32 r64, m64
, 999 // CRC32 r64, m8
, 3 // CRC32 r64, r64
, 3 // CRC32 r64, rh
, 3 // CRC32 r64, rl

, 999 // CVTDQ2PD xmm, m64
, 4 // CVTDQ2PD xmm, xmm
, 999 // CVTDQ2PS xmm, m128
, 3 // CVTDQ2PS xmm, xmm
, 999 // CVTPD2DQ xmm, m128
, 4 // CVTPD2DQ xmm, xmm
, 999 // CVTPD2PI mm, m128
, 4 // CVTPD2PI mm, xmm
, 999 // CVTPD2PS xmm, m128
, 4 // CVTPD2PS xmm, xmm
, 999 // CVTPI2PD xmm, m64
, 4 // CVTPI2PD xmm, mm
, 999 // CVTPI2PS xmm, m64
, 4 // CVTPI2PS xmm, mm
, 999 // CVTPS2DQ xmm, m128
, 3 // CVTPS2DQ xmm, xmm
, 999 // CVTPS2PD xmm, m64
, 2 // CVTPS2PD xmm, xmm
, 999 // CVTPS2PI mm, m64
, 4 // CVTPS2PI mm, xmm
, 999 // CVTSD2SI r32, m64
, 4 // CVTSD2SI r32, xmm
, 999 // CVTSD2SI r64, m64
, 4 // CVTSD2SI r64, xmm
, 999 // CVTSD2SS xmm, m64
, 4 // CVTSD2SS xmm, xmm
, 999 // CVTSI2SD xmm, m32
, 4 // CVTSI2SD xmm, m64
, 999 // CVTSI2SD xmm, r32
, 4 // CVTSI2SD xmm, r64
, 999 // CVTSI2SS xmm, m32
, 4 // CVTSI2SS xmm, m64
, 999 // CVTSI2SS xmm, r32
, 4 // CVTSI2SS xmm, r64
, 999 // CVTSS2SD xmm, m32
, 2 // CVTSS2SD xmm, xmm
, 999 // CVTSS2SI r32, m32
, 4 // CVTSS2SI r32, xmm
, 999 // CVTSS2SI r64, m32
, 4 // CVTSS2SI r64, xmm
, 999 // CVTTPD2DQ xmm, m128
, 4 // CVTTPD2DQ xmm, xmm
, 999 // CVTTPD2PI mm, m128
, 4 // CVTTPD2PI mm, xmm
, 999 // CVTTPS2DQ xmm, m128
, 3 // CVTTPS2DQ xmm, xmm
, 999 // CVTTPS2PI mm, m64
, 4 // CVTTPS2PI mm, xmm
, 999 // CVTTSD2SI r32, m64
, 4 // CVTTSD2SI r32, xmm
, 999 // CVTTSD2SI r64, m64
, 4 // CVTTSD2SI r64, xmm
, 999 // CVTTSS2SI r32, m32
, 4 // CVTTSS2SI r32, xmm
, 999 // CVTTSS2SI r64, m32
, 4 // CVTTSS2SI r64, xmm

, 1 // CWD
, 1 // CWDE

, 6 // DEC m16
, 6 // DEC m32
, 6 // DEC m64
, 6 // DEC m8
, 1 // DEC r16
, 1 // DEC r32
, 1 // DEC r64
, 1 // DEC rb
, 1 // DEC rh
, 1 // DEC rl

, 999 // DIV m16
, 999 // DIV m32
, 999 // DIV m64
, 999 // DIV m8
, 26 // DIV r16
, 29 // DIV r32
, 96 // DIV r64
, 25 // DIV rb
, 25 // DIV rh
, 25 // DIV rl

, 999 // DIVPD xmm, m128
, 20 // DIVPD xmm, xmm
, 999 // DIVPS xmm, m128
, 13 // DIVPS xmm, xmm
, 999 // DIVSD xmm, m64
, 20 // DIVSD xmm, xmm
, 999 // DIVSS xmm, m32
, 13 // DIVSS xmm, xmm

, 999 // DPPD xmm, m128, imm8
, 9 // DPPD xmm, xmm, imm8
, 999 // DPPS xmm, m128, imm8
, 9 // DPPS xmm, xmm, imm8

, 999 // EMMS

, 0 // ENTER imm8, imm16
, 0 // ENTER 1, imm16
, 0 // ENTER 1, imm16

, 999 // EXTRACTPS m32, xmm, imm8
, 4 // EXTRACTPS r32, xmm, imm8
, 4 // EXTRACTPS r64, xmm, imm8

, 68 // F2XM1

, 1 // FABS

, 999 // FADD m32fp
, 999 // FADD m64fp
, 3 // FADD ST(i), ST
, 3 // FADD ST, ST(i)
, 3 // FADDP
, 3 // FADDP ST(i), ST

, 47 // FBLD m81bcd

, 999 // FBSTP m81bcd

, 1 // FCHS

, 1 // FCLEX

, 2 // FCMOVB ST, ST(i)
, 2 // FCMOVBE ST, ST(i)
, 2 // FCMOVE ST, ST(i)
, 2 // FCMOVNB ST, ST(i)
, 2 // FCMOVNBE ST, ST(i)
, 2 // FCMOVNE ST, ST(i)
, 2 // FCMOVNU ST, ST(i)
, 2 // FCMOVU ST, ST(i)

, 999 // FCOM
, 999 // FCOM m32fp
, 999 // FCOM m64fp
, 999 // FCOM ST(i)
, 999 // FCOMI ST, ST(i)
, 999 // FCOMIP ST, ST(i)
, 999 // FCOMP
, 999 // FCOMP m32fp
, 999 // FCOMP m64fp
, 999 // FCOMP ST(i)
, 999 // FCOMPP

, 112 // FCOS

, 0 // FDECSTP // NOT A BUG... he says zero

, 999 // FDIV m32fp
, 999 // FDIV m64fp
, 24 // FDIV ST(i), ST
, 24 // FDIV ST, ST(i)
, 24 // FDIVP
, 24 // FDIVP ST(i), ST
, 999 // FDIVR m32fp
, 999 // FDIVR m64fp
, 24 // FDIVR ST(i), ST
, 24 // FDIVR ST, ST(i)
, 24 // FDIVRP
, 24 // FDIVRP ST(i), ST

, 999 // FFREE ST(i)

, 999 // FIADD m16int
, 999 // FIADD m32int

, 999 // FICOM m16int
, 999 // FICOM m32int
, 999 // FICOMP m16int
, 999 // FICOMP m32int

, 999 // FIDIV m16int
, 999 // FIDIV m32int
, 999 // FIDIVR m16int
, 999 // FIDIVR m32int

, 6 // FILD m16int
, 6 // FILD m32int
, 6 // FILD m64int

, 999 // FIMUL m16int
, 999 // FIMUL m32int

, 0 // FINCSTP // NOT A BUG... he says zero
, 1 // FINIT

, 7 // FIST m16int
, 7 // FIST m32int
, 7 // FISTP m16int
, 7 // FISTP m32int
, 7 // FISTP m64int

, 7 // FISTTP m16int
, 7 // FISTTP m32int
, 7 // FISTTP m64int

, 999 // FISUB m16int
, 999 // FISUB m32int
, 999 // FISUBR m16int
, 999 // FISUBR m32int

, 3 // FLD m32fp
, 3 // FLD m64fp
, 4 // FLD m81fp
, 1 // FLD ST(i)

, 999 // FLD1

, 7 // FLDCW m1byte

, 1 // FLDENV m18byte

, 999 // FLDL1E
, 999 // FLDL1T
, 999 // FLDLG1
, 999 // FLDLN1
, 999 // FLDPI

, 999 // FLDZ

, 999 // FMUL m32fp
, 999 // FMUL m64fp
, 5 // FMUL ST(i), ST
, 5 // FMUL ST, ST(i)
, 5 // FMULP
, 5 // FMULP ST(i), ST

, 999 // FNCLEX
, 999 // FNINIT
, 999 // FNOP

, 999 // FNSAVE m128byte

, 999 // FNSTCW m1byte

, 1 // FNSTENV m18byte

, 6 // FNSTSW AX
, 999 // FNSTSW m1byte

, 156 // FPATAN

, 19 // FPREM
, 27 // FPREM1

, 130 // FPTAN

, 11 // FRNDINT

, 999 // FRSTOR m128byte

, 1 // FSAVE m128byte

, 125 // FSCALE

, 106 // FSIN

, 123 // FSINCOS

, 23 // FSQRT

, 4 // FST m32fp
, 4 // FST m64fp
, 1 // FST ST(i)

, 1 // FSTCW m1byte
, 1 // FSTENV m18byte

, 4 // FSTP m32fp
, 4 // FSTP m64fp
, 1 // FSTP m81fp
, 1 // FSTP ST(i)

, 1 // FSTSW AX
, 1 // FSTSW m1byte

, 999 // FSUB m32fp
, 999 // FSUB m64fp
, 3 // FSUB ST(i), ST
, 3 // FSUB ST, ST(i)
, 3 // FSUBP
, 3 // FSUBP ST(i), ST
, 999 // FSUBR m32fp
, 999 // FSUBR m64fp
, 3 // FSUBR ST(i), ST
, 3 // FSUBR ST, ST(i)
, 3 // FSUBRP
, 3 // FSUBRP ST(i), ST

, 999 // FTST

, 999 // FUCOM
, 999 // FUCOM ST(i)
, 999 // FUCOMI ST, ST(i)
, 999 // FUCOMIP ST, ST(i)
, 999 // FUCOMP
, 999 // FUCOMP ST(i)
, 999 // FUCOMPP

, 999 // FWAIT

, 999 // FXAM

, 0 // FXCH       // NOT A BUG... he says zero
, 0 // FXCH ST(i) // NOT A BUG... he says zero

, 1 // FXRSTOR m511byte
, 1 // FXRSTOR64 m511byte
, 1 // FXSAVE m511byte
, 1 // FXSAVE64 m511byte

, 15 // FXTRACT

, 680 // FYL2X
, 360 // FYL2XP1

, 999 // HADDPD xmm, m128
, 5 // HADDPD xmm, xmm
, 999 // HADDPS xmm, m128
, 5 // HADDPS xmm, xmm
, 999 // HSUBPD xmm, m128
, 5 // HSUBPD xmm, xmm
, 999 // HSUBPS xmm, m128
, 5 // HSUBPS xmm, xmm

, 999 // IDIV m16
, 999 // IDIV m32
, 999 // IDIV m64
, 999 // IDIV m8
, 26 // IDIV r16
, 291 // IDIV r32
, 103 // IDIV r64
, 26 // IDIV rb
, 26 // IDIV rh
, 26 // IDIV rl

, 999 // IMUL m16
, 999 // IMUL m32
, 999 // IMUL m64
, 999 // IMUL m8
, 3 // IMUL r16
, 999 // IMUL r16, m16
, 999 // IMUL r16, m16, imm16
, 999 // IMUL r16, m16, imm8
, 3 // IMUL r16, r16
, 4 // IMUL r16, r16, imm16
, 4 // IMUL r16, r16, imm8
, 3 // IMUL r32
, 999 // IMUL r32, m32
, 999 // IMUL r32, m32, imm32
, 999 // IMUL r32, m32, imm8
, 3 // IMUL r32, r32
, 3 // IMUL r32, r32, imm32
, 3 // IMUL r32, r32, imm8
, 3 // IMUL r64
, 999 // IMUL r64, m64
, 999 // IMUL r64, m64, imm32
, 999 // IMUL r64, m64, imm8
, 3 // IMUL r64, r64
, 3 // IMUL r64, r64, imm32
, 3 // IMUL r64, r64, imm8
, 3 // IMUL rb
, 3 // IMUL rh
, 3 // IMUL rl

, 999 // IN AL, DX
, 999 // IN AL, imm8
, 999 // IN AX, DX
, 999 // IN AX, imm8
, 999 // IN EAX, DX
, 999 // IN EAX, imm8

, 6 // INC m16
, 6 // INC m32
, 6 // INC m64
, 6 // INC m8
, 1 // INC r16
, 1 // INC r32
, 1 // INC r64
, 1 // INC rb
, 1 // INC rh
, 1 // INC rl

, 999 // INS m16, DX
, 999 // INS m32, DX
, 999 // INS m8, DX
, 999 // INSB
, 999 // INSD

, 4 // INSERTPS xmm, m32, imm8
, 1 // INSERTPS xmm, xmm, imm8

, 999 // INSW

, 0 // INT imm8
, 0 // INT 3

, 999 // INVPCID r64, m128

, 0 // IRET
, 0 // IRETD
, 0 // IRETQ

, 0 // JA rel31
, 0 // JA label
, 0 // JA rel31, hint
, 0 // JA label, hint
, 0 // JA rel8
, 0 // JA rel8, hint
, 0 // JAE rel31
, 0 // JAE label
, 0 // JAE rel31, hint
, 0 // JAE label, hint
, 0 // JAE rel8
, 0 // JAE rel8, hint
, 0 // JB rel31
, 0 // JB label
, 0 // JB rel31, hint
, 0 // JB label, hint
, 0 // JB rel8
, 0 // JB rel8, hint
, 0 // JBE rel31
, 0 // JBE label
, 0 // JBE rel31, hint
, 0 // JBE label, hint
, 0 // JBE rel8
, 0 // JBE rel8, hint
, 0 // JC rel31
, 0 // JC label
, 0 // JC rel31, hint
, 0 // JC label, hint
, 0 // JC rel8
, 0 // JC rel8, hint
, 0 // JE rel31
, 0 // JE label
, 0 // JE rel31, hint
, 0 // JE label, hint
, 0 // JE rel8
, 0 // JE rel8, hint
, 0 // JECXZ rel8
, 0 // JECXZ rel8, hint
, 0 // JG rel31
, 0 // JG label
, 0 // JG rel31, hint
, 0 // JG label, hint
, 0 // JG rel8
, 0 // JG rel8, hint
, 0 // JGE rel31
, 0 // JGE label
, 0 // JGE rel31, hint
, 0 // JGE label, hint
, 0 // JGE rel8
, 0 // JGE rel8, hint
, 0 // JL rel31
, 0 // JL label
, 0 // JL rel31, hint
, 0 // JL label, hint
, 0 // JL rel8
, 0 // JL rel8, hint
, 0 // JLE rel31
, 0 // JLE label
, 0 // JLE rel31, hint
, 0 // JLE label, hint
, 0 // JLE rel8
, 0 // JLE rel8, hint
, 0 // JMP m16:16
, 0 // JMP m16:31
, 0 // JMP m16:64
, 0 // JMP m64
, 0 // JMP r64
, 0 // JMP rel31
, 0 // JMP label
, 0 // JMP rel8
, 0 // JNA rel31
, 0 // JNA label
, 0 // JNA rel31, hint
, 0 // JNA label, hint
, 0 // JNA rel8
, 0 // JNA rel8, hint
, 0 // JNAE rel31
, 0 // JNAE label
, 0 // JNAE rel31, hint
, 0 // JNAE label, hint
, 0 // JNAE rel8
, 0 // JNAE rel8, hint
, 0 // JNB rel31
, 0 // JNB label
, 0 // JNB rel31, hint
, 0 // JNB label, hint
, 0 // JNB rel8
, 0 // JNB rel8, hint
, 0 // JNBE rel31
, 0 // JNBE label
, 0 // JNBE rel31, hint
, 0 // JNBE label, hint
, 0 // JNBE rel8
, 0 // JNBE rel8, hint
, 0 // JNC rel31
, 0 // JNC label
, 0 // JNC rel31, hint
, 0 // JNC label, hint
, 0 // JNC rel8
, 0 // JNC rel8, hint
, 0 // JNE rel31
, 0 // JNE label
, 0 // JNE rel31, hint
, 0 // JNE label, hint
, 0 // JNE rel8
, 0 // JNE rel8, hint
, 0 // JNG rel31
, 0 // JNG label
, 0 // JNG rel31, hint
, 0 // JNG label, hint
, 0 // JNG rel8
, 0 // JNG rel8, hint
, 0 // JNGE rel31
, 0 // JNGE label
, 0 // JNGE rel31, hint
, 0 // JNGE label, hint
, 0 // JNGE rel8
, 0 // JNGE rel8, hint
, 0 // JNL rel31
, 0 // JNL label
, 0 // JNL rel31, hint
, 0 // JNL label, hint
, 0 // JNL rel8
, 0 // JNL rel8, hint
, 0 // JNLE rel31
, 0 // JNLE label
, 0 // JNLE rel31, hint
, 0 // JNLE label, hint
, 0 // JNLE rel8
, 0 // JNLE rel8, hint
, 0 // JNO rel31
, 0 // JNO label
, 0 // JNO rel31, hint
, 0 // JNO label, hint
, 0 // JNO rel8
, 0 // JNO rel8, hint
, 0 // JNP rel31
, 0 // JNP label
, 0 // JNP rel31, hint
, 0 // JNP label, hint
, 0 // JNP rel8
, 0 // JNP rel8, hint
, 0 // JNS rel31
, 0 // JNS label
, 0 // JNS rel31, hint
, 0 // JNS label, hint
, 0 // JNS rel8
, 0 // JNS rel8, hint
, 0 // JNZ rel31
, 0 // JNZ label
, 0 // JNZ rel31, hint
, 0 // JNZ label, hint
, 0 // JNZ rel8
, 0 // JNZ rel8, hint
, 0 // JO rel31
, 0 // JO label
, 0 // JO rel31, hint
, 0 // JO label, hint
, 0 // JO rel8
, 0 // JO rel8, hint
, 0 // JP rel31
, 0 // JP label
, 0 // JP rel31, hint
, 0 // JP label, hint
, 0 // JP rel8
, 0 // JP rel8, hint
, 0 // JPE rel31
, 0 // JPE label
, 0 // JPE rel31, hint
, 0 // JPE label, hint
, 0 // JPE rel8
, 0 // JPE rel8, hint
, 0 // JPO rel31
, 0 // JPO label
, 0 // JPO rel31, hint
, 0 // JPO label, hint
, 0 // JPO rel8
, 0 // JPO rel8, hint
, 0 // JRCXZ rel8
, 0 // JRCXZ rel8, hint
, 0 // JS rel31
, 0 // JS label
, 0 // JS rel31, hint
, 0 // JS label, hint
, 0 // JS rel8
, 0 // JS rel8, hint
, 0 // JZ rel31
, 0 // JZ label
, 0 // JZ rel31, hint
, 0 // JZ label, hint
, 0 // JZ rel8
, 0 // JZ rel8, hint

, 1 // LAHF

, 999 // LAR r16, m16
, 999 // LAR r16, r16
, 999 // LAR r32, m16
, 999 // LAR r32, r32
, 999 // LAR r64, m16
, 999 // LAR r64, r32

, 3 // LDDQU xmm, m16
, 3 // LDDQU xmm, m32
, 3 // LDDQU xmm, m64

, 6 // LDMXCSR m32

, 4 // LEA r16, m16
, 4 // LEA r16, m32
, 4 // LEA r16, m64
, 2 // LEA r32, m16
, 2 // LEA r32, m32
, 2 // LEA r32, m64
, 2 // LEA r64, m16
, 2 // LEA r64, m32
, 2 // LEA r64, m64

, 0 // LEAVE
, 0 // LEAVE p66

, 1 // LFENCE

, 999 // LFS r16, m16:16
, 999 // LFS r32, m16:31
, 999 // LFS r64, m16:64
, 999 // LGS r16, m16:16
, 999 // LGS r32, m16:31
, 999 // LGS r64, m16:64

, 999 // LOCK

, 999 // LODS m16
, 999 // LODS m32
, 999 // LODS m64
, 999 // LODS m8
, 999 // LODSB
, 999 // LODSD
, 999 // LODSQ
, 999 // LODSW

, 999 // LOOP rel8
, 999 // LOOPE rel8
, 999 // LOOPNE rel8

, 999 // LSL r16, m16
, 999 // LSL r16, r16
, 999 // LSL r32, m16
, 999 // LSL r32, r32
, 999 // LSL r64, m16
, 999 // LSL r64, r32
, 999 // LSS r16, m16:16
, 999 // LSS r32, m16:31
, 999 // LSS r64, m16:64

, 999 // LZCNT r16, m16
, 3 // LZCNT r16, r16
, 999 // LZCNT r32, m32
, 3 // LZCNT r32, r32
, 999 // LZCNT r64, m64
, 3 // LZCNT r64, r64

, 438 // MASKMOVDQU xmm, xmm
, 413 // MASKMOVQ mm, mm

, 999 // MAXPD xmm, m128
, 3 // MAXPD xmm, xmm
, 999 // MAXPS xmm, m128
, 3 // MAXPS xmm, xmm
, 999 // MAXSD xmm, m64
, 3 // MAXSD xmm, xmm
, 999 // MAXSS xmm, m32
, 3 // MAXSS xmm, xmm

, 999 // MFENCE

, 999 // MINPD xmm, m128
, 3 // MINPD xmm, xmm
, 999 // MINPS xmm, m128
, 3 // MINPS xmm, xmm
, 999 // MINSD xmm, m64
, 3 // MINSD xmm, xmm
, 999 // MINSS xmm, m32
, 3 // MINSS xmm, xmm

, 999 // MONITOR

, 999 // MOV AL, moffs8
, 999 // MOV AL, moffs8, pw
, 999 // MOV AX, moffs16
, 999 // MOV EAX, moffs31
, 999 // MOV m16, imm16
, 3 // MOV m16, r16
, 3 // MOV m16, Sreg
, 999 // MOV m32, imm32
, 3 // MOV m32, r32
, 999 // MOV m64, imm32
, 3 // MOV m64, r64
, 3 // MOV m64, Sreg
, 999 // MOV m8, imm8
, 3 // MOV m8, rb
, 3 // MOV m8, rh
, 3 // MOV m8, rl
, 3 // MOV moffs16, AX
, 3 // MOV moffs31, EAX
, 3 // MOV moffs64, RAX
, 3 // MOV moffs8, AL
, 3 // MOV moffs8, AL, pw
, 1 // MOV r16, imm16
, 999 // MOV r16, m16
, 1 // MOV r16, r16
, 1 // MOV r16, Sreg
, 1 // MOV r32, imm32
, 2 // MOV r32, m32
, 1 // MOV r32, r32
, 1 // MOV r64, imm32
, 1 // MOV r64, imm64
, 2 // MOV r64, m64
, 1 // MOV r64, r64
, 1 // MOV r64, Sreg
, 2 // MOV RAX, moffs64
, 1 // MOV rb, imm8
, 999 // MOV rb, m8
, 1 // MOV rb, rb
, 1 // MOV rb, rl
, 1 // MOV rh, imm8
, 999 // MOV rh, m8
, 1 // MOV rh, rh
, 1 // MOV rh, rl
, 1 // MOV rl, imm8
, 999 // MOV rl, m8
, 1 // MOV rl, rb
, 1 // MOV rl, rh
, 1 // MOV rl, rl
, 999 // MOV Sreg, m16
, 999 // MOV Sreg, m64
, 1 // MOV Sreg, r16
, 1 // MOV Sreg, r64

, 1 // MOVAPD m128, xmm
, 1 // MOVAPD xmm, m128
, 1 // MOVAPD xmm, xmm
, 1 // MOVAPS m128, xmm
, 1 // MOVAPS xmm, m128
, 1 // MOVAPS xmm, xmm

, 999 // MOVBE m16, r16
, 999 // MOVBE m32, r32
, 999 // MOVBE m64, r64
, 999 // MOVBE r16, m16
, 999 // MOVBE r32, m32
, 999 // MOVBE r64, m64

, 3 // MOVD m32, mm
, 3 // MOVD m32, xmm
, 3 // MOVD mm, m32
, 1 // MOVD mm, r32
, 1 // MOVD r32, mm
, 1 // MOVD r32, xmm
, 3 // MOVD xmm, m32
, 1 // MOVD xmm, r32

, 3 // MOVDDUP xmm, m64
, 1 // MOVDDUP xmm, xmm

, 1 // MOVDQ2Q mm, xmm

, 3 // MOVDQA m128, xmm
, 3 // MOVDQA xmm, m128
, 1 // MOVDQA xmm, xmm
, 3 // MOVDQU m128, xmm
, 3 // MOVDQU xmm, m128
, 1 // MOVDQU xmm, xmm

, 1 // MOVHLPS xmm, xmm

, 3 // MOVHPD m64, xmm
, 4 // MOVHPD xmm, m64
, 3 // MOVHPS m64, xmm
, 4 // MOVHPS xmm, m64

, 1 // MOVLHPS xmm, xmm

, 3 // MOVLPD m64, xmm
, 4 // MOVLPD xmm, m64
, 3 // MOVLPS m64, xmm
, 4 // MOVLPS xmm, m64

, 3 // MOVMSKPD r32, xmm
, 3 // MOVMSKPD r64, xmm
, 3 // MOVMSKPS r32, xmm
, 3 // MOVMSKPS r64, xmm

, 400 // MOVNTDQ m128, xmm
, 400 // MOVNTDQ m156, ymm
, 400 // MOVNTDQA xmm, m128

, 400 // MOVNTI m32, r32
, 400 // MOVNTI m64, r64

, 400 // MOVNTPD m128, xmm
, 400 // MOVNTPS m128, xmm
, 400 // MOVNTQ m64, mm

, 3 // MOVQ m64, mm
, 3 // MOVQ m64, xmm
, 3 // MOVQ mm, m64
, 1 // MOVQ mm, mm
, 3 // MOVQ mm, r64
, 1 // MOVQ r64, mm
, 1 // MOVQ r64, xmm
, 3 // MOVQ xmm, m64
, 1 // MOVQ xmm, r64
, 1 // MOVQ xmm, xmm

, 1 // MOVQ2DQ xmm, mm

, 999 // MOVS m16, m16
, 999 // MOVS m32, m32
, 999 // MOVS m64, m64
, 999 // MOVS m8, m8
, 999 // MOVSB
, 999 // MOVSD

, 3 // MOVSD m64, xmm
, 3 // MOVSD xmm, m64
, 1 // MOVSD xmm, xmm

, 3 // MOVSHDUP xmm, m128
, 1 // MOVSHDUP xmm, xmm
, 3 // MOVSLDUP xmm, m128
, 1 // MOVSLDUP xmm, xmm

, 999 // MOVSQ

, 3 // MOVSS m32, xmm
, 3 // MOVSS xmm, m32
, 1 // MOVSS xmm, xmm

, 999 // MOVSW

, 999 // MOVSX r16, m8
, 1 // MOVSX r16, rb
, 1 // MOVSX r16, rh
, 1 // MOVSX r16, rl
, 999 // MOVSX r32, m16
, 999 // MOVSX r32, m8
, 1 // MOVSX r32, r16
, 1 // MOVSX r32, rb
, 1 // MOVSX r32, rh
, 1 // MOVSX r32, rl
, 999 // MOVSX r64, m16
, 999 // MOVSX r64, m8
, 1 // MOVSX r64, r16
, 1 // MOVSX r64, rh
, 1 // MOVSX r64, rl
, 999 // MOVSXD r64, m32
, 1 // MOVSXD r64, r32

, 3 // MOVUPD m128, xmm
, 3 // MOVUPD xmm, m128
, 3 // MOVUPD xmm, xmm
, 3 // MOVUPS m128, xmm
, 3 // MOVUPS xmm, m128
, 3 // MOVUPS xmm, xmm

, 999 // MOVZX r16, m8
, 1 // MOVZX r16, rb
, 1 // MOVZX r16, rh
, 1 // MOVZX r16, rl
, 999 // MOVZX r32, m16
, 999 // MOVZX r32, m8
, 1 // MOVZX r32, r16
, 1 // MOVZX r32, rb
, 1 // MOVZX r32, rh
, 1 // MOVZX r32, rl
, 999 // MOVZX r64, m16
, 999 // MOVZX r64, m8
, 1 // MOVZX r64, r16
, 1 // MOVZX r64, rh
, 1 // MOVZX r64, rl

, 999 // MPSADBW xmm, m128, imm8
, 6 // MPSADBW xmm, xmm, imm8

, 999 // MUL m16
, 999 // MUL m32
, 999 // MUL m64
, 999 // MUL m8
, 4 // MUL r16
, 4 // MUL r32
, 3 // MUL r64
, 3 // MUL rb
, 3 // MUL rh
, 3 // MUL rl

, 999 // MULPD xmm, m128
, 5 // MULPD xmm, xmm
, 999 // MULPS xmm, m128
, 5 // MULPS xmm, xmm
, 999 // MULSD xmm, m64
, 5 // MULSD xmm, xmm
, 999 // MULSS xmm, m32
, 5 // MULSS xmm, xmm

, 999 // MULX r32, r32, m32
, 4 // MULX r32, r32, r32
, 999 // MULX r64, r64, m64
, 4 // MULX r64, r64, r64

, 999 // MWAIT

, 6 // NEG m16
, 6 // NEG m32
, 6 // NEG m64
, 6 // NEG m8
, 1 // NEG r16
, 1 // NEG r32
, 1 // NEG r64
, 1 // NEG rb
, 1 // NEG rh
, 1 // NEG rl

, 999 // NOP
, 999 // NOP m16
, 999 // NOP m32
, 999 // NOP r16
, 999 // NOP r32

, 6 // NOT m16
, 6 // NOT m32
, 6 // NOT m64
, 6 // NOT m8
, 1 // NOT r16
, 1 // NOT r32
, 1 // NOT r64
, 1 // NOT rb
, 1 // NOT rh
, 1 // NOT rl

, 1 // OR AL, imm8
, 1 // OR AX, imm16
, 1 // OR EAX, imm32
, 6 // OR m16, imm16
, 6 // OR m16, imm8
, 6 // OR m16, r16
, 6 // OR m32, imm32
, 6 // OR m32, imm8
, 6 // OR m32, r32
, 6 // OR m64, imm32
, 6 // OR m64, imm8
, 6 // OR m64, r64
, 6 // OR m8, imm8
, 6 // OR m8, rb
, 6 // OR m8, rh
, 6 // OR m8, rl
, 1 // OR r16, imm16
, 1 // OR r16, imm8
, 999 // OR r16, m16
, 1 // OR r16, r16
, 1 // OR r32, imm32
, 1 // OR r32, imm8
, 999 // OR r32, m32
, 1 // OR r32, r32
, 1 // OR r64, imm32
, 1 // OR r64, imm8
, 999 // OR r64, m64
, 1 // OR r64, r64
, 1 // OR RAX, imm32
, 1 // OR rb, imm8
, 999 // OR rb, m8
, 1 // OR rb, rb
, 1 // OR rb, rl
, 1 // OR rh, imm8
, 999 // OR rh, m8
, 1 // OR rh, rh
, 1 // OR rh, rl
, 1 // OR rl, imm8
, 999 // OR rl, m8
, 1 // OR rl, rb
, 1 // OR rl, rh
, 1 // OR rl, rl

, 999 // ORPD xmm, m128
, 1 // ORPD xmm, xmm
, 999 // ORPS xmm, m128
, 1 // ORPS xmm, xmm

, 999 // OUT DX, AL
, 999 // OUT DX, AX
, 999 // OUT DX, EAX
, 999 // OUT imm8, AL
, 999 // OUT imm8, AX
, 999 // OUT imm8, EAX
, 999 // OUTS DX, m16
, 999 // OUTS DX, m32
, 999 // OUTS DX, m8
, 999 // OUTSB
, 999 // OUTSD
, 999 // OUTSW

, 999 // PABSB mm, m64
, 1 // PABSB mm, mm
, 999 // PABSB xmm, m128
, 1 // PABSB xmm, xmm
, 999 // PABSD mm, m64
, 1 // PABSD mm, mm
, 999 // PABSD xmm, m128
, 1 // PABSD xmm, xmm
, 999 // PABSW mm, m64
, 1 // PABSW mm, mm
, 999 // PABSW xmm, m128
, 1 // PABSW xmm, xmm

, 999 // PACKSSDW mm, m64
, 2 // PACKSSDW mm, mm
, 999 // PACKSSDW xmm, m128
, 1 // PACKSSDW xmm, xmm
, 2 // PACKSSWB mm, m64
, 2 // PACKSSWB mm, mm
, 999 // PACKSSWB xmm, m128
, 1 // PACKSSWB xmm, xmm
, 999 // PACKUSDW xmm, m128
, 1 // PACKUSDW xmm, xmm
, 999 // PACKUSWB mm, m64
, 2 // PACKUSWB mm, mm
, 999 // PACKUSWB xmm, m128
, 1 // PACKUSWB xmm, xmm

, 999 // PADDB mm, m64
, 1 // PADDB mm, mm
, 999 // PADDB xmm, m128
, 1 // PADDB xmm, xmm
, 999 // PADDD mm, m64
, 1 // PADDD mm, mm
, 999 // PADDD xmm, m128
, 1 // PADDD xmm, xmm
, 999 // PADDQ mm, m64
, 1 // PADDQ mm, mm
, 999 // PADDQ xmm, m128
, 1 // PADDQ xmm, xmm
, 999 // PADDSB mm, m64
, 1 // PADDSB mm, mm
, 999 // PADDSB xmm, m128
, 1 // PADDSB xmm, xmm
, 999 // PADDSW mm, m64
, 1 // PADDSW mm, mm
, 999 // PADDSW xmm, m128
, 1 // PADDSW xmm, xmm
, 999 // PADDUSB mm, m64
, 1 // PADDUSB mm, mm
, 999 // PADDUSB xmm, m128
, 1 // PADDUSB xmm, xmm
, 999 // PADDUSW mm, m64
, 1 // PADDUSW mm, mm
, 999 // PADDUSW xmm, m128
, 1 // PADDUSW xmm, xmm
, 999 // PADDW mm, m64
, 1 // PADDW mm, mm
, 999 // PADDW xmm, m128
, 1 // PADDW xmm, xmm

, 999 // PALIGNR mm, m64, imm8
, 1 // PALIGNR mm, mm, imm8
, 999 // PALIGNR xmm, m128, imm8
, 1 // PALIGNR xmm, xmm, imm8

, 999 // PAND mm, m64
, 1 // PAND mm, mm
, 999 // PAND xmm, m128
, 1 // PAND xmm, xmm
, 999 // PANDN mm, m64
, 1 // PANDN mm, mm
, 999 // PANDN xmm, m128
, 1 // PANDN xmm, xmm

, 999 // PAUSE

, 999 // PAVGB mm, m64
, 1 // PAVGB mm, mm
, 999 // PAVGB xmm, m128
, 1 // PAVGB xmm, xmm
, 999 // PAVGW mm, m64
, 1 // PAVGW mm, mm
, 999 // PAVGW xmm, m128
, 1 // PAVGW xmm, xmm

, 999 // PBLENDVB xmm, m128, <XMM1>
, 2 // PBLENDVB xmm, xmm, <XMM1>
, 999 // PBLENDW xmm, m128, imm8
, 2 // PBLENDW xmm, xmm, imm8

, 999 // PCLMULQDQ xmm, m128, imm8
, 7 // PCLMULQDQ xmm, xmm, imm8

, 999 // PCMPEQB mm, m64
, 1 // PCMPEQB mm, mm
, 999 // PCMPEQB xmm, m128
, 1 // PCMPEQB xmm, xmm
, 999 // PCMPEQD mm, m64
, 1 // PCMPEQD mm, mm
, 999 // PCMPEQD xmm, m128
, 1 // PCMPEQD xmm, xmm
, 999 // PCMPEQQ xmm, m128
, 1 // PCMPEQQ xmm, xmm
, 999 // PCMPEQW mm, m64
, 1 // PCMPEQW mm, mm
, 999 // PCMPEQW xmm, m128
, 1 // PCMPEQW xmm, xmm

, 999 // PCMPESTRI xmm, m128, imm8
, 11 // PCMPESTRI xmm, xmm, imm8
, 999 // PCMPESTRM xmm, m128, imm8
, 10 // PCMPESTRM xmm, xmm, imm8

, 999 // PCMPGTB mm, m64
, 1 // PCMPGTB mm, mm
, 999 // PCMPGTB xmm, m128
, 1 // PCMPGTB xmm, xmm
, 999 // PCMPGTD mm, m64
, 1 // PCMPGTD mm, mm
, 999 // PCMPGTD xmm, m128
, 1 // PCMPGTD xmm, xmm
, 999 // PCMPGTQ xmm, m128
, 5 // PCMPGTQ xmm, xmm
, 999 // PCMPGTW mm, m64
, 1 // PCMPGTW mm, mm
, 999 // PCMPGTW xmm, m128
, 1 // PCMPGTW xmm, xmm

, 999 // PCMPISTRI xmm, m128, imm8
, 11 // PCMPISTRI xmm, xmm, imm8
, 999 // PCMPISTRM xmm, m128, imm8
, 10 // PCMPISTRM xmm, xmm, imm8

, 999 // PDEP r32, r32, m32
, 3 // PDEP r32, r32, r32
, 999 // PDEP r64, r64, m64
, 3 // PDEP r64, r64, r64

, 999 // PEXT r32, r32, m32
, 3 // PEXT r32, r32, r32
, 999 // PEXT r64, r64, m64
, 3 // PEXT r64, r64, r64

, 999 // PEXTRB m8, xmm, imm8
, 2 // PEXTRB r32, xmm, imm8
, 2 // PEXTRB r64, xmm, imm8
, 999 // PEXTRD m32, xmm, imm8
, 2 // PEXTRD r32, xmm, imm8
, 999 // PEXTRQ m64, xmm, imm8
, 2 // PEXTRQ r64, xmm, imm8
, 999 // PEXTRW m16, xmm, imm8
, 2 // PEXTRW r32, mm, imm8
, 2 // PEXTRW r32, xmm, imm8
, 2 // PEXTRW r64, mm, imm8
, 2 // PEXTRW r64, xmm, imm8

, 999 // PHADDD mm, m64
, 3 // PHADDD mm, mm
, 999 // PHADDD xmm, m128
, 3 // PHADDD xmm, xmm
, 999 // PHADDSW mm, m64
, 3 // PHADDSW mm, mm
, 999 // PHADDSW xmm, m128
, 3 // PHADDSW xmm, xmm
, 999 // PHADDW mm, m64
, 3 // PHADDW mm, mm
, 999 // PHADDW xmm, m128
, 3 // PHADDW xmm, xmm

, 999 // PHMINPOSUW xmm, m128
, 5 // PHMINPOSUW xmm, xmm

, 999 // PHSUBD mm, m64
, 3 // PHSUBD mm, mm
, 999 // PHSUBD xmm, m128
, 3 // PHSUBD xmm, xmm
, 999 // PHSUBSW mm, m64
, 3 // PHSUBSW mm, mm
, 999 // PHSUBSW xmm, m128
, 3 // PHSUBSW xmm, xmm
, 999 // PHSUBW mm, m64
, 3 // PHSUBW mm, mm
, 999 // PHSUBW xmm, m128
, 3 // PHSUBW xmm, xmm

, 999 // PINSRB xmm, m8, imm8
, 2 // PINSRB xmm, r32, imm8
, 999 // PINSRD xmm, m32, imm8
, 2 // PINSRD xmm, r32, imm8
, 999 // PINSRW mm, m16, imm8
, 2 // PINSRW mm, r32, imm8
, 999 // PINSRW xmm, m16, imm8
, 2 // PINSRW xmm, r32, imm8

, 999 // PMADDUBSW mm, m64
, 5 // PMADDUBSW mm, mm
, 999 // PMADDUBSW xmm, m128
, 5 // PMADDUBSW xmm, xmm

, 999 // PMADDWD mm, m64
, 5 // PMADDWD mm, mm
, 999 // PMADDWD xmm, m128
, 5 // PMADDWD xmm, xmm

, 999 // PMAXSB xmm, m128
, 1 // PMAXSB xmm, xmm
, 999 // PMAXSD xmm, m128
, 1 // PMAXSD xmm, xmm
, 999 // PMAXSW mm, m64
, 1 // PMAXSW mm, mm
, 999 // PMAXSW xmm, m128
, 1 // PMAXSW xmm, xmm
, 999 // PMAXUB mm, m64
, 1 // PMAXUB mm, mm
, 999 // PMAXUB xmm, m128
, 1 // PMAXUB xmm, xmm
, 999 // PMAXUD xmm, m128
, 1 // PMAXUD xmm, xmm
, 999 // PMAXUW xmm, m128
, 1 // PMAXUW xmm, xmm
, 999 // PMINSB xmm, m128
, 1 // PMINSB xmm, xmm
, 999 // PMINSD xmm, m128
, 1 // PMINSD xmm, xmm
, 999 // PMINSW mm, m64
, 1 // PMINSW mm, mm
, 999 // PMINSW xmm, m128
, 1 // PMINSW xmm, xmm
, 999 // PMINUB mm, m64
, 1 // PMINUB mm, mm
, 999 // PMINUB xmm, m128
, 1 // PMINUB xmm, xmm
, 999 // PMINUD xmm, m128
, 1 // PMINUD xmm, xmm
, 999 // PMINUW xmm, m128
, 1 // PMINUW xmm, xmm

, 3 // PMOVMSKB r32, mm
, 3 // PMOVMSKB r32, xmm
, 3 // PMOVMSKB r64, mm
, 3 // PMOVMSKB r64, xmm

, 999 // PMOVSXBD xmm, m32
, 1 // PMOVSXBD xmm, xmm
, 999 // PMOVSXBQ xmm, m16
, 1 // PMOVSXBQ xmm, xmm
, 999 // PMOVSXBW xmm, m64
, 1 // PMOVSXBW xmm, xmm
, 999 // PMOVSXDQ xmm, m64
, 1 // PMOVSXDQ xmm, xmm
, 999 // PMOVSXWD xmm, m64
, 1 // PMOVSXWD xmm, xmm
, 999 // PMOVSXWQ xmm, m32
, 1 // PMOVSXWQ xmm, xmm
, 999 // PMOVZXBD xmm, m32
, 1 // PMOVZXBD xmm, xmm
, 999 // PMOVZXBQ xmm, m16
, 1 // PMOVZXBQ xmm, xmm
, 999 // PMOVZXBW xmm, m64
, 1 // PMOVZXBW xmm, xmm
, 999 // PMOVZXDQ xmm, m64
, 1 // PMOVZXDQ xmm, xmm
, 999 // PMOVZXWD xmm, m64
, 1 // PMOVZXWD xmm, xmm
, 999 // PMOVZXWQ xmm, m32
, 1 // PMOVZXWQ xmm, xmm

, 999 // PMULDQ xmm, m128
, 5 // PMULDQ xmm, xmm

, 999 // PMULHRSW mm, m64
, 5 // PMULHRSW mm, mm
, 999 // PMULHRSW xmm, m128
, 5 // PMULHRSW xmm, xmm

, 999 // PMULHUW mm, m64
, 5 // PMULHUW mm, mm
, 999 // PMULHUW xmm, m128
, 5 // PMULHUW xmm, xmm

, 999 // PMULHW mm, m64
, 5 // PMULHW mm, mm
, 999 // PMULHW xmm, m128
, 5 // PMULHW xmm, xmm

, 999 // PMULLD xmm, m128
, 10 // PMULLD xmm, xmm

, 999 // PMULLW mm, m64
, 5 // PMULLW mm, mm
, 999 // PMULLW xmm, m128
, 5 // PMULLW xmm, xmm

, 999 // PMULUDQ mm, m64
, 5 // PMULUDQ mm, mm
, 999 // PMULUDQ xmm, m128
, 5 // PMULUDQ xmm, xmm

, 2 // POP FS
, 2 // POP FS, p66
, 2 // POP GS
, 2 // POP GS, p66
, 999 // POP m16
, 999 // POP m64
, 2 // POP r16
, 2 // POP r64

, 999 // POPCNT r16, m16
, 3 // POPCNT r16, r16
, 999 // POPCNT r32, m32
, 3 // POPCNT r32, r32
, 999 // POPCNT r64, m64
, 3 // POPCNT r64, r64

, 999 // POPF
, 999 // POPFQ

, 999 // POR mm, m64
, 1 // POR mm, mm
, 999 // POR xmm, m128
, 1 // POR xmm, xmm

, 999 // PREFETCHNTA m8
, 999 // PREFETCHT1 m8
, 999 // PREFETCHT1 m8
, 999 // PREFETCHT1 m8

, 999 // PSADBW mm, m64
, 5 // PSADBW mm, mm
, 999 // PSADBW xmm, m128
, 5 // PSADBW xmm, xmm

, 999 // PSHUFB mm, m64
, 1 // PSHUFB mm, mm
, 999 // PSHUFB xmm, m128
, 1 // PSHUFB xmm, xmm
, 999 // PSHUFD xmm, m128, imm8
, 1 // PSHUFD xmm, xmm, imm8
, 999 // PSHUFHW xmm, m128, imm8
, 1 // PSHUFHW xmm, xmm, imm8
, 999 // PSHUFLW xmm, m128, imm8
, 1 // PSHUFLW xmm, xmm, imm8
, 999 // PSHUFW mm, m64, imm8
, 1 // PSHUFW mm, mm, imm8

, 999 // PSIGNB mm, m64
, 1 // PSIGNB mm, mm
, 999 // PSIGNB xmm, m128
, 1 // PSIGNB xmm, xmm
, 999 // PSIGND mm, m64
, 1 // PSIGND mm, mm
, 999 // PSIGND xmm, m128
, 1 // PSIGND xmm, xmm
, 999 // PSIGNW mm, m64
, 1 // PSIGNW mm, mm
, 999 // PSIGNW xmm, m128
, 1 // PSIGNW xmm, xmm

, 1 // PSLLD mm, imm8
, 999 // PSLLD mm, m64
, 1 // PSLLD mm, mm
, 1 // PSLLD xmm, imm8
, 999 // PSLLD xmm, m128
, 2 // PSLLD xmm, xmm
, 1 // PSLLDQ xmm, imm8
, 1 // PSLLQ mm, imm8
, 999 // PSLLQ mm, m64
, 1 // PSLLQ mm, mm
, 1 // PSLLQ xmm, imm8
, 999 // PSLLQ xmm, m128
, 2 // PSLLQ xmm, xmm
, 999 // PSLLW mm, m64
, 1 // PSLLW mm, mm
, 1 // PSLLW xmm, imm8
, 999 // PSLLW xmm, m128
, 2 // PSLLW xmm, xmm

, 1 // PSRAD mm, imm8
, 999 // PSRAD mm, m64
, 1 // PSRAD mm, mm
, 1 // PSRAD xmm, imm8
, 999 // PSRAD xmm, m128
, 2 // PSRAD xmm, xmm
, 1 // PSRAW mm, imm8
, 999 // PSRAW mm, m64
, 1 // PSRAW mm, mm
, 1 // PSRAW xmm, imm8
, 999 // PSRAW xmm, m128
, 2 // PSRAW xmm, xmm

, 1 // PSRLD mm, imm8
, 999 // PSRLD mm, m64
, 1 // PSRLD mm, mm
, 1 // PSRLD xmm, imm8
, 999 // PSRLD xmm, m128
, 2 // PSRLD xmm, xmm
, 1 // PSRLDQ xmm, imm8
, 1 // PSRLQ mm, imm8
, 999 // PSRLQ mm, m64
, 1 // PSRLQ mm, mm
, 1 // PSRLQ xmm, imm8
, 999 // PSRLQ xmm, m128
, 2 // PSRLQ xmm, xmm
, 1 // PSRLW mm, imm8
, 999 // PSRLW mm, m64
, 1 // PSRLW mm, mm
, 1 // PSRLW xmm, imm8
, 999 // PSRLW xmm, m128
, 2 // PSRLW xmm, xmm

, 999 // PSUBB mm, m64
, 1 // PSUBB mm, mm
, 999 // PSUBB xmm, m128
, 1 // PSUBB xmm, xmm
, 999 // PSUBD mm, m64
, 1 // PSUBD mm, mm
, 999 // PSUBD xmm, m128
, 1 // PSUBD xmm, xmm
, 999 // PSUBQ mm, m64
, 1 // PSUBQ mm, mm
, 999 // PSUBQ xmm, m128
, 1 // PSUBQ xmm, xmm
, 999 // PSUBSB mm, m64
, 1 // PSUBSB mm, mm
, 999 // PSUBSB xmm, m128
, 1 // PSUBSB xmm, xmm
, 999 // PSUBSW mm, m64
, 1 // PSUBSW mm, mm
, 999 // PSUBSW xmm, m128
, 1 // PSUBSW xmm, xmm
, 999 // PSUBUSB mm, m64
, 1 // PSUBUSB mm, mm
, 999 // PSUBUSB xmm, m128
, 1 // PSUBUSB xmm, xmm
, 999 // PSUBUSW mm, m64
, 1 // PSUBUSW mm, mm
, 999 // PSUBUSW xmm, m128
, 1 // PSUBUSW xmm, xmm
, 999 // PSUBW mm, m64
, 1 // PSUBW mm, mm
, 999 // PSUBW xmm, m128
, 1 // PSUBW xmm, xmm

, 999 // PTEST xmm, m128
, 2 // PTEST xmm, xmm

, 999 // PUNPCKHBW mm, m64
, 1 // PUNPCKHBW mm, mm
, 999 // PUNPCKHBW xmm, m128
, 1 // PUNPCKHBW xmm, xmm
, 999 // PUNPCKHDQ mm, m64
, 1 // PUNPCKHDQ mm, mm
, 999 // PUNPCKHDQ xmm, m128
, 1 // PUNPCKHDQ xmm, xmm
, 999 // PUNPCKHQDQ xmm, m128
, 1 // PUNPCKHQDQ xmm, xmm
, 999 // PUNPCKHWD mm, m64
, 1 // PUNPCKHWD mm, mm
, 999 // PUNPCKHWD xmm, m128
, 1 // PUNPCKHWD xmm, xmm
, 999 // PUNPCKLBW mm, m32
, 1 // PUNPCKLBW mm, mm
, 999 // PUNPCKLBW xmm, m128
, 1 // PUNPCKLBW xmm, xmm
, 999 // PUNPCKLDQ mm, m32
, 1 // PUNPCKLDQ mm, mm
, 999 // PUNPCKLDQ xmm, m128
, 1 // PUNPCKLDQ xmm, xmm
, 999 // PUNPCKLQDQ xmm, m128
, 1 // PUNPCKLQDQ xmm, xmm
, 999 // PUNPCKLWD mm, m32
, 1 // PUNPCKLWD mm, mm
, 999 // PUNPCKLWD xmm, m128
, 1 // PUNPCKLWD xmm, xmm

, 3 // PUSH FS
, 3 // PUSH GS
, 999 // PUSH imm16
, 999 // PUSH imm32
, 999 // PUSH imm8
, 999 // PUSH m16
, 999 // PUSH m64
, 3 // PUSH r16
, 3 // PUSH r64

, 999 // PUSHF
, 999 // PUSHFQ

, 999 // PXOR mm, m64
, 1 // PXOR mm, mm
, 999 // PXOR xmm, m128
, 1 // PXOR xmm, xmm

, 999 // RCL m16, CL
, 999 // RCL m16, imm8
, 999 // RCL m16, 1
, 999 // RCL m32, CL
, 999 // RCL m32, imm8
, 999 // RCL m32, 1
, 999 // RCL m64, CL
, 999 // RCL m64, imm8
, 999 // RCL m64, 1
, 999 // RCL m8, CL
, 999 // RCL m8, imm8
, 999 // RCL m8, 1
, 6 // RCL r16, CL
, 6 // RCL r16, imm8
, 2 // RCL r16, 1
, 6 // RCL r32, CL
, 6 // RCL r32, imm8
, 2 // RCL r32, 1
, 6 // RCL r64, CL
, 6 // RCL r64, imm8
, 2 // RCL r64, 1
, 6 // RCL rb, CL
, 6 // RCL rb, imm8
, 2 // RCL rb, 1
, 6 // RCL rh, CL
, 6 // RCL rh, imm8
, 2 // RCL rh, 1
, 6 // RCL rl, CL
, 6 // RCL rl, imm8
, 2 // RCL rl, 1

, 999 // RCPPS xmm, m128
, 5 // RCPPS xmm, xmm
, 999 // RCPSS xmm, m32
, 5 // RCPSS xmm, xmm

, 999 // RCR m16, CL
, 999 // RCR m16, imm8
, 999 // RCR m16, 1
, 999 // RCR m32, CL
, 999 // RCR m32, imm8
, 999 // RCR m32, 1
, 999 // RCR m64, CL
, 999 // RCR m64, imm8
, 999 // RCR m64, 1
, 999 // RCR m8, CL
, 999 // RCR m8, imm8
, 999 // RCR m8, 1
, 6 // RCR r16, CL
, 6 // RCR r16, imm8
, 2 // RCR r16, 1
, 6 // RCR r32, CL
, 6 // RCR r32, imm8
, 2 // RCR r32, 1
, 6 // RCR r64, CL
, 6 // RCR r64, imm8
, 2 // RCR r64, 1
, 6 // RCR rb, CL
, 6 // RCR rb, imm8
, 2 // RCR rb, 1
, 6 // RCR rh, CL
, 6 // RCR rh, imm8
, 2 // RCR rh, 1
, 6 // RCR rl, CL
, 6 // RCR rl, imm8
, 2 // RCR rl, 1

, 999 // RDFSBASE r32
, 999 // RDFSBASE r64
, 999 // RDGSBASE r32
, 999 // RDGSBASE r64

, 999 // RDRAND r16
, 999 // RDRAND r32
, 999 // RDRAND r64

, 999 // REP_INS m16, DX
, 999 // REP_INS m32, DX
, 999 // REP_INS m8, DX
, 999 // REP_LODS AL
, 999 // REP_LODS AX
, 999 // REP_LODS EAX
, 999 // REP_LODS RAX
, 999 // REP_MOVS m16, m16
, 999 // REP_MOVS m32, m32
, 999 // REP_MOVS m64, m64
, 999 // REP_MOVS m8, m8
, 999 // REP_OUTS DX, m16
, 999 // REP_OUTS DX, m32
, 999 // REP_OUTS DX, m8
, 999 // REP_STOS m16
, 999 // REP_STOS m32
, 999 // REP_STOS m64
, 999 // REP_STOS m8
, 999 // REPE_CMPS m16, m16
, 999 // REPE_CMPS m32, m32
, 999 // REPE_CMPS m64, m64
, 999 // REPE_CMPS m8, m8
, 999 // REPE_SCAS m16
, 999 // REPE_SCAS m32
, 999 // REPE_SCAS m64
, 999 // REPE_SCAS m8
, 999 // REPNE_CMPS m16, m16
, 999 // REPNE_CMPS m32, m32
, 999 // REPNE_CMPS m64, m64
, 999 // REPNE_CMPS m8, m8
, 999 // REPNE_SCAS m16
, 999 // REPNE_SCAS m32
, 999 // REPNE_SCAS m64
, 999 // REPNE_SCAS m8

, 0 // RET
, 0 // RET far
, 0 // RET imm16
, 0 // RET imm16, far

, 999 // ROL m16, CL
, 999 // ROL m16, imm8
, 999 // ROL m16, 1
, 999 // ROL m32, CL
, 999 // ROL m32, imm8
, 999 // ROL m32, 1
, 999 // ROL m64, CL
, 999 // ROL m64, imm8
, 999 // ROL m64, 1
, 999 // ROL m8, CL
, 999 // ROL m8, imm8
, 999 // ROL m8, 1
, 2 // ROL r16, CL
, 1 // ROL r16, imm8
, 1 // ROL r16, 1
, 2 // ROL r32, CL
, 1 // ROL r32, imm8
, 1 // ROL r32, 1
, 2 // ROL r64, CL
, 1 // ROL r64, imm8
, 1 // ROL r64, 1
, 2 // ROL rb, CL
, 1 // ROL rb, imm8
, 1 // ROL rb, 1
, 2 // ROL rh, CL
, 1 // ROL rh, imm8
, 1 // ROL rh, 1
, 2 // ROL rl, CL
, 1 // ROL rl, imm8
, 1 // ROL rl, 1

, 999 // ROR m16, CL
, 999 // ROR m16, imm8
, 999 // ROR m16, 1
, 999 // ROR m32, CL
, 999 // ROR m32, imm8
, 999 // ROR m32, 1
, 999 // ROR m64, CL
, 999 // ROR m64, imm8
, 999 // ROR m64, 1
, 999 // ROR m8, CL
, 999 // ROR m8, imm8
, 999 // ROR m8, 1
, 2 // ROR r16, CL
, 1 // ROR r16, imm8
, 1 // ROR r16, 1
, 2 // ROR r32, CL
, 1 // ROR r32, imm8
, 1 // ROR r32, 1
, 2 // ROR r64, CL
, 1 // ROR r64, imm8
, 1 // ROR r64, 1
, 2 // ROR rb, CL
, 1 // ROR rb, imm8
, 1 // ROR rb, 1
, 2 // ROR rh, CL
, 1 // ROR rh, imm8
, 1 // ROR rh, 1
, 2 // ROR rl, CL
, 1 // ROR rl, imm8
, 1 // ROR rl, 1

, 999 // RORX r32, m32, imm8
, 1 // RORX r32, r32, imm8
, 999 // RORX r64, m64, imm8
, 1 // RORX r64, r64, imm8

, 999 // ROUNDPD xmm, m128, imm8
, 6 // ROUNDPD xmm, xmm, imm8
, 999 // ROUNDPS xmm, m128, imm8
, 6 // ROUNDPS xmm, xmm, imm8
, 999 // ROUNDSD xmm, m64, imm8
, 6 // ROUNDSD xmm, xmm, imm8
, 999 // ROUNDSS xmm, m32, imm8
, 6 // ROUNDSS xmm, xmm, imm8

, 999 // RSQRTPS xmm, m128
, 5 // RSQRTPS xmm, xmm
, 999 // RSQRTSS xmm, m32
, 5 // RSQRTSS xmm, xmm

, 1 // SAHF

, 999 // SAL m16, CL
, 1 // SAL m16, imm8
, 1 // SAL m16, 1
, 999 // SAL m32, CL
, 1 // SAL m32, imm8
, 1 // SAL m32, 1
, 999 // SAL m64, CL
, 1 // SAL m64, imm8
, 1 // SAL m64, 1
, 999 // SAL m8, CL
, 1 // SAL m8, imm8
, 1 // SAL m8, 1
, 2 // SAL r16, CL
, 1 // SAL r16, imm8
, 1 // SAL r16, 1
, 2 // SAL r32, CL
, 1 // SAL r32, imm8
, 1 // SAL r32, 1
, 2 // SAL r64, CL
, 1 // SAL r64, imm8
, 1 // SAL r64, 1
, 2 // SAL rb, CL
, 1 // SAL rb, imm8
, 1 // SAL rb, 1
, 2 // SAL rh, CL
, 1 // SAL rh, imm8
, 1 // SAL rh, 1
, 2 // SAL rl, CL
, 1 // SAL rl, imm8
, 1 // SAL rl, 1

, 999 // SAR m16, CL
, 1 // SAR m16, imm8
, 1 // SAR m16, 1
, 999 // SAR m32, CL
, 1 // SAR m32, imm8
, 1 // SAR m32, 1
, 999 // SAR m64, CL
, 1 // SAR m64, imm8
, 1 // SAR m64, 1
, 999 // SAR m8, CL
, 1 // SAR m8, imm8
, 1 // SAR m8, 1
, 999 // SAR r16, CL
, 1 // SAR r16, imm8
, 1 // SAR r16, 1
, 2 // SAR r32, CL
, 1 // SAR r32, imm8
, 1 // SAR r32, 1
, 2 // SAR r64, CL
, 1 // SAR r64, imm8
, 1 // SAR r64, 1
, 2 // SAR rb, CL
, 1 // SAR rb, imm8
, 1 // SAR rb, 1
, 2 // SAR rh, CL
, 1 // SAR rh, imm8
, 1 // SAR rh, 1
, 2 // SAR rl, CL
, 1 // SAR rl, imm8
, 1 // SAR rl, 1

, 999 // SARX r32, m32, r32
, 1 // SARX r32, r32, r32
, 999 // SARX r64, m64, r64
, 1 // SARX r64, r64, r64

, 2 // SBB AL, imm8
, 2 // SBB AX, imm16
, 2 // SBB EAX, imm32
, 7 // SBB m16, imm16
, 7 // SBB m16, imm8
, 7 // SBB m16, r16
, 7 // SBB m32, imm32
, 7 // SBB m32, imm8
, 7 // SBB m32, r32
, 7 // SBB m64, imm32
, 7 // SBB m64, imm8
, 7 // SBB m64, r64
, 7 // SBB m8, imm8
, 7 // SBB m8, rb
, 7 // SBB m8, rh
, 7 // SBB m8, rl
, 2 // SBB r16, imm16
, 2 // SBB r16, imm8
, 999 // SBB r16, m16
, 2 // SBB r16, r16
, 2 // SBB r32, imm32
, 2 // SBB r32, imm8
, 999 // SBB r32, m32
, 2 // SBB r32, r32
, 2 // SBB r64, imm32
, 2 // SBB r64, imm8
, 999 // SBB r64, m64
, 2 // SBB r64, r64
, 2 // SBB RAX, imm32
, 2 // SBB rb, imm8
, 999 // SBB rb, m8
, 2 // SBB rb, rb
, 2 // SBB rb, rl
, 2 // SBB rh, imm8
, 999 // SBB rh, m8
, 2 // SBB rh, rh
, 2 // SBB rh, rl
, 2 // SBB rl, imm8
, 999 // SBB rl, m8
, 2 // SBB rl, rb
, 2 // SBB rl, rh
, 2 // SBB rl, rl

, 999 // SCAS m16
, 999 // SCAS m32
, 999 // SCAS m64
, 999 // SCAS m8
, 999 // SCASB
, 999 // SCASD
, 999 // SCASQ
, 999 // SCASW

, 1 // SETA m8
, 1 // SETA rb
, 1 // SETA rh
, 1 // SETA rl
, 1 // SETAE m8
, 1 // SETAE rb
, 1 // SETAE rh
, 1 // SETAE rl
, 1 // SETB m8
, 1 // SETB rb
, 1 // SETB rh
, 1 // SETB rl
, 1 // SETBE m8
, 1 // SETBE rb
, 1 // SETBE rh
, 1 // SETBE rl
, 1 // SETC m8
, 1 // SETC rb
, 1 // SETC rh
, 1 // SETC rl
, 1 // SETE m8
, 1 // SETE rb
, 1 // SETE rh
, 1 // SETE rl
, 1 // SETG m8
, 1 // SETG rb
, 1 // SETG rh
, 1 // SETG rl
, 1 // SETGE m8
, 1 // SETGE rb
, 1 // SETGE rh
, 1 // SETGE rl
, 1 // SETL m8
, 1 // SETL rb
, 1 // SETL rh
, 1 // SETL rl
, 1 // SETLE m8
, 1 // SETLE rb
, 1 // SETLE rh
, 1 // SETLE rl
, 1 // SETNA m8
, 1 // SETNA rb
, 1 // SETNA rh
, 1 // SETNA rl
, 1 // SETNAE m8
, 1 // SETNAE rb
, 1 // SETNAE rh
, 1 // SETNAE rl
, 1 // SETNB m8
, 1 // SETNB rb
, 1 // SETNB rh
, 1 // SETNB rl
, 1 // SETNBE m8
, 1 // SETNBE rb
, 1 // SETNBE rh
, 1 // SETNBE rl
, 1 // SETNC m8
, 1 // SETNC rb
, 1 // SETNC rh
, 1 // SETNC rl
, 1 // SETNE m8
, 1 // SETNE rb
, 1 // SETNE rh
, 1 // SETNE rl
, 1 // SETNG m8
, 1 // SETNG rb
, 1 // SETNG rh
, 1 // SETNG rl
, 1 // SETNGE m8
, 1 // SETNGE rb
, 1 // SETNGE rh
, 1 // SETNGE rl
, 1 // SETNL m8
, 1 // SETNL rb
, 1 // SETNL rh
, 1 // SETNL rl
, 1 // SETNLE m8
, 1 // SETNLE rb
, 1 // SETNLE rh
, 1 // SETNLE rl
, 1 // SETNO m8
, 1 // SETNO rb
, 1 // SETNO rh
, 1 // SETNO rl
, 1 // SETNP m8
, 1 // SETNP rb
, 1 // SETNP rh
, 1 // SETNP rl
, 1 // SETNS m8
, 1 // SETNS rb
, 1 // SETNS rh
, 1 // SETNS rl
, 1 // SETNZ m8
, 1 // SETNZ rb
, 1 // SETNZ rh
, 1 // SETNZ rl
, 1 // SETO m8
, 1 // SETO rb
, 1 // SETO rh
, 1 // SETO rl
, 1 // SETP m8
, 1 // SETP rb
, 1 // SETP rh
, 1 // SETP rl
, 1 // SETPE m8
, 1 // SETPE rb
, 1 // SETPE rh
, 1 // SETPE rl
, 1 // SETPO m8
, 1 // SETPO rb
, 1 // SETPO rh
, 1 // SETPO rl
, 1 // SETS m8
, 1 // SETS rb
, 1 // SETS rh
, 1 // SETS rl
, 1 // SETZ m8
, 1 // SETZ rb
, 1 // SETZ rh
, 1 // SETZ rl

, 999 // SFENCE

, 999 // SHL m16, CL
, 1 // SHL m16, imm8
, 1 // SHL m16, 1
, 999 // SHL m32, CL
, 1 // SHL m32, imm8
, 1 // SHL m32, 1
, 999 // SHL m64, CL
, 1 // SHL m64, imm8
, 1 // SHL m64, 1
, 999 // SHL m8, CL
, 1 // SHL m8, imm8
, 1 // SHL m8, 1
, 999 // SHL r16, CL
, 1 // SHL r16, imm8
, 1 // SHL r16, 1
, 2 // SHL r32, CL
, 1 // SHL r32, imm8
, 1 // SHL r32, 1
, 2 // SHL r64, CL
, 1 // SHL r64, imm8
, 1 // SHL r64, 1
, 2 // SHL rb, CL
, 1 // SHL rb, imm8
, 1 // SHL rb, 1
, 2 // SHL rh, CL
, 1 // SHL rh, imm8
, 1 // SHL rh, 1
, 2 // SHL rl, CL
, 1 // SHL rl, imm8
, 1 // SHL rl, 1

, 999 // SHLD m16, r16, CL
, 999 // SHLD m16, r16, imm8
, 999 // SHLD m32, r32, CL
, 999 // SHLD m32, r32, imm8
, 999 // SHLD m64, r64, CL
, 999 // SHLD m64, r64, imm8
, 3 // SHLD r16, r16, CL
, 3 // SHLD r16, r16, imm8
, 3 // SHLD r32, r32, CL
, 3 // SHLD r32, r32, imm8
, 3 // SHLD r64, r64, CL
, 3 // SHLD r64, r64, imm8

, 999 // SHLX r32, m32, r32
, 1 // SHLX r32, r32, r32
, 999 // SHLX r64, m64, r64
, 1 // SHLX r64, r64, r64

, 999 // SHR m16, CL
, 1 // SHR m16, imm8
, 1 // SHR m16, 1
, 999 // SHR m32, CL
, 1 // SHR m32, imm8
, 1 // SHR m32, 1
, 999 // SHR m64, CL
, 1 // SHR m64, imm8
, 1 // SHR m64, 1
, 999 // SHR m8, CL
, 1 // SHR m8, imm8
, 1 // SHR m8, 1
, 2 // SHR r16, CL
, 1 // SHR r16, imm8
, 1 // SHR r16, 1
, 2 // SHR r32, CL
, 1 // SHR r32, imm8
, 1 // SHR r32, 1
, 2 // SHR r64, CL
, 1 // SHR r64, imm8
, 1 // SHR r64, 1
, 2 // SHR rb, CL
, 1 // SHR rb, imm8
, 1 // SHR rb, 1
, 2 // SHR rh, CL
, 1 // SHR rh, imm8
, 1 // SHR rh, 1
, 2 // SHR rl, CL
, 1 // SHR rl, imm8
, 1 // SHR rl, 1

, 999 // SHRD m16, r16, CL
, 999 // SHRD m16, r16, imm8
, 999 // SHRD m32, r32, CL
, 999 // SHRD m32, r32, imm8
, 999 // SHRD m64, r64, CL
, 999 // SHRD m64, r64, imm8
, 4 // SHRD r16, r16, CL
, 4 // SHRD r16, r16, imm8
, 4 // SHRD r32, r32, CL
, 4 // SHRD r32, r32, imm8
, 4 // SHRD r64, r64, CL
, 4 // SHRD r64, r64, imm8

, 999 // SHRX r32, m32, r32
, 1 // SHRX r32, r32, r32
, 999 // SHRX r64, m64, r64
, 1 // SHRX r64, r64, r64

, 999 // SHUFPD xmm, m128, imm8
, 1 // SHUFPD xmm, xmm, imm8
, 999 // SHUFPS xmm, m128, imm8
, 1 // SHUFPS xmm, xmm, imm8

, 999 // SQRTPD xmm, m128
, 16 // SQRTPD xmm, xmm
, 999 // SQRTPS xmm, m128
, 11 // SQRTPS xmm, xmm
, 999 // SQRTSD xmm, m64
, 16 // SQRTSD xmm, xmm
, 999 // SQRTSS xmm, m32
, 11 // SQRTSS xmm, xmm

, 999 // STC
, 999 // STD
, 999 // STI

, 7 // STMXCSR m32

, 999 // STOS m16
, 999 // STOS m32
, 999 // STOS m64
, 999 // STOS m8
, 999 // STOSB
, 999 // STOSD
, 999 // STOSQ
, 999 // STOSW

, 1 // SUB AL, imm8
, 1 // SUB AX, imm16
, 1 // SUB EAX, imm32
, 6 // SUB m16, imm16
, 6 // SUB m16, imm8
, 6 // SUB m16, r16
, 6 // SUB m32, imm32
, 6 // SUB m32, imm8
, 6 // SUB m32, r32
, 6 // SUB m64, imm32
, 6 // SUB m64, imm8
, 6 // SUB m64, r64
, 6 // SUB m8, imm8
, 6 // SUB m8, rb
, 6 // SUB m8, rh
, 6 // SUB m8, rl
, 1 // SUB r16, imm16
, 1 // SUB r16, imm8
, 999 // SUB r16, m16
, 1 // SUB r16, r16
, 1 // SUB r32, imm32
, 1 // SUB r32, imm8
, 999 // SUB r32, m32
, 1 // SUB r32, r32
, 1 // SUB r64, imm32
, 1 // SUB r64, imm8
, 999 // SUB r64, m64
, 1 // SUB r64, r64
, 1 // SUB RAX, imm32
, 1 // SUB rb, imm8
, 999 // SUB rb, m8
, 1 // SUB rb, rb
, 1 // SUB rb, rl
, 1 // SUB rh, imm8
, 999 // SUB rh, m8
, 1 // SUB rh, rh
, 1 // SUB rh, rl
, 1 // SUB rl, imm8
, 999 // SUB rl, m8
, 1 // SUB rl, rb
, 1 // SUB rl, rh
, 1 // SUB rl, rl

, 999 // SUBPD xmm, m128
, 3 // SUBPD xmm, xmm
, 999 // SUBPS xmm, m128
, 3 // SUBPS xmm, xmm
, 999 // SUBSD xmm, m64
, 3 // SUBSD xmm, xmm
, 999 // SUBSS xmm, m32
, 3 // SUBSS xmm, xmm

, 999 // SWAPGS

, 0 // SYSCALL
, 0 // SYSENTER
, 0 // SYSEXIT
, 0 // SYSEXIT pw
, 0 // SYSRET
, 0 // SYSRET pw

, 1 // TEST AL, imm8
, 1 // TEST AX, imm16
, 1 // TEST EAX, imm32
, 1 // TEST m16, imm16
, 1 // TEST m16, r16
, 1 // TEST m32, imm32
, 1 // TEST m32, r32
, 1 // TEST m64, imm32
, 1 // TEST m64, r64
, 1 // TEST m8, imm8
, 1 // TEST m8, rb
, 1 // TEST m8, rh
, 1 // TEST m8, rl
, 1 // TEST r16, imm16
, 1 // TEST r16, r16
, 1 // TEST r32, imm32
, 1 // TEST r32, r32
, 1 // TEST r64, imm32
, 1 // TEST r64, r64
, 1 // TEST RAX, imm32
, 1 // TEST rb, imm8
, 1 // TEST rb, rb
, 1 // TEST rb, rl
, 1 // TEST rh, imm8
, 1 // TEST rh, rh
, 1 // TEST rh, rl
, 1 // TEST rl, imm8
, 1 // TEST rl, rb
, 1 // TEST rl, rh
, 1 // TEST rl, rl

, 999 // TZCNT r16, m16
, 3 // TZCNT r16, r16
, 999 // TZCNT r32, m32
, 3 // TZCNT r32, r32
, 999 // TZCNT r64, m64
, 3 // TZCNT r64, r64

, 999 // UCOMISD xmm, m64
, 999 // UCOMISD xmm, xmm
, 999 // UCOMISS xmm, m32
, 999 // UCOMISS xmm, xmm

, 999 // UD2

, 999 // UNPCKHPD xmm, m128
, 1 // UNPCKHPD xmm, xmm
, 999 // UNPCKHPS xmm, m128
, 1 // UNPCKHPS xmm, xmm
, 999 // UNPCKLPD xmm, m128
, 1 // UNPCKLPD xmm, xmm
, 999 // UNPCKLPS xmm, m128
, 1 // UNPCKLPS xmm, xmm

, 999 // VADDPD xmm, xmm, m128
, 3 // VADDPD xmm, xmm, xmm
, 999 // VADDPD ymm, ymm, m156
, 3 // VADDPD ymm, ymm, ymm
, 999 // VADDPS xmm, xmm, m128
, 3 // VADDPS xmm, xmm, xmm
, 999 // VADDPS ymm, ymm, m156
, 3 // VADDPS ymm, ymm, ymm
, 999 // VADDSD xmm, xmm, m64
, 3 // VADDSD xmm, xmm, xmm
, 999 // VADDSS xmm, xmm, m32
, 3 // VADDSS xmm, xmm, xmm

, 999 // VADDSUBPD xmm, xmm, m128
, 3 // VADDSUBPD xmm, xmm, xmm
, 999 // VADDSUBPD ymm, ymm, m156
, 3 // VADDSUBPD ymm, ymm, ymm
, 999 // VADDSUBPS xmm, xmm, m128
, 3 // VADDSUBPS xmm, xmm, xmm
, 999 // VADDSUBPS ymm, ymm, m156
, 3 // VADDSUBPS ymm, ymm, ymm

, 999 // VAESDEC xmm, xmm, m128
, 7 // VAESDEC xmm, xmm, xmm
, 999 // VAESDECLAST xmm, xmm, m128
, 7 // VAESDECLAST xmm, xmm, xmm
, 999 // VAESENC xmm, xmm, m128
, 7 // VAESENC xmm, xmm, xmm
, 999 // VAESENCLAST xmm, xmm, m128
, 7 // VAESENCLAST xmm, xmm, xmm
, 999 // VAESIMC xmm, m128
, 14 // VAESIMC xmm, xmm
, 999 // VAESKEYGENASSIST xmm, m128, imm8
, 10 // VAESKEYGENASSIST xmm, xmm, imm8

, 999 // VANDNPD xmm, xmm, m128
, 1 // VANDNPD xmm, xmm, xmm
, 999 // VANDNPD ymm, ymm, m156
, 1 // VANDNPD ymm, ymm, ymm
, 999 // VANDNPS xmm, xmm, m128
, 1 // VANDNPS xmm, xmm, xmm
, 999 // VANDNPS ymm, ymm, m156
, 1 // VANDNPS ymm, ymm, ymm
, 999 // VANDPD xmm, xmm, m128
, 1 // VANDPD xmm, xmm, xmm
, 999 // VANDPD ymm, ymm, m156
, 1 // VANDPD ymm, ymm, ymm
, 999 // VANDPS xmm, xmm, m128
, 1 // VANDPS xmm, xmm, xmm
, 999 // VANDPS ymm, ymm, m156
, 1 // VANDPS ymm, ymm, ymm

, 999 // VBLENDPD xmm, xmm, m128, imm8
, 2 // VBLENDPD xmm, xmm, xmm, imm8
, 999 // VBLENDPD ymm, ymm, m156, imm8
, 2 // VBLENDPD ymm, ymm, ymm, imm8
, 999 // VBLENDPS xmm, xmm, m128, imm8
, 2 // VBLENDPS xmm, xmm, xmm, imm8
, 999 // VBLENDPS ymm, ymm, m156, imm8
, 2 // VBLENDPS ymm, ymm, ymm, imm8

, 999 // VBLENDVPD xmm, xmm, m128, xmm
, 2 // VBLENDVPD xmm, xmm, xmm, xmm
, 999 // VBLENDVPD ymm, ymm, m156, ymm
, 2 // VBLENDVPD ymm, ymm, ymm, ymm
, 999 // VBLENDVPS xmm, xmm, m128, xmm
, 2 // VBLENDVPS xmm, xmm, xmm, xmm
, 999 // VBLENDVPS ymm, ymm, m156, ymm
, 2 // VBLENDVPS ymm, ymm, ymm, ymm

, 3 // VBROADCASTF118 ymm, m128
, 3 // VBROADCASTI118 ymm, m128

, 5 // VBROADCASTSD ymm, m64
, 5 // VBROADCASTSD ymm, xmm

, 1 // VBROADCASTSS xmm, xmm
, 5 // VBROADCASTSS ymm, m32
, 3 // VBROADCASTSS ymm, xmm

, 999 // VCMPPD xmm, xmm, m128, imm8
, 3 // VCMPPD xmm, xmm, xmm, imm8
, 999 // VCMPPD ymm, ymm, m156, imm8
, 3 // VCMPPD ymm, ymm, ymm, imm8
, 999 // VCMPPS xmm, xmm, m128, imm8
, 3 // VCMPPS xmm, xmm, xmm, imm8
, 999 // VCMPPS ymm, ymm, m156, imm8
, 3 // VCMPPS ymm, ymm, ymm, imm8
, 999 // VCMPSD xmm, xmm, m64, imm8
, 3 // VCMPSD xmm, xmm, xmm, imm8
, 999 // VCMPSS xmm, xmm, m32, imm8
, 3 // VCMPSS xmm, xmm, xmm, imm8

, 999 // VCOMISD xmm, m64
, 999 // VCOMISD xmm, xmm
, 999 // VCOMISS xmm, m32
, 999 // VCOMISS xmm, xmm

, 999 // VCVTDQ2PD xmm, m64
, 6 // VCVTDQ2PD xmm, xmm
, 999 // VCVTDQ2PD ymm, m128
, 6 // VCVTDQ2PD ymm, ymm
, 999 // VCVTDQ2PS xmm, m128
, 3 // VCVTDQ2PS xmm, xmm
, 999 // VCVTDQ2PS ymm, m156
, 3 // VCVTDQ2PS ymm, ymm
, 999 // VCVTPD2DQ xmm, m128
, 6 // VCVTPD2DQ xmm, m156
, 999 // VCVTPD2DQ xmm, xmm
, 6 // VCVTPD2DQ xmm, ymm
, 999 // VCVTPD2PS xmm, m128
, 5 // VCVTPD2PS xmm, m156
, 999 // VCVTPD2PS xmm, xmm
, 5 // VCVTPD2PS xmm, ymm
, 999 // VCVTPH1PS xmm, m64
, 4 // VCVTPH1PS xmm, xmm
, 999 // VCVTPH1PS ymm, m128
, 4 // VCVTPH1PS ymm, xmm
, 999 // VCVTPS2DQ xmm, m128
, 3 // VCVTPS2DQ xmm, xmm
, 999 // VCVTPS2DQ ymm, m156
, 3 // VCVTPS2DQ ymm, ymm
, 999 // VCVTPS2PD xmm, m64
, 5 // VCVTPS2PD xmm, xmm
, 999 // VCVTPS2PD ymm, m128
, 5 // VCVTPS2PD ymm, xmm
, 999 // VCVTPS2PH m128, ymm, imm8
, 4 // VCVTPS2PH m64, xmm, imm8
, 999 // VCVTPS2PH xmm, xmm, imm8
, 4 // VCVTPS2PH xmm, ymm, imm8
, 999 // VCVTSD2SI r32, m64
, 4 // VCVTSD2SI r32, xmm
, 999 // VCVTSD2SI r64, m64
, 4 // VCVTSD2SI r64, xmm
, 999 // VCVTSD2SS xmm, xmm, m64
, 4 // VCVTSD2SS xmm, xmm, xmm
, 999 // VCVTSI2SD xmm, xmm, m32
, 4 // VCVTSI2SD xmm, xmm, m64
, 999 // VCVTSI2SD xmm, xmm, r32
, 4 // VCVTSI2SD xmm, xmm, r64
, 999 // VCVTSI2SS xmm, xmm, m32
, 4 // VCVTSI2SS xmm, xmm, m64
, 999 // VCVTSI2SS xmm, xmm, r32
, 4 // VCVTSI2SS xmm, xmm, r64
, 999 // VCVTSS2SD xmm, xmm, m32
, 4 // VCVTSS2SD xmm, xmm, xmm
, 999 // VCVTSS2SI r32, m32
, 4 // VCVTSS2SI r32, xmm
, 999 // VCVTSS2SI r64, m32
, 4 // VCVTSS2SI r64, xmm
, 999 // VCVTTPD2DQ xmm, m128
, 6 // VCVTTPD2DQ xmm, m156
, 999 // VCVTTPD2DQ xmm, xmm
, 6 // VCVTTPD2DQ xmm, ymm
, 999 // VCVTTPS2DQ xmm, m128
, 3 // VCVTTPS2DQ xmm, xmm
, 999 // VCVTTPS2DQ ymm, m156
, 3 // VCVTTPS2DQ ymm, ymm
, 999 // VCVTTSD2SI r32, m64
, 4 // VCVTTSD2SI r32, xmm
, 999 // VCVTTSD2SI r64, m64
, 4 // VCVTTSD2SI r64, xmm
, 999 // VCVTTSS2SI r32, m32
, 4 // VCVTTSS2SI r32, xmm
, 999 // VCVTTSS2SI r64, m32
, 4 // VCVTTSS2SI r64, xmm

, 999 // VDIVPD xmm, xmm, m128
, 35 // VDIVPD xmm, xmm, xmm
, 999 // VDIVPD ymm, ymm, m156
, 35 // VDIVPD ymm, ymm, ymm
, 999 // VDIVPS xmm, xmm, m128
, 21 // VDIVPS xmm, xmm, xmm
, 999 // VDIVPS ymm, ymm, m156
, 21 // VDIVPS ymm, ymm, ymm
, 999 // VDIVSD xmm, xmm, m64
, 20 // VDIVSD xmm, xmm, xmm
, 999 // VDIVSS xmm, xmm, m32
, 13 // VDIVSS xmm, xmm, xmm
, 999 // VDPPD xmm, xmm, m128, imm8

, 9 // VDPPD xmm, xmm, xmm, imm8
, 999 // VDPPS xmm, xmm, m128, imm8
, 14 // VDPPS xmm, xmm, xmm, imm8
, 999 // VDPPS ymm, ymm, m156, imm8
, 14 // VDPPS ymm, ymm, ymm, imm8

, 999 // VERR m16
, 999 // VERR r16
, 999 // VERW m16
, 999 // VERW r16

, 3 // VEXTRACTF118 m128, ymm, imm8
, 4 // VEXTRACTF118 xmm, ymm, imm8
, 4 // VEXTRACTI118 m128, ymm, imm8
, 3 // VEXTRACTI118 xmm, ymm, imm8

, 4 // VEXTRACTPS m32, xmm, imm8
, 999 // VEXTRACTPS r32, xmm, imm8

, 999 // VFMADD131PD xmm, xmm, m128
, 5 // VFMADD131PD xmm, xmm, xmm
, 999 // VFMADD131PD ymm, ymm, m156
, 5 // VFMADD131PD ymm, ymm, ymm
, 999 // VFMADD131PS xmm, xmm, m128
, 5 // VFMADD131PS xmm, xmm, xmm
, 999 // VFMADD131PS ymm, ymm, m156
, 5 // VFMADD131PS ymm, ymm, ymm
, 999 // VFMADD131SD xmm, xmm, m64
, 5 // VFMADD131SD xmm, xmm, xmm
, 999 // VFMADD131SS xmm, xmm, m32
, 5 // VFMADD131SS xmm, xmm, xmm
, 999 // VFMADD113PD xmm, xmm, m128
, 5 // VFMADD113PD xmm, xmm, xmm
, 999 // VFMADD113PD ymm, ymm, m156
, 5 // VFMADD113PD ymm, ymm, ymm
, 999 // VFMADD113PS xmm, xmm, m128
, 5 // VFMADD113PS xmm, xmm, xmm
, 999 // VFMADD113PS ymm, ymm, m156
, 5 // VFMADD113PS ymm, ymm, ymm
, 999 // VFMADD113SD xmm, xmm, m64
, 5 // VFMADD113SD xmm, xmm, xmm
, 999 // VFMADD113SS xmm, xmm, m32
, 5 // VFMADD113SS xmm, xmm, xmm
, 999 // VFMADD131PD xmm, xmm, m128
, 5 // VFMADD131PD xmm, xmm, xmm
, 999 // VFMADD131PD ymm, ymm, m156
, 5 // VFMADD131PD ymm, ymm, ymm
, 999 // VFMADD131PS xmm, xmm, m128
, 5 // VFMADD131PS xmm, xmm, xmm
, 999 // VFMADD131PS ymm, ymm, m156
, 5 // VFMADD131PS ymm, ymm, ymm
, 999 // VFMADD131SD xmm, xmm, m64
, 5 // VFMADD131SD xmm, xmm, xmm
, 999 // VFMADD131SS xmm, xmm, m32
, 5 // VFMADD131SS xmm, xmm, xmm
, 999 // VFMADDSUB131PD xmm, xmm, m128
, 5 // VFMADDSUB131PD xmm, xmm, xmm
, 999 // VFMADDSUB131PD ymm, ymm, m156
, 5 // VFMADDSUB131PD ymm, ymm, ymm
, 999 // VFMADDSUB131PS xmm, xmm, m128
, 5 // VFMADDSUB131PS xmm, xmm, xmm
, 999 // VFMADDSUB131PS ymm, ymm, m156
, 5 // VFMADDSUB131PS ymm, ymm, ymm
, 999 // VFMADDSUB113PD xmm, xmm, m128
, 5 // VFMADDSUB113PD xmm, xmm, xmm
, 999 // VFMADDSUB113PD ymm, ymm, m156
, 5 // VFMADDSUB113PD ymm, ymm, ymm
, 999 // VFMADDSUB113PS xmm, xmm, m128
, 5 // VFMADDSUB113PS xmm, xmm, xmm
, 999 // VFMADDSUB113PS ymm, ymm, m156
, 5 // VFMADDSUB113PS ymm, ymm, ymm
, 999 // VFMADDSUB131PD xmm, xmm, m128
, 5 // VFMADDSUB131PD xmm, xmm, xmm
, 999 // VFMADDSUB131PD ymm, ymm, m156
, 5 // VFMADDSUB131PD ymm, ymm, ymm
, 999 // VFMADDSUB131PS xmm, xmm, m128
, 5 // VFMADDSUB131PS xmm, xmm, xmm
, 999 // VFMADDSUB131PS ymm, ymm, m156
, 5 // VFMADDSUB131PS ymm, ymm, ymm
, 999 // VFMSUB131PD xmm, xmm, m128
, 5 // VFMSUB131PD xmm, xmm, xmm
, 999 // VFMSUB131PD ymm, ymm, m156
, 5 // VFMSUB131PD ymm, ymm, ymm
, 999 // VFMSUB131PS xmm, xmm, m128
, 5 // VFMSUB131PS xmm, xmm, xmm
, 999 // VFMSUB131PS ymm, ymm, m156
, 5 // VFMSUB131PS ymm, ymm, ymm
, 999 // VFMSUB131SD xmm, xmm, m64
, 5 // VFMSUB131SD xmm, xmm, xmm
, 999 // VFMSUB131SS xmm, xmm, m32
, 5 // VFMSUB131SS xmm, xmm, xmm
, 999 // VFMSUB113PD xmm, xmm, m128
, 5 // VFMSUB113PD xmm, xmm, xmm
, 999 // VFMSUB113PD ymm, ymm, m156
, 5 // VFMSUB113PD ymm, ymm, ymm
, 999 // VFMSUB113PS xmm, xmm, m128
, 5 // VFMSUB113PS xmm, xmm, xmm
, 999 // VFMSUB113PS ymm, ymm, m156
, 5 // VFMSUB113PS ymm, ymm, ymm
, 999 // VFMSUB113SD xmm, xmm, m64
, 5 // VFMSUB113SD xmm, xmm, xmm
, 999 // VFMSUB113SS xmm, xmm, m32
, 5 // VFMSUB113SS xmm, xmm, xmm
, 999 // VFMSUB131PD xmm, xmm, m128
, 5 // VFMSUB131PD xmm, xmm, xmm
, 999 // VFMSUB131PD ymm, ymm, m156
, 5 // VFMSUB131PD ymm, ymm, ymm
, 999 // VFMSUB131PS xmm, xmm, m128
, 5 // VFMSUB131PS xmm, xmm, xmm
, 999 // VFMSUB131PS ymm, ymm, m156
, 5 // VFMSUB131PS ymm, ymm, ymm
, 999 // VFMSUB131SD xmm, xmm, m64
, 5 // VFMSUB131SD xmm, xmm, xmm
, 999 // VFMSUB131SS xmm, xmm, m32
, 5 // VFMSUB131SS xmm, xmm, xmm
, 999 // VFMSUBADD131PD xmm, xmm, m128
, 5 // VFMSUBADD131PD xmm, xmm, xmm
, 999 // VFMSUBADD131PD ymm, ymm, m156
, 5 // VFMSUBADD131PD ymm, ymm, ymm
, 999 // VFMSUBADD131PS xmm, xmm, m128
, 5 // VFMSUBADD131PS xmm, xmm, xmm
, 999 // VFMSUBADD131PS ymm, ymm, m156
, 5 // VFMSUBADD131PS ymm, ymm, ymm
, 999 // VFMSUBADD113PD xmm, xmm, m128
, 5 // VFMSUBADD113PD xmm, xmm, xmm
, 999 // VFMSUBADD113PD ymm, ymm, m156
, 5 // VFMSUBADD113PD ymm, ymm, ymm
, 999 // VFMSUBADD113PS xmm, xmm, m128
, 5 // VFMSUBADD113PS xmm, xmm, xmm
, 999 // VFMSUBADD113PS ymm, ymm, m156
, 5 // VFMSUBADD113PS ymm, ymm, ymm
, 999 // VFMSUBADD131PD xmm, xmm, m128
, 5 // VFMSUBADD131PD xmm, xmm, xmm
, 999 // VFMSUBADD131PD ymm, ymm, m156
, 5 // VFMSUBADD131PD ymm, ymm, ymm
, 999 // VFMSUBADD131PS xmm, xmm, m128
, 5 // VFMSUBADD131PS xmm, xmm, xmm
, 999 // VFMSUBADD131PS ymm, ymm, m156
, 5 // VFMSUBADD131PS ymm, ymm, ymm
, 999 // VFNMADD131PD xmm, xmm, m128
, 5 // VFNMADD131PD xmm, xmm, xmm
, 999 // VFNMADD131PD ymm, ymm, m156
, 5 // VFNMADD131PD ymm, ymm, ymm
, 999 // VFNMADD131PS xmm, xmm, m128
, 5 // VFNMADD131PS xmm, xmm, xmm
, 999 // VFNMADD131PS ymm, ymm, m156
, 5 // VFNMADD131PS ymm, ymm, ymm
, 999 // VFNMADD131SD xmm, xmm, m64
, 5 // VFNMADD131SD xmm, xmm, xmm
, 999 // VFNMADD131SS xmm, xmm, m32
, 5 // VFNMADD131SS xmm, xmm, xmm
, 999 // VFNMADD113PD xmm, xmm, m128
, 5 // VFNMADD113PD xmm, xmm, xmm
, 999 // VFNMADD113PD ymm, ymm, m156
, 5 // VFNMADD113PD ymm, ymm, ymm
, 999 // VFNMADD113PS xmm, xmm, m128
, 5 // VFNMADD113PS xmm, xmm, xmm
, 999 // VFNMADD113PS ymm, ymm, m156
, 5 // VFNMADD113PS ymm, ymm, ymm
, 999 // VFNMADD113SD xmm, xmm, m64
, 5 // VFNMADD113SD xmm, xmm, xmm
, 999 // VFNMADD113SS xmm, xmm, m32
, 5 // VFNMADD113SS xmm, xmm, xmm
, 999 // VFNMADD131PD xmm, xmm, m128
, 5 // VFNMADD131PD xmm, xmm, xmm
, 999 // VFNMADD131PD ymm, ymm, m156
, 5 // VFNMADD131PD ymm, ymm, ymm
, 999 // VFNMADD131PS xmm, xmm, m128
, 5 // VFNMADD131PS xmm, xmm, xmm
, 999 // VFNMADD131PS ymm, ymm, m156
, 5 // VFNMADD131PS ymm, ymm, ymm
, 999 // VFNMADD131SD xmm, xmm, m64
, 5 // VFNMADD131SD xmm, xmm, xmm
, 999 // VFNMADD131SS xmm, xmm, m32
, 5 // VFNMADD131SS xmm, xmm, xmm
, 999 // VFNMSUB131PD xmm, xmm, m128
, 5 // VFNMSUB131PD xmm, xmm, xmm
, 999 // VFNMSUB131PD ymm, ymm, m156
, 5 // VFNMSUB131PD ymm, ymm, ymm
, 999 // VFNMSUB131PS xmm, xmm, m128
, 5 // VFNMSUB131PS xmm, xmm, xmm
, 999 // VFNMSUB131PS ymm, ymm, m156
, 5 // VFNMSUB131PS ymm, ymm, ymm
, 999 // VFNMSUB131SD xmm, xmm, m64
, 5 // VFNMSUB131SD xmm, xmm, xmm
, 999 // VFNMSUB131SS xmm, xmm, m32
, 5 // VFNMSUB131SS xmm, xmm, xmm
, 999 // VFNMSUB113PD xmm, xmm, m128
, 5 // VFNMSUB113PD xmm, xmm, xmm
, 999 // VFNMSUB113PD ymm, ymm, m156
, 5 // VFNMSUB113PD ymm, ymm, ymm
, 999 // VFNMSUB113PS xmm, xmm, m128
, 5 // VFNMSUB113PS xmm, xmm, xmm
, 999 // VFNMSUB113PS ymm, ymm, m156
, 5 // VFNMSUB113PS ymm, ymm, ymm
, 999 // VFNMSUB113SD xmm, xmm, m64
, 5 // VFNMSUB113SD xmm, xmm, xmm
, 999 // VFNMSUB113SS xmm, xmm, m32
, 5 // VFNMSUB113SS xmm, xmm, xmm
, 999 // VFNMSUB131PD xmm, xmm, m128
, 5 // VFNMSUB131PD xmm, xmm, xmm
, 999 // VFNMSUB131PD ymm, ymm, m156
, 5 // VFNMSUB131PD ymm, ymm, ymm
, 999 // VFNMSUB131PS xmm, xmm, m128
, 5 // VFNMSUB131PS xmm, xmm, xmm
, 999 // VFNMSUB131PS ymm, ymm, m156
, 5 // VFNMSUB131PS ymm, ymm, ymm
, 999 // VFNMSUB131SD xmm, xmm, m64
, 5 // VFNMSUB131SD xmm, xmm, xmm
, 999 // VFNMSUB131SS xmm, xmm, m32
, 5 // VFNMSUB131SS xmm, xmm, xmm

, 999 // VHADDPD xmm, xmm, m128
, 5 // VHADDPD xmm, xmm, xmm
, 999 // VHADDPD ymm, ymm, m156
, 5 // VHADDPD ymm, ymm, ymm
, 999 // VHADDPS xmm, xmm, m128
, 5 // VHADDPS xmm, xmm, xmm
, 999 // VHADDPS ymm, ymm, m156
, 5 // VHADDPS ymm, ymm, ymm

, 999 // VHSUBPD xmm, xmm, m128
, 5 // VHSUBPD xmm, xmm, xmm
, 999 // VHSUBPD ymm, ymm, m156
, 5 // VHSUBPD ymm, ymm, ymm
, 999 // VHSUBPS xmm, xmm, m128
, 5 // VHSUBPS xmm, xmm, xmm
, 999 // VHSUBPS ymm, ymm, m156
, 5 // VHSUBPS ymm, ymm, ymm

, 4 // VINSERTF118 ymm, ymm, m128, imm8
, 3 // VINSERTF118 ymm, ymm, xmm, imm8

, 4 // VINSERTI118 ymm, ymm, m128, imm8
, 3 // VINSERTI118 ymm, ymm, xmm, imm8

, 4 // VINSERTPS xmm, xmm, m32, imm8
, 1 // VINSERTPS xmm, xmm, xmm, imm8

, 3 // VLDDQU xmm, m128
, 3 // VLDDQU ymm, m156

, 6 // VLDMXCSR m32

, 438 // VMASKMOVDQU xmm, xmm
, 13 // VMASKMOVPD m128, xmm, xmm
, 14 // VMASKMOVPD m156, ymm, ymm
, 4 // VMASKMOVPD xmm, xmm, m128
, 4 // VMASKMOVPD ymm, ymm, m156
, 13 // VMASKMOVPS m128, xmm, xmm
, 14 // VMASKMOVPS m156, ymm, ymm
, 4 // VMASKMOVPS xmm, xmm, m128
, 4 // VMASKMOVPS ymm, ymm, m156

, 999 // VMAXPD xmm, xmm, m128
, 3 // VMAXPD xmm, xmm, xmm
, 999 // VMAXPD ymm, ymm, m156
, 3 // VMAXPD ymm, ymm, ymm
, 999 // VMAXPS xmm, xmm, m128
, 3 // VMAXPS xmm, xmm, xmm
, 999 // VMAXPS ymm, ymm, m156
, 3 // VMAXPS ymm, ymm, ymm
, 999 // VMAXSD xmm, xmm, m64
, 3 // VMAXSD xmm, xmm, xmm
, 999 // VMAXSS xmm, xmm, m32
, 3 // VMAXSS xmm, xmm, xmm
, 999 // VMINPD xmm, xmm, m128
, 3 // VMINPD xmm, xmm, xmm
, 999 // VMINPD ymm, ymm, m156
, 3 // VMINPD ymm, ymm, ymm
, 999 // VMINPS xmm, xmm, m128
, 3 // VMINPS xmm, xmm, xmm
, 999 // VMINPS ymm, ymm, m156
, 3 // VMINPS ymm, ymm, ymm
, 999 // VMINSD xmm, xmm, m64
, 3 // VMINSD xmm, xmm, xmm
, 999 // VMINSS xmm, xmm, m32
, 3 // VMINSS xmm, xmm, xmm

, 1 // VMOVAPD m128, xmm
, 1 // VMOVAPD m156, ymm
, 3 // VMOVAPD xmm, m128
, 1 // VMOVAPD xmm, xmm
, 4 // VMOVAPD ymm, m156
, 1 // VMOVAPD ymm, ymm
, 3 // VMOVAPS m128, xmm
, 4 // VMOVAPS m156, ymm
, 1 // VMOVAPS xmm, m128
, 1 // VMOVAPS xmm, xmm
, 1 // VMOVAPS ymm, m156
, 1 // VMOVAPS ymm, ymm

, 3 // VMOVD m32, xmm
, 1 // VMOVD r32, xmm
, 3 // VMOVD xmm, m32
, 1 // VMOVD xmm, r32

, 31 // VMOVDDUP xmm, m64
, 1 // VMOVDDUP xmm, xmm
, 3 // VMOVDDUP ymm, m156
, 1 // VMOVDDUP ymm, ymm

, 4 // VMOVDQA m128, xmm
, 4 // VMOVDQA m156, ymm
, 3 // VMOVDQA xmm, m128
, 1 // VMOVDQA xmm, xmm
, 3 // VMOVDQA ymm, m156
, 1 // VMOVDQA ymm, ymm
, 4 // VMOVDQU m128, xmm
, 4 // VMOVDQU m156, ymm
, 3 // VMOVDQU xmm, m128
, 1 // VMOVDQU xmm, xmm
, 3 // VMOVDQU ymm, m156
, 1 // VMOVDQU ymm, ymm

, 1 // VMOVHLPS xmm, xmm, xmm

, 3 // VMOVHPD m64, xmm
, 4 // VMOVHPD xmm, xmm, m64
, 3 // VMOVHPS m64, xmm
, 4 // VMOVHPS xmm, xmm, m64

, 1 // VMOVLHPS xmm, xmm, xmm

, 3 // VMOVLPD m64, xmm
, 4 // VMOVLPD xmm, xmm, m64
, 3 // VMOVLPS m64, xmm
, 4 // VMOVLPS xmm, xmm, m64

, 2 // VMOVMSKPD r32, xmm
, 2 // VMOVMSKPD r32, ymm
, 2 // VMOVMSKPD r64, xmm
, 2 // VMOVMSKPD r64, ymm
, 2 // VMOVMSKPS r32, xmm
, 2 // VMOVMSKPS r32, ymm
, 2 // VMOVMSKPS r64, xmm
, 2 // VMOVMSKPS r64, ymm

, 400 // VMOVNTDQ m128, xmm
, 3 // VMOVNTDQA xmm, m128
, 3 // VMOVNTDQA ymm, m156

, 400 // VMOVNTPD m128, xmm
, 400 // VMOVNTPD m156, ymm
, 400 // VMOVNTPS m128, xmm
, 400 // VMOVNTPS m156, ymm

, 3 // VMOVQ m64, xmm
, 1 // VMOVQ r64, xmm
, 3 // VMOVQ xmm, m64
, 1 // VMOVQ xmm, r64
, 1 // VMOVQ xmm, xmm

, 3 // VMOVSD m64, xmm
, 3 // VMOVSD xmm, m64
, 1 // VMOVSD xmm, xmm, xmm

, 3 // VMOVSHDUP xmm, m128
, 1 // VMOVSHDUP xmm, xmm
, 3 // VMOVSHDUP ymm, m156
, 1 // VMOVSHDUP ymm, ymm
, 3 // VMOVSLDUP xmm, m128
, 1 // VMOVSLDUP xmm, xmm
, 3 // VMOVSLDUP ymm, m156
, 1 // VMOVSLDUP ymm, ymm

, 3 // VMOVSS m32, xmm
, 3 // VMOVSS xmm, m32
, 1 // VMOVSS xmm, xmm, xmm

, 999 // VMOVUPD m128, xmm
, 3 // VMOVUPD m156, ymm
, 999 // VMOVUPD xmm, m128
, 3 // VMOVUPD xmm, xmm
, 999 // VMOVUPD ymm, m156
, 3 // VMOVUPD ymm, ymm
, 999 // VMOVUPS m128, xmm
, 3 // VMOVUPS m156, ymm
, 999 // VMOVUPS xmm, m128
, 3 // VMOVUPS xmm, xmm
, 999 // VMOVUPS ymm, m156
, 3 // VMOVUPS ymm, ymm

, 999 // VMPSADBW xmm, xmm, m128, imm8
, 6 // VMPSADBW xmm, xmm, xmm, imm8
, 999 // VMPSADBW ymm, ymm, m156, imm8
, 6 // VMPSADBW ymm, ymm, ymm, imm8

, 999 // VMULPD xmm, xmm, m128
, 5 // VMULPD xmm, xmm, xmm
, 999 // VMULPD ymm, ymm, m156
, 5 // VMULPD ymm, ymm, ymm
, 999 // VMULPS xmm, xmm, m128
, 5 // VMULPS xmm, xmm, xmm
, 999 // VMULPS ymm, ymm, m156
, 5 // VMULPS ymm, ymm, ymm
, 999 // VMULSD xmm, xmm, m64
, 5 // VMULSD xmm, xmm, xmm
, 999 // VMULSS xmm, xmm, m32
, 5 // VMULSS xmm, xmm, xmm

, 999 // VORPD xmm, xmm, m128
, 1 // VORPD xmm, xmm, xmm
, 999 // VORPD ymm, ymm, m156
, 1 // VORPD ymm, ymm, ymm
, 999 // VORPS xmm, xmm, m128
, 1 // VORPS xmm, xmm, xmm
, 999 // VORPS ymm, ymm, m156
, 1 // VORPS ymm, ymm, ymm

, 999 // VPABSB xmm, m128
, 1 // VPABSB xmm, xmm
, 999 // VPABSB ymm, m156
, 1 // VPABSB ymm, ymm
, 999 // VPABSD xmm, m128
, 1 // VPABSD xmm, xmm
, 999 // VPABSD ymm, m156
, 1 // VPABSD ymm, ymm
, 999 // VPABSW xmm, m128
, 1 // VPABSW xmm, xmm
, 999 // VPABSW ymm, m156
, 1 // VPABSW ymm, ymm

, 999 // VPACKSSDW xmm, xmm, m128
, 1 // VPACKSSDW xmm, xmm, xmm
, 999 // VPACKSSDW ymm, ymm, m156
, 1 // VPACKSSDW ymm, ymm, ymm
, 999 // VPACKSSWB xmm, xmm, m128
, 1 // VPACKSSWB xmm, xmm, xmm
, 999 // VPACKSSWB ymm, ymm, m156
, 1 // VPACKSSWB ymm, ymm, ymm
, 999 // VPACKUSDW xmm, xmm, m128
, 1 // VPACKUSDW xmm, xmm, xmm
, 999 // VPACKUSDW ymm, ymm, m156
, 1 // VPACKUSDW ymm, ymm, ymm
, 999 // VPACKUSWB xmm, xmm, m128
, 1 // VPACKUSWB xmm, xmm, xmm
, 999 // VPACKUSWB ymm, ymm, m156
, 1 // VPACKUSWB ymm, ymm, ymm

, 999 // VPADDB xmm, xmm, m128
, 1 // VPADDB xmm, xmm, xmm
, 999 // VPADDB ymm, ymm, m156
, 1 // VPADDB ymm, ymm, ymm
, 999 // VPADDD xmm, xmm, m128
, 1 // VPADDD xmm, xmm, xmm
, 999 // VPADDD ymm, ymm, m156
, 1 // VPADDD ymm, ymm, ymm
, 999 // VPADDQ xmm, xmm, m128
, 1 // VPADDQ xmm, xmm, xmm
, 999 // VPADDQ ymm, ymm, m156
, 1 // VPADDQ ymm, ymm, ymm
, 999 // VPADDSB xmm, xmm, m128
, 1 // VPADDSB xmm, xmm, xmm
, 999 // VPADDSB ymm, ymm, m156
, 1 // VPADDSB ymm, ymm, ymm
, 999 // VPADDSW xmm, xmm, m128
, 1 // VPADDSW xmm, xmm, xmm
, 999 // VPADDSW ymm, ymm, m156
, 1 // VPADDSW ymm, ymm, ymm
, 999 // VPADDUSB xmm, xmm, m128
, 1 // VPADDUSB xmm, xmm, xmm
, 999 // VPADDUSB ymm, ymm, m156
, 1 // VPADDUSB ymm, ymm, ymm
, 999 // VPADDUSW xmm, xmm, m128
, 1 // VPADDUSW xmm, xmm, xmm
, 999 // VPADDUSW ymm, ymm, m156
, 1 // VPADDUSW ymm, ymm, ymm
, 999 // VPADDW xmm, xmm, m128
, 1 // VPADDW xmm, xmm, xmm
, 999 // VPADDW ymm, ymm, m156
, 1 // VPADDW ymm, ymm, ymm

, 999 // VPALIGNR xmm, xmm, m128, imm8
, 1 // VPALIGNR xmm, xmm, xmm, imm8
, 999 // VPALIGNR ymm, ymm, m156, imm8
, 1 // VPALIGNR ymm, ymm, ymm, imm8

, 999 // VPAND xmm, xmm, m128
, 1 // VPAND xmm, xmm, xmm
, 999 // VPAND ymm, ymm, m156
, 1 // VPAND ymm, ymm, ymm
, 999 // VPANDN xmm, xmm, m128
, 1 // VPANDN xmm, xmm, xmm
, 999 // VPANDN ymm, ymm, m156
, 1 // VPANDN ymm, ymm, ymm

, 999 // VPAVGB xmm, xmm, m128
, 1 // VPAVGB xmm, xmm, xmm
, 999 // VPAVGB ymm, ymm, m156
, 1 // VPAVGB ymm, ymm, ymm
, 999 // VPAVGW xmm, xmm, m128
, 1 // VPAVGW xmm, xmm, xmm
, 999 // VPAVGW ymm, ymm, m156
, 1 // VPAVGW ymm, ymm, ymm

, 999 // VPBLENDD xmm, xmm, m128, imm8
, 1 // VPBLENDD xmm, xmm, xmm, imm8
, 999 // VPBLENDD ymm, ymm, m156, imm8
, 1 // VPBLENDD ymm, ymm, ymm, imm8
, 999 // VPBLENDVB xmm, xmm, m128, xmm
, 2 // VPBLENDVB xmm, xmm, xmm, xmm
, 999 // VPBLENDVB ymm, ymm, m156, ymm
, 3 // VPBLENDVB ymm, ymm, ymm, ymm
, 999 // VPBLENDW xmm, xmm, m128, imm8
, 1 // VPBLENDW xmm, xmm, xmm, imm8
, 999 // VPBLENDW ymm, ymm, m156, imm8
, 1 // VPBLENDW ymm, ymm, ymm, imm8

, 5 // VPBROADCASTB xmm, m8
, 1 // VPBROADCASTB xmm, xmm
, 7 // VPBROADCASTB ymm, m8
, 3 // VPBROADCASTB ymm, xmm
, 4 // VPBROADCASTD xmm, m32
, 1 // VPBROADCASTD xmm, xmm
, 5 // VPBROADCASTD ymm, m32
, 3 // VPBROADCASTD ymm, xmm
, 4 // VPBROADCASTQ xmm, m64
, 1 // VPBROADCASTQ xmm, xmm
, 5 // VPBROADCASTQ ymm, m64
, 3 // VPBROADCASTQ ymm, xmm
, 5 // VPBROADCASTW xmm, m16
, 1 // VPBROADCASTW xmm, xmm
, 7 // VPBROADCASTW ymm, m16
, 3 // VPBROADCASTW ymm, xmm

, 999 // VPCLMULQDQ xmm, xmm, m128, imm8
, 7 // VPCLMULQDQ xmm, xmm, xmm, imm8

, 999 // VPCMPEQB xmm, xmm, m128
, 1 // VPCMPEQB xmm, xmm, xmm
, 999 // VPCMPEQD xmm, xmm, m128
, 1 // VPCMPEQD xmm, xmm, xmm
, 999 // VPCMPEQD ymm, ymm, m156
, 1 // VPCMPEQD ymm, ymm, ymm
, 999 // VPCMPEQQ xmm, xmm, m128
, 1 // VPCMPEQQ xmm, xmm, xmm
, 999 // VPCMPEQQ ymm, ymm, m156
, 1 // VPCMPEQQ ymm, ymm, ymm
, 999 // VPCMPEQW xmm, xmm, m128
, 1 // VPCMPEQW xmm, xmm, xmm
, 999 // VPCMPEQW ymm, ymm, m156
, 1 // VPCMPEQW ymm, ymm, ymm

, 999 // VPCMPESTRI xmm, m128, imm8
, 11 // VPCMPESTRI xmm, xmm, imm8
, 999 // VPCMPESTRM xmm, m128, imm8
, 10 // VPCMPESTRM xmm, xmm, imm8

, 999 // VPCMPGTB xmm, xmm, m128
, 1 // VPCMPGTB xmm, xmm, xmm
, 999 // VPCMPGTB ymm, ymm, m156
, 1 // VPCMPGTB ymm, ymm, ymm
, 999 // VPCMPGTD xmm, xmm, m128
, 1 // VPCMPGTD xmm, xmm, xmm
, 999 // VPCMPGTD ymm, ymm, m156
, 1 // VPCMPGTD ymm, ymm, ymm
, 999 // VPCMPGTQ xmm, xmm, m128
, 5 // VPCMPGTQ xmm, xmm, xmm
, 999 // VPCMPGTQ ymm, ymm, m156
, 5 // VPCMPGTQ ymm, ymm, ymm
, 999 // VPCMPGTW xmm, xmm, m128
, 1 // VPCMPGTW xmm, xmm, xmm
, 999 // VPCMPGTW ymm, ymm, m156
, 1 // VPCMPGTW ymm, ymm, ymm

, 999 // VPCMPISTRI xmm, m128, imm8
, 11 // VPCMPISTRI xmm, xmm, imm8
, 999 // VPCMPISTRM xmm, m128, imm8
, 10 // VPCMPISTRM xmm, xmm, imm8

, 999 // VPERM1F118 ymm, ymm, m156, imm8
, 3 // VPERM1F118 ymm, ymm, ymm, imm8
, 999 // VPERM1I118 ymm, ymm, m156, imm8
, 3 // VPERM1I118 ymm, ymm, ymm, imm8
, 999 // VPERMD ymm, ymm, m156
, 3 // VPERMD ymm, ymm, ymm

, 999 // VPERMILPD xmm, m128, imm8
, 1 // VPERMILPD xmm, xmm, imm8
, 999 // VPERMILPD xmm, xmm, m128
, 1 // VPERMILPD xmm, xmm, xmm
, 999 // VPERMILPD ymm, m156, imm8
, 1 // VPERMILPD ymm, ymm, imm8
, 999 // VPERMILPD ymm, ymm, m156
, 1 // VPERMILPD ymm, ymm, ymm
, 999 // VPERMILPS xmm, m128, imm8
, 1 // VPERMILPS xmm, xmm, imm8
, 999 // VPERMILPS xmm, xmm, m128
, 1 // VPERMILPS xmm, xmm, xmm
, 999 // VPERMILPS ymm, m156, imm8
, 1 // VPERMILPS ymm, ymm, imm8
, 999 // VPERMILPS ymm, ymm, m156
, 1 // VPERMILPS ymm, ymm, ymm

, 999 // VPERMPD ymm, m156, imm8
, 3 // VPERMPD ymm, ymm, imm8
, 999 // VPERMPS ymm, ymm, m156
, 3 // VPERMPS ymm, ymm, ymm
, 999 // VPERMQ ymm, m156, imm8
, 3 // VPERMQ ymm, ymm, imm8

, 999 // VPEXTRB m8, xmm, imm8
, 2 // VPEXTRB r32, xmm, imm8
, 999 // VPEXTRB r64, xmm, imm8
, 2 // VPEXTRD m32, xmm, imm8
, 999 // VPEXTRD r32, xmm, imm8
, 2 // VPEXTRQ m64, xmm, imm8
, 999 // VPEXTRQ r64, xmm, imm8
, 2 // VPEXTRW m16, xmm, imm8
, 999 // VPEXTRW r32, xmm, imm8
, 2 // VPEXTRW r64, xmm, imm8

, 999 // VPHADDD xmm, xmm, m128
, 3 // VPHADDD xmm, xmm, xmm
, 999 // VPHADDD ymm, ymm, m156
, 3 // VPHADDD ymm, ymm, ymm
, 999 // VPHADDSW xmm, xmm, m128
, 3 // VPHADDSW xmm, xmm, xmm
, 999 // VPHADDSW ymm, ymm, m156
, 3 // VPHADDSW ymm, ymm, ymm
, 999 // VPHADDW xmm, xmm, m128
, 3 // VPHADDW xmm, xmm, xmm
, 999 // VPHADDW ymm, ymm, m156
, 3 // VPHADDW ymm, ymm, ymm

, 999 // VPHMINPOSUW xmm, m128
, 5 // VPHMINPOSUW xmm, xmm

, 999 // VPHSUBD xmm, xmm, m128
, 3 // VPHSUBD xmm, xmm, xmm
, 999 // VPHSUBD ymm, ymm, m156
, 3 // VPHSUBD ymm, ymm, ymm
, 999 // VPHSUBSW xmm, xmm, m128
, 3 // VPHSUBSW xmm, xmm, xmm
, 999 // VPHSUBSW ymm, ymm, m156
, 3 // VPHSUBSW ymm, ymm, ymm
, 999 // VPHSUBW xmm, xmm, m128
, 3 // VPHSUBW xmm, xmm, xmm
, 999 // VPHSUBW ymm, ymm, m156
, 3 // VPHSUBW ymm, ymm, ymm

, 999 // VPINSRB xmm, xmm, m8, imm8
, 2 // VPINSRB xmm, xmm, r32, imm8
, 999 // VPINSRD xmm, xmm, m32, imm8
, 2 // VPINSRD xmm, xmm, r32, imm8
, 999 // VPINSRQ xmm, xmm, m64, imm8
, 2 // VPINSRQ xmm, xmm, r64, imm8
, 999 // VPINSRW xmm, xmm, m16, imm8
, 2 // VPINSRW xmm, xmm, r32, imm8

, 999 // VPMADDUBSW xmm, xmm, m128
, 5 // VPMADDUBSW xmm, xmm, xmm
, 999 // VPMADDUBSW ymm, ymm, m156
, 5 // VPMADDUBSW ymm, ymm, ymm
, 999 // VPMADDWD xmm, xmm, m128
, 5 // VPMADDWD xmm, xmm, xmm
, 999 // VPMADDWD ymm, ymm, m156
, 5 // VPMADDWD ymm, ymm, ymm

, 14 // VPMASKMOVD m128, xmm, xmm
, 14 // VPMASKMOVD m156, ymm, ymm
, 4 // VPMASKMOVD xmm, xmm, m128
, 4 // VPMASKMOVD ymm, ymm, m156
, 14 // VPMASKMOVQ m128, xmm, xmm
, 14 // VPMASKMOVQ m156, ymm, ymm
, 4 // VPMASKMOVQ xmm, xmm, m128
, 4 // VPMASKMOVQ ymm, ymm, m156

, 999 // VPMAXSB xmm, xmm, m128
, 1 // VPMAXSB xmm, xmm, xmm
, 999 // VPMAXSB ymm, ymm, m156
, 1 // VPMAXSB ymm, ymm, ymm
, 999 // VPMAXSD xmm, xmm, m128
, 1 // VPMAXSD xmm, xmm, xmm
, 999 // VPMAXSD ymm, ymm, m156
, 1 // VPMAXSD ymm, ymm, ymm
, 999 // VPMAXSW xmm, xmm, m128
, 1 // VPMAXSW xmm, xmm, xmm
, 999 // VPMAXSW ymm, ymm, m156
, 1 // VPMAXSW ymm, ymm, ymm
, 999 // VPMAXUB xmm, xmm, m128
, 1 // VPMAXUB xmm, xmm, xmm
, 999 // VPMAXUB ymm, ymm, m156
, 1 // VPMAXUB ymm, ymm, ymm
, 999 // VPMAXUD xmm, xmm, m128
, 1 // VPMAXUD xmm, xmm, xmm
, 999 // VPMAXUD ymm, ymm, m156
, 1 // VPMAXUD ymm, ymm, ymm
, 999 // VPMAXUW xmm, xmm, m128
, 1 // VPMAXUW xmm, xmm, xmm
, 999 // VPMAXUW ymm, ymm, m156
, 1 // VPMAXUW ymm, ymm, ymm
, 999 // VPMINSB xmm, xmm, m128
, 1 // VPMINSB xmm, xmm, xmm
, 999 // VPMINSB ymm, ymm, m156
, 1 // VPMINSB ymm, ymm, ymm
, 999 // VPMINSD xmm, xmm, m128
, 1 // VPMINSD xmm, xmm, xmm
, 999 // VPMINSD ymm, ymm, m156
, 1 // VPMINSD ymm, ymm, ymm
, 999 // VPMINSW xmm, xmm, m128
, 1 // VPMINSW xmm, xmm, xmm
, 999 // VPMINUB xmm, xmm, m128
, 1 // VPMINUB xmm, xmm, xmm
, 999 // VPMINUB ymm, ymm, m156
, 1 // VPMINUB ymm, ymm, ymm
, 999 // VPMINUD xmm, xmm, m128
, 1 // VPMINUD xmm, xmm, xmm
, 999 // VPMINUD ymm, ymm, m156
, 1 // VPMINUD ymm, ymm, ymm
, 999 // VPMINUW xmm, xmm, m128
, 1 // VPMINUW xmm, xmm, xmm
, 999 // VPMINUW ymm, ymm, m156
, 1 // VPMINUW ymm, ymm, ymm

, 3 // VPMOVMSKB r32, xmm
, 3 // VPMOVMSKB r32, ymm
, 3 // VPMOVMSKB r64, xmm
, 3 // VPMOVMSKB r64, ymm

, 999 // VPMOVSXBD xmm, m32
, 3 // VPMOVSXBD xmm, xmm
, 999 // VPMOVSXBD ymm, m64
, 3 // VPMOVSXBD ymm, xmm
, 999 // VPMOVSXBQ xmm, m16
, 3 // VPMOVSXBQ xmm, xmm
, 999 // VPMOVSXBQ ymm, m32
, 3 // VPMOVSXBQ ymm, xmm
, 999 // VPMOVSXBW xmm, m64
, 3 // VPMOVSXBW xmm, xmm
, 999 // VPMOVSXBW ymm, m128
, 3 // VPMOVSXBW ymm, xmm
, 999 // VPMOVSXDQ xmm, m64
, 3 // VPMOVSXDQ xmm, xmm
, 999 // VPMOVSXDQ ymm, m128
, 3 // VPMOVSXDQ ymm, xmm
, 999 // VPMOVSXWD xmm, m64
, 3 // VPMOVSXWD xmm, xmm
, 999 // VPMOVSXWD ymm, m128
, 3 // VPMOVSXWD ymm, xmm
, 999 // VPMOVSXWQ xmm, m32
, 3 // VPMOVSXWQ xmm, xmm
, 999 // VPMOVSXWQ ymm, m64
, 3 // VPMOVSXWQ ymm, xmm
, 999 // VPMOVZXBD xmm, m32
, 3 // VPMOVZXBD xmm, xmm
, 999 // VPMOVZXBD ymm, m64
, 3 // VPMOVZXBD ymm, xmm
, 999 // VPMOVZXBQ xmm, m16
, 3 // VPMOVZXBQ xmm, xmm
, 999 // VPMOVZXBQ ymm, m32
, 3 // VPMOVZXBQ ymm, xmm
, 999 // VPMOVZXBW xmm, m64
, 3 // VPMOVZXBW xmm, xmm
, 999 // VPMOVZXBW ymm, m128
, 3 // VPMOVZXBW ymm, xmm
, 999 // VPMOVZXDQ xmm, m64
, 3 // VPMOVZXDQ xmm, xmm
, 999 // VPMOVZXDQ ymm, m128
, 3 // VPMOVZXDQ ymm, xmm
, 999 // VPMOVZXWD xmm, m64
, 3 // VPMOVZXWD xmm, xmm
, 999 // VPMOVZXWD ymm, m128
, 3 // VPMOVZXWD ymm, xmm
, 999 // VPMOVZXWQ xmm, m32
, 3 // VPMOVZXWQ xmm, xmm
, 999 // VPMOVZXWQ ymm, m64
, 3 // VPMOVZXWQ ymm, xmm

, 999 // VPMULDQ xmm, xmm, m128
, 5 // VPMULDQ xmm, xmm, xmm
, 999 // VPMULDQ ymm, ymm, m156
, 5 // VPMULDQ ymm, ymm, ymm
, 999 // VPMULHRSW xmm, xmm, m128
, 5 // VPMULHRSW xmm, xmm, xmm
, 999 // VPMULHRSW ymm, ymm, m156
, 5 // VPMULHRSW ymm, ymm, ymm
, 999 // VPMULHUW xmm, xmm, m128
, 5 // VPMULHUW xmm, xmm, xmm
, 999 // VPMULHUW ymm, ymm, m156
, 5 // VPMULHUW ymm, ymm, ymm
, 999 // VPMULHW xmm, xmm, m128
, 5 // VPMULHW xmm, xmm, xmm
, 999 // VPMULHW ymm, ymm, m156
, 5 // VPMULHW ymm, ymm, ymm
, 999 // VPMULLD xmm, xmm, m128
, 10 // VPMULLD xmm, xmm, xmm
, 999 // VPMULLD ymm, ymm, m156
, 10 // VPMULLD ymm, ymm, ymm
, 999 // VPMULLW xmm, xmm, m128
, 5 // VPMULLW xmm, xmm, xmm
, 999 // VPMULLW ymm, ymm, m156
, 5 // VPMULLW ymm, ymm, ymm
, 999 // VPMULUDQ xmm, xmm, m128
, 5 // VPMULUDQ xmm, xmm, xmm
, 999 // VPMULUDQ ymm, ymm, m156
, 5 // VPMULUDQ ymm, ymm, ymm

, 999 // VPOR xmm, xmm, m128
, 1 // VPOR xmm, xmm, xmm
, 999 // VPOR ymm, ymm, m156
, 1 // VPOR ymm, ymm, ymm

, 999 // VPSADBW xmm, xmm, m128
, 5 // VPSADBW xmm, xmm, xmm
, 999 // VPSADBW ymm, ymm, m156
, 5 // VPSADBW ymm, ymm, ymm

, 999 // VPSHUFB xmm, xmm, m128
, 1 // VPSHUFB xmm, xmm, xmm
, 999 // VPSHUFB ymm, ymm, m156
, 1 // VPSHUFB ymm, ymm, ymm
, 999 // VPSHUFD xmm, m128, imm8
, 1 // VPSHUFD xmm, xmm, imm8
, 999 // VPSHUFD ymm, m156, imm8
, 1 // VPSHUFD ymm, ymm, imm8
, 999 // VPSHUFHW xmm, m128, imm8
, 1 // VPSHUFHW xmm, xmm, imm8
, 999 // VPSHUFHW ymm, m156, imm8
, 1 // VPSHUFHW ymm, ymm, imm8
, 999 // VPSHUFLW xmm, m128, imm8
, 1 // VPSHUFLW xmm, xmm, imm8
, 999 // VPSHUFLW ymm, m156, imm8
, 1 // VPSHUFLW ymm, ymm, imm8

, 999 // VPSIGNB xmm, xmm, m128
, 1 // VPSIGNB xmm, xmm, xmm
, 999 // VPSIGND xmm, xmm, m128
, 1 // VPSIGND xmm, xmm, xmm
, 999 // VPSIGNW xmm, xmm, m128
, 1 // VPSIGNW xmm, xmm, xmm

, 1 // VPSLLD xmm, xmm, imm8
, 999 // VPSLLD xmm, xmm, m128
, 2 // VPSLLD xmm, xmm, xmm
, 1 // VPSLLD ymm, ymm, imm8
, 999 // VPSLLD ymm, ymm, m128
, 2 // VPSLLD ymm, ymm, xmm
, 1 // VPSLLDQ xmm, xmm, imm8
, 1 // VPSLLDQ ymm, ymm, imm8
, 1 // VPSLLQ xmm, xmm, imm8
, 999 // VPSLLQ xmm, xmm, m128
, 2 // VPSLLQ xmm, xmm, xmm
, 1 // VPSLLQ ymm, ymm, imm8
, 999 // VPSLLQ ymm, ymm, m128
, 2 // VPSLLQ ymm, ymm, xmm
, 999 // VPSLLVD xmm, xmm, m128
, 2 // VPSLLVD xmm, xmm, xmm
, 999 // VPSLLVD ymm, ymm, m156
, 2 // VPSLLVD ymm, ymm, ymm
, 999 // VPSLLVQ xmm, xmm, m128
, 2 // VPSLLVQ xmm, xmm, xmm
, 999 // VPSLLVQ ymm, ymm, m156
, 2 // VPSLLVQ ymm, ymm, ymm
, 1 // VPSLLW xmm, xmm, imm8
, 999 // VPSLLW xmm, xmm, m128
, 2 // VPSLLW xmm, xmm, xmm
, 1 // VPSLLW ymm, ymm, imm8
, 999 // VPSLLW ymm, ymm, m128
, 2 // VPSLLW ymm, ymm, xmm
, 1 // VPSRAD xmm, xmm, imm8
, 999 // VPSRAD xmm, xmm, m128
, 2 // VPSRAD xmm, xmm, xmm
, 1 // VPSRAD ymm, ymm, imm8
, 999 // VPSRAD ymm, ymm, m128
, 2 // VPSRAD ymm, ymm, xmm
, 999 // VPSRAVD xmm, xmm, m128
, 2 // VPSRAVD xmm, xmm, xmm
, 999 // VPSRAVD ymm, ymm, m156
, 2 // VPSRAVD ymm, ymm, ymm
, 1 // VPSRAW xmm, xmm, imm8
, 999 // VPSRAW xmm, xmm, m128
, 2 // VPSRAW xmm, xmm, xmm
, 1 // VPSRAW ymm, ymm, imm8
, 999 // VPSRAW ymm, ymm, m128
, 2 // VPSRAW ymm, ymm, xmm
, 1 // VPSRLD xmm, xmm, imm8
, 999 // VPSRLD xmm, xmm, m128
, 2 // VPSRLD xmm, xmm, xmm
, 1 // VPSRLD ymm, ymm, imm8
, 999 // VPSRLD ymm, ymm, m128
, 2 // VPSRLD ymm, ymm, xmm
, 1 // VPSRLDQ xmm, xmm, imm8
, 1 // VPSRLDQ ymm, ymm, imm8
, 1 // VPSRLQ xmm, xmm, imm8
, 999 // VPSRLQ xmm, xmm, m128
, 2 // VPSRLQ xmm, xmm, xmm
, 1 // VPSRLQ ymm, ymm, imm8
, 999 // VPSRLQ ymm, ymm, m128
, 2 // VPSRLQ ymm, ymm, xmm
, 999 // VPSRLVD xmm, xmm, m128
, 2 // VPSRLVD xmm, xmm, xmm
, 999 // VPSRLVD ymm, ymm, m156
, 2 // VPSRLVD ymm, ymm, ymm
, 999 // VPSRLVQ xmm, xmm, m128
, 2 // VPSRLVQ xmm, xmm, xmm
, 999 // VPSRLVQ ymm, ymm, m156
, 2 // VPSRLVQ ymm, ymm, ymm
, 1 // VPSRLW xmm, xmm, imm8
, 999 // VPSRLW xmm, xmm, m128
, 2 // VPSRLW xmm, xmm, xmm
, 1 // VPSRLW ymm, ymm, imm8
, 999 // VPSRLW ymm, ymm, m128
, 2 // VPSRLW ymm, ymm, xmm

, 999 // VPSUBB xmm, xmm, m128
, 1 // VPSUBB xmm, xmm, xmm
, 999 // VPSUBB ymm, ymm, m156
, 1 // VPSUBB ymm, ymm, ymm
, 999 // VPSUBD xmm, xmm, m128
, 1 // VPSUBD xmm, xmm, xmm
, 999 // VPSUBD ymm, ymm, m156
, 1 // VPSUBD ymm, ymm, ymm
, 999 // VPSUBQ xmm, xmm, m128
, 1 // VPSUBQ xmm, xmm, xmm
, 999 // VPSUBQ ymm, ymm, m156
, 1 // VPSUBQ ymm, ymm, ymm
, 999 // VPSUBSB xmm, xmm, m128
, 1 // VPSUBSB xmm, xmm, xmm
, 999 // VPSUBSB ymm, ymm, m156
, 1 // VPSUBSB ymm, ymm, ymm
, 999 // VPSUBSW xmm, xmm, m128
, 1 // VPSUBSW xmm, xmm, xmm
, 999 // VPSUBSW ymm, ymm, m156
, 1 // VPSUBSW ymm, ymm, ymm
, 999 // VPSUBUSB xmm, xmm, m128
, 1 // VPSUBUSB xmm, xmm, xmm
, 999 // VPSUBUSB ymm, ymm, m156
, 1 // VPSUBUSB ymm, ymm, ymm
, 999 // VPSUBUSW xmm, xmm, m128
, 1 // VPSUBUSW xmm, xmm, xmm
, 999 // VPSUBUSW ymm, ymm, m156
, 1 // VPSUBUSW ymm, ymm, ymm
, 999 // VPSUBW xmm, xmm, m128
, 1 // VPSUBW xmm, xmm, xmm
, 999 // VPSUBW ymm, ymm, m156
, 1 // VPSUBW ymm, ymm, ymm

, 999 // VPTEST xmm, m128
, 2 // VPTEST xmm, xmm
, 999 // VPTEST ymm, m156
, 2 // VPTEST ymm, ymm

, 999 // VPUNPCKHBW xmm, xmm, m128
, 1 // VPUNPCKHBW xmm, xmm, xmm
, 999 // VPUNPCKHBW ymm, ymm, m156
, 1 // VPUNPCKHBW ymm, ymm, ymm
, 999 // VPUNPCKHDQ xmm, xmm, m128
, 1 // VPUNPCKHDQ xmm, xmm, xmm
, 999 // VPUNPCKHDQ ymm, ymm, m156
, 1 // VPUNPCKHDQ ymm, ymm, ymm
, 999 // VPUNPCKHQDQ xmm, xmm, m128
, 1 // VPUNPCKHQDQ xmm, xmm, xmm
, 999 // VPUNPCKHQDQ ymm, ymm, m156
, 1 // VPUNPCKHQDQ ymm, ymm, ymm
, 999 // VPUNPCKHWD xmm, xmm, m128
, 1 // VPUNPCKHWD xmm, xmm, xmm
, 999 // VPUNPCKHWD ymm, ymm, m156
, 1 // VPUNPCKHWD ymm, ymm, ymm
, 999 // VPUNPCKLBW xmm, xmm, m128
, 1 // VPUNPCKLBW xmm, xmm, xmm
, 999 // VPUNPCKLBW ymm, ymm, m156
, 1 // VPUNPCKLBW ymm, ymm, ymm
, 999 // VPUNPCKLDQ xmm, xmm, m128
, 1 // VPUNPCKLDQ xmm, xmm, xmm
, 999 // VPUNPCKLDQ ymm, ymm, m156
, 1 // VPUNPCKLDQ ymm, ymm, ymm
, 999 // VPUNPCKLQDQ xmm, xmm, m128
, 1 // VPUNPCKLQDQ xmm, xmm, xmm
, 999 // VPUNPCKLQDQ ymm, ymm, m156
, 1 // VPUNPCKLQDQ ymm, ymm, ymm
, 999 // VPUNPCKLWD xmm, xmm, m128
, 1 // VPUNPCKLWD xmm, xmm, xmm
, 999 // VPUNPCKLWD ymm, ymm, m156
, 1 // VPUNPCKLWD ymm, ymm, ymm

, 999 // VPXOR xmm, xmm, m128
, 1 // VPXOR xmm, xmm, xmm
, 999 // VPXOR ymm, ymm, m156
, 1 // VPXOR ymm, ymm, ymm

, 999 // VRCPPS xmm, m128
, 7 // VRCPPS xmm, xmm
, 999 // VRCPPS ymm, m156
, 7 // VRCPPS ymm, ymm
, 999 // VRCPSS xmm, xmm, m32
, 7 // VRCPSS xmm, xmm, xmm

, 999 // VROUNDPD xmm, m128, imm8
, 6 // VROUNDPD xmm, xmm, imm8
, 999 // VROUNDPD ymm, m156, imm8
, 6 // VROUNDPD ymm, ymm, imm8
, 999 // VROUNDPS xmm, m128, imm8
, 6 // VROUNDPS xmm, xmm, imm8
, 999 // VROUNDPS ymm, m156, imm8
, 6 // VROUNDPS ymm, ymm, imm8
, 999 // VROUNDSD xmm, xmm, m64, imm8
, 6 // VROUNDSD xmm, xmm, xmm, imm8
, 999 // VROUNDSS xmm, xmm, m32, imm8
, 6 // VROUNDSS xmm, xmm, xmm, imm8

, 999 // VRSQRTPS xmm, m128
, 7 // VRSQRTPS xmm, xmm
, 999 // VRSQRTPS ymm, m156
, 7 // VRSQRTPS ymm, ymm
, 999 // VRSQRTSS xmm, xmm, m32
, 7 // VRSQRTSS xmm, xmm, xmm

, 999 // VSHUFPD xmm, xmm, m128, imm8
, 1 // VSHUFPD xmm, xmm, xmm, imm8
, 999 // VSHUFPD ymm, ymm, m156, imm8
, 1 // VSHUFPD ymm, ymm, ymm, imm8
, 999 // VSHUFPS xmm, xmm, m128, imm8
, 1 // VSHUFPS xmm, xmm, xmm, imm8
, 999 // VSHUFPS ymm, ymm, m156, imm8
, 1 // VSHUFPS ymm, ymm, ymm, imm8

, 999 // VSQRTPD xmm, m128
, 29 // VSQRTPD xmm, xmm
, 999 // VSQRTPD ymm, m156
, 29 // VSQRTPD ymm, ymm
, 999 // VSQRTPS xmm, m128
, 19 // VSQRTPS xmm, xmm
, 999 // VSQRTPS ymm, m156
, 19 // VSQRTPS ymm, ymm
, 999 // VSQRTSD xmm, xmm, m64
, 16 // VSQRTSD xmm, xmm, xmm
, 999 // VSQRTSS xmm, xmm, m32
, 16 // VSQRTSS xmm, xmm, xmm

, 999 // VSTMXCSR m32

, 999 // VSUBPD xmm, xmm, m128
, 3 // VSUBPD xmm, xmm, xmm
, 999 // VSUBPD ymm, ymm, m156
, 3 // VSUBPD ymm, ymm, ymm
, 999 // VSUBPS xmm, xmm, m128
, 3 // VSUBPS xmm, xmm, xmm
, 999 // VSUBPS ymm, ymm, m156
, 3 // VSUBPS ymm, ymm, ymm
, 999 // VSUBSD xmm, xmm, m64
, 3 // VSUBSD xmm, xmm, xmm
, 999 // VSUBSS xmm, xmm, m32
, 3 // VSUBSS xmm, xmm, xmm

, 999 // VTESTPD xmm, m128
, 999 // VTESTPD xmm, xmm
, 999 // VTESTPD ymm, m156
, 999 // VTESTPD ymm, ymm
, 999 // VTESTPS xmm, m128
, 999 // VTESTPS xmm, xmm
, 999 // VTESTPS ymm, m156
, 999 // VTESTPS ymm, ymm

, 999 // VUCOMISD xmm, m64
, 999 // VUCOMISD xmm, xmm
, 999 // VUCOMISS xmm, m32
, 999 // VUCOMISS xmm, xmm

, 999 // VUNPCKHPD xmm, xmm, m128
, 1 // VUNPCKHPD xmm, xmm, xmm
, 999 // VUNPCKHPD ymm, ymm, m156
, 1 // VUNPCKHPD ymm, ymm, ymm
, 999 // VUNPCKHPS xmm, xmm, m128
, 1 // VUNPCKHPS xmm, xmm, xmm
, 999 // VUNPCKHPS ymm, ymm, m156
, 1 // VUNPCKHPS ymm, ymm, ymm
, 999 // VUNPCKLPD xmm, xmm, m128
, 1 // VUNPCKLPD xmm, xmm, xmm
, 999 // VUNPCKLPD ymm, ymm, m156
, 1 // VUNPCKLPD ymm, ymm, ymm
, 999 // VUNPCKLPS xmm, xmm, m128
, 1 // VUNPCKLPS xmm, xmm, xmm
, 999 // VUNPCKLPS ymm, ymm, m156
, 1 // VUNPCKLPS ymm, ymm, ymm

, 999 // VXORPD xmm, xmm, m128
, 3 // VXORPD xmm, xmm, xmm
, 999 // VXORPD ymm, ymm, m156
, 3 // VXORPD ymm, ymm, ymm
, 999 // VXORPS xmm, xmm, m128
, 3 // VXORPS xmm, xmm, xmm
, 999 // VXORPS ymm, ymm, m156
, 3 // VXORPS ymm, ymm, ymm

, 999 // VZEROALL
, 999 // VZEROUPPER

, 999 // WAIT

, 999 // WRFSBASE r32
, 999 // WRFSBASE r64
, 999 // WRGSBASE r32
, 999 // WRGSBASE r64

, 999 // XABORT imm8

, 999 // XACQUIRE

, 999 // XADD m16, r16
, 999 // XADD m32, r32
, 999 // XADD m64, r64
, 999 // XADD m8, rb
, 999 // XADD m8, rh
, 999 // XADD m8, rl
, 999 // XADD r16, r16
, 999 // XADD r32, r32
, 999 // XADD r64, r64
, 999 // XADD rb, rb
, 999 // XADD rb, rl
, 999 // XADD rh, rh
, 999 // XADD rh, rl
, 999 // XADD rl, rb
, 999 // XADD rl, rh
, 999 // XADD rl, rl

, 999 // XBEGIN rel31
, 999 // XBEGIN label

, 2 // XCHG AX, r16
, 2 // XCHG EAX, r32
, 999 // XCHG m16, r16
, 999 // XCHG m32, r32
, 999 // XCHG m64, r64
, 999 // XCHG m8, rb
, 999 // XCHG m8, rh
, 999 // XCHG m8, rl
, 2 // XCHG r16, AX
, 21 // XCHG r16, m16
, 2 // XCHG r16, r16
, 2 // XCHG r32, EAX
, 21 // XCHG r32, m32
, 2 // XCHG r32, r32
, 21 // XCHG r64, m64
, 2 // XCHG r64, r64
, 2 // XCHG r64, RAX
, 2 // XCHG RAX, r64
, 21 // XCHG rb, m8
, 2 // XCHG rb, rb
, 2 // XCHG rb, rl
, 21 // XCHG rh, m8
, 2 // XCHG rh, rh
, 2 // XCHG rh, rl
, 21 // XCHG rl, m8
, 2 // XCHG rl, rb
, 2 // XCHG rl, rh
, 2 // XCHG rl, rl

, 999 // XEND

, 999 // XGETBV

, 999 // XLAT m8
, 999 // XLATB

, 1 // XOR AL, imm8
, 1 // XOR AX, imm16
, 1 // XOR EAX, imm32
, 6 // XOR m16, imm16
, 6 // XOR m16, imm8
, 6 // XOR m16, r16
, 6 // XOR m32, imm32
, 6 // XOR m32, imm8
, 6 // XOR m32, r32
, 6 // XOR m64, imm32
, 6 // XOR m64, imm8
, 6 // XOR m64, r64
, 6 // XOR m8, imm8
, 6 // XOR m8, rb
, 6 // XOR m8, rh
, 6 // XOR m8, rl
, 1 // XOR r16, imm16
, 1 // XOR r16, imm8
, 999 // XOR r16, m16
, 1 // XOR r16, r16
, 1 // XOR r32, imm32
, 1 // XOR r32, imm8
, 999 // XOR r32, m32
, 1 // XOR r32, r32
, 1 // XOR r64, imm32
, 1 // XOR r64, imm8
, 999 // XOR r64, m64
, 1 // XOR r64, r64
, 1 // XOR RAX, imm32
, 1 // XOR rb, imm8
, 999 // XOR rb, m8
, 1 // XOR rb, rb
, 1 // XOR rb, rl
, 1 // XOR rh, imm8
, 999 // XOR rh, m8
, 1 // XOR rh, rh
, 1 // XOR rh, rl
, 1 // XOR rl, imm8
, 999 // XOR rl, m8
, 1 // XOR rl, rb
, 1 // XOR rl, rh
, 1 // XOR rl, rl

, 999 // XORPD xmm, m128
, 3 // XORPD xmm, xmm
, 999 // XORPS xmm, m128
, 3 // XORPS xmm, xmm

, 999 // XRELEASE

, 999 // XRSTOR m16
, 999 // XRSTOR m32
, 999 // XRSTOR m64
, 999 // XRSTOR64 m16
, 999 // XRSTOR64 m32
, 999 // XRSTOR64 m64

, 999 // XSAVE m16
, 999 // XSAVE m32
, 999 // XSAVE m64
, 999 // XSAVE64 m16
, 999 // XSAVE64 m32
, 999 // XSAVE64 m64

, 999 // XSAVEOPT m16
, 999 // XSAVEOPT m32
, 999 // XSAVEOPT m64
, 999 // XSAVEOPT64 m16
, 999 // XSAVEOPT64 m32
, 999 // XSAVEOPT64 m64

, 999 // XTEST

