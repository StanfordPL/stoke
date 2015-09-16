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

#ifndef STOKE_TOOLS_APPS_BASE_H
#define STOKE_TOOLS_APPS_BASE_H

#include <chrono>
#include <fstream>
#include <iostream>
#include <random>
#include <string>
#include <vector>

using namespace cpputil;
using namespace std;
using namespace stoke;
using namespace x64asm;

namespace stoke {

vector<Opcode> instr_cat_base_ = {
  CALL_LABEL
// , ADC_AL_IMM8 // ADC AL, imm8
// , ADC_AX_IMM16 // ADC AX, imm16
// , ADC_EAX_IMM32 // ADC EAX, imm32
// , ADC_M16_IMM16 // ADC m16, imm16
// , ADC_M16_IMM8 // ADC m16, imm8
// , ADC_M16_R16 // ADC m16, r16
// , ADC_M32_IMM32 // ADC m32, imm32
// , ADC_M32_IMM8 // ADC m32, imm8
// , ADC_M32_R32 // ADC m32, r32
// , ADC_M64_IMM32 // ADC m64, imm32
// , ADC_M64_IMM8 // ADC m64, imm8
// , ADC_M64_R64 // ADC m64, r64
// , ADC_M8_IMM8 // ADC m8, imm8
// , ADC_M8_R8 // ADC m8, r8
// , ADC_M8_RH // ADC m8, rh
// , ADC_R16_IMM16 // ADC r16, imm16
// , ADC_R16_IMM8 // ADC r16, imm8
// , ADC_R16_M16 // ADC r16, m16
  , ADC_R16_R16 // ADC r16, r16
// , ADC_R32_IMM32 // ADC r32, imm32
// , ADC_R32_IMM8 // ADC r32, imm8
// , ADC_R32_M32 // ADC r32, m32
  , ADC_R32_R32 // ADC r32, r32
// , ADC_R64_IMM32 // ADC r64, imm32
// , ADC_R64_IMM8 // ADC r64, imm8
// , ADC_R64_M64 // ADC r64, m64
  , ADC_R64_R64 // ADC r64, r64
// , ADC_R8_IMM8 // ADC r8, imm8
// , ADC_R8_M8 // ADC r8, m8
  , ADC_R8_R8 // ADC r8, r8
// , ADC_R8_RH // ADC r8, rh
// , ADC_RAX_IMM32 // ADC RAX, imm32
// , ADC_RH_IMM8 // ADC rh, imm8
// , ADC_RH_M8 // ADC rh, m8
// , ADC_RH_R8 // ADC rh, r8
// , ADC_RH_RH // ADC rh, rh
// , ADD_AL_IMM8 // ADD AL, imm8
// , ADD_AX_IMM16 // ADD AX, imm16
// , ADD_EAX_IMM32 // ADD EAX, imm32
// , ADD_M16_IMM16 // ADD m16, imm16
// , ADD_M16_IMM8 // ADD m16, imm8
// , ADD_M16_R16 // ADD m16, r16
// , ADD_M32_IMM32 // ADD m32, imm32
// , ADD_M32_IMM8 // ADD m32, imm8
// , ADD_M32_R32 // ADD m32, r32
// , ADD_M64_IMM32 // ADD m64, imm32
// , ADD_M64_IMM8 // ADD m64, imm8
// , ADD_M64_R64 // ADD m64, r64
// , ADD_M8_IMM8 // ADD m8, imm8
// , ADD_M8_R8 // ADD m8, r8
// , ADD_M8_RH // ADD m8, rh
// , ADD_R16_IMM16 // ADD r16, imm16
// , ADD_R16_IMM8 // ADD r16, imm8
// , ADD_R16_M16 // ADD r16, m16
// , ADD_R16_R16 // ADD r16, r16
// , ADD_R32_IMM32 // ADD r32, imm32
// , ADD_R32_IMM8 // ADD r32, imm8
// , ADD_R32_M32 // ADD r32, m32
// , ADD_R32_R32 // ADD r32, r32
// , ADD_R64_IMM32 // ADD r64, imm32
// , ADD_R64_IMM8 // ADD r64, imm8
// , ADD_R64_M64 // ADD r64, m64
// , ADD_R64_R64 // ADD r64, r64
// , ADD_R8_IMM8 // ADD r8, imm8
// , ADD_R8_M8 // ADD r8, m8
// , ADD_R8_R8 // ADD r8, r8
// , ADD_R8_RH // ADD r8, rh
// , ADD_RAX_IMM32 // ADD RAX, imm32
// , ADD_RH_IMM8 // ADD rh, imm8
// , ADD_RH_M8 // ADD rh, m8
// , ADD_RH_R8 // ADD rh, r8
// , ADD_RH_RH // ADD rh, rh
// , ADDPD_XMM_M128 // ADDPD xmm, m128
// , ADDPD_XMM_XMM // ADDPD xmm, xmm
// , ADDPS_XMM_M128 // ADDPS xmm, m128
// , ADDPS_XMM_XMM // ADDPS xmm, xmm
// , ADDSD_XMM_M64 // ADDSD xmm, m64
  , ADDSD_XMM_XMM // ADDSD xmm, xmm
// , ADDSS_XMM_M32 // ADDSS xmm, m32
  , ADDSS_XMM_XMM // ADDSS xmm, xmm
// , ADDSUBPD_XMM_M128 // ADDSUBPD xmm, m128
// , ADDSUBPD_XMM_XMM // ADDSUBPD xmm, xmm
// , ADDSUBPS_XMM_M128 // ADDSUBPS xmm, m128
// , ADDSUBPS_XMM_XMM // ADDSUBPS xmm, xmm
// , AESDEC_XMM_M128 // AESDEC xmm, m128
// , AESDEC_XMM_XMM // AESDEC xmm, xmm
// , AESDECLAST_XMM_M128 // AESDECLAST xmm, m128
// , AESDECLAST_XMM_XMM // AESDECLAST xmm, xmm
// , AESENC_XMM_M128 // AESENC xmm, m128
// , AESENC_XMM_XMM // AESENC xmm, xmm
// , AESENCLAST_XMM_M128 // AESENCLAST xmm, m128
// , AESENCLAST_XMM_XMM // AESENCLAST xmm, xmm
// , AESIMC_XMM_M128 // AESIMC xmm, m128
// , AESIMC_XMM_XMM // AESIMC xmm, xmm
// , AESKEYGENASSIST_XMM_M128_IMM8 // AESKEYGENASSIST xmm, m128, imm8
// , AESKEYGENASSIST_XMM_XMM_IMM8 // AESKEYGENASSIST xmm, xmm, imm8
// , AND_AL_IMM8 // AND AL, imm8
// , AND_AX_IMM16 // AND AX, imm16
// , AND_EAX_IMM32 // AND EAX, imm32
// , AND_M16_IMM16 // AND m16, imm16
// , AND_M16_IMM8 // AND m16, imm8
// , AND_M16_R16 // AND m16, r16
// , AND_M32_IMM32 // AND m32, imm32
// , AND_M32_IMM8 // AND m32, imm8
// , AND_M32_R32 // AND m32, r32
// , AND_M64_IMM32 // AND m64, imm32
// , AND_M64_IMM8 // AND m64, imm8
// , AND_M64_R64 // AND m64, r64
// , AND_M8_IMM8 // AND m8, imm8
// , AND_M8_R8 // AND m8, r8
// , AND_M8_RH // AND m8, rh
// , AND_R16_IMM16 // AND r16, imm16
// , AND_R16_IMM8 // AND r16, imm8
// , AND_R16_M16 // AND r16, m16
// , AND_R16_R16 // AND r16, r16
// , AND_R32_IMM32 // AND r32, imm32
// , AND_R32_IMM8 // AND r32, imm8
// , AND_R32_M32 // AND r32, m32
// , AND_R32_R32 // AND r32, r32
// , AND_R64_IMM32 // AND r64, imm32
// , AND_R64_IMM8 // AND r64, imm8
// , AND_R64_M64 // AND r64, m64
// , AND_R64_R64 // AND r64, r64
// , AND_R8_IMM8 // AND r8, imm8
// , AND_R8_M8 // AND r8, m8
// , AND_R8_R8 // AND r8, r8
// , AND_R8_RH // AND r8, rh
// , AND_RAX_IMM32 // AND RAX, imm32
// , AND_RH_IMM8 // AND rh, imm8
// , AND_RH_M8 // AND rh, m8
// , AND_RH_R8 // AND rh, r8
// , AND_RH_RH // AND rh, rh
// , ANDN_R32_R32_M32 // ANDN r32, r32, m32
// , ANDN_R32_R32_R32 // ANDN r32, r32, r32
// , ANDN_R64_R64_M64 // ANDN r64, r64, m64
// , ANDN_R64_R64_R64 // ANDN r64, r64, r64
// , ANDNPD_XMM_M128 // ANDNPD xmm, m128
// , ANDNPD_XMM_XMM // ANDNPD xmm, xmm
// , ANDNPS_XMM_M128 // ANDNPS xmm, m128
// , ANDNPS_XMM_XMM // ANDNPS xmm, xmm
// , ANDPD_XMM_M128 // ANDPD xmm, m128
// , ANDPD_XMM_XMM // ANDPD xmm, xmm
// , ANDPS_XMM_M128 // ANDPS xmm, m128
// , ANDPS_XMM_XMM // ANDPS xmm, xmm
// , BEXTR_R32_M32_R32 // BEXTR r32, m32, r32
// , BEXTR_R32_R32_R32 // BEXTR r32, r32, r32
// , BEXTR_R64_M64_R64 // BEXTR r64, m64, r64
// , BEXTR_R64_R64_R64 // BEXTR r64, r64, r64
// , BLENDPD_XMM_M128_IMM8 // BLENDPD xmm, m128, imm8
// , BLENDPD_XMM_XMM_IMM8 // BLENDPD xmm, xmm, imm8
// , BLENDPS_XMM_M128_IMM8 // BLENDPS xmm, m128, imm8
// , BLENDPS_XMM_XMM_IMM8 // BLENDPS xmm, xmm, imm8
// , BLENDVPD_XMM_M128_XMM0 // BLENDVPD xmm, m128, <XMM0>
// , BLENDVPD_XMM_XMM_XMM0 // BLENDVPD xmm, xmm, <XMM0>
// , BLENDVPS_XMM_M128_XMM0 // BLENDVPS xmm, m128, <XMM0>
// , BLENDVPS_XMM_XMM_XMM0 // BLENDVPS xmm, xmm, <XMM0>
// , BLSI_R32_M32 // BLSI r32, m32
// , BLSI_R32_R32 // BLSI r32, r32
// , BLSI_R64_M64 // BLSI r64, m64
// , BLSI_R64_R64 // BLSI r64, r64
// , BLSMSK_R32_M32 // BLSMSK r32, m32
// , BLSMSK_R32_R32 // BLSMSK r32, r32
// , BLSMSK_R64_M64 // BLSMSK r64, m64
// , BLSMSK_R64_R64 // BLSMSK r64, r64
// , BLSR_R32_M32 // BLSR r32, m32
// , BLSR_R32_R32 // BLSR r32, r32
// , BLSR_R64_M64 // BLSR r64, m64
// , BLSR_R64_R64 // BLSR r64, r64
// , BSF_R32_M32 // BSF r32, m32
// , BSF_R32_R32 // BSF r32, r32
// , BSF_R64_M64 // BSF r64, m64
// , BSF_R64_R64 // BSF r64, r64
// , BSR_R16_M16 // BSR r16, m16
// , BSR_R16_R16 // BSR r16, r16
// , BSR_R32_M32 // BSR r32, m32
// , BSR_R32_R32 // BSR r32, r32
// , BSR_R64_M64 // BSR r64, m64
// , BSR_R64_R64 // BSR r64, r64
// , BSWAP_R32 // BSWAP r32
// , BSWAP_R64 // BSWAP r64
// , BT_M16_IMM8 // BT m16, imm8
// , BT_M16_R16 // BT m16, r16
// , BT_M32_IMM8 // BT m32, imm8
// , BT_M32_R32 // BT m32, r32
// , BT_M64_IMM8 // BT m64, imm8
// , BT_M64_R64 // BT m64, r64
// , BT_R16_IMM8 // BT r16, imm8
// , BT_R16_R16 // BT r16, r16
// , BT_R32_IMM8 // BT r32, imm8
// , BT_R32_R32 // BT r32, r32
// , BT_R64_IMM8 // BT r64, imm8
// , BT_R64_R64 // BT r64, r64
// , BTC_M16_IMM8 // BTC m16, imm8
// , BTC_M16_R16 // BTC m16, r16
// , BTC_M32_IMM8 // BTC m32, imm8
// , BTC_M32_R32 // BTC m32, r32
// , BTC_M64_IMM8 // BTC m64, imm8
// , BTC_M64_R64 // BTC m64, r64
// , BTC_R16_IMM8 // BTC r16, imm8
// , BTC_R16_R16 // BTC r16, r16
// , BTC_R32_IMM8 // BTC r32, imm8
// , BTC_R32_R32 // BTC r32, r32
// , BTC_R64_IMM8 // BTC r64, imm8
// , BTC_R64_R64 // BTC r64, r64
// , BTR_M16_IMM8 // BTR m16, imm8
// , BTR_M16_R16 // BTR m16, r16
// , BTR_M32_IMM8 // BTR m32, imm8
// , BTR_M32_R32 // BTR m32, r32
// , BTR_M64_IMM8 // BTR m64, imm8
// , BTR_M64_R64 // BTR m64, r64
// , BTR_R16_IMM8 // BTR r16, imm8
// , BTR_R16_R16 // BTR r16, r16
// , BTR_R32_IMM8 // BTR r32, imm8
// , BTR_R32_R32 // BTR r32, r32
// , BTR_R64_IMM8 // BTR r64, imm8
// , BTR_R64_R64 // BTR r64, r64
// , BTS_M16_IMM8 // BTS m16, imm8
// , BTS_M16_R16 // BTS m16, r16
// , BTS_M32_IMM8 // BTS m32, imm8
// , BTS_M32_R32 // BTS m32, r32
// , BTS_M64_IMM8 // BTS m64, imm8
// , BTS_M64_R64 // BTS m64, r64
// , BTS_R16_IMM8 // BTS r16, imm8
// , BTS_R16_R16 // BTS r16, r16
// , BTS_R32_IMM8 // BTS r32, imm8
// , BTS_R32_R32 // BTS r32, r32
// , BTS_R64_IMM8 // BTS r64, imm8
// , BTS_R64_R64 // BTS r64, r64
// , BZHI_R32_M32_R32 // BZHI r32, m32, r32
// , BZHI_R32_R32_R32 // BZHI r32, r32, r32
// , BZHI_R64_M64_R64 // BZHI r64, m64, r64
// , BZHI_R64_R64_R64 // BZHI r64, r64, r64
// , CALL_FARPTR1616 // CALL m16:16
// , CALL_FARPTR1632 // CALL m16:32
// , CALL_FARPTR1664 // CALL m16:64
// , CALL_M64 // CALL m64
// , CALL_R64 // CALL r64
// , CALL_REL32 // CALL rel32
// , CALL_LABEL // CALL label
// , CBW // CBW
// , CDQ // CDQ
// , CDQE // CDQE
// , CLC // CLC
// , CLD // CLD
// , CLFLUSH_M8 // CLFLUSH m8
// , CLI // CLI
// , CMC // CMC
// , CMOVA_R16_M16 // CMOVA r16, m16
// , CMOVA_R16_R16 // CMOVA r16, r16
// , CMOVA_R32_M32 // CMOVA r32, m32
// , CMOVA_R32_R32 // CMOVA r32, r32
// , CMOVA_R64_M64 // CMOVA r64, m64
// , CMOVA_R64_R64 // CMOVA r64, r64
// , CMOVAE_R16_M16 // CMOVAE r16, m16
// , CMOVAE_R16_R16 // CMOVAE r16, r16
// , CMOVAE_R32_M32 // CMOVAE r32, m32
// , CMOVAE_R32_R32 // CMOVAE r32, r32
// , CMOVAE_R64_M64 // CMOVAE r64, m64
// , CMOVAE_R64_R64 // CMOVAE r64, r64
// , CMOVB_R16_M16 // CMOVB r16, m16
// , CMOVB_R16_R16 // CMOVB r16, r16
// , CMOVB_R32_M32 // CMOVB r32, m32
// , CMOVB_R32_R32 // CMOVB r32, r32
// , CMOVB_R64_M64 // CMOVB r64, m64
// , CMOVB_R64_R64 // CMOVB r64, r64
// , CMOVBE_R16_M16 // CMOVBE r16, m16
// , CMOVBE_R16_R16 // CMOVBE r16, r16
// , CMOVBE_R32_M32 // CMOVBE r32, m32
// , CMOVBE_R32_R32 // CMOVBE r32, r32
// , CMOVBE_R64_M64 // CMOVBE r64, m64
// , CMOVBE_R64_R64 // CMOVBE r64, r64
// , CMOVC_R16_M16 // CMOVC r16, m16
// , CMOVC_R16_R16 // CMOVC r16, r16
// , CMOVC_R32_M32 // CMOVC r32, m32
// , CMOVC_R32_R32 // CMOVC r32, r32
// , CMOVC_R64_M64 // CMOVC r64, m64
// , CMOVC_R64_R64 // CMOVC r64, r64
// , CMOVE_R16_M16 // CMOVE r16, m16
// , CMOVE_R16_R16 // CMOVE r16, r16
// , CMOVE_R32_M32 // CMOVE r32, m32
// , CMOVE_R32_R32 // CMOVE r32, r32
// , CMOVE_R64_M64 // CMOVE r64, m64
  , CMOVE_R64_R64 // CMOVE r64, r64
// , CMOVG_R16_M16 // CMOVG r16, m16
// , CMOVG_R16_R16 // CMOVG r16, r16
// , CMOVG_R32_M32 // CMOVG r32, m32
// , CMOVG_R32_R32 // CMOVG r32, r32
// , CMOVG_R64_M64 // CMOVG r64, m64
// , CMOVG_R64_R64 // CMOVG r64, r64
// , CMOVGE_R16_M16 // CMOVGE r16, m16
// , CMOVGE_R16_R16 // CMOVGE r16, r16
// , CMOVGE_R32_M32 // CMOVGE r32, m32
// , CMOVGE_R32_R32 // CMOVGE r32, r32
// , CMOVGE_R64_M64 // CMOVGE r64, m64
// , CMOVGE_R64_R64 // CMOVGE r64, r64
// , CMOVL_R16_M16 // CMOVL r16, m16
// , CMOVL_R16_R16 // CMOVL r16, r16
// , CMOVL_R32_M32 // CMOVL r32, m32
// , CMOVL_R32_R32 // CMOVL r32, r32
// , CMOVL_R64_M64 // CMOVL r64, m64
// , CMOVL_R64_R64 // CMOVL r64, r64
// , CMOVLE_R16_M16 // CMOVLE r16, m16
// , CMOVLE_R16_R16 // CMOVLE r16, r16
// , CMOVLE_R32_M32 // CMOVLE r32, m32
// , CMOVLE_R32_R32 // CMOVLE r32, r32
// , CMOVLE_R64_M64 // CMOVLE r64, m64
// , CMOVLE_R64_R64 // CMOVLE r64, r64
// , CMOVNA_R16_M16 // CMOVNA r16, m16
// , CMOVNA_R16_R16 // CMOVNA r16, r16
// , CMOVNA_R32_M32 // CMOVNA r32, m32
// , CMOVNA_R32_R32 // CMOVNA r32, r32
// , CMOVNA_R64_M64 // CMOVNA r64, m64
// , CMOVNA_R64_R64 // CMOVNA r64, r64
// , CMOVNAE_R16_M16 // CMOVNAE r16, m16
// , CMOVNAE_R16_R16 // CMOVNAE r16, r16
// , CMOVNAE_R32_M32 // CMOVNAE r32, m32
// , CMOVNAE_R32_R32 // CMOVNAE r32, r32
// , CMOVNAE_R64_M64 // CMOVNAE r64, m64
// , CMOVNAE_R64_R64 // CMOVNAE r64, r64
// , CMOVNB_R16_M16 // CMOVNB r16, m16
// , CMOVNB_R16_R16 // CMOVNB r16, r16
// , CMOVNB_R32_M32 // CMOVNB r32, m32
// , CMOVNB_R32_R32 // CMOVNB r32, r32
// , CMOVNB_R64_M64 // CMOVNB r64, m64
// , CMOVNB_R64_R64 // CMOVNB r64, r64
// , CMOVNBE_R16_M16 // CMOVNBE r16, m16
// , CMOVNBE_R16_R16 // CMOVNBE r16, r16
// , CMOVNBE_R32_M32 // CMOVNBE r32, m32
// , CMOVNBE_R32_R32 // CMOVNBE r32, r32
// , CMOVNBE_R64_M64 // CMOVNBE r64, m64
// , CMOVNBE_R64_R64 // CMOVNBE r64, r64
// , CMOVNC_R16_M16 // CMOVNC r16, m16
// , CMOVNC_R16_R16 // CMOVNC r16, r16
// , CMOVNC_R32_M32 // CMOVNC r32, m32
// , CMOVNC_R32_R32 // CMOVNC r32, r32
// , CMOVNC_R64_M64 // CMOVNC r64, m64
// , CMOVNC_R64_R64 // CMOVNC r64, r64
// , CMOVNE_R16_M16 // CMOVNE r16, m16
// , CMOVNE_R16_R16 // CMOVNE r16, r16
// , CMOVNE_R32_M32 // CMOVNE r32, m32
// , CMOVNE_R32_R32 // CMOVNE r32, r32
// , CMOVNE_R64_M64 // CMOVNE r64, m64
// , CMOVNE_R64_R64 // CMOVNE r64, r64
// , CMOVNG_R16_M16 // CMOVNG r16, m16
// , CMOVNG_R16_R16 // CMOVNG r16, r16
// , CMOVNG_R32_M32 // CMOVNG r32, m32
// , CMOVNG_R32_R32 // CMOVNG r32, r32
// , CMOVNG_R64_M64 // CMOVNG r64, m64
// , CMOVNG_R64_R64 // CMOVNG r64, r64
// , CMOVNGE_R16_M16 // CMOVNGE r16, m16
// , CMOVNGE_R16_R16 // CMOVNGE r16, r16
// , CMOVNGE_R32_M32 // CMOVNGE r32, m32
// , CMOVNGE_R32_R32 // CMOVNGE r32, r32
// , CMOVNGE_R64_M64 // CMOVNGE r64, m64
// , CMOVNGE_R64_R64 // CMOVNGE r64, r64
// , CMOVNL_R16_M16 // CMOVNL r16, m16
// , CMOVNL_R16_R16 // CMOVNL r16, r16
// , CMOVNL_R32_M32 // CMOVNL r32, m32
// , CMOVNL_R32_R32 // CMOVNL r32, r32
// , CMOVNL_R64_M64 // CMOVNL r64, m64
// , CMOVNL_R64_R64 // CMOVNL r64, r64
// , CMOVNLE_R16_M16 // CMOVNLE r16, m16
// , CMOVNLE_R16_R16 // CMOVNLE r16, r16
// , CMOVNLE_R32_M32 // CMOVNLE r32, m32
// , CMOVNLE_R32_R32 // CMOVNLE r32, r32
// , CMOVNLE_R64_M64 // CMOVNLE r64, m64
// , CMOVNLE_R64_R64 // CMOVNLE r64, r64
// , CMOVNO_R16_M16 // CMOVNO r16, m16
// , CMOVNO_R16_R16 // CMOVNO r16, r16
// , CMOVNO_R32_M32 // CMOVNO r32, m32
// , CMOVNO_R32_R32 // CMOVNO r32, r32
// , CMOVNO_R64_M64 // CMOVNO r64, m64
// , CMOVNO_R64_R64 // CMOVNO r64, r64
// , CMOVNP_R16_M16 // CMOVNP r16, m16
// , CMOVNP_R16_R16 // CMOVNP r16, r16
// , CMOVNP_R32_M32 // CMOVNP r32, m32
// , CMOVNP_R32_R32 // CMOVNP r32, r32
// , CMOVNP_R64_M64 // CMOVNP r64, m64
// , CMOVNP_R64_R64 // CMOVNP r64, r64
// , CMOVNS_R16_M16 // CMOVNS r16, m16
// , CMOVNS_R16_R16 // CMOVNS r16, r16
// , CMOVNS_R32_M32 // CMOVNS r32, m32
// , CMOVNS_R32_R32 // CMOVNS r32, r32
// , CMOVNS_R64_M64 // CMOVNS r64, m64
// , CMOVNS_R64_R64 // CMOVNS r64, r64
// , CMOVNZ_R16_M16 // CMOVNZ r16, m16
// , CMOVNZ_R16_R16 // CMOVNZ r16, r16
// , CMOVNZ_R32_M32 // CMOVNZ r32, m32
// , CMOVNZ_R32_R32 // CMOVNZ r32, r32
// , CMOVNZ_R64_M64 // CMOVNZ r64, m64
// , CMOVNZ_R64_R64 // CMOVNZ r64, r64
// , CMOVO_R16_M16 // CMOVO r16, m16
// , CMOVO_R16_R16 // CMOVO r16, r16
// , CMOVO_R32_M32 // CMOVO r32, m32
// , CMOVO_R32_R32 // CMOVO r32, r32
// , CMOVO_R64_M64 // CMOVO r64, m64
// , CMOVO_R64_R64 // CMOVO r64, r64
// , CMOVP_R16_M16 // CMOVP r16, m16
// , CMOVP_R16_R16 // CMOVP r16, r16
// , CMOVP_R32_M32 // CMOVP r32, m32
// , CMOVP_R32_R32 // CMOVP r32, r32
// , CMOVP_R64_M64 // CMOVP r64, m64
// , CMOVP_R64_R64 // CMOVP r64, r64
// , CMOVPE_R16_M16 // CMOVPE r16, m16
// , CMOVPE_R16_R16 // CMOVPE r16, r16
// , CMOVPE_R32_M32 // CMOVPE r32, m32
// , CMOVPE_R32_R32 // CMOVPE r32, r32
// , CMOVPE_R64_M64 // CMOVPE r64, m64
// , CMOVPE_R64_R64 // CMOVPE r64, r64
// , CMOVPO_R16_M16 // CMOVPO r16, m16
// , CMOVPO_R16_R16 // CMOVPO r16, r16
// , CMOVPO_R32_M32 // CMOVPO r32, m32
// , CMOVPO_R32_R32 // CMOVPO r32, r32
// , CMOVPO_R64_M64 // CMOVPO r64, m64
// , CMOVPO_R64_R64 // CMOVPO r64, r64
// , CMOVS_R16_M16 // CMOVS r16, m16
// , CMOVS_R16_R16 // CMOVS r16, r16
// , CMOVS_R32_M32 // CMOVS r32, m32
// , CMOVS_R32_R32 // CMOVS r32, r32
// , CMOVS_R64_M64 // CMOVS r64, m64
// , CMOVS_R64_R64 // CMOVS r64, r64
// , CMOVZ_R16_M16 // CMOVZ r16, m16
// , CMOVZ_R16_R16 // CMOVZ r16, r16
// , CMOVZ_R32_M32 // CMOVZ r32, m32
// , CMOVZ_R32_R32 // CMOVZ r32, r32
// , CMOVZ_R64_M64 // CMOVZ r64, m64
// , CMOVZ_R64_R64 // CMOVZ r64, r64
// , CMP_AL_IMM8 // CMP AL, imm8
// , CMP_AX_IMM16 // CMP AX, imm16
// , CMP_EAX_IMM32 // CMP EAX, imm32
// , CMP_M16_IMM16 // CMP m16, imm16
// , CMP_M16_IMM8 // CMP m16, imm8
// , CMP_M16_R16 // CMP m16, r16
// , CMP_M32_IMM32 // CMP m32, imm32
// , CMP_M32_IMM8 // CMP m32, imm8
// , CMP_M32_R32 // CMP m32, r32
// , CMP_M64_IMM32 // CMP m64, imm32
// , CMP_M64_IMM8 // CMP m64, imm8
// , CMP_M64_R64 // CMP m64, r64
// , CMP_M8_IMM8 // CMP m8, imm8
// , CMP_M8_R8 // CMP m8, r8
// , CMP_M8_RH // CMP m8, rh
// , CMP_R16_IMM16 // CMP r16, imm16
// , CMP_R16_IMM8 // CMP r16, imm8
// , CMP_R16_M16 // CMP r16, m16
// , CMP_R16_R16 // CMP r16, r16
// , CMP_R32_IMM32 // CMP r32, imm32
// , CMP_R32_IMM8 // CMP r32, imm8
// , CMP_R32_M32 // CMP r32, m32
// , CMP_R32_R32 // CMP r32, r32
// , CMP_R64_IMM32 // CMP r64, imm32
// , CMP_R64_IMM8 // CMP r64, imm8
// , CMP_R64_M64 // CMP r64, m64
// , CMP_R64_R64 // CMP r64, r64
// , CMP_R8_IMM8 // CMP r8, imm8
// , CMP_R8_M8 // CMP r8, m8
// , CMP_R8_R8 // CMP r8, r8
// , CMP_R8_RH // CMP r8, rh
// , CMP_RAX_IMM32 // CMP RAX, imm32
// , CMP_RH_IMM8 // CMP rh, imm8
// , CMP_RH_M8 // CMP rh, m8
// , CMP_RH_R8 // CMP rh, r8
// , CMP_RH_RH // CMP rh, rh
// , CMPPD_XMM_M128_IMM8 // CMPPD xmm, m128, imm8
// , CMPPD_XMM_XMM_IMM8 // CMPPD xmm, xmm, imm8
// , CMPPS_XMM_M128_IMM8 // CMPPS xmm, m128, imm8
// , CMPPS_XMM_XMM_IMM8 // CMPPS xmm, xmm, imm8
// , CMPS_M16_M16 // CMPS m16, m16
// , CMPS_M32_M32 // CMPS m32, m32
// , CMPS_M64_M64 // CMPS m64, m64
// , CMPS_M8_M8 // CMPS m8, m8
// , CMPSB // CMPSB
// , CMPSD // CMPSD
// , CMPSD_XMM_M64_IMM8 // CMPSD xmm, m64, imm8
// , CMPSD_XMM_XMM_IMM8 // CMPSD xmm, xmm, imm8
// , CMPSQ // CMPSQ
// , CMPSS_XMM_M32_IMM8 // CMPSS xmm, m32, imm8
// , CMPSS_XMM_XMM_IMM8 // CMPSS xmm, xmm, imm8
// , CMPSW // CMPSW
// , CMPXCHG_M16_R16 // CMPXCHG m16, r16
// , CMPXCHG_M32_R32 // CMPXCHG m32, r32
// , CMPXCHG_M64_R64 // CMPXCHG m64, r64
// , CMPXCHG_M8_R8 // CMPXCHG m8, r8
// , CMPXCHG_M8_RH // CMPXCHG m8, rh
// , CMPXCHG_R16_R16 // CMPXCHG r16, r16
// , CMPXCHG_R32_R32 // CMPXCHG r32, r32
// , CMPXCHG_R64_R64 // CMPXCHG r64, r64
// , CMPXCHG_R8_R8 // CMPXCHG r8, r8
// , CMPXCHG_R8_RH // CMPXCHG r8, rh
// , CMPXCHG_RH_R8 // CMPXCHG rh, r8
// , CMPXCHG_RH_RH // CMPXCHG rh, rh
// , CMPXCHG16B_M128 // CMPXCHG16B m128
// , CMPXCHG8B_M64 // CMPXCHG8B m64
// , COMISD_XMM_M64 // COMISD xmm, m64
// , COMISD_XMM_XMM // COMISD xmm, xmm
// , COMISS_XMM_M32 // COMISS xmm, m32
// , COMISS_XMM_XMM // COMISS xmm, xmm
// , CPUID // CPUID
// , CQO // CQO
// , CRC32_R32_M16 // CRC32 r32, m16
// , CRC32_R32_M32 // CRC32 r32, m32
// , CRC32_R32_M8 // CRC32 r32, m8
// , CRC32_R32_R16 // CRC32 r32, r16
// , CRC32_R32_R32 // CRC32 r32, r32
// , CRC32_R32_R8 // CRC32 r32, r8
// , CRC32_R32_RH // CRC32 r32, rh
// , CRC32_R64_M64 // CRC32 r64, m64
// , CRC32_R64_M8 // CRC32 r64, m8
// , CRC32_R64_R64 // CRC32 r64, r64
// , CRC32_R64_R8 // CRC32 r64, r8
// , CRC32_R64_RH // CRC32 r64, rh
// , CVTDQ2PD_XMM_M64 // CVTDQ2PD xmm, m64
// , CVTDQ2PD_XMM_XMM // CVTDQ2PD xmm, xmm
// , CVTDQ2PS_XMM_M128 // CVTDQ2PS xmm, m128
// , CVTDQ2PS_XMM_XMM // CVTDQ2PS xmm, xmm
// , CVTPD2DQ_XMM_M128 // CVTPD2DQ xmm, m128
// , CVTPD2DQ_XMM_XMM // CVTPD2DQ xmm, xmm
// , CVTPD2PI_MM_M128 // CVTPD2PI mm, m128
// , CVTPD2PI_MM_XMM // CVTPD2PI mm, xmm
// , CVTPD2PS_XMM_M128 // CVTPD2PS xmm, m128
// , CVTPD2PS_XMM_XMM // CVTPD2PS xmm, xmm
// , CVTPI2PD_XMM_M64 // CVTPI2PD xmm, m64
// , CVTPI2PD_XMM_MM // CVTPI2PD xmm, mm
// , CVTPI2PS_XMM_M64 // CVTPI2PS xmm, m64
// , CVTPI2PS_XMM_MM // CVTPI2PS xmm, mm
// , CVTPS2DQ_XMM_M128 // CVTPS2DQ xmm, m128
// , CVTPS2DQ_XMM_XMM // CVTPS2DQ xmm, xmm
// , CVTPS2PD_XMM_M64 // CVTPS2PD xmm, m64
// , CVTPS2PD_XMM_XMM // CVTPS2PD xmm, xmm
// , CVTPS2PI_MM_M64 // CVTPS2PI mm, m64
// , CVTPS2PI_MM_XMM // CVTPS2PI mm, xmm
// , CVTSD2SI_R32_M64 // CVTSD2SI r32, m64
// , CVTSD2SI_R32_XMM // CVTSD2SI r32, xmm
// , CVTSD2SI_R64_M64 // CVTSD2SI r64, m64
  , CVTSD2SI_R64_XMM // CVTSD2SI r64, xmm
// , CVTSD2SS_XMM_M64 // CVTSD2SS xmm, m64
  , CVTSD2SS_XMM_XMM // CVTSD2SS xmm, xmm
// , CVTSI2SD_XMM_M32 // CVTSI2SD xmm, m32
// , CVTSI2SD_XMM_M64 // CVTSI2SD xmm, m64
// , CVTSI2SD_XMM_R32 // CVTSI2SD xmm, r32
  , CVTSI2SD_XMM_R64 // CVTSI2SD xmm, r64
// , CVTSI2SS_XMM_M32 // CVTSI2SS xmm, m32
// , CVTSI2SS_XMM_M64 // CVTSI2SS xmm, m64
// , CVTSI2SS_XMM_R32 // CVTSI2SS xmm, r32
  , CVTSI2SS_XMM_R64 // CVTSI2SS xmm, r64
// , CVTSS2SD_XMM_M32 // CVTSS2SD xmm, m32
  , CVTSS2SD_XMM_XMM // CVTSS2SD xmm, xmm
// , CVTSS2SI_R32_M32 // CVTSS2SI r32, m32
// , CVTSS2SI_R32_XMM // CVTSS2SI r32, xmm
// , CVTSS2SI_R64_M32 // CVTSS2SI r64, m32
  , CVTSS2SI_R64_XMM // CVTSS2SI r64, xmm
// , CVTTPD2DQ_XMM_M128 // CVTTPD2DQ xmm, m128
  , CVTTPD2DQ_XMM_XMM // CVTTPD2DQ xmm, xmm
// , CVTTPD2PI_MM_M128 // CVTTPD2PI mm, m128
// , CVTTPD2PI_MM_XMM // CVTTPD2PI mm, xmm
// , CVTTPS2DQ_XMM_M128 // CVTTPS2DQ xmm, m128
// , CVTTPS2DQ_XMM_XMM // CVTTPS2DQ xmm, xmm
// , CVTTPS2PI_MM_M64 // CVTTPS2PI mm, m64
// , CVTTPS2PI_MM_XMM // CVTTPS2PI mm, xmm
// , CVTTSD2SI_R32_M64 // CVTTSD2SI r32, m64
// , CVTTSD2SI_R32_XMM // CVTTSD2SI r32, xmm
// , CVTTSD2SI_R64_M64 // CVTTSD2SI r64, m64
// , CVTTSD2SI_R64_XMM // CVTTSD2SI r64, xmm
// , CVTTSS2SI_R32_M32 // CVTTSS2SI r32, m32
// , CVTTSS2SI_R32_XMM // CVTTSS2SI r32, xmm
// , CVTTSS2SI_R64_M32 // CVTTSS2SI r64, m32
// , CVTTSS2SI_R64_XMM // CVTTSS2SI r64, xmm
// , CWD // CWD
// , CWDE // CWDE
// , DEC_M16 // DEC m16
// , DEC_M32 // DEC m32
// , DEC_M64 // DEC m64
// , DEC_M8 // DEC m8
// , DEC_R16 // DEC r16
// , DEC_R32 // DEC r32
// , DEC_R64 // DEC r64
// , DEC_R8 // DEC r8
// , DEC_RH // DEC rh
// , DIV_M16 // DIV m16
// , DIV_M32 // DIV m32
// , DIV_M64 // DIV m64
// , DIV_M8 // DIV m8
// , DIV_R16 // DIV r16
// , DIV_R32 // DIV r32
  , DIV_R64 // DIV r64
// , DIV_R8 // DIV r8
// , DIV_RH // DIV rh
// , DIVPD_XMM_M128 // DIVPD xmm, m128
// , DIVPD_XMM_XMM // DIVPD xmm, xmm
// , DIVPS_XMM_M128 // DIVPS xmm, m128
// , DIVPS_XMM_XMM // DIVPS xmm, xmm
// , DIVSD_XMM_M64 // DIVSD xmm, m64
  , DIVSD_XMM_XMM // DIVSD xmm, xmm
// , DIVSS_XMM_M32 // DIVSS xmm, m32
  , DIVSS_XMM_XMM // DIVSS xmm, xmm
// , DPPD_XMM_M128_IMM8 // DPPD xmm, m128, imm8
// , DPPD_XMM_XMM_IMM8 // DPPD xmm, xmm, imm8
// , DPPS_XMM_M128_IMM8 // DPPS xmm, m128, imm8
// , DPPS_XMM_XMM_IMM8 // DPPS xmm, xmm, imm8
// , EMMS // EMMS
// , ENTER_IMM8_IMM16 // ENTER imm8, imm16
// , ENTER_ONE_IMM16 // ENTER 1, imm16
// , ENTER_ZERO_IMM16 // ENTER 0, imm16
// , EXTRACTPS_M32_XMM_IMM8 // EXTRACTPS m32, xmm, imm8
// , EXTRACTPS_R32_XMM_IMM8 // EXTRACTPS r32, xmm, imm8
// , EXTRACTPS_R64_XMM_IMM8 // EXTRACTPS r64, xmm, imm8
// , F2XM1 // F2XM1
// , FABS // FABS
// , FADD_M32FP // FADD m32fp
// , FADD_M64FP // FADD m64fp
// , FADD_ST_ST0 // FADD ST(i), ST
// , FADD_ST0_ST // FADD ST, ST(i)
// , FADDP // FADDP
// , FADDP_ST_ST0 // FADDP ST(i), ST
// , FBLD_M80BCD // FBLD m80bcd
// , FBSTP_M80BCD // FBSTP m80bcd
// , FCHS // FCHS
// , FCLEX // FCLEX
// , FCMOVB_ST0_ST // FCMOVB ST, ST(i)
// , FCMOVBE_ST0_ST // FCMOVBE ST, ST(i)
// , FCMOVE_ST0_ST // FCMOVE ST, ST(i)
// , FCMOVNB_ST0_ST // FCMOVNB ST, ST(i)
// , FCMOVNBE_ST0_ST // FCMOVNBE ST, ST(i)
// , FCMOVNE_ST0_ST // FCMOVNE ST, ST(i)
// , FCMOVNU_ST0_ST // FCMOVNU ST, ST(i)
// , FCMOVU_ST0_ST // FCMOVU ST, ST(i)
// , FCOM // FCOM
// , FCOM_M32FP // FCOM m32fp
// , FCOM_M64FP // FCOM m64fp
// , FCOM_ST // FCOM ST(i)
// , FCOMI_ST0_ST // FCOMI ST, ST(i)
// , FCOMIP_ST0_ST // FCOMIP ST, ST(i)
// , FCOMP // FCOMP
// , FCOMP_M32FP // FCOMP m32fp
// , FCOMP_M64FP // FCOMP m64fp
// , FCOMP_ST // FCOMP ST(i)
// , FCOMPP // FCOMPP
// , FCOS // FCOS
// , FDECSTP // FDECSTP
// , FDIV_M32FP // FDIV m32fp
// , FDIV_M64FP // FDIV m64fp
// , FDIV_ST_ST0 // FDIV ST(i), ST
// , FDIV_ST0_ST // FDIV ST, ST(i)
// , FDIVP // FDIVP
// , FDIVP_ST_ST0 // FDIVP ST(i), ST
// , FDIVR_M32FP // FDIVR m32fp
// , FDIVR_M64FP // FDIVR m64fp
// , FDIVR_ST_ST0 // FDIVR ST(i), ST
// , FDIVR_ST0_ST // FDIVR ST, ST(i)
// , FDIVRP // FDIVRP
// , FDIVRP_ST_ST0 // FDIVRP ST(i), ST
// , FFREE_ST // FFREE ST(i)
// , FIADD_M16INT // FIADD m16int
// , FIADD_M32INT // FIADD m32int
// , FICOM_M16INT // FICOM m16int
// , FICOM_M32INT // FICOM m32int
// , FICOMP_M16INT // FICOMP m16int
// , FICOMP_M32INT // FICOMP m32int
// , FIDIV_M16INT // FIDIV m16int
// , FIDIV_M32INT // FIDIV m32int
// , FIDIVR_M16INT // FIDIVR m16int
// , FIDIVR_M32INT // FIDIVR m32int
// , FILD_M16INT // FILD m16int
// , FILD_M32INT // FILD m32int
// , FILD_M64INT // FILD m64int
// , FIMUL_M16INT // FIMUL m16int
// , FIMUL_M32INT // FIMUL m32int
// , FINCSTP // FINCSTP
// , FINIT // FINIT
// , FIST_M16INT // FIST m16int
// , FIST_M32INT // FIST m32int
// , FISTP_M16INT // FISTP m16int
// , FISTP_M32INT // FISTP m32int
// , FISTP_M64INT // FISTP m64int
// , FISTTP_M16INT // FISTTP m16int
// , FISTTP_M32INT // FISTTP m32int
// , FISTTP_M64INT // FISTTP m64int
// , FISUB_M16INT // FISUB m16int
// , FISUB_M32INT // FISUB m32int
// , FISUBR_M16INT // FISUBR m16int
// , FISUBR_M32INT // FISUBR m32int
// , FLD_M32FP // FLD m32fp
// , FLD_M64FP // FLD m64fp
// , FLD_M80FP // FLD m80fp
// , FLD_ST // FLD ST(i)
// , FLD1 // FLD1
// , FLDCW_M2BYTE // FLDCW m2byte
// , FLDENV_M28BYTE // FLDENV m28byte
// , FLDL2E // FLDL2E
// , FLDL2T // FLDL2T
// , FLDLG2 // FLDLG2
// , FLDLN2 // FLDLN2
// , FLDPI // FLDPI
// , FLDZ // FLDZ
// , FMUL_M32FP // FMUL m32fp
// , FMUL_M64FP // FMUL m64fp
// , FMUL_ST_ST0 // FMUL ST(i), ST
// , FMUL_ST0_ST // FMUL ST, ST(i)
// , FMULP // FMULP
// , FMULP_ST_ST0 // FMULP ST(i), ST
// , FNCLEX // FNCLEX
// , FNINIT // FNINIT
// , FNOP // FNOP
// , FNSAVE_M108BYTE // FNSAVE m108byte
// , FNSTCW_M2BYTE // FNSTCW m2byte
// , FNSTENV_M28BYTE // FNSTENV m28byte
// , FNSTSW_AX // FNSTSW AX
// , FNSTSW_M2BYTE // FNSTSW m2byte
// , FPATAN // FPATAN
// , FPREM // FPREM
// , FPREM1 // FPREM1
// , FPTAN // FPTAN
// , FRNDINT // FRNDINT
// , FRSTOR_M108BYTE // FRSTOR m108byte
// , FSAVE_M108BYTE // FSAVE m108byte
// , FSCALE // FSCALE
// , FSIN // FSIN
// , FSINCOS // FSINCOS
// , FSQRT // FSQRT
// , FST_M32FP // FST m32fp
// , FST_M64FP // FST m64fp
// , FST_ST // FST ST(i)
// , FSTCW_M2BYTE // FSTCW m2byte
// , FSTENV_M28BYTE // FSTENV m28byte
// , FSTP_M32FP // FSTP m32fp
// , FSTP_M64FP // FSTP m64fp
// , FSTP_M80FP // FSTP m80fp
// , FSTP_ST // FSTP ST(i)
// , FSTSW_AX // FSTSW AX
// , FSTSW_M2BYTE // FSTSW m2byte
// , FSUB_M32FP // FSUB m32fp
// , FSUB_M64FP // FSUB m64fp
// , FSUB_ST_ST0 // FSUB ST(i), ST
// , FSUB_ST0_ST // FSUB ST, ST(i)
// , FSUBP // FSUBP
// , FSUBP_ST_ST0 // FSUBP ST(i), ST
// , FSUBR_M32FP // FSUBR m32fp
// , FSUBR_M64FP // FSUBR m64fp
// , FSUBR_ST_ST0 // FSUBR ST(i), ST
// , FSUBR_ST0_ST // FSUBR ST, ST(i)
// , FSUBRP // FSUBRP
// , FSUBRP_ST_ST0 // FSUBRP ST(i), ST
// , FTST // FTST
// , FUCOM // FUCOM
// , FUCOM_ST // FUCOM ST(i)
// , FUCOMI_ST0_ST // FUCOMI ST, ST(i)
// , FUCOMIP_ST0_ST // FUCOMIP ST, ST(i)
// , FUCOMP // FUCOMP
// , FUCOMP_ST // FUCOMP ST(i)
// , FUCOMPP // FUCOMPP
// , FWAIT // FWAIT
// , FXAM // FXAM
// , FXCH // FXCH
// , FXCH_ST // FXCH ST(i)
// , FXRSTOR_M512BYTE // FXRSTOR m512byte
// , FXRSTOR64_M512BYTE // FXRSTOR64 m512byte
// , FXSAVE_M512BYTE // FXSAVE m512byte
// , FXSAVE64_M512BYTE // FXSAVE64 m512byte
// , FXTRACT // FXTRACT
// , FYL2X // FYL2X
// , FYL2XP1 // FYL2XP1
// , HADDPD_XMM_M128 // HADDPD xmm, m128
// , HADDPD_XMM_XMM // HADDPD xmm, xmm
// , HADDPS_XMM_M128 // HADDPS xmm, m128
// , HADDPS_XMM_XMM // HADDPS xmm, xmm
// , HSUBPD_XMM_M128 // HSUBPD xmm, m128
// , HSUBPD_XMM_XMM // HSUBPD xmm, xmm
// , HSUBPS_XMM_M128 // HSUBPS xmm, m128
// , HSUBPS_XMM_XMM // HSUBPS xmm, xmm
// , IDIV_M16 // IDIV m16
// , IDIV_M32 // IDIV m32
// , IDIV_M64 // IDIV m64
// , IDIV_M8 // IDIV m8
// , IDIV_R16 // IDIV r16
// , IDIV_R32 // IDIV r32
  , IDIV_R64 // IDIV r64
// , IDIV_R8 // IDIV r8
// , IDIV_RH // IDIV rh
// , IMUL_M16 // IMUL m16
// , IMUL_M32 // IMUL m32
// , IMUL_M64 // IMUL m64
// , IMUL_M8 // IMUL m8
  , IMUL_R16 // IMUL r16
// , IMUL_R16_M16 // IMUL r16, m16
// , IMUL_R16_M16_IMM16 // IMUL r16, m16, imm16
// , IMUL_R16_M16_IMM8 // IMUL r16, m16, imm8
  , IMUL_R16_R16 // IMUL r16, r16
// , IMUL_R16_R16_IMM16 // IMUL r16, r16, imm16
// , IMUL_R16_R16_IMM8 // IMUL r16, r16, imm8
  , IMUL_R32 // IMUL r32
// , IMUL_R32_M32 // IMUL r32, m32
// , IMUL_R32_M32_IMM32 // IMUL r32, m32, imm32
// , IMUL_R32_M32_IMM8 // IMUL r32, m32, imm8
  , IMUL_R32_R32 // IMUL r32, r32
// , IMUL_R32_R32_IMM32 // IMUL r32, r32, imm32
// , IMUL_R32_R32_IMM8 // IMUL r32, r32, imm8
  , IMUL_R64 // IMUL r64
// , IMUL_R64_M64 // IMUL r64, m64
// , IMUL_R64_M64_IMM32 // IMUL r64, m64, imm32
// , IMUL_R64_M64_IMM8 // IMUL r64, m64, imm8
  , IMUL_R64_R64 // IMUL r64, r64
// , IMUL_R64_R64_IMM32 // IMUL r64, r64, imm32
// , IMUL_R64_R64_IMM8 // IMUL r64, r64, imm8
  , IMUL_R8 // IMUL r8
// , IMUL_RH // IMUL rh
// , IN_AL_DX // IN AL, DX
// , IN_AL_IMM8 // IN AL, imm8
// , IN_AX_DX // IN AX, DX
// , IN_AX_IMM8 // IN AX, imm8
// , IN_EAX_DX // IN EAX, DX
// , IN_EAX_IMM8 // IN EAX, imm8
// , INC_M16 // INC m16
// , INC_M32 // INC m32
// , INC_M64 // INC m64
// , INC_M8 // INC m8
// , INC_R16 // INC r16
// , INC_R32 // INC r32
// , INC_R64 // INC r64
// , INC_R8 // INC r8
// , INC_RH // INC rh
// , INS_M16_DX // INS m16, DX
// , INS_M32_DX // INS m32, DX
// , INS_M8_DX // INS m8, DX
// , INSB // INSB
// , INSD // INSD
// , INSERTPS_XMM_M32_IMM8 // INSERTPS xmm, m32, imm8
// , INSERTPS_XMM_XMM_IMM8 // INSERTPS xmm, xmm, imm8
// , INSW // INSW
// , INT_IMM8 // INT imm8
// , INT_THREE // INT 3
// , INVPCID_R64_M128 // INVPCID r64, m128
// , IRET // IRET
// , IRETD // IRETD
// , IRETQ // IRETQ
// , JA_REL32 // JA rel32
// , JA_LABEL // JA label
// , JA_REL32_HINT // JA rel32, hint
// , JA_LABEL_HINT // JA label, hint
// , JA_REL8 // JA rel8
// , JA_REL8_HINT // JA rel8, hint
// , JAE_REL32 // JAE rel32
// , JAE_LABEL // JAE label
// , JAE_REL32_HINT // JAE rel32, hint
// , JAE_LABEL_HINT // JAE label, hint
// , JAE_REL8 // JAE rel8
// , JAE_REL8_HINT // JAE rel8, hint
// , JB_REL32 // JB rel32
// , JB_LABEL // JB label
// , JB_REL32_HINT // JB rel32, hint
// , JB_LABEL_HINT // JB label, hint
// , JB_REL8 // JB rel8
// , JB_REL8_HINT // JB rel8, hint
// , JBE_REL32 // JBE rel32
// , JBE_LABEL // JBE label
// , JBE_REL32_HINT // JBE rel32, hint
// , JBE_LABEL_HINT // JBE label, hint
// , JBE_REL8 // JBE rel8
// , JBE_REL8_HINT // JBE rel8, hint
// , JC_REL32 // JC rel32
// , JC_LABEL // JC label
// , JC_REL32_HINT // JC rel32, hint
// , JC_LABEL_HINT // JC label, hint
// , JC_REL8 // JC rel8
// , JC_REL8_HINT // JC rel8, hint
// , JE_REL32 // JE rel32
// , JE_LABEL // JE label
// , JE_REL32_HINT // JE rel32, hint
// , JE_LABEL_HINT // JE label, hint
// , JE_REL8 // JE rel8
// , JE_REL8_HINT // JE rel8, hint
// , JECXZ_REL8 // JECXZ rel8
// , JECXZ_REL8_HINT // JECXZ rel8, hint
// , JG_REL32 // JG rel32
// , JG_LABEL // JG label
// , JG_REL32_HINT // JG rel32, hint
// , JG_LABEL_HINT // JG label, hint
// , JG_REL8 // JG rel8
// , JG_REL8_HINT // JG rel8, hint
// , JGE_REL32 // JGE rel32
// , JGE_LABEL // JGE label
// , JGE_REL32_HINT // JGE rel32, hint
// , JGE_LABEL_HINT // JGE label, hint
// , JGE_REL8 // JGE rel8
// , JGE_REL8_HINT // JGE rel8, hint
// , JL_REL32 // JL rel32
// , JL_LABEL // JL label
// , JL_REL32_HINT // JL rel32, hint
// , JL_LABEL_HINT // JL label, hint
// , JL_REL8 // JL rel8
// , JL_REL8_HINT // JL rel8, hint
// , JLE_REL32 // JLE rel32
// , JLE_LABEL // JLE label
// , JLE_REL32_HINT // JLE rel32, hint
// , JLE_LABEL_HINT // JLE label, hint
// , JLE_REL8 // JLE rel8
// , JLE_REL8_HINT // JLE rel8, hint
// , JMP_FARPTR1616 // JMP m16:16
// , JMP_FARPTR1632 // JMP m16:32
// , JMP_FARPTR1664 // JMP m16:64
// , JMP_M64 // JMP m64
// , JMP_R64 // JMP r64
// , JMP_REL32 // JMP rel32
// , JMP_LABEL // JMP label
// , JMP_REL8 // JMP rel8
// , JNA_REL32 // JNA rel32
// , JNA_LABEL // JNA label
// , JNA_REL32_HINT // JNA rel32, hint
// , JNA_LABEL_HINT // JNA label, hint
// , JNA_REL8 // JNA rel8
// , JNA_REL8_HINT // JNA rel8, hint
// , JNAE_REL32 // JNAE rel32
// , JNAE_LABEL // JNAE label
// , JNAE_REL32_HINT // JNAE rel32, hint
// , JNAE_LABEL_HINT // JNAE label, hint
// , JNAE_REL8 // JNAE rel8
// , JNAE_REL8_HINT // JNAE rel8, hint
// , JNB_REL32 // JNB rel32
// , JNB_LABEL // JNB label
// , JNB_REL32_HINT // JNB rel32, hint
// , JNB_LABEL_HINT // JNB label, hint
// , JNB_REL8 // JNB rel8
// , JNB_REL8_HINT // JNB rel8, hint
// , JNBE_REL32 // JNBE rel32
// , JNBE_LABEL // JNBE label
// , JNBE_REL32_HINT // JNBE rel32, hint
// , JNBE_LABEL_HINT // JNBE label, hint
// , JNBE_REL8 // JNBE rel8
// , JNBE_REL8_HINT // JNBE rel8, hint
// , JNC_REL32 // JNC rel32
// , JNC_LABEL // JNC label
// , JNC_REL32_HINT // JNC rel32, hint
// , JNC_LABEL_HINT // JNC label, hint
// , JNC_REL8 // JNC rel8
// , JNC_REL8_HINT // JNC rel8, hint
// , JNE_REL32 // JNE rel32
// , JNE_LABEL // JNE label
// , JNE_REL32_HINT // JNE rel32, hint
// , JNE_LABEL_HINT // JNE label, hint
// , JNE_REL8 // JNE rel8
// , JNE_REL8_HINT // JNE rel8, hint
// , JNG_REL32 // JNG rel32
// , JNG_LABEL // JNG label
// , JNG_REL32_HINT // JNG rel32, hint
// , JNG_LABEL_HINT // JNG label, hint
// , JNG_REL8 // JNG rel8
// , JNG_REL8_HINT // JNG rel8, hint
// , JNGE_REL32 // JNGE rel32
// , JNGE_LABEL // JNGE label
// , JNGE_REL32_HINT // JNGE rel32, hint
// , JNGE_LABEL_HINT // JNGE label, hint
// , JNGE_REL8 // JNGE rel8
// , JNGE_REL8_HINT // JNGE rel8, hint
// , JNL_REL32 // JNL rel32
// , JNL_LABEL // JNL label
// , JNL_REL32_HINT // JNL rel32, hint
// , JNL_LABEL_HINT // JNL label, hint
// , JNL_REL8 // JNL rel8
// , JNL_REL8_HINT // JNL rel8, hint
// , JNLE_REL32 // JNLE rel32
// , JNLE_LABEL // JNLE label
// , JNLE_REL32_HINT // JNLE rel32, hint
// , JNLE_LABEL_HINT // JNLE label, hint
// , JNLE_REL8 // JNLE rel8
// , JNLE_REL8_HINT // JNLE rel8, hint
// , JNO_REL32 // JNO rel32
// , JNO_LABEL // JNO label
// , JNO_REL32_HINT // JNO rel32, hint
// , JNO_LABEL_HINT // JNO label, hint
// , JNO_REL8 // JNO rel8
// , JNO_REL8_HINT // JNO rel8, hint
// , JNP_REL32 // JNP rel32
// , JNP_LABEL // JNP label
// , JNP_REL32_HINT // JNP rel32, hint
// , JNP_LABEL_HINT // JNP label, hint
// , JNP_REL8 // JNP rel8
// , JNP_REL8_HINT // JNP rel8, hint
// , JNS_REL32 // JNS rel32
// , JNS_LABEL // JNS label
// , JNS_REL32_HINT // JNS rel32, hint
// , JNS_LABEL_HINT // JNS label, hint
// , JNS_REL8 // JNS rel8
// , JNS_REL8_HINT // JNS rel8, hint
// , JNZ_REL32 // JNZ rel32
// , JNZ_LABEL // JNZ label
// , JNZ_REL32_HINT // JNZ rel32, hint
// , JNZ_LABEL_HINT // JNZ label, hint
// , JNZ_REL8 // JNZ rel8
// , JNZ_REL8_HINT // JNZ rel8, hint
// , JO_REL32 // JO rel32
// , JO_LABEL // JO label
// , JO_REL32_HINT // JO rel32, hint
// , JO_LABEL_HINT // JO label, hint
// , JO_REL8 // JO rel8
// , JO_REL8_HINT // JO rel8, hint
// , JP_REL32 // JP rel32
// , JP_LABEL // JP label
// , JP_REL32_HINT // JP rel32, hint
// , JP_LABEL_HINT // JP label, hint
// , JP_REL8 // JP rel8
// , JP_REL8_HINT // JP rel8, hint
// , JPE_REL32 // JPE rel32
// , JPE_LABEL // JPE label
// , JPE_REL32_HINT // JPE rel32, hint
// , JPE_LABEL_HINT // JPE label, hint
// , JPE_REL8 // JPE rel8
// , JPE_REL8_HINT // JPE rel8, hint
// , JPO_REL32 // JPO rel32
// , JPO_LABEL // JPO label
// , JPO_REL32_HINT // JPO rel32, hint
// , JPO_LABEL_HINT // JPO label, hint
// , JPO_REL8 // JPO rel8
// , JPO_REL8_HINT // JPO rel8, hint
// , JRCXZ_REL8 // JRCXZ rel8
// , JRCXZ_REL8_HINT // JRCXZ rel8, hint
// , JS_REL32 // JS rel32
// , JS_LABEL // JS label
// , JS_REL32_HINT // JS rel32, hint
// , JS_LABEL_HINT // JS label, hint
// , JS_REL8 // JS rel8
// , JS_REL8_HINT // JS rel8, hint
// , JZ_REL32 // JZ rel32
// , JZ_LABEL // JZ label
// , JZ_REL32_HINT // JZ rel32, hint
// , JZ_LABEL_HINT // JZ label, hint
// , JZ_REL8 // JZ rel8
// , JZ_REL8_HINT // JZ rel8, hint
// , LAHF // LAHF
// , LAR_R16_M16 // LAR r16, m16
// , LAR_R16_R16 // LAR r16, r16
// , LAR_R32_M16 // LAR r32, m16
// , LAR_R32_R32 // LAR r32, r32
// , LAR_R64_M16 // LAR r64, m16
// , LAR_R64_R32 // LAR r64, r32
// , LDDQU_XMM_M128 // LDDQU xmm, m128
// , LDMXCSR_M32 // LDMXCSR m32
// , LEA_R16_M16 // LEA r16, m16
// , LEA_R16_M32 // LEA r16, m32
// , LEA_R16_M64 // LEA r16, m64
// , LEA_R32_M16 // LEA r32, m16
// , LEA_R32_M32 // LEA r32, m32
// , LEA_R32_M64 // LEA r32, m64
// , LEA_R64_M16 // LEA r64, m16
// , LEA_R64_M32 // LEA r64, m32
// , LEA_R64_M64 // LEA r64, m64
// , LEAVE // LEAVE
// , LEAVE_PREF66 // LEAVE p66
// , LFENCE // LFENCE
// , LFS_R16_FARPTR1616 // LFS r16, m16:16
// , LFS_R32_FARPTR1632 // LFS r32, m16:32
// , LFS_R64_FARPTR1664 // LFS r64, m16:64
// , LGS_R16_FARPTR1616 // LGS r16, m16:16
// , LGS_R32_FARPTR1632 // LGS r32, m16:32
// , LGS_R64_FARPTR1664 // LGS r64, m16:64
// , LOCK // LOCK
// , LODS_M16 // LODS m16
// , LODS_M32 // LODS m32
// , LODS_M64 // LODS m64
// , LODS_M8 // LODS m8
// , LODSB // LODSB
// , LODSD // LODSD
// , LODSQ // LODSQ
// , LODSW // LODSW
// , LOOP_REL8 // LOOP rel8
// , LOOPE_REL8 // LOOPE rel8
// , LOOPNE_REL8 // LOOPNE rel8
// , LSL_R16_M16 // LSL r16, m16
// , LSL_R16_R16 // LSL r16, r16
// , LSL_R32_M16 // LSL r32, m16
// , LSL_R32_R32 // LSL r32, r32
// , LSL_R64_M16 // LSL r64, m16
// , LSL_R64_R32 // LSL r64, r32
// , LSS_R16_FARPTR1616 // LSS r16, m16:16
// , LSS_R32_FARPTR1632 // LSS r32, m16:32
// , LSS_R64_FARPTR1664 // LSS r64, m16:64
// , LZCNT_R16_M16 // LZCNT r16, m16
// , LZCNT_R16_R16 // LZCNT r16, r16
// , LZCNT_R32_M32 // LZCNT r32, m32
// , LZCNT_R32_R32 // LZCNT r32, r32
// , LZCNT_R64_M64 // LZCNT r64, m64
// , LZCNT_R64_R64 // LZCNT r64, r64
// , MASKMOVDQU_XMM_XMM // MASKMOVDQU xmm, xmm
// , MASKMOVQ_MM_MM // MASKMOVQ mm, mm
// , MAXPD_XMM_M128 // MAXPD xmm, m128
// , MAXPD_XMM_XMM // MAXPD xmm, xmm
// , MAXPS_XMM_M128 // MAXPS xmm, m128
// , MAXPS_XMM_XMM // MAXPS xmm, xmm
// , MAXSD_XMM_M64 // MAXSD xmm, m64
  , MAXSD_XMM_XMM // MAXSD xmm, xmm
// , MAXSS_XMM_M32 // MAXSS xmm, m32
  , MAXSS_XMM_XMM // MAXSS xmm, xmm
// , MFENCE // MFENCE
// , MINPD_XMM_M128 // MINPD xmm, m128
// , MINPD_XMM_XMM // MINPD xmm, xmm
// , MINPS_XMM_M128 // MINPS xmm, m128
// , MINPS_XMM_XMM // MINPS xmm, xmm
// , MINSD_XMM_M64 // MINSD xmm, m64
  , MINSD_XMM_XMM // MINSD xmm, xmm
// , MINSS_XMM_M32 // MINSS xmm, m32
  , MINSS_XMM_XMM // MINSS xmm, xmm
// , MONITOR // MONITOR
// , MOV_AL_MOFFS8 // MOV AL, moffs8
// , MOV_AL_MOFFS8_PREFREXW // MOV AL, moffs8, pw
// , MOV_AX_MOFFS16 // MOV AX, moffs16
// , MOV_EAX_MOFFS32 // MOV EAX, moffs32
// , MOV_M16_IMM16 // MOV m16, imm16
// , MOV_M16_R16 // MOV m16, r16
// , MOV_M16_SREG // MOV m16, Sreg
// , MOV_M32_IMM32 // MOV m32, imm32
// , MOV_M32_R32 // MOV m32, r32
// , MOV_M64_IMM32 // MOV m64, imm32
// , MOV_M64_R64 // MOV m64, r64
// , MOV_M64_SREG // MOV m64, Sreg
// , MOV_M8_IMM8 // MOV m8, imm8
// , MOV_M8_R8 // MOV m8, r8
// , MOV_M8_RH // MOV m8, rh
// , MOV_MOFFS16_AX // MOV moffs16, AX
// , MOV_MOFFS32_EAX // MOV moffs32, EAX
// , MOV_MOFFS64_RAX // MOV moffs64, RAX
// , MOV_MOFFS8_AL // MOV moffs8, AL
// , MOV_MOFFS8_AL_PREFREXW // MOV moffs8, AL, pw
// , MOV_R16_IMM16 // MOV r16, imm16
// , MOV_R16_M16 // MOV r16, m16
// , MOV_R16_R16 // MOV r16, r16
// , MOV_R16_SREG // MOV r16, Sreg
// , MOV_R32_IMM32 // MOV r32, imm32
// , MOV_R32_M32 // MOV r32, m32
// , MOV_R32_R32 // MOV r32, r32
// , MOV_R64_IMM32 // MOV r64, imm32
  , MOV_R64_IMM64 // MOV r64, imm64
// , MOV_R64_M64 // MOV r64, m64
  , MOV_R64_R64 // MOV r64, r64
// , MOV_R64_SREG // MOV r64, Sreg
// , MOV_R8_IMM8 // MOV r8, imm8
// , MOV_R8_M8 // MOV r8, m8
// , MOV_R8_R8 // MOV r8, r8
  , MOV_R8_RH // MOV r8, rh
// , MOV_RAX_MOFFS64 // MOV RAX, moffs64
// , MOV_RH_IMM8 // MOV rh, imm8
// , MOV_RH_M8 // MOV rh, m8
  , MOV_RH_R8 // MOV rh, r8
// , MOV_RH_RH // MOV rh, rh
// , MOV_SREG_M16 // MOV Sreg, m16
// , MOV_SREG_M64 // MOV Sreg, m64
// , MOV_SREG_R16 // MOV Sreg, r16
// , MOV_SREG_R64 // MOV Sreg, r64
// , MOVAPD_M128_XMM // MOVAPD m128, xmm
// , MOVAPD_XMM_M128 // MOVAPD xmm, m128
// , MOVAPD_XMM_XMM // MOVAPD xmm, xmm
// , MOVAPS_M128_XMM // MOVAPS m128, xmm
// , MOVAPS_XMM_M128 // MOVAPS xmm, m128
// , MOVAPS_XMM_XMM // MOVAPS xmm, xmm
// , MOVBE_M16_R16 // MOVBE m16, r16
// , MOVBE_M32_R32 // MOVBE m32, r32
// , MOVBE_M64_R64 // MOVBE m64, r64
// , MOVBE_R16_M16 // MOVBE r16, m16
// , MOVBE_R32_M32 // MOVBE r32, m32
// , MOVBE_R64_M64 // MOVBE r64, m64
// , MOVD_M32_MM // MOVD m32, mm
// , MOVD_M32_XMM // MOVD m32, xmm
// , MOVD_MM_M32 // MOVD mm, m32
// , MOVD_MM_R32 // MOVD mm, r32
// , MOVD_R32_MM // MOVD r32, mm
// , MOVD_R32_XMM // MOVD r32, xmm
// , MOVD_XMM_M32 // MOVD xmm, m32
// , MOVD_XMM_R32 // MOVD xmm, r32
// , MOVDDUP_XMM_M64 // MOVDDUP xmm, m64
// , MOVDDUP_XMM_XMM // MOVDDUP xmm, xmm
// , MOVDQ2Q_MM_XMM // MOVDQ2Q mm, xmm
// , MOVDQA_M128_XMM // MOVDQA m128, xmm
// , MOVDQA_XMM_M128 // MOVDQA xmm, m128
// , MOVDQA_XMM_XMM // MOVDQA xmm, xmm
// , MOVDQU_M128_XMM // MOVDQU m128, xmm
// , MOVDQU_XMM_M128 // MOVDQU xmm, m128
// , MOVDQU_XMM_XMM // MOVDQU xmm, xmm
// , MOVHLPS_XMM_XMM // MOVHLPS xmm, xmm
// , MOVHPD_M64_XMM // MOVHPD m64, xmm
// , MOVHPD_XMM_M64 // MOVHPD xmm, m64
// , MOVHPS_M64_XMM // MOVHPS m64, xmm
// , MOVHPS_XMM_M64 // MOVHPS xmm, m64
// , MOVLHPS_XMM_XMM // MOVLHPS xmm, xmm
// , MOVLPD_M64_XMM // MOVLPD m64, xmm
// , MOVLPD_XMM_M64 // MOVLPD xmm, m64
// , MOVLPS_M64_XMM // MOVLPS m64, xmm
// , MOVLPS_XMM_M64 // MOVLPS xmm, m64
// , MOVMSKPD_R32_XMM // MOVMSKPD r32, xmm
// , MOVMSKPD_R64_XMM // MOVMSKPD r64, xmm
// , MOVMSKPS_R32_XMM // MOVMSKPS r32, xmm
// , MOVMSKPS_R64_XMM // MOVMSKPS r64, xmm
// , MOVNTDQ_M128_XMM // MOVNTDQ m128, xmm
// , MOVNTDQ_M256_YMM // MOVNTDQ m256, ymm
// , MOVNTDQA_XMM_M128 // MOVNTDQA xmm, m128
// , MOVNTI_M32_R32 // MOVNTI m32, r32
// , MOVNTI_M64_R64 // MOVNTI m64, r64
// , MOVNTPD_M128_XMM // MOVNTPD m128, xmm
// , MOVNTPS_M128_XMM // MOVNTPS m128, xmm
// , MOVNTQ_M64_MM // MOVNTQ m64, mm
// , MOVQ_M64_MM // MOVQ m64, mm
// , MOVQ_M64_XMM // MOVQ m64, xmm
// , MOVQ_MM_M64 // MOVQ mm, m64
// , MOVQ_MM_MM // MOVQ mm, mm
// , MOVQ_MM_R64 // MOVQ mm, r64
// , MOVQ_R64_MM // MOVQ r64, mm
// , MOVQ_R64_XMM // MOVQ r64, xmm
// , MOVQ_XMM_M64 // MOVQ xmm, m64
// , MOVQ_XMM_R64 // MOVQ xmm, r64
// , MOVQ_XMM_XMM // MOVQ xmm, xmm
// , MOVQ2DQ_XMM_MM // MOVQ2DQ xmm, mm
// , MOVS_M16_M16 // MOVS m16, m16
// , MOVS_M32_M32 // MOVS m32, m32
// , MOVS_M64_M64 // MOVS m64, m64
// , MOVS_M8_M8 // MOVS m8, m8
// , MOVSB // MOVSB
// , MOVSD // MOVSD
// , MOVSD_M64_XMM // MOVSD m64, xmm
// , MOVSD_XMM_M64 // MOVSD xmm, m64
// , MOVSD_XMM_XMM // MOVSD xmm, xmm
// , MOVSHDUP_XMM_M128 // MOVSHDUP xmm, m128
// , MOVSHDUP_XMM_XMM // MOVSHDUP xmm, xmm
// , MOVSLDUP_XMM_M128 // MOVSLDUP xmm, m128
// , MOVSLDUP_XMM_XMM // MOVSLDUP xmm, xmm
// , MOVSQ // MOVSQ
// , MOVSS_M32_XMM // MOVSS m32, xmm
// , MOVSS_XMM_M32 // MOVSS xmm, m32
// , MOVSS_XMM_XMM // MOVSS xmm, xmm
// , MOVSW // MOVSW
// , MOVSX_R16_M8 // MOVSX r16, m8
// , MOVSX_R16_R8 // MOVSX r16, r8
// , MOVSX_R16_RH // MOVSX r16, rh
// , MOVSX_R32_M16 // MOVSX r32, m16
// , MOVSX_R32_M8 // MOVSX r32, m8
// , MOVSX_R32_R16 // MOVSX r32, r16
// , MOVSX_R32_R8 // MOVSX r32, r8
// , MOVSX_R32_RH // MOVSX r32, rh
// , MOVSX_R64_M16 // MOVSX r64, m16
// , MOVSX_R64_M8 // MOVSX r64, m8
  , MOVSX_R64_R16 // MOVSX r64, r16
  , MOVSX_R64_R8 // MOVSX r64, r8
// , MOVSX_R64_RH // MOVSX r64, rh
// , MOVSXD_R64_M32 // MOVSXD r64, m32
  , MOVSXD_R64_R32 // MOVSXD r64, r32
// , MOVUPD_M128_XMM // MOVUPD m128, xmm
// , MOVUPD_XMM_M128 // MOVUPD xmm, m128
// , MOVUPD_XMM_XMM // MOVUPD xmm, xmm
// , MOVUPS_M128_XMM // MOVUPS m128, xmm
// , MOVUPS_XMM_M128 // MOVUPS xmm, m128
// , MOVUPS_XMM_XMM // MOVUPS xmm, xmm
// , MOVZX_R16_M8 // MOVZX r16, m8
// , MOVZX_R16_R8 // MOVZX r16, r8
// , MOVZX_R16_RH // MOVZX r16, rh
// , MOVZX_R32_M16 // MOVZX r32, m16
// , MOVZX_R32_M8 // MOVZX r32, m8
// , MOVZX_R32_R16 // MOVZX r32, r16
// , MOVZX_R32_R8 // MOVZX r32, r8
// , MOVZX_R32_RH // MOVZX r32, rh
// , MOVZX_R64_M16 // MOVZX r64, m16
// , MOVZX_R64_M8 // MOVZX r64, m8
// , MOVZX_R64_R16 // MOVZX r64, r16
// , MOVZX_R64_R8 // MOVZX r64, r8
// , MOVZX_R64_RH // MOVZX r64, rh
// , MPSADBW_XMM_M128_IMM8 // MPSADBW xmm, m128, imm8
// , MPSADBW_XMM_XMM_IMM8 // MPSADBW xmm, xmm, imm8
// , MUL_M16 // MUL m16
// , MUL_M32 // MUL m32
// , MUL_M64 // MUL m64
// , MUL_M8 // MUL m8
  , MUL_R16 // MUL r16
  , MUL_R32 // MUL r32
  , MUL_R64 // MUL r64
  , MUL_R8 // MUL r8
// , MUL_RH // MUL rh
// , MULPD_XMM_M128 // MULPD xmm, m128
// , MULPD_XMM_XMM // MULPD xmm, xmm
// , MULPS_XMM_M128 // MULPS xmm, m128
// , MULPS_XMM_XMM // MULPS xmm, xmm
// , MULSD_XMM_M64 // MULSD xmm, m64
// , MULSD_XMM_XMM // MULSD xmm, xmm
// , MULSS_XMM_M32 // MULSS xmm, m32
// , MULSS_XMM_XMM // MULSS xmm, xmm
// , MULX_R32_R32_M32 // MULX r32, r32, m32
// , MULX_R32_R32_R32 // MULX r32, r32, r32
// , MULX_R64_R64_M64 // MULX r64, r64, m64
// , MULX_R64_R64_R64 // MULX r64, r64, r64
// , MWAIT // MWAIT
// , NEG_M16 // NEG m16
// , NEG_M32 // NEG m32
// , NEG_M64 // NEG m64
// , NEG_M8 // NEG m8
// , NEG_R16 // NEG r16
// , NEG_R32 // NEG r32
// , NEG_R64 // NEG r64
// , NEG_R8 // NEG r8
// , NEG_RH // NEG rh
// , NOP // NOP
// , NOP_M16 // NOP m16
// , NOP_M32 // NOP m32
// , NOP_R16 // NOP r16
// , NOP_R32 // NOP r32
// , NOT_M16 // NOT m16
// , NOT_M32 // NOT m32
// , NOT_M64 // NOT m64
// , NOT_M8 // NOT m8
// , NOT_R16 // NOT r16
// , NOT_R32 // NOT r32
// , NOT_R64 // NOT r64
// , NOT_R8 // NOT r8
// , NOT_RH // NOT rh
// , OR_AL_IMM8 // OR AL, imm8
// , OR_AX_IMM16 // OR AX, imm16
// , OR_EAX_IMM32 // OR EAX, imm32
// , OR_M16_IMM16 // OR m16, imm16
// , OR_M16_IMM8 // OR m16, imm8
// , OR_M16_R16 // OR m16, r16
// , OR_M32_IMM32 // OR m32, imm32
// , OR_M32_IMM8 // OR m32, imm8
// , OR_M32_R32 // OR m32, r32
// , OR_M64_IMM32 // OR m64, imm32
// , OR_M64_IMM8 // OR m64, imm8
// , OR_M64_R64 // OR m64, r64
// , OR_M8_IMM8 // OR m8, imm8
// , OR_M8_R8 // OR m8, r8
// , OR_M8_RH // OR m8, rh
// , OR_R16_IMM16 // OR r16, imm16
// , OR_R16_IMM8 // OR r16, imm8
// , OR_R16_M16 // OR r16, m16
// , OR_R16_R16 // OR r16, r16
// , OR_R32_IMM32 // OR r32, imm32
// , OR_R32_IMM8 // OR r32, imm8
// , OR_R32_M32 // OR r32, m32
  , OR_R32_R32 // OR r32, r32
// , OR_R64_IMM32 // OR r64, imm32
// , OR_R64_IMM8 // OR r64, imm8
// , OR_R64_M64 // OR r64, m64
// , OR_R64_R64 // OR r64, r64
// , OR_R8_IMM8 // OR r8, imm8
// , OR_R8_M8 // OR r8, m8
  , OR_R8_R8 // OR r8, r8
// , OR_R8_RH // OR r8, rh
// , OR_RAX_IMM32 // OR RAX, imm32
// , OR_RH_IMM8 // OR rh, imm8
// , OR_RH_M8 // OR rh, m8
// , OR_RH_R8 // OR rh, r8
// , OR_RH_RH // OR rh, rh
// , ORPD_XMM_M128 // ORPD xmm, m128
// , ORPD_XMM_XMM // ORPD xmm, xmm
// , ORPS_XMM_M128 // ORPS xmm, m128
// , ORPS_XMM_XMM // ORPS xmm, xmm
// , OUT_DX_AL // OUT DX, AL
// , OUT_DX_AX // OUT DX, AX
// , OUT_DX_EAX // OUT DX, EAX
// , OUT_IMM8_AL // OUT imm8, AL
// , OUT_IMM8_AX // OUT imm8, AX
// , OUT_IMM8_EAX // OUT imm8, EAX
// , OUTS_DX_M16 // OUTS DX, m16
// , OUTS_DX_M32 // OUTS DX, m32
// , OUTS_DX_M8 // OUTS DX, m8
// , OUTSB // OUTSB
// , OUTSD // OUTSD
// , OUTSW // OUTSW
// , PABSB_MM_M64 // PABSB mm, m64
// , PABSB_MM_MM // PABSB mm, mm
// , PABSB_XMM_M128 // PABSB xmm, m128
// , PABSB_XMM_XMM // PABSB xmm, xmm
// , PABSD_MM_M64 // PABSD mm, m64
// , PABSD_MM_MM // PABSD mm, mm
// , PABSD_XMM_M128 // PABSD xmm, m128
// , PABSD_XMM_XMM // PABSD xmm, xmm
// , PABSW_MM_M64 // PABSW mm, m64
// , PABSW_MM_MM // PABSW mm, mm
// , PABSW_XMM_M128 // PABSW xmm, m128
// , PABSW_XMM_XMM // PABSW xmm, xmm
// , PACKSSDW_MM_M64 // PACKSSDW mm, m64
// , PACKSSDW_MM_MM // PACKSSDW mm, mm
// , PACKSSDW_XMM_M128 // PACKSSDW xmm, m128
// , PACKSSDW_XMM_XMM // PACKSSDW xmm, xmm
// , PACKSSWB_MM_M64 // PACKSSWB mm, m64
// , PACKSSWB_MM_MM // PACKSSWB mm, mm
// , PACKSSWB_XMM_M128 // PACKSSWB xmm, m128
// , PACKSSWB_XMM_XMM // PACKSSWB xmm, xmm
// , PACKUSDW_XMM_M128 // PACKUSDW xmm, m128
// , PACKUSDW_XMM_XMM // PACKUSDW xmm, xmm
// , PACKUSWB_MM_M64 // PACKUSWB mm, m64
// , PACKUSWB_MM_MM // PACKUSWB mm, mm
// , PACKUSWB_XMM_M128 // PACKUSWB xmm, m128
// , PACKUSWB_XMM_XMM // PACKUSWB xmm, xmm
// , PADDB_MM_M64 // PADDB mm, m64
// , PADDB_MM_MM // PADDB mm, mm
// , PADDB_XMM_M128 // PADDB xmm, m128
// , PADDB_XMM_XMM // PADDB xmm, xmm
// , PADDD_MM_M64 // PADDD mm, m64
// , PADDD_MM_MM // PADDD mm, mm
// , PADDD_XMM_M128 // PADDD xmm, m128
// , PADDD_XMM_XMM // PADDD xmm, xmm
// , PADDQ_MM_M64 // PADDQ mm, m64
// , PADDQ_MM_MM // PADDQ mm, mm
// , PADDQ_XMM_M128 // PADDQ xmm, m128
// , PADDQ_XMM_XMM // PADDQ xmm, xmm
// , PADDSB_MM_M64 // PADDSB mm, m64
// , PADDSB_MM_MM // PADDSB mm, mm
// , PADDSB_XMM_M128 // PADDSB xmm, m128
// , PADDSB_XMM_XMM // PADDSB xmm, xmm
// , PADDSW_MM_M64 // PADDSW mm, m64
// , PADDSW_MM_MM // PADDSW mm, mm
// , PADDSW_XMM_M128 // PADDSW xmm, m128
// , PADDSW_XMM_XMM // PADDSW xmm, xmm
// , PADDUSB_MM_M64 // PADDUSB mm, m64
// , PADDUSB_MM_MM // PADDUSB mm, mm
// , PADDUSB_XMM_M128 // PADDUSB xmm, m128
// , PADDUSB_XMM_XMM // PADDUSB xmm, xmm
// , PADDUSW_MM_M64 // PADDUSW mm, m64
// , PADDUSW_MM_MM // PADDUSW mm, mm
// , PADDUSW_XMM_M128 // PADDUSW xmm, m128
// , PADDUSW_XMM_XMM // PADDUSW xmm, xmm
// , PADDW_MM_M64 // PADDW mm, m64
// , PADDW_MM_MM // PADDW mm, mm
// , PADDW_XMM_M128 // PADDW xmm, m128
// , PADDW_XMM_XMM // PADDW xmm, xmm
// , PALIGNR_MM_M64_IMM8 // PALIGNR mm, m64, imm8
// , PALIGNR_MM_MM_IMM8 // PALIGNR mm, mm, imm8
// , PALIGNR_XMM_M128_IMM8 // PALIGNR xmm, m128, imm8
// , PALIGNR_XMM_XMM_IMM8 // PALIGNR xmm, xmm, imm8
// , PAND_MM_M64 // PAND mm, m64
// , PAND_MM_MM // PAND mm, mm
// , PAND_XMM_M128 // PAND xmm, m128
// , PAND_XMM_XMM // PAND xmm, xmm
// , PANDN_MM_M64 // PANDN mm, m64
// , PANDN_MM_MM // PANDN mm, mm
// , PANDN_XMM_M128 // PANDN xmm, m128
// , PANDN_XMM_XMM // PANDN xmm, xmm
// , PAUSE // PAUSE
// , PAVGB_MM_M64 // PAVGB mm, m64
// , PAVGB_MM_MM // PAVGB mm, mm
// , PAVGB_XMM_M128 // PAVGB xmm, m128
// , PAVGB_XMM_XMM // PAVGB xmm, xmm
// , PAVGW_MM_M64 // PAVGW mm, m64
// , PAVGW_MM_MM // PAVGW mm, mm
// , PAVGW_XMM_M128 // PAVGW xmm, m128
// , PAVGW_XMM_XMM // PAVGW xmm, xmm
// , PBLENDVB_XMM_M128_XMM0 // PBLENDVB xmm, m128, <XMM0>
// , PBLENDVB_XMM_XMM_XMM0 // PBLENDVB xmm, xmm, <XMM0>
// , PBLENDW_XMM_M128_IMM8 // PBLENDW xmm, m128, imm8
// , PBLENDW_XMM_XMM_IMM8 // PBLENDW xmm, xmm, imm8
// , PCLMULQDQ_XMM_M128_IMM8 // PCLMULQDQ xmm, m128, imm8
// , PCLMULQDQ_XMM_XMM_IMM8 // PCLMULQDQ xmm, xmm, imm8
// , PCMPEQB_MM_M64 // PCMPEQB mm, m64
// , PCMPEQB_MM_MM // PCMPEQB mm, mm
// , PCMPEQB_XMM_M128 // PCMPEQB xmm, m128
// , PCMPEQB_XMM_XMM // PCMPEQB xmm, xmm
// , PCMPEQD_MM_M64 // PCMPEQD mm, m64
// , PCMPEQD_MM_MM // PCMPEQD mm, mm
// , PCMPEQD_XMM_M128 // PCMPEQD xmm, m128
// , PCMPEQD_XMM_XMM // PCMPEQD xmm, xmm
// , PCMPEQQ_XMM_M128 // PCMPEQQ xmm, m128
// , PCMPEQQ_XMM_XMM // PCMPEQQ xmm, xmm
// , PCMPEQW_MM_M64 // PCMPEQW mm, m64
// , PCMPEQW_MM_MM // PCMPEQW mm, mm
// , PCMPEQW_XMM_M128 // PCMPEQW xmm, m128
// , PCMPEQW_XMM_XMM // PCMPEQW xmm, xmm
// , PCMPESTRI_XMM_M128_IMM8 // PCMPESTRI xmm, m128, imm8
// , PCMPESTRI_XMM_XMM_IMM8 // PCMPESTRI xmm, xmm, imm8
// , PCMPESTRM_XMM_M128_IMM8 // PCMPESTRM xmm, m128, imm8
// , PCMPESTRM_XMM_XMM_IMM8 // PCMPESTRM xmm, xmm, imm8
// , PCMPGTB_MM_M64 // PCMPGTB mm, m64
// , PCMPGTB_MM_MM // PCMPGTB mm, mm
// , PCMPGTB_XMM_M128 // PCMPGTB xmm, m128
// , PCMPGTB_XMM_XMM // PCMPGTB xmm, xmm
// , PCMPGTD_MM_M64 // PCMPGTD mm, m64
// , PCMPGTD_MM_MM // PCMPGTD mm, mm
// , PCMPGTD_XMM_M128 // PCMPGTD xmm, m128
// , PCMPGTD_XMM_XMM // PCMPGTD xmm, xmm
// , PCMPGTQ_XMM_M128 // PCMPGTQ xmm, m128
// , PCMPGTQ_XMM_XMM // PCMPGTQ xmm, xmm
// , PCMPGTW_MM_M64 // PCMPGTW mm, m64
// , PCMPGTW_MM_MM // PCMPGTW mm, mm
// , PCMPGTW_XMM_M128 // PCMPGTW xmm, m128
// , PCMPGTW_XMM_XMM // PCMPGTW xmm, xmm
// , PCMPISTRI_XMM_M128_IMM8 // PCMPISTRI xmm, m128, imm8
// , PCMPISTRI_XMM_XMM_IMM8 // PCMPISTRI xmm, xmm, imm8
// , PCMPISTRM_XMM_M128_IMM8 // PCMPISTRM xmm, m128, imm8
// , PCMPISTRM_XMM_XMM_IMM8 // PCMPISTRM xmm, xmm, imm8
// , PDEP_R32_R32_M32 // PDEP r32, r32, m32
// , PDEP_R32_R32_R32 // PDEP r32, r32, r32
// , PDEP_R64_R64_M64 // PDEP r64, r64, m64
// , PDEP_R64_R64_R64 // PDEP r64, r64, r64
// , PEXT_R32_R32_M32 // PEXT r32, r32, m32
// , PEXT_R32_R32_R32 // PEXT r32, r32, r32
// , PEXT_R64_R64_M64 // PEXT r64, r64, m64
// , PEXT_R64_R64_R64 // PEXT r64, r64, r64
// , PEXTRB_M8_XMM_IMM8 // PEXTRB m8, xmm, imm8
// , PEXTRB_R32_XMM_IMM8 // PEXTRB r32, xmm, imm8
// , PEXTRB_R64_XMM_IMM8 // PEXTRB r64, xmm, imm8
// , PEXTRD_M32_XMM_IMM8 // PEXTRD m32, xmm, imm8
// , PEXTRD_R32_XMM_IMM8 // PEXTRD r32, xmm, imm8
// , PEXTRQ_M64_XMM_IMM8 // PEXTRQ m64, xmm, imm8
// , PEXTRQ_R64_XMM_IMM8 // PEXTRQ r64, xmm, imm8
// , PEXTRW_M16_XMM_IMM8 // PEXTRW m16, xmm, imm8
// , PEXTRW_R32_MM_IMM8 // PEXTRW r32, mm, imm8
// , PEXTRW_R32_XMM_IMM8 // PEXTRW r32, xmm, imm8
// , PEXTRW_R64_MM_IMM8 // PEXTRW r64, mm, imm8
// , PEXTRW_R64_XMM_IMM8 // PEXTRW r64, xmm, imm8
// , PHADDD_MM_M64 // PHADDD mm, m64
// , PHADDD_MM_MM // PHADDD mm, mm
// , PHADDD_XMM_M128 // PHADDD xmm, m128
// , PHADDD_XMM_XMM // PHADDD xmm, xmm
// , PHADDSW_MM_M64 // PHADDSW mm, m64
// , PHADDSW_MM_MM // PHADDSW mm, mm
// , PHADDSW_XMM_M128 // PHADDSW xmm, m128
// , PHADDSW_XMM_XMM // PHADDSW xmm, xmm
// , PHADDW_MM_M64 // PHADDW mm, m64
// , PHADDW_MM_MM // PHADDW mm, mm
// , PHADDW_XMM_M128 // PHADDW xmm, m128
// , PHADDW_XMM_XMM // PHADDW xmm, xmm
// , PHMINPOSUW_XMM_M128 // PHMINPOSUW xmm, m128
// , PHMINPOSUW_XMM_XMM // PHMINPOSUW xmm, xmm
// , PHSUBD_MM_M64 // PHSUBD mm, m64
// , PHSUBD_MM_MM // PHSUBD mm, mm
// , PHSUBD_XMM_M128 // PHSUBD xmm, m128
// , PHSUBD_XMM_XMM // PHSUBD xmm, xmm
// , PHSUBSW_MM_M64 // PHSUBSW mm, m64
// , PHSUBSW_MM_MM // PHSUBSW mm, mm
// , PHSUBSW_XMM_M128 // PHSUBSW xmm, m128
// , PHSUBSW_XMM_XMM // PHSUBSW xmm, xmm
// , PHSUBW_MM_M64 // PHSUBW mm, m64
// , PHSUBW_MM_MM // PHSUBW mm, mm
// , PHSUBW_XMM_M128 // PHSUBW xmm, m128
// , PHSUBW_XMM_XMM // PHSUBW xmm, xmm
// , PINSRB_XMM_M8_IMM8 // PINSRB xmm, m8, imm8
// , PINSRB_XMM_R32_IMM8 // PINSRB xmm, r32, imm8
// , PINSRD_XMM_M32_IMM8 // PINSRD xmm, m32, imm8
// , PINSRD_XMM_R32_IMM8 // PINSRD xmm, r32, imm8
// , PINSRW_MM_M16_IMM8 // PINSRW mm, m16, imm8
// , PINSRW_MM_R32_IMM8 // PINSRW mm, r32, imm8
// , PINSRW_XMM_M16_IMM8 // PINSRW xmm, m16, imm8
// , PINSRW_XMM_R32_IMM8 // PINSRW xmm, r32, imm8
// , PMADDUBSW_MM_M64 // PMADDUBSW mm, m64
// , PMADDUBSW_MM_MM // PMADDUBSW mm, mm
// , PMADDUBSW_XMM_M128 // PMADDUBSW xmm, m128
// , PMADDUBSW_XMM_XMM // PMADDUBSW xmm, xmm
// , PMADDWD_MM_M64 // PMADDWD mm, m64
// , PMADDWD_MM_MM // PMADDWD mm, mm
// , PMADDWD_XMM_M128 // PMADDWD xmm, m128
// , PMADDWD_XMM_XMM // PMADDWD xmm, xmm
// , PMAXSB_XMM_M128 // PMAXSB xmm, m128
// , PMAXSB_XMM_XMM // PMAXSB xmm, xmm
// , PMAXSD_XMM_M128 // PMAXSD xmm, m128
// , PMAXSD_XMM_XMM // PMAXSD xmm, xmm
// , PMAXSW_MM_M64 // PMAXSW mm, m64
// , PMAXSW_MM_MM // PMAXSW mm, mm
// , PMAXSW_XMM_M128 // PMAXSW xmm, m128
// , PMAXSW_XMM_XMM // PMAXSW xmm, xmm
// , PMAXUB_MM_M64 // PMAXUB mm, m64
// , PMAXUB_MM_MM // PMAXUB mm, mm
// , PMAXUB_XMM_M128 // PMAXUB xmm, m128
// , PMAXUB_XMM_XMM // PMAXUB xmm, xmm
// , PMAXUD_XMM_M128 // PMAXUD xmm, m128
// , PMAXUD_XMM_XMM // PMAXUD xmm, xmm
// , PMAXUW_XMM_M128 // PMAXUW xmm, m128
// , PMAXUW_XMM_XMM // PMAXUW xmm, xmm
// , PMINSB_XMM_M128 // PMINSB xmm, m128
// , PMINSB_XMM_XMM // PMINSB xmm, xmm
// , PMINSD_XMM_M128 // PMINSD xmm, m128
// , PMINSD_XMM_XMM // PMINSD xmm, xmm
// , PMINSW_MM_M64 // PMINSW mm, m64
// , PMINSW_MM_MM // PMINSW mm, mm
// , PMINSW_XMM_M128 // PMINSW xmm, m128
// , PMINSW_XMM_XMM // PMINSW xmm, xmm
// , PMINUB_MM_M64 // PMINUB mm, m64
// , PMINUB_MM_MM // PMINUB mm, mm
// , PMINUB_XMM_M128 // PMINUB xmm, m128
// , PMINUB_XMM_XMM // PMINUB xmm, xmm
// , PMINUD_XMM_M128 // PMINUD xmm, m128
// , PMINUD_XMM_XMM // PMINUD xmm, xmm
// , PMINUW_XMM_M128 // PMINUW xmm, m128
// , PMINUW_XMM_XMM // PMINUW xmm, xmm
// , PMOVMSKB_R32_MM // PMOVMSKB r32, mm
// , PMOVMSKB_R32_XMM // PMOVMSKB r32, xmm
// , PMOVMSKB_R64_MM // PMOVMSKB r64, mm
// , PMOVMSKB_R64_XMM // PMOVMSKB r64, xmm
// , PMOVSXBD_XMM_M32 // PMOVSXBD xmm, m32
// , PMOVSXBD_XMM_XMM // PMOVSXBD xmm, xmm
// , PMOVSXBQ_XMM_M16 // PMOVSXBQ xmm, m16
// , PMOVSXBQ_XMM_XMM // PMOVSXBQ xmm, xmm
// , PMOVSXBW_XMM_M64 // PMOVSXBW xmm, m64
// , PMOVSXBW_XMM_XMM // PMOVSXBW xmm, xmm
// , PMOVSXDQ_XMM_M64 // PMOVSXDQ xmm, m64
// , PMOVSXDQ_XMM_XMM // PMOVSXDQ xmm, xmm
// , PMOVSXWD_XMM_M64 // PMOVSXWD xmm, m64
// , PMOVSXWD_XMM_XMM // PMOVSXWD xmm, xmm
// , PMOVSXWQ_XMM_M32 // PMOVSXWQ xmm, m32
// , PMOVSXWQ_XMM_XMM // PMOVSXWQ xmm, xmm
// , PMOVZXBD_XMM_M32 // PMOVZXBD xmm, m32
// , PMOVZXBD_XMM_XMM // PMOVZXBD xmm, xmm
// , PMOVZXBQ_XMM_M16 // PMOVZXBQ xmm, m16
// , PMOVZXBQ_XMM_XMM // PMOVZXBQ xmm, xmm
// , PMOVZXBW_XMM_M64 // PMOVZXBW xmm, m64
// , PMOVZXBW_XMM_XMM // PMOVZXBW xmm, xmm
// , PMOVZXDQ_XMM_M64 // PMOVZXDQ xmm, m64
// , PMOVZXDQ_XMM_XMM // PMOVZXDQ xmm, xmm
// , PMOVZXWD_XMM_M64 // PMOVZXWD xmm, m64
// , PMOVZXWD_XMM_XMM // PMOVZXWD xmm, xmm
// , PMOVZXWQ_XMM_M32 // PMOVZXWQ xmm, m32
// , PMOVZXWQ_XMM_XMM // PMOVZXWQ xmm, xmm
// , PMULDQ_XMM_M128 // PMULDQ xmm, m128
// , PMULDQ_XMM_XMM // PMULDQ xmm, xmm
// , PMULHRSW_MM_M64 // PMULHRSW mm, m64
// , PMULHRSW_MM_MM // PMULHRSW mm, mm
// , PMULHRSW_XMM_M128 // PMULHRSW xmm, m128
// , PMULHRSW_XMM_XMM // PMULHRSW xmm, xmm
// , PMULHUW_MM_M64 // PMULHUW mm, m64
// , PMULHUW_MM_MM // PMULHUW mm, mm
// , PMULHUW_XMM_M128 // PMULHUW xmm, m128
// , PMULHUW_XMM_XMM // PMULHUW xmm, xmm
// , PMULHW_MM_M64 // PMULHW mm, m64
// , PMULHW_MM_MM // PMULHW mm, mm
// , PMULHW_XMM_M128 // PMULHW xmm, m128
// , PMULHW_XMM_XMM // PMULHW xmm, xmm
// , PMULLD_XMM_M128 // PMULLD xmm, m128
// , PMULLD_XMM_XMM // PMULLD xmm, xmm
// , PMULLW_MM_M64 // PMULLW mm, m64
// , PMULLW_MM_MM // PMULLW mm, mm
// , PMULLW_XMM_M128 // PMULLW xmm, m128
// , PMULLW_XMM_XMM // PMULLW xmm, xmm
// , PMULUDQ_MM_M64 // PMULUDQ mm, m64
// , PMULUDQ_MM_MM // PMULUDQ mm, mm
// , PMULUDQ_XMM_M128 // PMULUDQ xmm, m128
// , PMULUDQ_XMM_XMM // PMULUDQ xmm, xmm
// , POP_FS // POP FS
// , POP_FS_PREF66 // POP FS, p66
// , POP_GS // POP GS
// , POP_GS_PREF66 // POP GS, p66
// , POP_M16 // POP m16
// , POP_M64 // POP m64
// , POP_R16 // POP r16
// , POP_R64 // POP r64
// , POPCNT_R16_M16 // POPCNT r16, m16
// , POPCNT_R16_R16 // POPCNT r16, r16
// , POPCNT_R32_M32 // POPCNT r32, m32
// , POPCNT_R32_R32 // POPCNT r32, r32
// , POPCNT_R64_M64 // POPCNT r64, m64
  , POPCNT_R64_R64 // POPCNT r64, r64
// , POPF // POPF
// , POPFQ // POPFQ
// , POR_MM_M64 // POR mm, m64
// , POR_MM_MM // POR mm, mm
// , POR_XMM_M128 // POR xmm, m128
// , POR_XMM_XMM // POR xmm, xmm
// , PREFETCHNTA_M8 // PREFETCHNTA m8
// , PREFETCHT0_M8 // PREFETCHT0 m8
// , PREFETCHT1_M8 // PREFETCHT1 m8
// , PREFETCHT2_M8 // PREFETCHT2 m8
// , PSADBW_MM_M64 // PSADBW mm, m64
// , PSADBW_MM_MM // PSADBW mm, mm
// , PSADBW_XMM_M128 // PSADBW xmm, m128
// , PSADBW_XMM_XMM // PSADBW xmm, xmm
// , PSHUFB_MM_M64 // PSHUFB mm, m64
// , PSHUFB_MM_MM // PSHUFB mm, mm
// , PSHUFB_XMM_M128 // PSHUFB xmm, m128
// , PSHUFB_XMM_XMM // PSHUFB xmm, xmm
// , PSHUFD_XMM_M128_IMM8 // PSHUFD xmm, m128, imm8
// , PSHUFD_XMM_XMM_IMM8 // PSHUFD xmm, xmm, imm8
// , PSHUFHW_XMM_M128_IMM8 // PSHUFHW xmm, m128, imm8
// , PSHUFHW_XMM_XMM_IMM8 // PSHUFHW xmm, xmm, imm8
// , PSHUFLW_XMM_M128_IMM8 // PSHUFLW xmm, m128, imm8
// , PSHUFLW_XMM_XMM_IMM8 // PSHUFLW xmm, xmm, imm8
// , PSHUFW_MM_M64_IMM8 // PSHUFW mm, m64, imm8
// , PSHUFW_MM_MM_IMM8 // PSHUFW mm, mm, imm8
// , PSIGNB_MM_M64 // PSIGNB mm, m64
// , PSIGNB_MM_MM // PSIGNB mm, mm
// , PSIGNB_XMM_M128 // PSIGNB xmm, m128
// , PSIGNB_XMM_XMM // PSIGNB xmm, xmm
// , PSIGND_MM_M64 // PSIGND mm, m64
// , PSIGND_MM_MM // PSIGND mm, mm
// , PSIGND_XMM_M128 // PSIGND xmm, m128
// , PSIGND_XMM_XMM // PSIGND xmm, xmm
// , PSIGNW_MM_M64 // PSIGNW mm, m64
// , PSIGNW_MM_MM // PSIGNW mm, mm
// , PSIGNW_XMM_M128 // PSIGNW xmm, m128
// , PSIGNW_XMM_XMM // PSIGNW xmm, xmm
// , PSLLD_MM_IMM8 // PSLLD mm, imm8
// , PSLLD_MM_M64 // PSLLD mm, m64
// , PSLLD_MM_MM // PSLLD mm, mm
// , PSLLD_XMM_IMM8 // PSLLD xmm, imm8
// , PSLLD_XMM_M128 // PSLLD xmm, m128
// , PSLLD_XMM_XMM // PSLLD xmm, xmm
// , PSLLDQ_XMM_IMM8 // PSLLDQ xmm, imm8
// , PSLLQ_MM_IMM8 // PSLLQ mm, imm8
// , PSLLQ_MM_M64 // PSLLQ mm, m64
// , PSLLQ_MM_MM // PSLLQ mm, mm
// , PSLLQ_XMM_IMM8 // PSLLQ xmm, imm8
// , PSLLQ_XMM_M128 // PSLLQ xmm, m128
// , PSLLQ_XMM_XMM // PSLLQ xmm, xmm
// , PSLLW_MM_IMM8 // PSLLW mm, imm8
// , PSLLW_MM_M64 // PSLLW mm, m64
// , PSLLW_MM_MM // PSLLW mm, mm
// , PSLLW_XMM_IMM8 // PSLLW xmm, imm8
// , PSLLW_XMM_M128 // PSLLW xmm, m128
// , PSLLW_XMM_XMM // PSLLW xmm, xmm
// , PSRAD_MM_IMM8 // PSRAD mm, imm8
// , PSRAD_MM_M64 // PSRAD mm, m64
// , PSRAD_MM_MM // PSRAD mm, mm
// , PSRAD_XMM_IMM8 // PSRAD xmm, imm8
// , PSRAD_XMM_M128 // PSRAD xmm, m128
// , PSRAD_XMM_XMM // PSRAD xmm, xmm
// , PSRAW_MM_IMM8 // PSRAW mm, imm8
// , PSRAW_MM_M64 // PSRAW mm, m64
// , PSRAW_MM_MM // PSRAW mm, mm
// , PSRAW_XMM_IMM8 // PSRAW xmm, imm8
// , PSRAW_XMM_M128 // PSRAW xmm, m128
// , PSRAW_XMM_XMM // PSRAW xmm, xmm
// , PSRLD_MM_IMM8 // PSRLD mm, imm8
// , PSRLD_MM_M64 // PSRLD mm, m64
// , PSRLD_MM_MM // PSRLD mm, mm
// , PSRLD_XMM_IMM8 // PSRLD xmm, imm8
// , PSRLD_XMM_M128 // PSRLD xmm, m128
// , PSRLD_XMM_XMM // PSRLD xmm, xmm
// , PSRLDQ_XMM_IMM8 // PSRLDQ xmm, imm8
// , PSRLQ_MM_IMM8 // PSRLQ mm, imm8
// , PSRLQ_MM_M64 // PSRLQ mm, m64
// , PSRLQ_MM_MM // PSRLQ mm, mm
// , PSRLQ_XMM_IMM8 // PSRLQ xmm, imm8
// , PSRLQ_XMM_M128 // PSRLQ xmm, m128
// , PSRLQ_XMM_XMM // PSRLQ xmm, xmm
// , PSRLW_MM_IMM8 // PSRLW mm, imm8
// , PSRLW_MM_M64 // PSRLW mm, m64
// , PSRLW_MM_MM // PSRLW mm, mm
// , PSRLW_XMM_IMM8 // PSRLW xmm, imm8
// , PSRLW_XMM_M128 // PSRLW xmm, m128
// , PSRLW_XMM_XMM // PSRLW xmm, xmm
// , PSUBB_MM_M64 // PSUBB mm, m64
// , PSUBB_MM_MM // PSUBB mm, mm
// , PSUBB_XMM_M128 // PSUBB xmm, m128
// , PSUBB_XMM_XMM // PSUBB xmm, xmm
// , PSUBD_MM_M64 // PSUBD mm, m64
// , PSUBD_MM_MM // PSUBD mm, mm
// , PSUBD_XMM_M128 // PSUBD xmm, m128
// , PSUBD_XMM_XMM // PSUBD xmm, xmm
// , PSUBQ_MM_M64 // PSUBQ mm, m64
// , PSUBQ_MM_MM // PSUBQ mm, mm
// , PSUBQ_XMM_M128 // PSUBQ xmm, m128
// , PSUBQ_XMM_XMM // PSUBQ xmm, xmm
// , PSUBSB_MM_M64 // PSUBSB mm, m64
// , PSUBSB_MM_MM // PSUBSB mm, mm
// , PSUBSB_XMM_M128 // PSUBSB xmm, m128
// , PSUBSB_XMM_XMM // PSUBSB xmm, xmm
// , PSUBSW_MM_M64 // PSUBSW mm, m64
// , PSUBSW_MM_MM // PSUBSW mm, mm
// , PSUBSW_XMM_M128 // PSUBSW xmm, m128
// , PSUBSW_XMM_XMM // PSUBSW xmm, xmm
// , PSUBUSB_MM_M64 // PSUBUSB mm, m64
// , PSUBUSB_MM_MM // PSUBUSB mm, mm
// , PSUBUSB_XMM_M128 // PSUBUSB xmm, m128
// , PSUBUSB_XMM_XMM // PSUBUSB xmm, xmm
// , PSUBUSW_MM_M64 // PSUBUSW mm, m64
// , PSUBUSW_MM_MM // PSUBUSW mm, mm
// , PSUBUSW_XMM_M128 // PSUBUSW xmm, m128
// , PSUBUSW_XMM_XMM // PSUBUSW xmm, xmm
// , PSUBW_MM_M64 // PSUBW mm, m64
// , PSUBW_MM_MM // PSUBW mm, mm
// , PSUBW_XMM_M128 // PSUBW xmm, m128
// , PSUBW_XMM_XMM // PSUBW xmm, xmm
// , PTEST_XMM_M128 // PTEST xmm, m128
// , PTEST_XMM_XMM // PTEST xmm, xmm
// , PUNPCKHBW_MM_M64 // PUNPCKHBW mm, m64
// , PUNPCKHBW_MM_MM // PUNPCKHBW mm, mm
// , PUNPCKHBW_XMM_M128 // PUNPCKHBW xmm, m128
// , PUNPCKHBW_XMM_XMM // PUNPCKHBW xmm, xmm
// , PUNPCKHDQ_MM_M64 // PUNPCKHDQ mm, m64
// , PUNPCKHDQ_MM_MM // PUNPCKHDQ mm, mm
// , PUNPCKHDQ_XMM_M128 // PUNPCKHDQ xmm, m128
// , PUNPCKHDQ_XMM_XMM // PUNPCKHDQ xmm, xmm
// , PUNPCKHQDQ_XMM_M128 // PUNPCKHQDQ xmm, m128
// , PUNPCKHQDQ_XMM_XMM // PUNPCKHQDQ xmm, xmm
// , PUNPCKHWD_MM_M64 // PUNPCKHWD mm, m64
// , PUNPCKHWD_MM_MM // PUNPCKHWD mm, mm
// , PUNPCKHWD_XMM_M128 // PUNPCKHWD xmm, m128
// , PUNPCKHWD_XMM_XMM // PUNPCKHWD xmm, xmm
// , PUNPCKLBW_MM_M32 // PUNPCKLBW mm, m32
// , PUNPCKLBW_MM_MM // PUNPCKLBW mm, mm
// , PUNPCKLBW_XMM_M128 // PUNPCKLBW xmm, m128
// , PUNPCKLBW_XMM_XMM // PUNPCKLBW xmm, xmm
// , PUNPCKLDQ_MM_M32 // PUNPCKLDQ mm, m32
// , PUNPCKLDQ_MM_MM // PUNPCKLDQ mm, mm
// , PUNPCKLDQ_XMM_M128 // PUNPCKLDQ xmm, m128
// , PUNPCKLDQ_XMM_XMM // PUNPCKLDQ xmm, xmm
// , PUNPCKLQDQ_XMM_M128 // PUNPCKLQDQ xmm, m128
// , PUNPCKLQDQ_XMM_XMM // PUNPCKLQDQ xmm, xmm
// , PUNPCKLWD_MM_M32 // PUNPCKLWD mm, m32
// , PUNPCKLWD_MM_MM // PUNPCKLWD mm, mm
// , PUNPCKLWD_XMM_M128 // PUNPCKLWD xmm, m128
// , PUNPCKLWD_XMM_XMM // PUNPCKLWD xmm, xmm
// , PUSH_FS // PUSH FS
// , PUSH_GS // PUSH GS
// , PUSH_IMM16 // PUSH imm16
// , PUSH_IMM32 // PUSH imm32
// , PUSH_IMM8 // PUSH imm8
// , PUSH_M16 // PUSH m16
// , PUSH_M64 // PUSH m64
// , PUSH_R16 // PUSH r16
// , PUSH_R64 // PUSH r64
// , PUSHF // PUSHF
// , PUSHFQ // PUSHFQ
// , PXOR_MM_M64 // PXOR mm, m64
// , PXOR_MM_MM // PXOR mm, mm
// , PXOR_XMM_M128 // PXOR xmm, m128
// , PXOR_XMM_XMM // PXOR xmm, xmm
// , RCL_M16_CL // RCL m16, CL
// , RCL_M16_IMM8 // RCL m16, imm8
// , RCL_M16_ONE // RCL m16, 1
// , RCL_M32_CL // RCL m32, CL
// , RCL_M32_IMM8 // RCL m32, imm8
// , RCL_M32_ONE // RCL m32, 1
// , RCL_M64_CL // RCL m64, CL
// , RCL_M64_IMM8 // RCL m64, imm8
// , RCL_M64_ONE // RCL m64, 1
// , RCL_M8_CL // RCL m8, CL
// , RCL_M8_IMM8 // RCL m8, imm8
// , RCL_M8_ONE // RCL m8, 1
// , RCL_R16_CL // RCL r16, CL
// , RCL_R16_IMM8 // RCL r16, imm8
// , RCL_R16_ONE // RCL r16, 1
// , RCL_R32_CL // RCL r32, CL
// , RCL_R32_IMM8 // RCL r32, imm8
// , RCL_R32_ONE // RCL r32, 1
// , RCL_R64_CL // RCL r64, CL
// , RCL_R64_IMM8 // RCL r64, imm8
// , RCL_R64_ONE // RCL r64, 1
// , RCL_R8_CL // RCL r8, CL
// , RCL_R8_IMM8 // RCL r8, imm8
// , RCL_R8_ONE // RCL r8, 1
// , RCL_RH_CL // RCL rh, CL
// , RCL_RH_IMM8 // RCL rh, imm8
// , RCL_RH_ONE // RCL rh, 1
// , RCPPS_XMM_M128 // RCPPS xmm, m128
// , RCPPS_XMM_XMM // RCPPS xmm, xmm
// , RCPSS_XMM_M32 // RCPSS xmm, m32
  , RCPSS_XMM_XMM // RCPSS xmm, xmm
// , RCR_M16_CL // RCR m16, CL
// , RCR_M16_IMM8 // RCR m16, imm8
// , RCR_M16_ONE // RCR m16, 1
// , RCR_M32_CL // RCR m32, CL
// , RCR_M32_IMM8 // RCR m32, imm8
// , RCR_M32_ONE // RCR m32, 1
// , RCR_M64_CL // RCR m64, CL
// , RCR_M64_IMM8 // RCR m64, imm8
// , RCR_M64_ONE // RCR m64, 1
// , RCR_M8_CL // RCR m8, CL
// , RCR_M8_IMM8 // RCR m8, imm8
// , RCR_M8_ONE // RCR m8, 1
// , RCR_R16_CL // RCR r16, CL
// , RCR_R16_IMM8 // RCR r16, imm8
// , RCR_R16_ONE // RCR r16, 1
// , RCR_R32_CL // RCR r32, CL
// , RCR_R32_IMM8 // RCR r32, imm8
// , RCR_R32_ONE // RCR r32, 1
// , RCR_R64_CL // RCR r64, CL
// , RCR_R64_IMM8 // RCR r64, imm8
// , RCR_R64_ONE // RCR r64, 1
// , RCR_R8_CL // RCR r8, CL
// , RCR_R8_IMM8 // RCR r8, imm8
// , RCR_R8_ONE // RCR r8, 1
// , RCR_RH_CL // RCR rh, CL
// , RCR_RH_IMM8 // RCR rh, imm8
// , RCR_RH_ONE // RCR rh, 1
// , RDFSBASE_R32 // RDFSBASE r32
// , RDFSBASE_R64 // RDFSBASE r64
// , RDGSBASE_R32 // RDGSBASE r32
// , RDGSBASE_R64 // RDGSBASE r64
// , RDRAND_R16 // RDRAND r16
// , RDRAND_R32 // RDRAND r32
// , RDRAND_R64 // RDRAND r64
// , REP_INS_M16_DX // REP_INS m16, DX
// , REP_INS_M32_DX // REP_INS m32, DX
// , REP_INS_M64_DX // REP_INS m64, DX
// , REP_INS_M8_DX // REP_INS m8, DX
// , REP_LODS_AL // REP_LODS AL
// , REP_LODS_AX // REP_LODS AX
// , REP_LODS_EAX // REP_LODS EAX
// , REP_LODS_RAX // REP_LODS RAX
// , REP_MOVS_M16_M16 // REP_MOVS m16, m16
// , REP_MOVS_M32_M32 // REP_MOVS m32, m32
// , REP_MOVS_M64_M64 // REP_MOVS m64, m64
// , REP_MOVS_M8_M8 // REP_MOVS m8, m8
// , REP_OUTS_DX_M16 // REP_OUTS DX, m16
// , REP_OUTS_DX_M32 // REP_OUTS DX, m32
// , REP_OUTS_DX_M64 // REP_OUTS DX, m64
// , REP_OUTS_DX_M8 // REP_OUTS DX, m8
// , REP_STOS_M16 // REP_STOS m16
// , REP_STOS_M32 // REP_STOS m32
// , REP_STOS_M64 // REP_STOS m64
// , REP_STOS_M8 // REP_STOS m8
// , REPE_CMPS_M16_M16 // REPE_CMPS m16, m16
// , REPE_CMPS_M32_M32 // REPE_CMPS m32, m32
// , REPE_CMPS_M64_M64 // REPE_CMPS m64, m64
// , REPE_CMPS_M8_M8 // REPE_CMPS m8, m8
// , REPE_SCAS_M16 // REPE_SCAS m16
// , REPE_SCAS_M32 // REPE_SCAS m32
// , REPE_SCAS_M64 // REPE_SCAS m64
// , REPE_SCAS_M8 // REPE_SCAS m8
// , REPNE_CMPS_M16_M16 // REPNE_CMPS m16, m16
// , REPNE_CMPS_M32_M32 // REPNE_CMPS m32, m32
// , REPNE_CMPS_M64_M64 // REPNE_CMPS m64, m64
// , REPNE_CMPS_M8_M8 // REPNE_CMPS m8, m8
// , REPNE_SCAS_M16 // REPNE_SCAS m16
// , REPNE_SCAS_M32 // REPNE_SCAS m32
// , REPNE_SCAS_M64 // REPNE_SCAS m64
// , REPNE_SCAS_M8 // REPNE_SCAS m8
// , RET // RET
// , RET_FAR // RET far
// , RET_IMM16 // RET imm16
// , RET_IMM16_FAR // RET imm16, far
// , ROL_M16_CL // ROL m16, CL
// , ROL_M16_IMM8 // ROL m16, imm8
// , ROL_M16_ONE // ROL m16, 1
// , ROL_M32_CL // ROL m32, CL
// , ROL_M32_IMM8 // ROL m32, imm8
// , ROL_M32_ONE // ROL m32, 1
// , ROL_M64_CL // ROL m64, CL
// , ROL_M64_IMM8 // ROL m64, imm8
// , ROL_M64_ONE // ROL m64, 1
// , ROL_M8_CL // ROL m8, CL
// , ROL_M8_IMM8 // ROL m8, imm8
// , ROL_M8_ONE // ROL m8, 1
// , ROL_R16_CL // ROL r16, CL
// , ROL_R16_IMM8 // ROL r16, imm8
// , ROL_R16_ONE // ROL r16, 1
// , ROL_R32_CL // ROL r32, CL
// , ROL_R32_IMM8 // ROL r32, imm8
// , ROL_R32_ONE // ROL r32, 1
// , ROL_R64_CL // ROL r64, CL
// , ROL_R64_IMM8 // ROL r64, imm8
// , ROL_R64_ONE // ROL r64, 1
// , ROL_R8_CL // ROL r8, CL
// , ROL_R8_IMM8 // ROL r8, imm8
// , ROL_R8_ONE // ROL r8, 1
// , ROL_RH_CL // ROL rh, CL
// , ROL_RH_IMM8 // ROL rh, imm8
// , ROL_RH_ONE // ROL rh, 1
// , ROR_M16_CL // ROR m16, CL
// , ROR_M16_IMM8 // ROR m16, imm8
// , ROR_M16_ONE // ROR m16, 1
// , ROR_M32_CL // ROR m32, CL
// , ROR_M32_IMM8 // ROR m32, imm8
// , ROR_M32_ONE // ROR m32, 1
// , ROR_M64_CL // ROR m64, CL
// , ROR_M64_IMM8 // ROR m64, imm8
// , ROR_M64_ONE // ROR m64, 1
// , ROR_M8_CL // ROR m8, CL
// , ROR_M8_IMM8 // ROR m8, imm8
// , ROR_M8_ONE // ROR m8, 1
// , ROR_R16_CL // ROR r16, CL
// , ROR_R16_IMM8 // ROR r16, imm8
// , ROR_R16_ONE // ROR r16, 1
// , ROR_R32_CL // ROR r32, CL
// , ROR_R32_IMM8 // ROR r32, imm8
// , ROR_R32_ONE // ROR r32, 1
// , ROR_R64_CL // ROR r64, CL
// , ROR_R64_IMM8 // ROR r64, imm8
// , ROR_R64_ONE // ROR r64, 1
// , ROR_R8_CL // ROR r8, CL
// , ROR_R8_IMM8 // ROR r8, imm8
// , ROR_R8_ONE // ROR r8, 1
// , ROR_RH_CL // ROR rh, CL
// , ROR_RH_IMM8 // ROR rh, imm8
// , ROR_RH_ONE // ROR rh, 1
// , RORX_R32_M32_IMM8 // RORX r32, m32, imm8
// , RORX_R32_R32_IMM8 // RORX r32, r32, imm8
// , RORX_R64_M64_IMM8 // RORX r64, m64, imm8
// , RORX_R64_R64_IMM8 // RORX r64, r64, imm8
// , ROUNDPD_XMM_M128_IMM8 // ROUNDPD xmm, m128, imm8
// , ROUNDPD_XMM_XMM_IMM8 // ROUNDPD xmm, xmm, imm8
// , ROUNDPS_XMM_M128_IMM8 // ROUNDPS xmm, m128, imm8
// , ROUNDPS_XMM_XMM_IMM8 // ROUNDPS xmm, xmm, imm8
// , ROUNDSD_XMM_M64_IMM8 // ROUNDSD xmm, m64, imm8
// , ROUNDSD_XMM_XMM_IMM8 // ROUNDSD xmm, xmm, imm8
// , ROUNDSS_XMM_M32_IMM8 // ROUNDSS xmm, m32, imm8
// , ROUNDSS_XMM_XMM_IMM8 // ROUNDSS xmm, xmm, imm8
// , RSQRTPS_XMM_M128 // RSQRTPS xmm, m128
// , RSQRTPS_XMM_XMM // RSQRTPS xmm, xmm
// , RSQRTSS_XMM_M32 // RSQRTSS xmm, m32
  , RSQRTSS_XMM_XMM // RSQRTSS xmm, xmm
// , SAHF // SAHF
// , SAL_M16_CL // SAL m16, CL
// , SAL_M16_IMM8 // SAL m16, imm8
// , SAL_M16_ONE // SAL m16, 1
// , SAL_M32_CL // SAL m32, CL
// , SAL_M32_IMM8 // SAL m32, imm8
// , SAL_M32_ONE // SAL m32, 1
// , SAL_M64_CL // SAL m64, CL
// , SAL_M64_IMM8 // SAL m64, imm8
// , SAL_M64_ONE // SAL m64, 1
// , SAL_M8_CL // SAL m8, CL
// , SAL_M8_IMM8 // SAL m8, imm8
// , SAL_M8_ONE // SAL m8, 1
// , SAL_R16_CL // SAL r16, CL
// , SAL_R16_IMM8 // SAL r16, imm8
// , SAL_R16_ONE // SAL r16, 1
// , SAL_R32_CL // SAL r32, CL
// , SAL_R32_IMM8 // SAL r32, imm8
// , SAL_R32_ONE // SAL r32, 1
  , SAL_R64_CL // SAL r64, CL
// , SAL_R64_IMM8 // SAL r64, imm8
// , SAL_R64_ONE // SAL r64, 1
// , SAL_R8_CL // SAL r8, CL
// , SAL_R8_IMM8 // SAL r8, imm8
// , SAL_R8_ONE // SAL r8, 1
// , SAL_RH_CL // SAL rh, CL
// , SAL_RH_IMM8 // SAL rh, imm8
// , SAL_RH_ONE // SAL rh, 1
// , SAR_M16_CL // SAR m16, CL
// , SAR_M16_IMM8 // SAR m16, imm8
// , SAR_M16_ONE // SAR m16, 1
// , SAR_M32_CL // SAR m32, CL
// , SAR_M32_IMM8 // SAR m32, imm8
// , SAR_M32_ONE // SAR m32, 1
// , SAR_M64_CL // SAR m64, CL
// , SAR_M64_IMM8 // SAR m64, imm8
// , SAR_M64_ONE // SAR m64, 1
// , SAR_M8_CL // SAR m8, CL
// , SAR_M8_IMM8 // SAR m8, imm8
// , SAR_M8_ONE // SAR m8, 1
// , SAR_R16_CL // SAR r16, CL
// , SAR_R16_IMM8 // SAR r16, imm8
// , SAR_R16_ONE // SAR r16, 1
// , SAR_R32_CL // SAR r32, CL
// , SAR_R32_IMM8 // SAR r32, imm8
// , SAR_R32_ONE // SAR r32, 1
  , SAR_R64_CL // SAR r64, CL
// , SAR_R64_IMM8 // SAR r64, imm8
// , SAR_R64_ONE // SAR r64, 1
// , SAR_R8_CL // SAR r8, CL
// , SAR_R8_IMM8 // SAR r8, imm8
// , SAR_R8_ONE // SAR r8, 1
// , SAR_RH_CL // SAR rh, CL
// , SAR_RH_IMM8 // SAR rh, imm8
// , SAR_RH_ONE // SAR rh, 1
// , SARX_R32_M32_R32 // SARX r32, m32, r32
// , SARX_R32_R32_R32 // SARX r32, r32, r32
// , SARX_R64_M64_R64 // SARX r64, m64, r64
// , SARX_R64_R64_R64 // SARX r64, r64, r64
// , SBB_AL_IMM8 // SBB AL, imm8
// , SBB_AX_IMM16 // SBB AX, imm16
// , SBB_EAX_IMM32 // SBB EAX, imm32
// , SBB_M16_IMM16 // SBB m16, imm16
// , SBB_M16_IMM8 // SBB m16, imm8
// , SBB_M16_R16 // SBB m16, r16
// , SBB_M32_IMM32 // SBB m32, imm32
// , SBB_M32_IMM8 // SBB m32, imm8
// , SBB_M32_R32 // SBB m32, r32
// , SBB_M64_IMM32 // SBB m64, imm32
// , SBB_M64_IMM8 // SBB m64, imm8
// , SBB_M64_R64 // SBB m64, r64
// , SBB_M8_IMM8 // SBB m8, imm8
// , SBB_M8_R8 // SBB m8, r8
// , SBB_M8_RH // SBB m8, rh
// , SBB_R16_IMM16 // SBB r16, imm16
// , SBB_R16_IMM8 // SBB r16, imm8
// , SBB_R16_M16 // SBB r16, m16
  , SBB_R16_R16 // SBB r16, r16
// , SBB_R32_IMM32 // SBB r32, imm32
// , SBB_R32_IMM8 // SBB r32, imm8
// , SBB_R32_M32 // SBB r32, m32
  , SBB_R32_R32 // SBB r32, r32
// , SBB_R64_IMM32 // SBB r64, imm32
// , SBB_R64_IMM8 // SBB r64, imm8
// , SBB_R64_M64 // SBB r64, m64
  , SBB_R64_R64 // SBB r64, r64
// , SBB_R8_IMM8 // SBB r8, imm8
// , SBB_R8_M8 // SBB r8, m8
  , SBB_R8_R8 // SBB r8, r8
// , SBB_R8_RH // SBB r8, rh
// , SBB_RAX_IMM32 // SBB RAX, imm32
// , SBB_RH_IMM8 // SBB rh, imm8
// , SBB_RH_M8 // SBB rh, m8
// , SBB_RH_R8 // SBB rh, r8
// , SBB_RH_RH // SBB rh, rh
// , SCAS_M16 // SCAS m16
// , SCAS_M32 // SCAS m32
// , SCAS_M64 // SCAS m64
// , SCAS_M8 // SCAS m8
// , SCASB // SCASB
// , SCASD // SCASD
// , SCASQ // SCASQ
// , SCASW // SCASW
// , SETA_M8 // SETA m8
// , SETA_R8 // SETA r8
// , SETA_RH // SETA rh
// , SETAE_M8 // SETAE m8
// , SETAE_R8 // SETAE r8
// , SETAE_RH // SETAE rh
// , SETB_M8 // SETB m8
// , SETB_R8 // SETB r8
// , SETB_RH // SETB rh
// , SETBE_M8 // SETBE m8
// , SETBE_R8 // SETBE r8
// , SETBE_RH // SETBE rh
// , SETC_M8 // SETC m8
// , SETC_R8 // SETC r8
// , SETC_RH // SETC rh
// , SETE_M8 // SETE m8
// , SETE_R8 // SETE r8
// , SETE_RH // SETE rh
// , SETG_M8 // SETG m8
// , SETG_R8 // SETG r8
// , SETG_RH // SETG rh
// , SETGE_M8 // SETGE m8
// , SETGE_R8 // SETGE r8
// , SETGE_RH // SETGE rh
// , SETL_M8 // SETL m8
// , SETL_R8 // SETL r8
// , SETL_RH // SETL rh
// , SETLE_M8 // SETLE m8
// , SETLE_R8 // SETLE r8
// , SETLE_RH // SETLE rh
// , SETNA_M8 // SETNA m8
// , SETNA_R8 // SETNA r8
// , SETNA_RH // SETNA rh
// , SETNAE_M8 // SETNAE m8
// , SETNAE_R8 // SETNAE r8
// , SETNAE_RH // SETNAE rh
// , SETNB_M8 // SETNB m8
// , SETNB_R8 // SETNB r8
// , SETNB_RH // SETNB rh
// , SETNBE_M8 // SETNBE m8
// , SETNBE_R8 // SETNBE r8
// , SETNBE_RH // SETNBE rh
// , SETNC_M8 // SETNC m8
// , SETNC_R8 // SETNC r8
// , SETNC_RH // SETNC rh
// , SETNE_M8 // SETNE m8
// , SETNE_R8 // SETNE r8
// , SETNE_RH // SETNE rh
// , SETNG_M8 // SETNG m8
// , SETNG_R8 // SETNG r8
// , SETNG_RH // SETNG rh
// , SETNGE_M8 // SETNGE m8
// , SETNGE_R8 // SETNGE r8
// , SETNGE_RH // SETNGE rh
// , SETNL_M8 // SETNL m8
// , SETNL_R8 // SETNL r8
// , SETNL_RH // SETNL rh
// , SETNLE_M8 // SETNLE m8
// , SETNLE_R8 // SETNLE r8
// , SETNLE_RH // SETNLE rh
// , SETNO_M8 // SETNO m8
// , SETNO_R8 // SETNO r8
// , SETNO_RH // SETNO rh
// , SETNP_M8 // SETNP m8
// , SETNP_R8 // SETNP r8
// , SETNP_RH // SETNP rh
// , SETNS_M8 // SETNS m8
// , SETNS_R8 // SETNS r8
// , SETNS_RH // SETNS rh
// , SETNZ_M8 // SETNZ m8
// , SETNZ_R8 // SETNZ r8
// , SETNZ_RH // SETNZ rh
// , SETO_M8 // SETO m8
// , SETO_R8 // SETO r8
// , SETO_RH // SETO rh
// , SETP_M8 // SETP m8
// , SETP_R8 // SETP r8
// , SETP_RH // SETP rh
// , SETPE_M8 // SETPE m8
// , SETPE_R8 // SETPE r8
// , SETPE_RH // SETPE rh
// , SETPO_M8 // SETPO m8
// , SETPO_R8 // SETPO r8
// , SETPO_RH // SETPO rh
// , SETS_M8 // SETS m8
// , SETS_R8 // SETS r8
// , SETS_RH // SETS rh
// , SETZ_M8 // SETZ m8
// , SETZ_R8 // SETZ r8
// , SETZ_RH // SETZ rh
// , SFENCE // SFENCE
// , SHL_M16_CL // SHL m16, CL
// , SHL_M16_IMM8 // SHL m16, imm8
// , SHL_M16_ONE // SHL m16, 1
// , SHL_M32_CL // SHL m32, CL
// , SHL_M32_IMM8 // SHL m32, imm8
// , SHL_M32_ONE // SHL m32, 1
// , SHL_M64_CL // SHL m64, CL
// , SHL_M64_IMM8 // SHL m64, imm8
// , SHL_M64_ONE // SHL m64, 1
// , SHL_M8_CL // SHL m8, CL
// , SHL_M8_IMM8 // SHL m8, imm8
// , SHL_M8_ONE // SHL m8, 1
// , SHL_R16_CL // SHL r16, CL
// , SHL_R16_IMM8 // SHL r16, imm8
// , SHL_R16_ONE // SHL r16, 1
// , SHL_R32_CL // SHL r32, CL
// , SHL_R32_IMM8 // SHL r32, imm8
// , SHL_R32_ONE // SHL r32, 1
// , SHL_R64_CL // SHL r64, CL
// , SHL_R64_IMM8 // SHL r64, imm8
// , SHL_R64_ONE // SHL r64, 1
// , SHL_R8_CL // SHL r8, CL
// , SHL_R8_IMM8 // SHL r8, imm8
// , SHL_R8_ONE // SHL r8, 1
// , SHL_RH_CL // SHL rh, CL
// , SHL_RH_IMM8 // SHL rh, imm8
// , SHL_RH_ONE // SHL rh, 1
// , SHLD_M16_R16_CL // SHLD m16, r16, CL
// , SHLD_M16_R16_IMM8 // SHLD m16, r16, imm8
// , SHLD_M32_R32_CL // SHLD m32, r32, CL
// , SHLD_M32_R32_IMM8 // SHLD m32, r32, imm8
// , SHLD_M64_R64_CL // SHLD m64, r64, CL
// , SHLD_M64_R64_IMM8 // SHLD m64, r64, imm8
// , SHLD_R16_R16_CL // SHLD r16, r16, CL
// , SHLD_R16_R16_IMM8 // SHLD r16, r16, imm8
// , SHLD_R32_R32_CL // SHLD r32, r32, CL
// , SHLD_R32_R32_IMM8 // SHLD r32, r32, imm8
// , SHLD_R64_R64_CL // SHLD r64, r64, CL
// , SHLD_R64_R64_IMM8 // SHLD r64, r64, imm8
// , SHLX_R32_M32_R32 // SHLX r32, m32, r32
// , SHLX_R32_R32_R32 // SHLX r32, r32, r32
// , SHLX_R64_M64_R64 // SHLX r64, m64, r64
// , SHLX_R64_R64_R64 // SHLX r64, r64, r64
// , SHR_M16_CL // SHR m16, CL
// , SHR_M16_IMM8 // SHR m16, imm8
// , SHR_M16_ONE // SHR m16, 1
// , SHR_M32_CL // SHR m32, CL
// , SHR_M32_IMM8 // SHR m32, imm8
// , SHR_M32_ONE // SHR m32, 1
// , SHR_M64_CL // SHR m64, CL
// , SHR_M64_IMM8 // SHR m64, imm8
// , SHR_M64_ONE // SHR m64, 1
// , SHR_M8_CL // SHR m8, CL
// , SHR_M8_IMM8 // SHR m8, imm8
// , SHR_M8_ONE // SHR m8, 1
// , SHR_R16_CL // SHR r16, CL
// , SHR_R16_IMM8 // SHR r16, imm8
// , SHR_R16_ONE // SHR r16, 1
// , SHR_R32_CL // SHR r32, CL
// , SHR_R32_IMM8 // SHR r32, imm8
// , SHR_R32_ONE // SHR r32, 1
  , SHR_R64_CL // SHR r64, CL
// , SHR_R64_IMM8 // SHR r64, imm8
// , SHR_R64_ONE // SHR r64, 1
// , SHR_R8_CL // SHR r8, CL
// , SHR_R8_IMM8 // SHR r8, imm8
// , SHR_R8_ONE // SHR r8, 1
// , SHR_RH_CL // SHR rh, CL
// , SHR_RH_IMM8 // SHR rh, imm8
// , SHR_RH_ONE // SHR rh, 1
// , SHRD_M16_R16_CL // SHRD m16, r16, CL
// , SHRD_M16_R16_IMM8 // SHRD m16, r16, imm8
// , SHRD_M32_R32_CL // SHRD m32, r32, CL
// , SHRD_M32_R32_IMM8 // SHRD m32, r32, imm8
// , SHRD_M64_R64_CL // SHRD m64, r64, CL
// , SHRD_M64_R64_IMM8 // SHRD m64, r64, imm8
// , SHRD_R16_R16_CL // SHRD r16, r16, CL
// , SHRD_R16_R16_IMM8 // SHRD r16, r16, imm8
// , SHRD_R32_R32_CL // SHRD r32, r32, CL
// , SHRD_R32_R32_IMM8 // SHRD r32, r32, imm8
// , SHRD_R64_R64_CL // SHRD r64, r64, CL
// , SHRD_R64_R64_IMM8 // SHRD r64, r64, imm8
// , SHRX_R32_M32_R32 // SHRX r32, m32, r32
// , SHRX_R32_R32_R32 // SHRX r32, r32, r32
// , SHRX_R64_M64_R64 // SHRX r64, m64, r64
// , SHRX_R64_R64_R64 // SHRX r64, r64, r64
// , SHUFPD_XMM_M128_IMM8 // SHUFPD xmm, m128, imm8
// , SHUFPD_XMM_XMM_IMM8 // SHUFPD xmm, xmm, imm8
// , SHUFPS_XMM_M128_IMM8 // SHUFPS xmm, m128, imm8
// , SHUFPS_XMM_XMM_IMM8 // SHUFPS xmm, xmm, imm8
// , SQRTPD_XMM_M128 // SQRTPD xmm, m128
// , SQRTPD_XMM_XMM // SQRTPD xmm, xmm
// , SQRTPS_XMM_M128 // SQRTPS xmm, m128
// , SQRTPS_XMM_XMM // SQRTPS xmm, xmm
// , SQRTSD_XMM_M64 // SQRTSD xmm, m64
  , SQRTSD_XMM_XMM // SQRTSD xmm, xmm
// , SQRTSS_XMM_M32 // SQRTSS xmm, m32
  , SQRTSS_XMM_XMM // SQRTSS xmm, xmm
// , STC // STC
// , STD // STD
// , STI // STI
// , STMXCSR_M32 // STMXCSR m32
// , STOS_M16 // STOS m16
// , STOS_M32 // STOS m32
// , STOS_M64 // STOS m64
// , STOS_M8 // STOS m8
// , STOSB // STOSB
// , STOSD // STOSD
// , STOSQ // STOSQ
// , STOSW // STOSW
// , SUB_AL_IMM8 // SUB AL, imm8
// , SUB_AX_IMM16 // SUB AX, imm16
// , SUB_EAX_IMM32 // SUB EAX, imm32
// , SUB_M16_IMM16 // SUB m16, imm16
// , SUB_M16_IMM8 // SUB m16, imm8
// , SUB_M16_R16 // SUB m16, r16
// , SUB_M32_IMM32 // SUB m32, imm32
// , SUB_M32_IMM8 // SUB m32, imm8
// , SUB_M32_R32 // SUB m32, r32
// , SUB_M64_IMM32 // SUB m64, imm32
// , SUB_M64_IMM8 // SUB m64, imm8
// , SUB_M64_R64 // SUB m64, r64
// , SUB_M8_IMM8 // SUB m8, imm8
// , SUB_M8_R8 // SUB m8, r8
// , SUB_M8_RH // SUB m8, rh
// , SUB_R16_IMM16 // SUB r16, imm16
// , SUB_R16_IMM8 // SUB r16, imm8
// , SUB_R16_M16 // SUB r16, m16
// , SUB_R16_R16 // SUB r16, r16
// , SUB_R32_IMM32 // SUB r32, imm32
// , SUB_R32_IMM8 // SUB r32, imm8
// , SUB_R32_M32 // SUB r32, m32
// , SUB_R32_R32 // SUB r32, r32
// , SUB_R64_IMM32 // SUB r64, imm32
// , SUB_R64_IMM8 // SUB r64, imm8
// , SUB_R64_M64 // SUB r64, m64
// , SUB_R64_R64 // SUB r64, r64
// , SUB_R8_IMM8 // SUB r8, imm8
// , SUB_R8_M8 // SUB r8, m8
// , SUB_R8_R8 // SUB r8, r8
// , SUB_R8_RH // SUB r8, rh
// , SUB_RAX_IMM32 // SUB RAX, imm32
// , SUB_RH_IMM8 // SUB rh, imm8
// , SUB_RH_M8 // SUB rh, m8
// , SUB_RH_R8 // SUB rh, r8
// , SUB_RH_RH // SUB rh, rh
// , SUBPD_XMM_M128 // SUBPD xmm, m128
// , SUBPD_XMM_XMM // SUBPD xmm, xmm
// , SUBPS_XMM_M128 // SUBPS xmm, m128
// , SUBPS_XMM_XMM // SUBPS xmm, xmm
// , SUBSD_XMM_M64 // SUBSD xmm, m64
  , SUBSD_XMM_XMM // SUBSD xmm, xmm
// , SUBSS_XMM_M32 // SUBSS xmm, m32
  , SUBSS_XMM_XMM // SUBSS xmm, xmm
// , SWAPGS // SWAPGS
// , SYSCALL // SYSCALL
// , SYSENTER // SYSENTER
// , SYSEXIT // SYSEXIT
// , SYSEXIT_PREFREXW // SYSEXIT pw
// , SYSRET // SYSRET
// , SYSRET_PREFREXW // SYSRET pw
// , TEST_AL_IMM8 // TEST AL, imm8
// , TEST_AX_IMM16 // TEST AX, imm16
// , TEST_EAX_IMM32 // TEST EAX, imm32
// , TEST_M16_IMM16 // TEST m16, imm16
// , TEST_M16_R16 // TEST m16, r16
// , TEST_M32_IMM32 // TEST m32, imm32
// , TEST_M32_R32 // TEST m32, r32
// , TEST_M64_IMM32 // TEST m64, imm32
// , TEST_M64_R64 // TEST m64, r64
// , TEST_M8_IMM8 // TEST m8, imm8
// , TEST_M8_R8 // TEST m8, r8
// , TEST_M8_RH // TEST m8, rh
// , TEST_R16_IMM16 // TEST r16, imm16
// , TEST_R16_R16 // TEST r16, r16
// , TEST_R32_IMM32 // TEST r32, imm32
// , TEST_R32_R32 // TEST r32, r32
// , TEST_R64_IMM32 // TEST r64, imm32
// , TEST_R64_R64 // TEST r64, r64
// , TEST_R8_IMM8 // TEST r8, imm8
// , TEST_R8_R8 // TEST r8, r8
// , TEST_R8_RH // TEST r8, rh
// , TEST_RAX_IMM32 // TEST RAX, imm32
// , TEST_RH_IMM8 // TEST rh, imm8
// , TEST_RH_R8 // TEST rh, r8
// , TEST_RH_RH // TEST rh, rh
// , TZCNT_R16_M16 // TZCNT r16, m16
// , TZCNT_R16_R16 // TZCNT r16, r16
// , TZCNT_R32_M32 // TZCNT r32, m32
// , TZCNT_R32_R32 // TZCNT r32, r32
// , TZCNT_R64_M64 // TZCNT r64, m64
// , TZCNT_R64_R64 // TZCNT r64, r64
// , UCOMISD_XMM_M64 // UCOMISD xmm, m64
// , UCOMISD_XMM_XMM // UCOMISD xmm, xmm
// , UCOMISS_XMM_M32 // UCOMISS xmm, m32
// , UCOMISS_XMM_XMM // UCOMISS xmm, xmm
// , UD2 // UD2
// , UNPCKHPD_XMM_M128 // UNPCKHPD xmm, m128
// , UNPCKHPD_XMM_XMM // UNPCKHPD xmm, xmm
// , UNPCKHPS_XMM_M128 // UNPCKHPS xmm, m128
// , UNPCKHPS_XMM_XMM // UNPCKHPS xmm, xmm
// , UNPCKLPD_XMM_M128 // UNPCKLPD xmm, m128
// , UNPCKLPD_XMM_XMM // UNPCKLPD xmm, xmm
// , UNPCKLPS_XMM_M128 // UNPCKLPS xmm, m128
// , UNPCKLPS_XMM_XMM // UNPCKLPS xmm, xmm
// , VADDPD_XMM_XMM_M128 // VADDPD xmm, xmm, m128
// , VADDPD_XMM_XMM_XMM // VADDPD xmm, xmm, xmm
// , VADDPD_YMM_YMM_M256 // VADDPD ymm, ymm, m256
// , VADDPD_YMM_YMM_YMM // VADDPD ymm, ymm, ymm
// , VADDPS_XMM_XMM_M128 // VADDPS xmm, xmm, m128
// , VADDPS_XMM_XMM_XMM // VADDPS xmm, xmm, xmm
// , VADDPS_YMM_YMM_M256 // VADDPS ymm, ymm, m256
// , VADDPS_YMM_YMM_YMM // VADDPS ymm, ymm, ymm
// , VADDSD_XMM_XMM_M64 // VADDSD xmm, xmm, m64
// , VADDSD_XMM_XMM_XMM // VADDSD xmm, xmm, xmm
// , VADDSS_XMM_XMM_M32 // VADDSS xmm, xmm, m32
// , VADDSS_XMM_XMM_XMM // VADDSS xmm, xmm, xmm
// , VADDSUBPD_XMM_XMM_M128 // VADDSUBPD xmm, xmm, m128
// , VADDSUBPD_XMM_XMM_XMM // VADDSUBPD xmm, xmm, xmm
// , VADDSUBPD_YMM_YMM_M256 // VADDSUBPD ymm, ymm, m256
// , VADDSUBPD_YMM_YMM_YMM // VADDSUBPD ymm, ymm, ymm
// , VADDSUBPS_XMM_XMM_M128 // VADDSUBPS xmm, xmm, m128
// , VADDSUBPS_XMM_XMM_XMM // VADDSUBPS xmm, xmm, xmm
// , VADDSUBPS_YMM_YMM_M256 // VADDSUBPS ymm, ymm, m256
// , VADDSUBPS_YMM_YMM_YMM // VADDSUBPS ymm, ymm, ymm
// , VAESDEC_XMM_XMM_M128 // VAESDEC xmm, xmm, m128
// , VAESDEC_XMM_XMM_XMM // VAESDEC xmm, xmm, xmm
// , VAESDECLAST_XMM_XMM_M128 // VAESDECLAST xmm, xmm, m128
// , VAESDECLAST_XMM_XMM_XMM // VAESDECLAST xmm, xmm, xmm
// , VAESENC_XMM_XMM_M128 // VAESENC xmm, xmm, m128
// , VAESENC_XMM_XMM_XMM // VAESENC xmm, xmm, xmm
// , VAESENCLAST_XMM_XMM_M128 // VAESENCLAST xmm, xmm, m128
// , VAESENCLAST_XMM_XMM_XMM // VAESENCLAST xmm, xmm, xmm
// , VAESIMC_XMM_M128 // VAESIMC xmm, m128
// , VAESIMC_XMM_XMM // VAESIMC xmm, xmm
// , VAESKEYGENASSIST_XMM_M128_IMM8 // VAESKEYGENASSIST xmm, m128, imm8
// , VAESKEYGENASSIST_XMM_XMM_IMM8 // VAESKEYGENASSIST xmm, xmm, imm8
// , VANDNPD_XMM_XMM_M128 // VANDNPD xmm, xmm, m128
// , VANDNPD_XMM_XMM_XMM // VANDNPD xmm, xmm, xmm
// , VANDNPD_YMM_YMM_M256 // VANDNPD ymm, ymm, m256
// , VANDNPD_YMM_YMM_YMM // VANDNPD ymm, ymm, ymm
// , VANDNPS_XMM_XMM_M128 // VANDNPS xmm, xmm, m128
// , VANDNPS_XMM_XMM_XMM // VANDNPS xmm, xmm, xmm
// , VANDNPS_YMM_YMM_M256 // VANDNPS ymm, ymm, m256
// , VANDNPS_YMM_YMM_YMM // VANDNPS ymm, ymm, ymm
// , VANDPD_XMM_XMM_M128 // VANDPD xmm, xmm, m128
// , VANDPD_XMM_XMM_XMM // VANDPD xmm, xmm, xmm
// , VANDPD_YMM_YMM_M256 // VANDPD ymm, ymm, m256
// , VANDPD_YMM_YMM_YMM // VANDPD ymm, ymm, ymm
// , VANDPS_XMM_XMM_M128 // VANDPS xmm, xmm, m128
// , VANDPS_XMM_XMM_XMM // VANDPS xmm, xmm, xmm
// , VANDPS_YMM_YMM_M256 // VANDPS ymm, ymm, m256
// , VANDPS_YMM_YMM_YMM // VANDPS ymm, ymm, ymm
// , VBLENDPD_XMM_XMM_M128_IMM8 // VBLENDPD xmm, xmm, m128, imm8
// , VBLENDPD_XMM_XMM_XMM_IMM8 // VBLENDPD xmm, xmm, xmm, imm8
// , VBLENDPD_YMM_YMM_M256_IMM8 // VBLENDPD ymm, ymm, m256, imm8
// , VBLENDPD_YMM_YMM_YMM_IMM8 // VBLENDPD ymm, ymm, ymm, imm8
// , VBLENDPS_XMM_XMM_M128_IMM8 // VBLENDPS xmm, xmm, m128, imm8
// , VBLENDPS_XMM_XMM_XMM_IMM8 // VBLENDPS xmm, xmm, xmm, imm8
// , VBLENDPS_YMM_YMM_M256_IMM8 // VBLENDPS ymm, ymm, m256, imm8
// , VBLENDPS_YMM_YMM_YMM_IMM8 // VBLENDPS ymm, ymm, ymm, imm8
// , VBLENDVPD_XMM_XMM_M128_XMM // VBLENDVPD xmm, xmm, m128, xmm
// , VBLENDVPD_XMM_XMM_XMM_XMM // VBLENDVPD xmm, xmm, xmm, xmm
// , VBLENDVPD_YMM_YMM_M256_YMM // VBLENDVPD ymm, ymm, m256, ymm
// , VBLENDVPD_YMM_YMM_YMM_YMM // VBLENDVPD ymm, ymm, ymm, ymm
// , VBLENDVPS_XMM_XMM_M128_XMM // VBLENDVPS xmm, xmm, m128, xmm
// , VBLENDVPS_XMM_XMM_XMM_XMM // VBLENDVPS xmm, xmm, xmm, xmm
// , VBLENDVPS_YMM_YMM_M256_YMM // VBLENDVPS ymm, ymm, m256, ymm
// , VBLENDVPS_YMM_YMM_YMM_YMM // VBLENDVPS ymm, ymm, ymm, ymm
// , VBROADCASTF128_YMM_M128 // VBROADCASTF128 ymm, m128
// , VBROADCASTI128_YMM_M128 // VBROADCASTI128 ymm, m128
// , VBROADCASTSD_YMM_M64 // VBROADCASTSD ymm, m64
// , VBROADCASTSD_YMM_XMM // VBROADCASTSD ymm, xmm
// , VBROADCASTSS_XMM_M32 // VBROADCASTSS xmm, m32
// , VBROADCASTSS_XMM_XMM // VBROADCASTSS xmm, xmm
// , VBROADCASTSS_YMM_M32 // VBROADCASTSS ymm, m32
// , VBROADCASTSS_YMM_XMM // VBROADCASTSS ymm, xmm
// , VCMPPD_XMM_XMM_M128_IMM8 // VCMPPD xmm, xmm, m128, imm8
// , VCMPPD_XMM_XMM_XMM_IMM8 // VCMPPD xmm, xmm, xmm, imm8
// , VCMPPD_YMM_YMM_M256_IMM8 // VCMPPD ymm, ymm, m256, imm8
// , VCMPPD_YMM_YMM_YMM_IMM8 // VCMPPD ymm, ymm, ymm, imm8
// , VCMPPS_XMM_XMM_M128_IMM8 // VCMPPS xmm, xmm, m128, imm8
// , VCMPPS_XMM_XMM_XMM_IMM8 // VCMPPS xmm, xmm, xmm, imm8
// , VCMPPS_YMM_YMM_M256_IMM8 // VCMPPS ymm, ymm, m256, imm8
// , VCMPPS_YMM_YMM_YMM_IMM8 // VCMPPS ymm, ymm, ymm, imm8
// , VCMPSD_XMM_XMM_M64_IMM8 // VCMPSD xmm, xmm, m64, imm8
// , VCMPSD_XMM_XMM_XMM_IMM8 // VCMPSD xmm, xmm, xmm, imm8
// , VCMPSS_XMM_XMM_M32_IMM8 // VCMPSS xmm, xmm, m32, imm8
// , VCMPSS_XMM_XMM_XMM_IMM8 // VCMPSS xmm, xmm, xmm, imm8
// , VCOMISD_XMM_M64 // VCOMISD xmm, m64
// , VCOMISD_XMM_XMM // VCOMISD xmm, xmm
// , VCOMISS_XMM_M32 // VCOMISS xmm, m32
// , VCOMISS_XMM_XMM // VCOMISS xmm, xmm
// , VCVTDQ2PD_XMM_M64 // VCVTDQ2PD xmm, m64
// , VCVTDQ2PD_XMM_XMM // VCVTDQ2PD xmm, xmm
// , VCVTDQ2PD_YMM_M128 // VCVTDQ2PD ymm, m128
// , VCVTDQ2PD_YMM_YMM // VCVTDQ2PD ymm, ymm
// , VCVTDQ2PS_XMM_M128 // VCVTDQ2PS xmm, m128
// , VCVTDQ2PS_XMM_XMM // VCVTDQ2PS xmm, xmm
// , VCVTDQ2PS_YMM_M256 // VCVTDQ2PS ymm, m256
// , VCVTDQ2PS_YMM_YMM // VCVTDQ2PS ymm, ymm
// , VCVTPD2DQ_XMM_M128 // VCVTPD2DQ xmm, m128
// , VCVTPD2DQ_XMM_M256 // VCVTPD2DQ xmm, m256
// , VCVTPD2DQ_XMM_XMM // VCVTPD2DQ xmm, xmm
// , VCVTPD2DQ_XMM_YMM // VCVTPD2DQ xmm, ymm
// , VCVTPD2PS_XMM_M128 // VCVTPD2PS xmm, m128
// , VCVTPD2PS_XMM_M256 // VCVTPD2PS xmm, m256
// , VCVTPD2PS_XMM_XMM // VCVTPD2PS xmm, xmm
// , VCVTPD2PS_XMM_YMM // VCVTPD2PS xmm, ymm
// , VCVTPH2PS_XMM_M64 // VCVTPH2PS xmm, m64
// , VCVTPH2PS_XMM_XMM // VCVTPH2PS xmm, xmm
// , VCVTPH2PS_YMM_M128 // VCVTPH2PS ymm, m128
// , VCVTPH2PS_YMM_XMM // VCVTPH2PS ymm, xmm
// , VCVTPS2DQ_XMM_M128 // VCVTPS2DQ xmm, m128
// , VCVTPS2DQ_XMM_XMM // VCVTPS2DQ xmm, xmm
// , VCVTPS2DQ_YMM_M256 // VCVTPS2DQ ymm, m256
// , VCVTPS2DQ_YMM_YMM // VCVTPS2DQ ymm, ymm
// , VCVTPS2PD_XMM_M64 // VCVTPS2PD xmm, m64
// , VCVTPS2PD_XMM_XMM // VCVTPS2PD xmm, xmm
// , VCVTPS2PD_YMM_M128 // VCVTPS2PD ymm, m128
// , VCVTPS2PD_YMM_XMM // VCVTPS2PD ymm, xmm
// , VCVTPS2PH_M128_YMM_IMM8 // VCVTPS2PH m128, ymm, imm8
// , VCVTPS2PH_M64_XMM_IMM8 // VCVTPS2PH m64, xmm, imm8
// , VCVTPS2PH_XMM_XMM_IMM8 // VCVTPS2PH xmm, xmm, imm8
// , VCVTPS2PH_XMM_YMM_IMM8 // VCVTPS2PH xmm, ymm, imm8
// , VCVTSD2SI_R32_M64 // VCVTSD2SI r32, m64
// , VCVTSD2SI_R32_XMM // VCVTSD2SI r32, xmm
// , VCVTSD2SI_R64_M64 // VCVTSD2SI r64, m64
// , VCVTSD2SI_R64_XMM // VCVTSD2SI r64, xmm
// , VCVTSD2SS_XMM_XMM_M64 // VCVTSD2SS xmm, xmm, m64
// , VCVTSD2SS_XMM_XMM_XMM // VCVTSD2SS xmm, xmm, xmm
// , VCVTSI2SD_XMM_XMM_M32 // VCVTSI2SD xmm, xmm, m32
// , VCVTSI2SD_XMM_XMM_M64 // VCVTSI2SD xmm, xmm, m64
// , VCVTSI2SD_XMM_XMM_R32 // VCVTSI2SD xmm, xmm, r32
// , VCVTSI2SD_XMM_XMM_R64 // VCVTSI2SD xmm, xmm, r64
// , VCVTSI2SS_XMM_XMM_M32 // VCVTSI2SS xmm, xmm, m32
// , VCVTSI2SS_XMM_XMM_M64 // VCVTSI2SS xmm, xmm, m64
// , VCVTSI2SS_XMM_XMM_R32 // VCVTSI2SS xmm, xmm, r32
// , VCVTSI2SS_XMM_XMM_R64 // VCVTSI2SS xmm, xmm, r64
// , VCVTSS2SD_XMM_XMM_M32 // VCVTSS2SD xmm, xmm, m32
// , VCVTSS2SD_XMM_XMM_XMM // VCVTSS2SD xmm, xmm, xmm
// , VCVTSS2SI_R32_M32 // VCVTSS2SI r32, m32
// , VCVTSS2SI_R32_XMM // VCVTSS2SI r32, xmm
// , VCVTSS2SI_R64_M32 // VCVTSS2SI r64, m32
// , VCVTSS2SI_R64_XMM // VCVTSS2SI r64, xmm
// , VCVTTPD2DQ_XMM_M128 // VCVTTPD2DQ xmm, m128
// , VCVTTPD2DQ_XMM_M256 // VCVTTPD2DQ xmm, m256
// , VCVTTPD2DQ_XMM_XMM // VCVTTPD2DQ xmm, xmm
// , VCVTTPD2DQ_XMM_YMM // VCVTTPD2DQ xmm, ymm
// , VCVTTPS2DQ_XMM_M128 // VCVTTPS2DQ xmm, m128
// , VCVTTPS2DQ_XMM_XMM // VCVTTPS2DQ xmm, xmm
// , VCVTTPS2DQ_YMM_M256 // VCVTTPS2DQ ymm, m256
// , VCVTTPS2DQ_YMM_YMM // VCVTTPS2DQ ymm, ymm
// , VCVTTSD2SI_R32_M64 // VCVTTSD2SI r32, m64
// , VCVTTSD2SI_R32_XMM // VCVTTSD2SI r32, xmm
// , VCVTTSD2SI_R64_M64 // VCVTTSD2SI r64, m64
// , VCVTTSD2SI_R64_XMM // VCVTTSD2SI r64, xmm
// , VCVTTSS2SI_R32_M32 // VCVTTSS2SI r32, m32
// , VCVTTSS2SI_R32_XMM // VCVTTSS2SI r32, xmm
// , VCVTTSS2SI_R64_M32 // VCVTTSS2SI r64, m32
// , VCVTTSS2SI_R64_XMM // VCVTTSS2SI r64, xmm
// , VDIVPD_XMM_XMM_M128 // VDIVPD xmm, xmm, m128
// , VDIVPD_XMM_XMM_XMM // VDIVPD xmm, xmm, xmm
// , VDIVPD_YMM_YMM_M256 // VDIVPD ymm, ymm, m256
// , VDIVPD_YMM_YMM_YMM // VDIVPD ymm, ymm, ymm
// , VDIVPS_XMM_XMM_M128 // VDIVPS xmm, xmm, m128
// , VDIVPS_XMM_XMM_XMM // VDIVPS xmm, xmm, xmm
// , VDIVPS_YMM_YMM_M256 // VDIVPS ymm, ymm, m256
// , VDIVPS_YMM_YMM_YMM // VDIVPS ymm, ymm, ymm
// , VDIVSD_XMM_XMM_M64 // VDIVSD xmm, xmm, m64
// , VDIVSD_XMM_XMM_XMM // VDIVSD xmm, xmm, xmm
// , VDIVSS_XMM_XMM_M32 // VDIVSS xmm, xmm, m32
// , VDIVSS_XMM_XMM_XMM // VDIVSS xmm, xmm, xmm
// , VDPPD_XMM_XMM_M128_IMM8 // VDPPD xmm, xmm, m128, imm8
// , VDPPD_XMM_XMM_XMM_IMM8 // VDPPD xmm, xmm, xmm, imm8
// , VDPPS_XMM_XMM_M128_IMM8 // VDPPS xmm, xmm, m128, imm8
// , VDPPS_XMM_XMM_XMM_IMM8 // VDPPS xmm, xmm, xmm, imm8
// , VDPPS_YMM_YMM_M256_IMM8 // VDPPS ymm, ymm, m256, imm8
// , VDPPS_YMM_YMM_YMM_IMM8 // VDPPS ymm, ymm, ymm, imm8
// , VERR_M16 // VERR m16
// , VERR_R16 // VERR r16
// , VERW_M16 // VERW m16
// , VERW_R16 // VERW r16
// , VEXTRACTF128_M128_YMM_IMM8 // VEXTRACTF128 m128, ymm, imm8
// , VEXTRACTF128_XMM_YMM_IMM8 // VEXTRACTF128 xmm, ymm, imm8
// , VEXTRACTI128_M128_YMM_IMM8 // VEXTRACTI128 m128, ymm, imm8
// , VEXTRACTI128_XMM_YMM_IMM8 // VEXTRACTI128 xmm, ymm, imm8
// , VEXTRACTPS_M32_XMM_IMM8 // VEXTRACTPS m32, xmm, imm8
// , VEXTRACTPS_R32_XMM_IMM8 // VEXTRACTPS r32, xmm, imm8
// , VFMADD132PD_XMM_XMM_M128 // VFMADD132PD xmm, xmm, m128
// , VFMADD132PD_XMM_XMM_XMM // VFMADD132PD xmm, xmm, xmm
// , VFMADD132PD_YMM_YMM_M256 // VFMADD132PD ymm, ymm, m256
// , VFMADD132PD_YMM_YMM_YMM // VFMADD132PD ymm, ymm, ymm
// , VFMADD132PS_XMM_XMM_M128 // VFMADD132PS xmm, xmm, m128
// , VFMADD132PS_XMM_XMM_XMM // VFMADD132PS xmm, xmm, xmm
// , VFMADD132PS_YMM_YMM_M256 // VFMADD132PS ymm, ymm, m256
// , VFMADD132PS_YMM_YMM_YMM // VFMADD132PS ymm, ymm, ymm
// , VFMADD132SD_XMM_XMM_M64 // VFMADD132SD xmm, xmm, m64
  , VFMADD132SD_XMM_XMM_XMM // VFMADD132SD xmm, xmm, xmm
// , VFMADD132SS_XMM_XMM_M32 // VFMADD132SS xmm, xmm, m32
  , VFMADD132SS_XMM_XMM_XMM // VFMADD132SS xmm, xmm, xmm
// , VFMADD213PD_XMM_XMM_M128 // VFMADD213PD xmm, xmm, m128
// , VFMADD213PD_XMM_XMM_XMM // VFMADD213PD xmm, xmm, xmm
// , VFMADD213PD_YMM_YMM_M256 // VFMADD213PD ymm, ymm, m256
// , VFMADD213PD_YMM_YMM_YMM // VFMADD213PD ymm, ymm, ymm
// , VFMADD213PS_XMM_XMM_M128 // VFMADD213PS xmm, xmm, m128
// , VFMADD213PS_XMM_XMM_XMM // VFMADD213PS xmm, xmm, xmm
// , VFMADD213PS_YMM_YMM_M256 // VFMADD213PS ymm, ymm, m256
// , VFMADD213PS_YMM_YMM_YMM // VFMADD213PS ymm, ymm, ymm
// , VFMADD213SD_XMM_XMM_M64 // VFMADD213SD xmm, xmm, m64
// , VFMADD213SD_XMM_XMM_XMM // VFMADD213SD xmm, xmm, xmm
// , VFMADD213SS_XMM_XMM_M32 // VFMADD213SS xmm, xmm, m32
// , VFMADD213SS_XMM_XMM_XMM // VFMADD213SS xmm, xmm, xmm
// , VFMADD231PD_XMM_XMM_M128 // VFMADD231PD xmm, xmm, m128
// , VFMADD231PD_XMM_XMM_XMM // VFMADD231PD xmm, xmm, xmm
// , VFMADD231PD_YMM_YMM_M256 // VFMADD231PD ymm, ymm, m256
// , VFMADD231PD_YMM_YMM_YMM // VFMADD231PD ymm, ymm, ymm
// , VFMADD231PS_XMM_XMM_M128 // VFMADD231PS xmm, xmm, m128
// , VFMADD231PS_XMM_XMM_XMM // VFMADD231PS xmm, xmm, xmm
// , VFMADD231PS_YMM_YMM_M256 // VFMADD231PS ymm, ymm, m256
// , VFMADD231PS_YMM_YMM_YMM // VFMADD231PS ymm, ymm, ymm
// , VFMADD231SD_XMM_XMM_M64 // VFMADD231SD xmm, xmm, m64
// , VFMADD231SD_XMM_XMM_XMM // VFMADD231SD xmm, xmm, xmm
// , VFMADD231SS_XMM_XMM_M32 // VFMADD231SS xmm, xmm, m32
// , VFMADD231SS_XMM_XMM_XMM // VFMADD231SS xmm, xmm, xmm
// , VFMADDSUB132PD_XMM_XMM_M128 // VFMADDSUB132PD xmm, xmm, m128
// , VFMADDSUB132PD_XMM_XMM_XMM // VFMADDSUB132PD xmm, xmm, xmm
// , VFMADDSUB132PD_YMM_YMM_M256 // VFMADDSUB132PD ymm, ymm, m256
// , VFMADDSUB132PD_YMM_YMM_YMM // VFMADDSUB132PD ymm, ymm, ymm
// , VFMADDSUB132PS_XMM_XMM_M128 // VFMADDSUB132PS xmm, xmm, m128
// , VFMADDSUB132PS_XMM_XMM_XMM // VFMADDSUB132PS xmm, xmm, xmm
// , VFMADDSUB132PS_YMM_YMM_M256 // VFMADDSUB132PS ymm, ymm, m256
// , VFMADDSUB132PS_YMM_YMM_YMM // VFMADDSUB132PS ymm, ymm, ymm
// , VFMADDSUB213PD_XMM_XMM_M128 // VFMADDSUB213PD xmm, xmm, m128
// , VFMADDSUB213PD_XMM_XMM_XMM // VFMADDSUB213PD xmm, xmm, xmm
// , VFMADDSUB213PD_YMM_YMM_M256 // VFMADDSUB213PD ymm, ymm, m256
// , VFMADDSUB213PD_YMM_YMM_YMM // VFMADDSUB213PD ymm, ymm, ymm
// , VFMADDSUB213PS_XMM_XMM_M128 // VFMADDSUB213PS xmm, xmm, m128
// , VFMADDSUB213PS_XMM_XMM_XMM // VFMADDSUB213PS xmm, xmm, xmm
// , VFMADDSUB213PS_YMM_YMM_M256 // VFMADDSUB213PS ymm, ymm, m256
// , VFMADDSUB213PS_YMM_YMM_YMM // VFMADDSUB213PS ymm, ymm, ymm
// , VFMADDSUB231PD_XMM_XMM_M128 // VFMADDSUB231PD xmm, xmm, m128
// , VFMADDSUB231PD_XMM_XMM_XMM // VFMADDSUB231PD xmm, xmm, xmm
// , VFMADDSUB231PD_YMM_YMM_M256 // VFMADDSUB231PD ymm, ymm, m256
// , VFMADDSUB231PD_YMM_YMM_YMM // VFMADDSUB231PD ymm, ymm, ymm
// , VFMADDSUB231PS_XMM_XMM_M128 // VFMADDSUB231PS xmm, xmm, m128
// , VFMADDSUB231PS_XMM_XMM_XMM // VFMADDSUB231PS xmm, xmm, xmm
// , VFMADDSUB231PS_YMM_YMM_M256 // VFMADDSUB231PS ymm, ymm, m256
// , VFMADDSUB231PS_YMM_YMM_YMM // VFMADDSUB231PS ymm, ymm, ymm
// , VFMSUB132PD_XMM_XMM_M128 // VFMSUB132PD xmm, xmm, m128
// , VFMSUB132PD_XMM_XMM_XMM // VFMSUB132PD xmm, xmm, xmm
// , VFMSUB132PD_YMM_YMM_M256 // VFMSUB132PD ymm, ymm, m256
// , VFMSUB132PD_YMM_YMM_YMM // VFMSUB132PD ymm, ymm, ymm
// , VFMSUB132PS_XMM_XMM_M128 // VFMSUB132PS xmm, xmm, m128
// , VFMSUB132PS_XMM_XMM_XMM // VFMSUB132PS xmm, xmm, xmm
// , VFMSUB132PS_YMM_YMM_M256 // VFMSUB132PS ymm, ymm, m256
// , VFMSUB132PS_YMM_YMM_YMM // VFMSUB132PS ymm, ymm, ymm
// , VFMSUB132SD_XMM_XMM_M64 // VFMSUB132SD xmm, xmm, m64
// , VFMSUB132SD_XMM_XMM_XMM // VFMSUB132SD xmm, xmm, xmm
// , VFMSUB132SS_XMM_XMM_M32 // VFMSUB132SS xmm, xmm, m32
// , VFMSUB132SS_XMM_XMM_XMM // VFMSUB132SS xmm, xmm, xmm
// , VFMSUB213PD_XMM_XMM_M128 // VFMSUB213PD xmm, xmm, m128
// , VFMSUB213PD_XMM_XMM_XMM // VFMSUB213PD xmm, xmm, xmm
// , VFMSUB213PD_YMM_YMM_M256 // VFMSUB213PD ymm, ymm, m256
// , VFMSUB213PD_YMM_YMM_YMM // VFMSUB213PD ymm, ymm, ymm
// , VFMSUB213PS_XMM_XMM_M128 // VFMSUB213PS xmm, xmm, m128
// , VFMSUB213PS_XMM_XMM_XMM // VFMSUB213PS xmm, xmm, xmm
// , VFMSUB213PS_YMM_YMM_M256 // VFMSUB213PS ymm, ymm, m256
// , VFMSUB213PS_YMM_YMM_YMM // VFMSUB213PS ymm, ymm, ymm
// , VFMSUB213SD_XMM_XMM_M64 // VFMSUB213SD xmm, xmm, m64
// , VFMSUB213SD_XMM_XMM_XMM // VFMSUB213SD xmm, xmm, xmm
// , VFMSUB213SS_XMM_XMM_M32 // VFMSUB213SS xmm, xmm, m32
// , VFMSUB213SS_XMM_XMM_XMM // VFMSUB213SS xmm, xmm, xmm
// , VFMSUB231PD_XMM_XMM_M128 // VFMSUB231PD xmm, xmm, m128
// , VFMSUB231PD_XMM_XMM_XMM // VFMSUB231PD xmm, xmm, xmm
// , VFMSUB231PD_YMM_YMM_M256 // VFMSUB231PD ymm, ymm, m256
// , VFMSUB231PD_YMM_YMM_YMM // VFMSUB231PD ymm, ymm, ymm
// , VFMSUB231PS_XMM_XMM_M128 // VFMSUB231PS xmm, xmm, m128
// , VFMSUB231PS_XMM_XMM_XMM // VFMSUB231PS xmm, xmm, xmm
// , VFMSUB231PS_YMM_YMM_M256 // VFMSUB231PS ymm, ymm, m256
// , VFMSUB231PS_YMM_YMM_YMM // VFMSUB231PS ymm, ymm, ymm
// , VFMSUB231SD_XMM_XMM_M64 // VFMSUB231SD xmm, xmm, m64
// , VFMSUB231SD_XMM_XMM_XMM // VFMSUB231SD xmm, xmm, xmm
// , VFMSUB231SS_XMM_XMM_M32 // VFMSUB231SS xmm, xmm, m32
// , VFMSUB231SS_XMM_XMM_XMM // VFMSUB231SS xmm, xmm, xmm
// , VFMSUBADD132PD_XMM_XMM_M128 // VFMSUBADD132PD xmm, xmm, m128
// , VFMSUBADD132PD_XMM_XMM_XMM // VFMSUBADD132PD xmm, xmm, xmm
// , VFMSUBADD132PD_YMM_YMM_M256 // VFMSUBADD132PD ymm, ymm, m256
// , VFMSUBADD132PD_YMM_YMM_YMM // VFMSUBADD132PD ymm, ymm, ymm
// , VFMSUBADD132PS_XMM_XMM_M128 // VFMSUBADD132PS xmm, xmm, m128
// , VFMSUBADD132PS_XMM_XMM_XMM // VFMSUBADD132PS xmm, xmm, xmm
// , VFMSUBADD132PS_YMM_YMM_M256 // VFMSUBADD132PS ymm, ymm, m256
// , VFMSUBADD132PS_YMM_YMM_YMM // VFMSUBADD132PS ymm, ymm, ymm
// , VFMSUBADD213PD_XMM_XMM_M128 // VFMSUBADD213PD xmm, xmm, m128
// , VFMSUBADD213PD_XMM_XMM_XMM // VFMSUBADD213PD xmm, xmm, xmm
// , VFMSUBADD213PD_YMM_YMM_M256 // VFMSUBADD213PD ymm, ymm, m256
// , VFMSUBADD213PD_YMM_YMM_YMM // VFMSUBADD213PD ymm, ymm, ymm
// , VFMSUBADD213PS_XMM_XMM_M128 // VFMSUBADD213PS xmm, xmm, m128
// , VFMSUBADD213PS_XMM_XMM_XMM // VFMSUBADD213PS xmm, xmm, xmm
// , VFMSUBADD213PS_YMM_YMM_M256 // VFMSUBADD213PS ymm, ymm, m256
// , VFMSUBADD213PS_YMM_YMM_YMM // VFMSUBADD213PS ymm, ymm, ymm
// , VFMSUBADD231PD_XMM_XMM_M128 // VFMSUBADD231PD xmm, xmm, m128
// , VFMSUBADD231PD_XMM_XMM_XMM // VFMSUBADD231PD xmm, xmm, xmm
// , VFMSUBADD231PD_YMM_YMM_M256 // VFMSUBADD231PD ymm, ymm, m256
// , VFMSUBADD231PD_YMM_YMM_YMM // VFMSUBADD231PD ymm, ymm, ymm
// , VFMSUBADD231PS_XMM_XMM_M128 // VFMSUBADD231PS xmm, xmm, m128
// , VFMSUBADD231PS_XMM_XMM_XMM // VFMSUBADD231PS xmm, xmm, xmm
// , VFMSUBADD231PS_YMM_YMM_M256 // VFMSUBADD231PS ymm, ymm, m256
// , VFMSUBADD231PS_YMM_YMM_YMM // VFMSUBADD231PS ymm, ymm, ymm
// , VFNMADD132PD_XMM_XMM_M128 // VFNMADD132PD xmm, xmm, m128
// , VFNMADD132PD_XMM_XMM_XMM // VFNMADD132PD xmm, xmm, xmm
// , VFNMADD132PD_YMM_YMM_M256 // VFNMADD132PD ymm, ymm, m256
// , VFNMADD132PD_YMM_YMM_YMM // VFNMADD132PD ymm, ymm, ymm
// , VFNMADD132PS_XMM_XMM_M128 // VFNMADD132PS xmm, xmm, m128
// , VFNMADD132PS_XMM_XMM_XMM // VFNMADD132PS xmm, xmm, xmm
// , VFNMADD132PS_YMM_YMM_M256 // VFNMADD132PS ymm, ymm, m256
// , VFNMADD132PS_YMM_YMM_YMM // VFNMADD132PS ymm, ymm, ymm
// , VFNMADD132SD_XMM_XMM_M64 // VFNMADD132SD xmm, xmm, m64
// , VFNMADD132SD_XMM_XMM_XMM // VFNMADD132SD xmm, xmm, xmm
// , VFNMADD132SS_XMM_XMM_M32 // VFNMADD132SS xmm, xmm, m32
// , VFNMADD132SS_XMM_XMM_XMM // VFNMADD132SS xmm, xmm, xmm
// , VFNMADD213PD_XMM_XMM_M128 // VFNMADD213PD xmm, xmm, m128
// , VFNMADD213PD_XMM_XMM_XMM // VFNMADD213PD xmm, xmm, xmm
// , VFNMADD213PD_YMM_YMM_M256 // VFNMADD213PD ymm, ymm, m256
// , VFNMADD213PD_YMM_YMM_YMM // VFNMADD213PD ymm, ymm, ymm
// , VFNMADD213PS_XMM_XMM_M128 // VFNMADD213PS xmm, xmm, m128
// , VFNMADD213PS_XMM_XMM_XMM // VFNMADD213PS xmm, xmm, xmm
// , VFNMADD213PS_YMM_YMM_M256 // VFNMADD213PS ymm, ymm, m256
// , VFNMADD213PS_YMM_YMM_YMM // VFNMADD213PS ymm, ymm, ymm
// , VFNMADD213SD_XMM_XMM_M64 // VFNMADD213SD xmm, xmm, m64
// , VFNMADD213SD_XMM_XMM_XMM // VFNMADD213SD xmm, xmm, xmm
// , VFNMADD213SS_XMM_XMM_M32 // VFNMADD213SS xmm, xmm, m32
// , VFNMADD213SS_XMM_XMM_XMM // VFNMADD213SS xmm, xmm, xmm
// , VFNMADD231PD_XMM_XMM_M128 // VFNMADD231PD xmm, xmm, m128
// , VFNMADD231PD_XMM_XMM_XMM // VFNMADD231PD xmm, xmm, xmm
// , VFNMADD231PD_YMM_YMM_M256 // VFNMADD231PD ymm, ymm, m256
// , VFNMADD231PD_YMM_YMM_YMM // VFNMADD231PD ymm, ymm, ymm
// , VFNMADD231PS_XMM_XMM_M128 // VFNMADD231PS xmm, xmm, m128
// , VFNMADD231PS_XMM_XMM_XMM // VFNMADD231PS xmm, xmm, xmm
// , VFNMADD231PS_YMM_YMM_M256 // VFNMADD231PS ymm, ymm, m256
// , VFNMADD231PS_YMM_YMM_YMM // VFNMADD231PS ymm, ymm, ymm
// , VFNMADD231SD_XMM_XMM_M64 // VFNMADD231SD xmm, xmm, m64
// , VFNMADD231SD_XMM_XMM_XMM // VFNMADD231SD xmm, xmm, xmm
// , VFNMADD231SS_XMM_XMM_M32 // VFNMADD231SS xmm, xmm, m32
// , VFNMADD231SS_XMM_XMM_XMM // VFNMADD231SS xmm, xmm, xmm
// , VFNMSUB132PD_XMM_XMM_M128 // VFNMSUB132PD xmm, xmm, m128
// , VFNMSUB132PD_XMM_XMM_XMM // VFNMSUB132PD xmm, xmm, xmm
// , VFNMSUB132PD_YMM_YMM_M256 // VFNMSUB132PD ymm, ymm, m256
// , VFNMSUB132PD_YMM_YMM_YMM // VFNMSUB132PD ymm, ymm, ymm
// , VFNMSUB132PS_XMM_XMM_M128 // VFNMSUB132PS xmm, xmm, m128
// , VFNMSUB132PS_XMM_XMM_XMM // VFNMSUB132PS xmm, xmm, xmm
// , VFNMSUB132PS_YMM_YMM_M256 // VFNMSUB132PS ymm, ymm, m256
// , VFNMSUB132PS_YMM_YMM_YMM // VFNMSUB132PS ymm, ymm, ymm
// , VFNMSUB132SD_XMM_XMM_M64 // VFNMSUB132SD xmm, xmm, m64
// , VFNMSUB132SD_XMM_XMM_XMM // VFNMSUB132SD xmm, xmm, xmm
// , VFNMSUB132SS_XMM_XMM_M32 // VFNMSUB132SS xmm, xmm, m32
// , VFNMSUB132SS_XMM_XMM_XMM // VFNMSUB132SS xmm, xmm, xmm
// , VFNMSUB213PD_XMM_XMM_M128 // VFNMSUB213PD xmm, xmm, m128
// , VFNMSUB213PD_XMM_XMM_XMM // VFNMSUB213PD xmm, xmm, xmm
// , VFNMSUB213PD_YMM_YMM_M256 // VFNMSUB213PD ymm, ymm, m256
// , VFNMSUB213PD_YMM_YMM_YMM // VFNMSUB213PD ymm, ymm, ymm
// , VFNMSUB213PS_XMM_XMM_M128 // VFNMSUB213PS xmm, xmm, m128
// , VFNMSUB213PS_XMM_XMM_XMM // VFNMSUB213PS xmm, xmm, xmm
// , VFNMSUB213PS_YMM_YMM_M256 // VFNMSUB213PS ymm, ymm, m256
// , VFNMSUB213PS_YMM_YMM_YMM // VFNMSUB213PS ymm, ymm, ymm
// , VFNMSUB213SD_XMM_XMM_M64 // VFNMSUB213SD xmm, xmm, m64
// , VFNMSUB213SD_XMM_XMM_XMM // VFNMSUB213SD xmm, xmm, xmm
// , VFNMSUB213SS_XMM_XMM_M32 // VFNMSUB213SS xmm, xmm, m32
// , VFNMSUB213SS_XMM_XMM_XMM // VFNMSUB213SS xmm, xmm, xmm
// , VFNMSUB231PD_XMM_XMM_M128 // VFNMSUB231PD xmm, xmm, m128
// , VFNMSUB231PD_XMM_XMM_XMM // VFNMSUB231PD xmm, xmm, xmm
// , VFNMSUB231PD_YMM_YMM_M256 // VFNMSUB231PD ymm, ymm, m256
// , VFNMSUB231PD_YMM_YMM_YMM // VFNMSUB231PD ymm, ymm, ymm
// , VFNMSUB231PS_XMM_XMM_M128 // VFNMSUB231PS xmm, xmm, m128
// , VFNMSUB231PS_XMM_XMM_XMM // VFNMSUB231PS xmm, xmm, xmm
// , VFNMSUB231PS_YMM_YMM_M256 // VFNMSUB231PS ymm, ymm, m256
// , VFNMSUB231PS_YMM_YMM_YMM // VFNMSUB231PS ymm, ymm, ymm
// , VFNMSUB231SD_XMM_XMM_M64 // VFNMSUB231SD xmm, xmm, m64
// , VFNMSUB231SD_XMM_XMM_XMM // VFNMSUB231SD xmm, xmm, xmm
// , VFNMSUB231SS_XMM_XMM_M32 // VFNMSUB231SS xmm, xmm, m32
// , VFNMSUB231SS_XMM_XMM_XMM // VFNMSUB231SS xmm, xmm, xmm
// , VGATHERDPD_XMM_M32_XMM // VGATHERDPD xmm, m32, xmm
// , VGATHERDPD_YMM_M32_YMM // VGATHERDPD ymm, m32, ymm
// , VGATHERDPS_XMM_M32_XMM // VGATHERDPS xmm, m32, xmm
// , VGATHERDPS_YMM_M32_YMM // VGATHERDPS ymm, m32, ymm
// , VGATHERQPD_XMM_M64_XMM // VGATHERQPD xmm, m64, xmm
// , VGATHERQPD_YMM_M64_YMM // VGATHERQPD ymm, m64, ymm
// , VGATHERQPS_XMM_M64_XMM // VGATHERQPS xmm, m64, xmm
// , VHADDPD_XMM_XMM_M128 // VHADDPD xmm, xmm, m128
// , VHADDPD_XMM_XMM_XMM // VHADDPD xmm, xmm, xmm
// , VHADDPD_YMM_YMM_M256 // VHADDPD ymm, ymm, m256
// , VHADDPD_YMM_YMM_YMM // VHADDPD ymm, ymm, ymm
// , VHADDPS_XMM_XMM_M128 // VHADDPS xmm, xmm, m128
// , VHADDPS_XMM_XMM_XMM // VHADDPS xmm, xmm, xmm
// , VHADDPS_YMM_YMM_M256 // VHADDPS ymm, ymm, m256
// , VHADDPS_YMM_YMM_YMM // VHADDPS ymm, ymm, ymm
// , VHSUBPD_XMM_XMM_M128 // VHSUBPD xmm, xmm, m128
// , VHSUBPD_XMM_XMM_XMM // VHSUBPD xmm, xmm, xmm
// , VHSUBPD_YMM_YMM_M256 // VHSUBPD ymm, ymm, m256
// , VHSUBPD_YMM_YMM_YMM // VHSUBPD ymm, ymm, ymm
// , VHSUBPS_XMM_XMM_M128 // VHSUBPS xmm, xmm, m128
// , VHSUBPS_XMM_XMM_XMM // VHSUBPS xmm, xmm, xmm
// , VHSUBPS_YMM_YMM_M256 // VHSUBPS ymm, ymm, m256
// , VHSUBPS_YMM_YMM_YMM // VHSUBPS ymm, ymm, ymm
// , VINSERTF128_YMM_YMM_M128_IMM8 // VINSERTF128 ymm, ymm, m128, imm8
// , VINSERTF128_YMM_YMM_XMM_IMM8 // VINSERTF128 ymm, ymm, xmm, imm8
// , VINSERTI128_YMM_YMM_M128_IMM8 // VINSERTI128 ymm, ymm, m128, imm8
// , VINSERTI128_YMM_YMM_XMM_IMM8 // VINSERTI128 ymm, ymm, xmm, imm8
// , VINSERTPS_XMM_XMM_M32_IMM8 // VINSERTPS xmm, xmm, m32, imm8
// , VINSERTPS_XMM_XMM_XMM_IMM8 // VINSERTPS xmm, xmm, xmm, imm8
// , VLDDQU_XMM_M128 // VLDDQU xmm, m128
// , VLDDQU_YMM_M256 // VLDDQU ymm, m256
// , VLDMXCSR_M32 // VLDMXCSR m32
// , VMASKMOVDQU_XMM_XMM // VMASKMOVDQU xmm, xmm
// , VMASKMOVPD_M128_XMM_XMM // VMASKMOVPD m128, xmm, xmm
// , VMASKMOVPD_M256_YMM_YMM // VMASKMOVPD m256, ymm, ymm
// , VMASKMOVPD_XMM_XMM_M128 // VMASKMOVPD xmm, xmm, m128
// , VMASKMOVPD_YMM_YMM_M256 // VMASKMOVPD ymm, ymm, m256
// , VMASKMOVPS_M128_XMM_XMM // VMASKMOVPS m128, xmm, xmm
// , VMASKMOVPS_M256_YMM_YMM // VMASKMOVPS m256, ymm, ymm
// , VMASKMOVPS_XMM_XMM_M128 // VMASKMOVPS xmm, xmm, m128
// , VMASKMOVPS_YMM_YMM_M256 // VMASKMOVPS ymm, ymm, m256
// , VMAXPD_XMM_XMM_M128 // VMAXPD xmm, xmm, m128
// , VMAXPD_XMM_XMM_XMM // VMAXPD xmm, xmm, xmm
// , VMAXPD_YMM_YMM_M256 // VMAXPD ymm, ymm, m256
// , VMAXPD_YMM_YMM_YMM // VMAXPD ymm, ymm, ymm
// , VMAXPS_XMM_XMM_M128 // VMAXPS xmm, xmm, m128
// , VMAXPS_XMM_XMM_XMM // VMAXPS xmm, xmm, xmm
// , VMAXPS_YMM_YMM_M256 // VMAXPS ymm, ymm, m256
// , VMAXPS_YMM_YMM_YMM // VMAXPS ymm, ymm, ymm
// , VMAXSD_XMM_XMM_M64 // VMAXSD xmm, xmm, m64
// , VMAXSD_XMM_XMM_XMM // VMAXSD xmm, xmm, xmm
// , VMAXSS_XMM_XMM_M32 // VMAXSS xmm, xmm, m32
// , VMAXSS_XMM_XMM_XMM // VMAXSS xmm, xmm, xmm
// , VMINPD_XMM_XMM_M128 // VMINPD xmm, xmm, m128
// , VMINPD_XMM_XMM_XMM // VMINPD xmm, xmm, xmm
// , VMINPD_YMM_YMM_M256 // VMINPD ymm, ymm, m256
// , VMINPD_YMM_YMM_YMM // VMINPD ymm, ymm, ymm
// , VMINPS_XMM_XMM_M128 // VMINPS xmm, xmm, m128
// , VMINPS_XMM_XMM_XMM // VMINPS xmm, xmm, xmm
// , VMINPS_YMM_YMM_M256 // VMINPS ymm, ymm, m256
// , VMINPS_YMM_YMM_YMM // VMINPS ymm, ymm, ymm
// , VMINSD_XMM_XMM_M64 // VMINSD xmm, xmm, m64
// , VMINSD_XMM_XMM_XMM // VMINSD xmm, xmm, xmm
// , VMINSS_XMM_XMM_M32 // VMINSS xmm, xmm, m32
// , VMINSS_XMM_XMM_XMM // VMINSS xmm, xmm, xmm
// , VMOVAPD_M128_XMM // VMOVAPD m128, xmm
// , VMOVAPD_M256_YMM // VMOVAPD m256, ymm
// , VMOVAPD_XMM_M128 // VMOVAPD xmm, m128
// , VMOVAPD_XMM_XMM // VMOVAPD xmm, xmm
// , VMOVAPD_YMM_M256 // VMOVAPD ymm, m256
// , VMOVAPD_YMM_YMM // VMOVAPD ymm, ymm
// , VMOVAPS_M128_XMM // VMOVAPS m128, xmm
// , VMOVAPS_M256_YMM // VMOVAPS m256, ymm
// , VMOVAPS_XMM_M128 // VMOVAPS xmm, m128
// , VMOVAPS_XMM_XMM // VMOVAPS xmm, xmm
// , VMOVAPS_YMM_M256 // VMOVAPS ymm, m256
// , VMOVAPS_YMM_YMM // VMOVAPS ymm, ymm
// , VMOVD_M32_XMM // VMOVD m32, xmm
// , VMOVD_R32_XMM // VMOVD r32, xmm
// , VMOVD_XMM_M32 // VMOVD xmm, m32
// , VMOVD_XMM_R32 // VMOVD xmm, r32
// , VMOVDDUP_XMM_M64 // VMOVDDUP xmm, m64
// , VMOVDDUP_XMM_XMM // VMOVDDUP xmm, xmm
// , VMOVDDUP_YMM_M256 // VMOVDDUP ymm, m256
// , VMOVDDUP_YMM_YMM // VMOVDDUP ymm, ymm
// , VMOVDQA_M128_XMM // VMOVDQA m128, xmm
// , VMOVDQA_M256_YMM // VMOVDQA m256, ymm
// , VMOVDQA_XMM_M128 // VMOVDQA xmm, m128
// , VMOVDQA_XMM_XMM // VMOVDQA xmm, xmm
// , VMOVDQA_YMM_M256 // VMOVDQA ymm, m256
// , VMOVDQA_YMM_YMM // VMOVDQA ymm, ymm
// , VMOVDQU_M128_XMM // VMOVDQU m128, xmm
// , VMOVDQU_M256_YMM // VMOVDQU m256, ymm
// , VMOVDQU_XMM_M128 // VMOVDQU xmm, m128
// , VMOVDQU_XMM_XMM // VMOVDQU xmm, xmm
// , VMOVDQU_YMM_M256 // VMOVDQU ymm, m256
// , VMOVDQU_YMM_YMM // VMOVDQU ymm, ymm
// , VMOVHLPS_XMM_XMM_XMM // VMOVHLPS xmm, xmm, xmm
// , VMOVHPD_M64_XMM // VMOVHPD m64, xmm
// , VMOVHPD_XMM_XMM_M64 // VMOVHPD xmm, xmm, m64
// , VMOVHPS_M64_XMM // VMOVHPS m64, xmm
// , VMOVHPS_XMM_XMM_M64 // VMOVHPS xmm, xmm, m64
// , VMOVLHPS_XMM_XMM_XMM // VMOVLHPS xmm, xmm, xmm
// , VMOVLPD_M64_XMM // VMOVLPD m64, xmm
// , VMOVLPD_XMM_XMM_M64 // VMOVLPD xmm, xmm, m64
// , VMOVLPS_M64_XMM // VMOVLPS m64, xmm
// , VMOVLPS_XMM_XMM_M64 // VMOVLPS xmm, xmm, m64
// , VMOVMSKPD_R32_XMM // VMOVMSKPD r32, xmm
// , VMOVMSKPD_R32_YMM // VMOVMSKPD r32, ymm
// , VMOVMSKPD_R64_XMM // VMOVMSKPD r64, xmm
// , VMOVMSKPD_R64_YMM // VMOVMSKPD r64, ymm
// , VMOVMSKPS_R32_XMM // VMOVMSKPS r32, xmm
// , VMOVMSKPS_R32_YMM // VMOVMSKPS r32, ymm
// , VMOVMSKPS_R64_XMM // VMOVMSKPS r64, xmm
// , VMOVMSKPS_R64_YMM // VMOVMSKPS r64, ymm
// , VMOVNTDQ_M128_XMM // VMOVNTDQ m128, xmm
// , VMOVNTDQA_XMM_M128 // VMOVNTDQA xmm, m128
// , VMOVNTDQA_YMM_M256 // VMOVNTDQA ymm, m256
// , VMOVNTPD_M128_XMM // VMOVNTPD m128, xmm
// , VMOVNTPD_M256_YMM // VMOVNTPD m256, ymm
// , VMOVNTPS_M128_XMM // VMOVNTPS m128, xmm
// , VMOVNTPS_M256_YMM // VMOVNTPS m256, ymm
// , VMOVQ_M64_XMM // VMOVQ m64, xmm
// , VMOVQ_R64_XMM // VMOVQ r64, xmm
// , VMOVQ_XMM_M64 // VMOVQ xmm, m64
// , VMOVQ_XMM_R64 // VMOVQ xmm, r64
// , VMOVQ_XMM_XMM // VMOVQ xmm, xmm
// , VMOVSD_M64_XMM // VMOVSD m64, xmm
// , VMOVSD_XMM_M64 // VMOVSD xmm, m64
// , VMOVSD_XMM_XMM_XMM // VMOVSD xmm, xmm, xmm
// , VMOVSHDUP_XMM_M128 // VMOVSHDUP xmm, m128
// , VMOVSHDUP_XMM_XMM // VMOVSHDUP xmm, xmm
// , VMOVSHDUP_YMM_M256 // VMOVSHDUP ymm, m256
// , VMOVSHDUP_YMM_YMM // VMOVSHDUP ymm, ymm
// , VMOVSLDUP_XMM_M128 // VMOVSLDUP xmm, m128
// , VMOVSLDUP_XMM_XMM // VMOVSLDUP xmm, xmm
// , VMOVSLDUP_YMM_M256 // VMOVSLDUP ymm, m256
// , VMOVSLDUP_YMM_YMM // VMOVSLDUP ymm, ymm
// , VMOVSS_M32_XMM // VMOVSS m32, xmm
// , VMOVSS_XMM_M32 // VMOVSS xmm, m32
// , VMOVSS_XMM_XMM_XMM // VMOVSS xmm, xmm, xmm
// , VMOVUPD_M128_XMM // VMOVUPD m128, xmm
// , VMOVUPD_M256_YMM // VMOVUPD m256, ymm
// , VMOVUPD_XMM_M128 // VMOVUPD xmm, m128
// , VMOVUPD_XMM_XMM // VMOVUPD xmm, xmm
// , VMOVUPD_YMM_M256 // VMOVUPD ymm, m256
// , VMOVUPD_YMM_YMM // VMOVUPD ymm, ymm
// , VMOVUPS_M128_XMM // VMOVUPS m128, xmm
// , VMOVUPS_M256_YMM // VMOVUPS m256, ymm
// , VMOVUPS_XMM_M128 // VMOVUPS xmm, m128
// , VMOVUPS_XMM_XMM // VMOVUPS xmm, xmm
// , VMOVUPS_YMM_M256 // VMOVUPS ymm, m256
// , VMOVUPS_YMM_YMM // VMOVUPS ymm, ymm
// , VMPSADBW_XMM_XMM_M128_IMM8 // VMPSADBW xmm, xmm, m128, imm8
// , VMPSADBW_XMM_XMM_XMM_IMM8 // VMPSADBW xmm, xmm, xmm, imm8
// , VMPSADBW_YMM_YMM_M256_IMM8 // VMPSADBW ymm, ymm, m256, imm8
// , VMPSADBW_YMM_YMM_YMM_IMM8 // VMPSADBW ymm, ymm, ymm, imm8
// , VMULPD_XMM_XMM_M128 // VMULPD xmm, xmm, m128
// , VMULPD_XMM_XMM_XMM // VMULPD xmm, xmm, xmm
// , VMULPD_YMM_YMM_M256 // VMULPD ymm, ymm, m256
// , VMULPD_YMM_YMM_YMM // VMULPD ymm, ymm, ymm
// , VMULPS_XMM_XMM_M128 // VMULPS xmm, xmm, m128
// , VMULPS_XMM_XMM_XMM // VMULPS xmm, xmm, xmm
// , VMULPS_YMM_YMM_M256 // VMULPS ymm, ymm, m256
// , VMULPS_YMM_YMM_YMM // VMULPS ymm, ymm, ymm
// , VMULSD_XMM_XMM_M64 // VMULSD xmm, xmm, m64
// , VMULSD_XMM_XMM_XMM // VMULSD xmm, xmm, xmm
// , VMULSS_XMM_XMM_M32 // VMULSS xmm, xmm, m32
// , VMULSS_XMM_XMM_XMM // VMULSS xmm, xmm, xmm
// , VORPD_XMM_XMM_M128 // VORPD xmm, xmm, m128
// , VORPD_XMM_XMM_XMM // VORPD xmm, xmm, xmm
// , VORPD_YMM_YMM_M256 // VORPD ymm, ymm, m256
// , VORPD_YMM_YMM_YMM // VORPD ymm, ymm, ymm
// , VORPS_XMM_XMM_M128 // VORPS xmm, xmm, m128
// , VORPS_XMM_XMM_XMM // VORPS xmm, xmm, xmm
// , VORPS_YMM_YMM_M256 // VORPS ymm, ymm, m256
// , VORPS_YMM_YMM_YMM // VORPS ymm, ymm, ymm
// , VPABSB_XMM_M128 // VPABSB xmm, m128
// , VPABSB_XMM_XMM // VPABSB xmm, xmm
// , VPABSB_YMM_M256 // VPABSB ymm, m256
// , VPABSB_YMM_YMM // VPABSB ymm, ymm
// , VPABSD_XMM_M128 // VPABSD xmm, m128
// , VPABSD_XMM_XMM // VPABSD xmm, xmm
// , VPABSD_YMM_M256 // VPABSD ymm, m256
// , VPABSD_YMM_YMM // VPABSD ymm, ymm
// , VPABSW_XMM_M128 // VPABSW xmm, m128
// , VPABSW_XMM_XMM // VPABSW xmm, xmm
// , VPABSW_YMM_M256 // VPABSW ymm, m256
// , VPABSW_YMM_YMM // VPABSW ymm, ymm
// , VPACKSSDW_XMM_XMM_M128 // VPACKSSDW xmm, xmm, m128
// , VPACKSSDW_XMM_XMM_XMM // VPACKSSDW xmm, xmm, xmm
// , VPACKSSDW_YMM_YMM_M256 // VPACKSSDW ymm, ymm, m256
// , VPACKSSDW_YMM_YMM_YMM // VPACKSSDW ymm, ymm, ymm
// , VPACKSSWB_XMM_XMM_M128 // VPACKSSWB xmm, xmm, m128
// , VPACKSSWB_XMM_XMM_XMM // VPACKSSWB xmm, xmm, xmm
// , VPACKSSWB_YMM_YMM_M256 // VPACKSSWB ymm, ymm, m256
// , VPACKSSWB_YMM_YMM_YMM // VPACKSSWB ymm, ymm, ymm
// , VPACKUSDW_XMM_XMM_M128 // VPACKUSDW xmm, xmm, m128
// , VPACKUSDW_XMM_XMM_XMM // VPACKUSDW xmm, xmm, xmm
// , VPACKUSDW_YMM_YMM_M256 // VPACKUSDW ymm, ymm, m256
// , VPACKUSDW_YMM_YMM_YMM // VPACKUSDW ymm, ymm, ymm
// , VPACKUSWB_XMM_XMM_M128 // VPACKUSWB xmm, xmm, m128
// , VPACKUSWB_XMM_XMM_XMM // VPACKUSWB xmm, xmm, xmm
// , VPACKUSWB_YMM_YMM_M256 // VPACKUSWB ymm, ymm, m256
// , VPACKUSWB_YMM_YMM_YMM // VPACKUSWB ymm, ymm, ymm
// , VPADDB_XMM_XMM_M128 // VPADDB xmm, xmm, m128
// , VPADDB_XMM_XMM_XMM // VPADDB xmm, xmm, xmm
// , VPADDB_YMM_YMM_M256 // VPADDB ymm, ymm, m256
// , VPADDB_YMM_YMM_YMM // VPADDB ymm, ymm, ymm
// , VPADDD_XMM_XMM_M128 // VPADDD xmm, xmm, m128
// , VPADDD_XMM_XMM_XMM // VPADDD xmm, xmm, xmm
// , VPADDD_YMM_YMM_M256 // VPADDD ymm, ymm, m256
// , VPADDD_YMM_YMM_YMM // VPADDD ymm, ymm, ymm
// , VPADDQ_XMM_XMM_M128 // VPADDQ xmm, xmm, m128
// , VPADDQ_XMM_XMM_XMM // VPADDQ xmm, xmm, xmm
// , VPADDQ_YMM_YMM_M256 // VPADDQ ymm, ymm, m256
// , VPADDQ_YMM_YMM_YMM // VPADDQ ymm, ymm, ymm
// , VPADDSB_XMM_XMM_M128 // VPADDSB xmm, xmm, m128
// , VPADDSB_XMM_XMM_XMM // VPADDSB xmm, xmm, xmm
// , VPADDSB_YMM_YMM_M256 // VPADDSB ymm, ymm, m256
// , VPADDSB_YMM_YMM_YMM // VPADDSB ymm, ymm, ymm
// , VPADDSW_XMM_XMM_M128 // VPADDSW xmm, xmm, m128
// , VPADDSW_XMM_XMM_XMM // VPADDSW xmm, xmm, xmm
// , VPADDSW_YMM_YMM_M256 // VPADDSW ymm, ymm, m256
// , VPADDSW_YMM_YMM_YMM // VPADDSW ymm, ymm, ymm
// , VPADDUSB_XMM_XMM_M128 // VPADDUSB xmm, xmm, m128
// , VPADDUSB_XMM_XMM_XMM // VPADDUSB xmm, xmm, xmm
// , VPADDUSB_YMM_YMM_M256 // VPADDUSB ymm, ymm, m256
// , VPADDUSB_YMM_YMM_YMM // VPADDUSB ymm, ymm, ymm
// , VPADDUSW_XMM_XMM_M128 // VPADDUSW xmm, xmm, m128
// , VPADDUSW_XMM_XMM_XMM // VPADDUSW xmm, xmm, xmm
// , VPADDUSW_YMM_YMM_M256 // VPADDUSW ymm, ymm, m256
// , VPADDUSW_YMM_YMM_YMM // VPADDUSW ymm, ymm, ymm
// , VPADDW_XMM_XMM_M128 // VPADDW xmm, xmm, m128
// , VPADDW_XMM_XMM_XMM // VPADDW xmm, xmm, xmm
// , VPADDW_YMM_YMM_M256 // VPADDW ymm, ymm, m256
// , VPADDW_YMM_YMM_YMM // VPADDW ymm, ymm, ymm
// , VPALIGNR_XMM_XMM_M128_IMM8 // VPALIGNR xmm, xmm, m128, imm8
// , VPALIGNR_XMM_XMM_XMM_IMM8 // VPALIGNR xmm, xmm, xmm, imm8
// , VPALIGNR_YMM_YMM_M256_IMM8 // VPALIGNR ymm, ymm, m256, imm8
// , VPALIGNR_YMM_YMM_YMM_IMM8 // VPALIGNR ymm, ymm, ymm, imm8
// , VPAND_XMM_XMM_M128 // VPAND xmm, xmm, m128
// , VPAND_XMM_XMM_XMM // VPAND xmm, xmm, xmm
// , VPAND_YMM_YMM_M256 // VPAND ymm, ymm, m256
// , VPAND_YMM_YMM_YMM // VPAND ymm, ymm, ymm
// , VPANDN_XMM_XMM_M128 // VPANDN xmm, xmm, m128
// , VPANDN_XMM_XMM_XMM // VPANDN xmm, xmm, xmm
// , VPANDN_YMM_YMM_M256 // VPANDN ymm, ymm, m256
// , VPANDN_YMM_YMM_YMM // VPANDN ymm, ymm, ymm
// , VPAVGB_XMM_XMM_M128 // VPAVGB xmm, xmm, m128
// , VPAVGB_XMM_XMM_XMM // VPAVGB xmm, xmm, xmm
// , VPAVGB_YMM_YMM_M256 // VPAVGB ymm, ymm, m256
// , VPAVGB_YMM_YMM_YMM // VPAVGB ymm, ymm, ymm
// , VPAVGW_XMM_XMM_M128 // VPAVGW xmm, xmm, m128
// , VPAVGW_XMM_XMM_XMM // VPAVGW xmm, xmm, xmm
// , VPAVGW_YMM_YMM_M256 // VPAVGW ymm, ymm, m256
// , VPAVGW_YMM_YMM_YMM // VPAVGW ymm, ymm, ymm
// , VPBLENDD_XMM_XMM_M128_IMM8 // VPBLENDD xmm, xmm, m128, imm8
// , VPBLENDD_XMM_XMM_XMM_IMM8 // VPBLENDD xmm, xmm, xmm, imm8
// , VPBLENDD_YMM_YMM_M256_IMM8 // VPBLENDD ymm, ymm, m256, imm8
// , VPBLENDD_YMM_YMM_YMM_IMM8 // VPBLENDD ymm, ymm, ymm, imm8
// , VPBLENDVB_XMM_XMM_M128_XMM // VPBLENDVB xmm, xmm, m128, xmm
// , VPBLENDVB_XMM_XMM_XMM_XMM // VPBLENDVB xmm, xmm, xmm, xmm
// , VPBLENDVB_YMM_YMM_M256_YMM // VPBLENDVB ymm, ymm, m256, ymm
// , VPBLENDVB_YMM_YMM_YMM_YMM // VPBLENDVB ymm, ymm, ymm, ymm
// , VPBLENDW_XMM_XMM_M128_IMM8 // VPBLENDW xmm, xmm, m128, imm8
// , VPBLENDW_XMM_XMM_XMM_IMM8 // VPBLENDW xmm, xmm, xmm, imm8
// , VPBLENDW_YMM_YMM_M256_IMM8 // VPBLENDW ymm, ymm, m256, imm8
// , VPBLENDW_YMM_YMM_YMM_IMM8 // VPBLENDW ymm, ymm, ymm, imm8
// , VPBROADCASTB_XMM_M8 // VPBROADCASTB xmm, m8
// , VPBROADCASTB_XMM_XMM // VPBROADCASTB xmm, xmm
// , VPBROADCASTB_YMM_M8 // VPBROADCASTB ymm, m8
// , VPBROADCASTB_YMM_XMM // VPBROADCASTB ymm, xmm
// , VPBROADCASTD_XMM_M32 // VPBROADCASTD xmm, m32
// , VPBROADCASTD_XMM_XMM // VPBROADCASTD xmm, xmm
// , VPBROADCASTD_YMM_M32 // VPBROADCASTD ymm, m32
// , VPBROADCASTD_YMM_XMM // VPBROADCASTD ymm, xmm
// , VPBROADCASTQ_XMM_M64 // VPBROADCASTQ xmm, m64
// , VPBROADCASTQ_XMM_XMM // VPBROADCASTQ xmm, xmm
// , VPBROADCASTQ_YMM_M64 // VPBROADCASTQ ymm, m64
// , VPBROADCASTQ_YMM_XMM // VPBROADCASTQ ymm, xmm
// , VPBROADCASTW_XMM_M16 // VPBROADCASTW xmm, m16
// , VPBROADCASTW_XMM_XMM // VPBROADCASTW xmm, xmm
// , VPBROADCASTW_YMM_M16 // VPBROADCASTW ymm, m16
// , VPBROADCASTW_YMM_XMM // VPBROADCASTW ymm, xmm
// , VPCLMULQDQ_XMM_XMM_M128_IMM8 // VPCLMULQDQ xmm, xmm, m128, imm8
// , VPCLMULQDQ_XMM_XMM_XMM_IMM8 // VPCLMULQDQ xmm, xmm, xmm, imm8
// , VPCMPEQB_XMM_XMM_M128 // VPCMPEQB xmm, xmm, m128
// , VPCMPEQB_XMM_XMM_XMM // VPCMPEQB xmm, xmm, xmm
// , VPCMPEQB_YMM_YMM_M256 // VPCMPEQB ymm, ymm, m256
// , VPCMPEQB_YMM_YMM_YMM // VPCMPEQB ymm, ymm, ymm
// , VPCMPEQD_XMM_XMM_M128 // VPCMPEQD xmm, xmm, m128
// , VPCMPEQD_XMM_XMM_XMM // VPCMPEQD xmm, xmm, xmm
// , VPCMPEQD_YMM_YMM_M256 // VPCMPEQD ymm, ymm, m256
// , VPCMPEQD_YMM_YMM_YMM // VPCMPEQD ymm, ymm, ymm
// , VPCMPEQQ_XMM_XMM_M128 // VPCMPEQQ xmm, xmm, m128
// , VPCMPEQQ_XMM_XMM_XMM // VPCMPEQQ xmm, xmm, xmm
// , VPCMPEQQ_YMM_YMM_M256 // VPCMPEQQ ymm, ymm, m256
// , VPCMPEQQ_YMM_YMM_YMM // VPCMPEQQ ymm, ymm, ymm
// , VPCMPEQW_XMM_XMM_M128 // VPCMPEQW xmm, xmm, m128
// , VPCMPEQW_XMM_XMM_XMM // VPCMPEQW xmm, xmm, xmm
// , VPCMPEQW_YMM_YMM_M256 // VPCMPEQW ymm, ymm, m256
// , VPCMPEQW_YMM_YMM_YMM // VPCMPEQW ymm, ymm, ymm
// , VPCMPESTRI_XMM_M128_IMM8 // VPCMPESTRI xmm, m128, imm8
// , VPCMPESTRI_XMM_XMM_IMM8 // VPCMPESTRI xmm, xmm, imm8
// , VPCMPESTRM_XMM_M128_IMM8 // VPCMPESTRM xmm, m128, imm8
// , VPCMPESTRM_XMM_XMM_IMM8 // VPCMPESTRM xmm, xmm, imm8
// , VPCMPGTB_XMM_XMM_M128 // VPCMPGTB xmm, xmm, m128
// , VPCMPGTB_XMM_XMM_XMM // VPCMPGTB xmm, xmm, xmm
// , VPCMPGTB_YMM_YMM_M256 // VPCMPGTB ymm, ymm, m256
// , VPCMPGTB_YMM_YMM_YMM // VPCMPGTB ymm, ymm, ymm
// , VPCMPGTD_XMM_XMM_M128 // VPCMPGTD xmm, xmm, m128
// , VPCMPGTD_XMM_XMM_XMM // VPCMPGTD xmm, xmm, xmm
// , VPCMPGTD_YMM_YMM_M256 // VPCMPGTD ymm, ymm, m256
// , VPCMPGTD_YMM_YMM_YMM // VPCMPGTD ymm, ymm, ymm
// , VPCMPGTQ_XMM_XMM_M128 // VPCMPGTQ xmm, xmm, m128
// , VPCMPGTQ_XMM_XMM_XMM // VPCMPGTQ xmm, xmm, xmm
// , VPCMPGTQ_YMM_YMM_M256 // VPCMPGTQ ymm, ymm, m256
// , VPCMPGTQ_YMM_YMM_YMM // VPCMPGTQ ymm, ymm, ymm
// , VPCMPGTW_XMM_XMM_M128 // VPCMPGTW xmm, xmm, m128
// , VPCMPGTW_XMM_XMM_XMM // VPCMPGTW xmm, xmm, xmm
// , VPCMPGTW_YMM_YMM_M256 // VPCMPGTW ymm, ymm, m256
// , VPCMPGTW_YMM_YMM_YMM // VPCMPGTW ymm, ymm, ymm
// , VPCMPISTRI_XMM_M128_IMM8 // VPCMPISTRI xmm, m128, imm8
// , VPCMPISTRI_XMM_XMM_IMM8 // VPCMPISTRI xmm, xmm, imm8
// , VPCMPISTRM_XMM_M128_IMM8 // VPCMPISTRM xmm, m128, imm8
// , VPCMPISTRM_XMM_XMM_IMM8 // VPCMPISTRM xmm, xmm, imm8
// , VPERM2F128_YMM_YMM_M256_IMM8 // VPERM2F128 ymm, ymm, m256, imm8
// , VPERM2F128_YMM_YMM_YMM_IMM8 // VPERM2F128 ymm, ymm, ymm, imm8
// , VPERM2I128_YMM_YMM_M256_IMM8 // VPERM2I128 ymm, ymm, m256, imm8
// , VPERM2I128_YMM_YMM_YMM_IMM8 // VPERM2I128 ymm, ymm, ymm, imm8
// , VPERMD_YMM_YMM_M256 // VPERMD ymm, ymm, m256
// , VPERMD_YMM_YMM_YMM // VPERMD ymm, ymm, ymm
// , VPERMILPD_XMM_M128_IMM8 // VPERMILPD xmm, m128, imm8
// , VPERMILPD_XMM_XMM_IMM8 // VPERMILPD xmm, xmm, imm8
// , VPERMILPD_XMM_XMM_M128 // VPERMILPD xmm, xmm, m128
// , VPERMILPD_XMM_XMM_XMM // VPERMILPD xmm, xmm, xmm
// , VPERMILPD_YMM_M256_IMM8 // VPERMILPD ymm, m256, imm8
// , VPERMILPD_YMM_YMM_IMM8 // VPERMILPD ymm, ymm, imm8
// , VPERMILPD_YMM_YMM_M256 // VPERMILPD ymm, ymm, m256
// , VPERMILPD_YMM_YMM_YMM // VPERMILPD ymm, ymm, ymm
// , VPERMILPS_XMM_M128_IMM8 // VPERMILPS xmm, m128, imm8
// , VPERMILPS_XMM_XMM_IMM8 // VPERMILPS xmm, xmm, imm8
// , VPERMILPS_XMM_XMM_M128 // VPERMILPS xmm, xmm, m128
// , VPERMILPS_XMM_XMM_XMM // VPERMILPS xmm, xmm, xmm
// , VPERMILPS_YMM_M256_IMM8 // VPERMILPS ymm, m256, imm8
// , VPERMILPS_YMM_YMM_IMM8 // VPERMILPS ymm, ymm, imm8
// , VPERMILPS_YMM_YMM_M256 // VPERMILPS ymm, ymm, m256
// , VPERMILPS_YMM_YMM_YMM // VPERMILPS ymm, ymm, ymm
// , VPERMPD_YMM_M256_IMM8 // VPERMPD ymm, m256, imm8
// , VPERMPD_YMM_YMM_IMM8 // VPERMPD ymm, ymm, imm8
// , VPERMPS_YMM_YMM_M256 // VPERMPS ymm, ymm, m256
// , VPERMPS_YMM_YMM_YMM // VPERMPS ymm, ymm, ymm
// , VPERMQ_YMM_M256_IMM8 // VPERMQ ymm, m256, imm8
// , VPERMQ_YMM_YMM_IMM8 // VPERMQ ymm, ymm, imm8
// , VPEXTRB_M8_XMM_IMM8 // VPEXTRB m8, xmm, imm8
// , VPEXTRB_R32_XMM_IMM8 // VPEXTRB r32, xmm, imm8
// , VPEXTRB_R64_XMM_IMM8 // VPEXTRB r64, xmm, imm8
// , VPEXTRD_M32_XMM_IMM8 // VPEXTRD m32, xmm, imm8
// , VPEXTRD_R32_XMM_IMM8 // VPEXTRD r32, xmm, imm8
// , VPEXTRQ_M64_XMM_IMM8 // VPEXTRQ m64, xmm, imm8
// , VPEXTRQ_R64_XMM_IMM8 // VPEXTRQ r64, xmm, imm8
// , VPEXTRW_M16_XMM_IMM8 // VPEXTRW m16, xmm, imm8
// , VPEXTRW_R32_XMM_IMM8 // VPEXTRW r32, xmm, imm8
// , VPEXTRW_R64_XMM_IMM8 // VPEXTRW r64, xmm, imm8
// , VPGATHERDD_XMM_M32_XMM // VPGATHERDD xmm, m32, xmm
// , VPGATHERDD_YMM_M32_YMM // VPGATHERDD ymm, m32, ymm
// , VPGATHERDQ_XMM_M32_XMM // VPGATHERDQ xmm, m32, xmm
// , VPGATHERDQ_YMM_M32_YMM // VPGATHERDQ ymm, m32, ymm
// , VPGATHERQD_XMM_M64_XMM // VPGATHERQD xmm, m64, xmm
// , VPGATHERQQ_XMM_M64_XMM // VPGATHERQQ xmm, m64, xmm
// , VPGATHERQQ_YMM_M64_YMM // VPGATHERQQ ymm, m64, ymm
// , VPHADDD_XMM_XMM_M128 // VPHADDD xmm, xmm, m128
// , VPHADDD_XMM_XMM_XMM // VPHADDD xmm, xmm, xmm
// , VPHADDD_YMM_YMM_M256 // VPHADDD ymm, ymm, m256
// , VPHADDD_YMM_YMM_YMM // VPHADDD ymm, ymm, ymm
// , VPHADDSW_XMM_XMM_M128 // VPHADDSW xmm, xmm, m128
// , VPHADDSW_XMM_XMM_XMM // VPHADDSW xmm, xmm, xmm
// , VPHADDSW_YMM_YMM_M256 // VPHADDSW ymm, ymm, m256
// , VPHADDSW_YMM_YMM_YMM // VPHADDSW ymm, ymm, ymm
// , VPHADDW_XMM_XMM_M128 // VPHADDW xmm, xmm, m128
// , VPHADDW_XMM_XMM_XMM // VPHADDW xmm, xmm, xmm
// , VPHADDW_YMM_YMM_M256 // VPHADDW ymm, ymm, m256
// , VPHADDW_YMM_YMM_YMM // VPHADDW ymm, ymm, ymm
// , VPHMINPOSUW_XMM_M128 // VPHMINPOSUW xmm, m128
// , VPHMINPOSUW_XMM_XMM // VPHMINPOSUW xmm, xmm
// , VPHSUBD_XMM_XMM_M128 // VPHSUBD xmm, xmm, m128
// , VPHSUBD_XMM_XMM_XMM // VPHSUBD xmm, xmm, xmm
// , VPHSUBD_YMM_YMM_M256 // VPHSUBD ymm, ymm, m256
// , VPHSUBD_YMM_YMM_YMM // VPHSUBD ymm, ymm, ymm
// , VPHSUBSW_XMM_XMM_M128 // VPHSUBSW xmm, xmm, m128
// , VPHSUBSW_XMM_XMM_XMM // VPHSUBSW xmm, xmm, xmm
// , VPHSUBSW_YMM_YMM_M256 // VPHSUBSW ymm, ymm, m256
// , VPHSUBSW_YMM_YMM_YMM // VPHSUBSW ymm, ymm, ymm
// , VPHSUBW_XMM_XMM_M128 // VPHSUBW xmm, xmm, m128
// , VPHSUBW_XMM_XMM_XMM // VPHSUBW xmm, xmm, xmm
// , VPHSUBW_YMM_YMM_M256 // VPHSUBW ymm, ymm, m256
// , VPHSUBW_YMM_YMM_YMM // VPHSUBW ymm, ymm, ymm
// , VPINSRB_XMM_XMM_M8_IMM8 // VPINSRB xmm, xmm, m8, imm8
// , VPINSRB_XMM_XMM_R32_IMM8 // VPINSRB xmm, xmm, r32, imm8
// , VPINSRD_XMM_XMM_M32_IMM8 // VPINSRD xmm, xmm, m32, imm8
// , VPINSRD_XMM_XMM_R32_IMM8 // VPINSRD xmm, xmm, r32, imm8
// , VPINSRQ_XMM_XMM_M64_IMM8 // VPINSRQ xmm, xmm, m64, imm8
// , VPINSRQ_XMM_XMM_R64_IMM8 // VPINSRQ xmm, xmm, r64, imm8
// , VPINSRW_XMM_XMM_M16_IMM8 // VPINSRW xmm, xmm, m16, imm8
// , VPINSRW_XMM_XMM_R32_IMM8 // VPINSRW xmm, xmm, r32, imm8
// , VPMADDUBSW_XMM_XMM_M128 // VPMADDUBSW xmm, xmm, m128
// , VPMADDUBSW_XMM_XMM_XMM // VPMADDUBSW xmm, xmm, xmm
// , VPMADDUBSW_YMM_YMM_M256 // VPMADDUBSW ymm, ymm, m256
// , VPMADDUBSW_YMM_YMM_YMM // VPMADDUBSW ymm, ymm, ymm
// , VPMADDWD_XMM_XMM_M128 // VPMADDWD xmm, xmm, m128
// , VPMADDWD_XMM_XMM_XMM // VPMADDWD xmm, xmm, xmm
// , VPMADDWD_YMM_YMM_M256 // VPMADDWD ymm, ymm, m256
// , VPMADDWD_YMM_YMM_YMM // VPMADDWD ymm, ymm, ymm
// , VPMASKMOVD_M128_XMM_XMM // VPMASKMOVD m128, xmm, xmm
// , VPMASKMOVD_M256_YMM_YMM // VPMASKMOVD m256, ymm, ymm
// , VPMASKMOVD_XMM_XMM_M128 // VPMASKMOVD xmm, xmm, m128
// , VPMASKMOVD_YMM_YMM_M256 // VPMASKMOVD ymm, ymm, m256
// , VPMASKMOVQ_M128_XMM_XMM // VPMASKMOVQ m128, xmm, xmm
// , VPMASKMOVQ_M256_YMM_YMM // VPMASKMOVQ m256, ymm, ymm
// , VPMASKMOVQ_XMM_XMM_M128 // VPMASKMOVQ xmm, xmm, m128
// , VPMASKMOVQ_YMM_YMM_M256 // VPMASKMOVQ ymm, ymm, m256
// , VPMAXSB_XMM_XMM_M128 // VPMAXSB xmm, xmm, m128
// , VPMAXSB_XMM_XMM_XMM // VPMAXSB xmm, xmm, xmm
// , VPMAXSB_YMM_YMM_M256 // VPMAXSB ymm, ymm, m256
// , VPMAXSB_YMM_YMM_YMM // VPMAXSB ymm, ymm, ymm
// , VPMAXSD_XMM_XMM_M128 // VPMAXSD xmm, xmm, m128
// , VPMAXSD_XMM_XMM_XMM // VPMAXSD xmm, xmm, xmm
// , VPMAXSD_YMM_YMM_M256 // VPMAXSD ymm, ymm, m256
// , VPMAXSD_YMM_YMM_YMM // VPMAXSD ymm, ymm, ymm
// , VPMAXSW_XMM_XMM_M128 // VPMAXSW xmm, xmm, m128
// , VPMAXSW_XMM_XMM_XMM // VPMAXSW xmm, xmm, xmm
// , VPMAXSW_YMM_YMM_M256 // VPMAXSW ymm, ymm, m256
// , VPMAXSW_YMM_YMM_YMM // VPMAXSW ymm, ymm, ymm
// , VPMAXUB_XMM_XMM_M128 // VPMAXUB xmm, xmm, m128
// , VPMAXUB_XMM_XMM_XMM // VPMAXUB xmm, xmm, xmm
// , VPMAXUB_YMM_YMM_M256 // VPMAXUB ymm, ymm, m256
// , VPMAXUB_YMM_YMM_YMM // VPMAXUB ymm, ymm, ymm
// , VPMAXUD_XMM_XMM_M128 // VPMAXUD xmm, xmm, m128
// , VPMAXUD_XMM_XMM_XMM // VPMAXUD xmm, xmm, xmm
// , VPMAXUD_YMM_YMM_M256 // VPMAXUD ymm, ymm, m256
// , VPMAXUD_YMM_YMM_YMM // VPMAXUD ymm, ymm, ymm
// , VPMAXUW_XMM_XMM_M128 // VPMAXUW xmm, xmm, m128
// , VPMAXUW_XMM_XMM_XMM // VPMAXUW xmm, xmm, xmm
// , VPMAXUW_YMM_YMM_M256 // VPMAXUW ymm, ymm, m256
// , VPMAXUW_YMM_YMM_YMM // VPMAXUW ymm, ymm, ymm
// , VPMINSB_XMM_XMM_M128 // VPMINSB xmm, xmm, m128
// , VPMINSB_XMM_XMM_XMM // VPMINSB xmm, xmm, xmm
// , VPMINSB_YMM_YMM_M256 // VPMINSB ymm, ymm, m256
// , VPMINSB_YMM_YMM_YMM // VPMINSB ymm, ymm, ymm
// , VPMINSD_XMM_XMM_M128 // VPMINSD xmm, xmm, m128
// , VPMINSD_XMM_XMM_XMM // VPMINSD xmm, xmm, xmm
// , VPMINSD_YMM_YMM_M256 // VPMINSD ymm, ymm, m256
// , VPMINSD_YMM_YMM_YMM // VPMINSD ymm, ymm, ymm
// , VPMINSW_XMM_XMM_M128 // VPMINSW xmm, xmm, m128
// , VPMINSW_XMM_XMM_XMM // VPMINSW xmm, xmm, xmm
// , VPMINUB_XMM_XMM_M128 // VPMINUB xmm, xmm, m128
// , VPMINUB_XMM_XMM_XMM // VPMINUB xmm, xmm, xmm
// , VPMINUB_YMM_YMM_M256 // VPMINUB ymm, ymm, m256
// , VPMINUB_YMM_YMM_YMM // VPMINUB ymm, ymm, ymm
// , VPMINUD_XMM_XMM_M128 // VPMINUD xmm, xmm, m128
// , VPMINUD_XMM_XMM_XMM // VPMINUD xmm, xmm, xmm
// , VPMINUD_YMM_YMM_M256 // VPMINUD ymm, ymm, m256
// , VPMINUD_YMM_YMM_YMM // VPMINUD ymm, ymm, ymm
// , VPMINUW_XMM_XMM_M128 // VPMINUW xmm, xmm, m128
// , VPMINUW_XMM_XMM_XMM // VPMINUW xmm, xmm, xmm
// , VPMINUW_YMM_YMM_M256 // VPMINUW ymm, ymm, m256
// , VPMINUW_YMM_YMM_YMM // VPMINUW ymm, ymm, ymm
// , VPMOVMSKB_R32_XMM // VPMOVMSKB r32, xmm
// , VPMOVMSKB_R32_YMM // VPMOVMSKB r32, ymm
// , VPMOVMSKB_R64_XMM // VPMOVMSKB r64, xmm
// , VPMOVMSKB_R64_YMM // VPMOVMSKB r64, ymm
// , VPMOVSXBD_XMM_M32 // VPMOVSXBD xmm, m32
// , VPMOVSXBD_XMM_XMM // VPMOVSXBD xmm, xmm
// , VPMOVSXBD_YMM_M64 // VPMOVSXBD ymm, m64
// , VPMOVSXBD_YMM_XMM // VPMOVSXBD ymm, xmm
// , VPMOVSXBQ_XMM_M16 // VPMOVSXBQ xmm, m16
// , VPMOVSXBQ_XMM_XMM // VPMOVSXBQ xmm, xmm
// , VPMOVSXBQ_YMM_M32 // VPMOVSXBQ ymm, m32
// , VPMOVSXBQ_YMM_XMM // VPMOVSXBQ ymm, xmm
// , VPMOVSXBW_XMM_M64 // VPMOVSXBW xmm, m64
// , VPMOVSXBW_XMM_XMM // VPMOVSXBW xmm, xmm
// , VPMOVSXBW_YMM_M128 // VPMOVSXBW ymm, m128
// , VPMOVSXBW_YMM_XMM // VPMOVSXBW ymm, xmm
// , VPMOVSXDQ_XMM_M64 // VPMOVSXDQ xmm, m64
// , VPMOVSXDQ_XMM_XMM // VPMOVSXDQ xmm, xmm
// , VPMOVSXDQ_YMM_M128 // VPMOVSXDQ ymm, m128
// , VPMOVSXDQ_YMM_XMM // VPMOVSXDQ ymm, xmm
// , VPMOVSXWD_XMM_M64 // VPMOVSXWD xmm, m64
// , VPMOVSXWD_XMM_XMM // VPMOVSXWD xmm, xmm
// , VPMOVSXWD_YMM_M128 // VPMOVSXWD ymm, m128
// , VPMOVSXWD_YMM_XMM // VPMOVSXWD ymm, xmm
// , VPMOVSXWQ_XMM_M32 // VPMOVSXWQ xmm, m32
// , VPMOVSXWQ_XMM_XMM // VPMOVSXWQ xmm, xmm
// , VPMOVSXWQ_YMM_M64 // VPMOVSXWQ ymm, m64
// , VPMOVSXWQ_YMM_XMM // VPMOVSXWQ ymm, xmm
// , VPMOVZXBD_XMM_M32 // VPMOVZXBD xmm, m32
// , VPMOVZXBD_XMM_XMM // VPMOVZXBD xmm, xmm
// , VPMOVZXBD_YMM_M64 // VPMOVZXBD ymm, m64
// , VPMOVZXBD_YMM_XMM // VPMOVZXBD ymm, xmm
// , VPMOVZXBQ_XMM_M16 // VPMOVZXBQ xmm, m16
// , VPMOVZXBQ_XMM_XMM // VPMOVZXBQ xmm, xmm
// , VPMOVZXBQ_YMM_M32 // VPMOVZXBQ ymm, m32
// , VPMOVZXBQ_YMM_XMM // VPMOVZXBQ ymm, xmm
// , VPMOVZXBW_XMM_M64 // VPMOVZXBW xmm, m64
// , VPMOVZXBW_XMM_XMM // VPMOVZXBW xmm, xmm
// , VPMOVZXBW_YMM_M128 // VPMOVZXBW ymm, m128
// , VPMOVZXBW_YMM_XMM // VPMOVZXBW ymm, xmm
// , VPMOVZXDQ_XMM_M64 // VPMOVZXDQ xmm, m64
// , VPMOVZXDQ_XMM_XMM // VPMOVZXDQ xmm, xmm
// , VPMOVZXDQ_YMM_M128 // VPMOVZXDQ ymm, m128
// , VPMOVZXDQ_YMM_XMM // VPMOVZXDQ ymm, xmm
// , VPMOVZXWD_XMM_M64 // VPMOVZXWD xmm, m64
// , VPMOVZXWD_XMM_XMM // VPMOVZXWD xmm, xmm
// , VPMOVZXWD_YMM_M128 // VPMOVZXWD ymm, m128
// , VPMOVZXWD_YMM_XMM // VPMOVZXWD ymm, xmm
// , VPMOVZXWQ_XMM_M32 // VPMOVZXWQ xmm, m32
// , VPMOVZXWQ_XMM_XMM // VPMOVZXWQ xmm, xmm
// , VPMOVZXWQ_YMM_M64 // VPMOVZXWQ ymm, m64
// , VPMOVZXWQ_YMM_XMM // VPMOVZXWQ ymm, xmm
// , VPMULDQ_XMM_XMM_M128 // VPMULDQ xmm, xmm, m128
// , VPMULDQ_XMM_XMM_XMM // VPMULDQ xmm, xmm, xmm
// , VPMULDQ_YMM_YMM_M256 // VPMULDQ ymm, ymm, m256
// , VPMULDQ_YMM_YMM_YMM // VPMULDQ ymm, ymm, ymm
// , VPMULHRSW_XMM_XMM_M128 // VPMULHRSW xmm, xmm, m128
// , VPMULHRSW_XMM_XMM_XMM // VPMULHRSW xmm, xmm, xmm
// , VPMULHRSW_YMM_YMM_M256 // VPMULHRSW ymm, ymm, m256
// , VPMULHRSW_YMM_YMM_YMM // VPMULHRSW ymm, ymm, ymm
// , VPMULHUW_XMM_XMM_M128 // VPMULHUW xmm, xmm, m128
// , VPMULHUW_XMM_XMM_XMM // VPMULHUW xmm, xmm, xmm
// , VPMULHUW_YMM_YMM_M256 // VPMULHUW ymm, ymm, m256
// , VPMULHUW_YMM_YMM_YMM // VPMULHUW ymm, ymm, ymm
// , VPMULHW_XMM_XMM_M128 // VPMULHW xmm, xmm, m128
// , VPMULHW_XMM_XMM_XMM // VPMULHW xmm, xmm, xmm
// , VPMULHW_YMM_YMM_M256 // VPMULHW ymm, ymm, m256
// , VPMULHW_YMM_YMM_YMM // VPMULHW ymm, ymm, ymm
// , VPMULLD_XMM_XMM_M128 // VPMULLD xmm, xmm, m128
// , VPMULLD_XMM_XMM_XMM // VPMULLD xmm, xmm, xmm
// , VPMULLD_YMM_YMM_M256 // VPMULLD ymm, ymm, m256
// , VPMULLD_YMM_YMM_YMM // VPMULLD ymm, ymm, ymm
// , VPMULLW_XMM_XMM_M128 // VPMULLW xmm, xmm, m128
// , VPMULLW_XMM_XMM_XMM // VPMULLW xmm, xmm, xmm
// , VPMULLW_YMM_YMM_M256 // VPMULLW ymm, ymm, m256
// , VPMULLW_YMM_YMM_YMM // VPMULLW ymm, ymm, ymm
// , VPMULUDQ_XMM_XMM_M128 // VPMULUDQ xmm, xmm, m128
// , VPMULUDQ_XMM_XMM_XMM // VPMULUDQ xmm, xmm, xmm
// , VPMULUDQ_YMM_YMM_M256 // VPMULUDQ ymm, ymm, m256
// , VPMULUDQ_YMM_YMM_YMM // VPMULUDQ ymm, ymm, ymm
// , VPOR_XMM_XMM_M128 // VPOR xmm, xmm, m128
// , VPOR_XMM_XMM_XMM // VPOR xmm, xmm, xmm
// , VPOR_YMM_YMM_M256 // VPOR ymm, ymm, m256
// , VPOR_YMM_YMM_YMM // VPOR ymm, ymm, ymm
// , VPSADBW_XMM_XMM_M128 // VPSADBW xmm, xmm, m128
// , VPSADBW_XMM_XMM_XMM // VPSADBW xmm, xmm, xmm
// , VPSADBW_YMM_YMM_M256 // VPSADBW ymm, ymm, m256
// , VPSADBW_YMM_YMM_YMM // VPSADBW ymm, ymm, ymm
// , VPSHUFB_XMM_XMM_M128 // VPSHUFB xmm, xmm, m128
// , VPSHUFB_XMM_XMM_XMM // VPSHUFB xmm, xmm, xmm
// , VPSHUFB_YMM_YMM_M256 // VPSHUFB ymm, ymm, m256
// , VPSHUFB_YMM_YMM_YMM // VPSHUFB ymm, ymm, ymm
// , VPSHUFD_XMM_M128_IMM8 // VPSHUFD xmm, m128, imm8
// , VPSHUFD_XMM_XMM_IMM8 // VPSHUFD xmm, xmm, imm8
// , VPSHUFD_YMM_M256_IMM8 // VPSHUFD ymm, m256, imm8
// , VPSHUFD_YMM_YMM_IMM8 // VPSHUFD ymm, ymm, imm8
// , VPSHUFHW_XMM_M128_IMM8 // VPSHUFHW xmm, m128, imm8
// , VPSHUFHW_XMM_XMM_IMM8 // VPSHUFHW xmm, xmm, imm8
// , VPSHUFHW_YMM_M256_IMM8 // VPSHUFHW ymm, m256, imm8
// , VPSHUFHW_YMM_YMM_IMM8 // VPSHUFHW ymm, ymm, imm8
// , VPSHUFLW_XMM_M128_IMM8 // VPSHUFLW xmm, m128, imm8
// , VPSHUFLW_XMM_XMM_IMM8 // VPSHUFLW xmm, xmm, imm8
// , VPSHUFLW_YMM_M256_IMM8 // VPSHUFLW ymm, m256, imm8
// , VPSHUFLW_YMM_YMM_IMM8 // VPSHUFLW ymm, ymm, imm8
// , VPSIGNB_XMM_XMM_M128 // VPSIGNB xmm, xmm, m128
// , VPSIGNB_XMM_XMM_XMM // VPSIGNB xmm, xmm, xmm
// , VPSIGND_XMM_XMM_M128 // VPSIGND xmm, xmm, m128
// , VPSIGND_XMM_XMM_XMM // VPSIGND xmm, xmm, xmm
// , VPSIGNW_XMM_XMM_M128 // VPSIGNW xmm, xmm, m128
// , VPSIGNW_XMM_XMM_XMM // VPSIGNW xmm, xmm, xmm
// , VPSLLD_XMM_XMM_IMM8 // VPSLLD xmm, xmm, imm8
// , VPSLLD_XMM_XMM_M128 // VPSLLD xmm, xmm, m128
// , VPSLLD_XMM_XMM_XMM // VPSLLD xmm, xmm, xmm
// , VPSLLD_YMM_YMM_IMM8 // VPSLLD ymm, ymm, imm8
// , VPSLLD_YMM_YMM_M128 // VPSLLD ymm, ymm, m128
// , VPSLLD_YMM_YMM_XMM // VPSLLD ymm, ymm, xmm
// , VPSLLDQ_XMM_XMM_IMM8 // VPSLLDQ xmm, xmm, imm8
// , VPSLLDQ_YMM_YMM_IMM8 // VPSLLDQ ymm, ymm, imm8
// , VPSLLQ_XMM_XMM_IMM8 // VPSLLQ xmm, xmm, imm8
// , VPSLLQ_XMM_XMM_M128 // VPSLLQ xmm, xmm, m128
// , VPSLLQ_XMM_XMM_XMM // VPSLLQ xmm, xmm, xmm
// , VPSLLQ_YMM_YMM_IMM8 // VPSLLQ ymm, ymm, imm8
// , VPSLLQ_YMM_YMM_M128 // VPSLLQ ymm, ymm, m128
// , VPSLLQ_YMM_YMM_XMM // VPSLLQ ymm, ymm, xmm
// , VPSLLVD_XMM_XMM_M128 // VPSLLVD xmm, xmm, m128
// , VPSLLVD_XMM_XMM_XMM // VPSLLVD xmm, xmm, xmm
// , VPSLLVD_YMM_YMM_M256 // VPSLLVD ymm, ymm, m256
// , VPSLLVD_YMM_YMM_YMM // VPSLLVD ymm, ymm, ymm
// , VPSLLVQ_XMM_XMM_M128 // VPSLLVQ xmm, xmm, m128
// , VPSLLVQ_XMM_XMM_XMM // VPSLLVQ xmm, xmm, xmm
// , VPSLLVQ_YMM_YMM_M256 // VPSLLVQ ymm, ymm, m256
// , VPSLLVQ_YMM_YMM_YMM // VPSLLVQ ymm, ymm, ymm
// , VPSLLW_XMM_XMM_IMM8 // VPSLLW xmm, xmm, imm8
// , VPSLLW_XMM_XMM_M128 // VPSLLW xmm, xmm, m128
// , VPSLLW_XMM_XMM_XMM // VPSLLW xmm, xmm, xmm
// , VPSLLW_YMM_YMM_IMM8 // VPSLLW ymm, ymm, imm8
// , VPSLLW_YMM_YMM_M128 // VPSLLW ymm, ymm, m128
// , VPSLLW_YMM_YMM_XMM // VPSLLW ymm, ymm, xmm
// , VPSRAD_XMM_XMM_IMM8 // VPSRAD xmm, xmm, imm8
// , VPSRAD_XMM_XMM_M128 // VPSRAD xmm, xmm, m128
// , VPSRAD_XMM_XMM_XMM // VPSRAD xmm, xmm, xmm
// , VPSRAD_YMM_YMM_IMM8 // VPSRAD ymm, ymm, imm8
// , VPSRAD_YMM_YMM_M128 // VPSRAD ymm, ymm, m128
// , VPSRAD_YMM_YMM_XMM // VPSRAD ymm, ymm, xmm
// , VPSRAVD_XMM_XMM_M128 // VPSRAVD xmm, xmm, m128
// , VPSRAVD_XMM_XMM_XMM // VPSRAVD xmm, xmm, xmm
// , VPSRAVD_YMM_YMM_M256 // VPSRAVD ymm, ymm, m256
// , VPSRAVD_YMM_YMM_YMM // VPSRAVD ymm, ymm, ymm
// , VPSRAW_XMM_XMM_IMM8 // VPSRAW xmm, xmm, imm8
// , VPSRAW_XMM_XMM_M128 // VPSRAW xmm, xmm, m128
// , VPSRAW_XMM_XMM_XMM // VPSRAW xmm, xmm, xmm
// , VPSRAW_YMM_YMM_IMM8 // VPSRAW ymm, ymm, imm8
// , VPSRAW_YMM_YMM_M128 // VPSRAW ymm, ymm, m128
// , VPSRAW_YMM_YMM_XMM // VPSRAW ymm, ymm, xmm
// , VPSRLD_XMM_XMM_IMM8 // VPSRLD xmm, xmm, imm8
// , VPSRLD_XMM_XMM_M128 // VPSRLD xmm, xmm, m128
// , VPSRLD_XMM_XMM_XMM // VPSRLD xmm, xmm, xmm
// , VPSRLD_YMM_YMM_IMM8 // VPSRLD ymm, ymm, imm8
// , VPSRLD_YMM_YMM_M128 // VPSRLD ymm, ymm, m128
// , VPSRLD_YMM_YMM_XMM // VPSRLD ymm, ymm, xmm
// , VPSRLDQ_XMM_XMM_IMM8 // VPSRLDQ xmm, xmm, imm8
// , VPSRLDQ_YMM_YMM_IMM8 // VPSRLDQ ymm, ymm, imm8
// , VPSRLQ_XMM_XMM_IMM8 // VPSRLQ xmm, xmm, imm8
// , VPSRLQ_XMM_XMM_M128 // VPSRLQ xmm, xmm, m128
// , VPSRLQ_XMM_XMM_XMM // VPSRLQ xmm, xmm, xmm
// , VPSRLQ_YMM_YMM_IMM8 // VPSRLQ ymm, ymm, imm8
// , VPSRLQ_YMM_YMM_M128 // VPSRLQ ymm, ymm, m128
// , VPSRLQ_YMM_YMM_XMM // VPSRLQ ymm, ymm, xmm
// , VPSRLVD_XMM_XMM_M128 // VPSRLVD xmm, xmm, m128
// , VPSRLVD_XMM_XMM_XMM // VPSRLVD xmm, xmm, xmm
// , VPSRLVD_YMM_YMM_M256 // VPSRLVD ymm, ymm, m256
// , VPSRLVD_YMM_YMM_YMM // VPSRLVD ymm, ymm, ymm
// , VPSRLVQ_XMM_XMM_M128 // VPSRLVQ xmm, xmm, m128
// , VPSRLVQ_XMM_XMM_XMM // VPSRLVQ xmm, xmm, xmm
// , VPSRLVQ_YMM_YMM_M256 // VPSRLVQ ymm, ymm, m256
// , VPSRLVQ_YMM_YMM_YMM // VPSRLVQ ymm, ymm, ymm
// , VPSRLW_XMM_XMM_IMM8 // VPSRLW xmm, xmm, imm8
// , VPSRLW_XMM_XMM_M128 // VPSRLW xmm, xmm, m128
// , VPSRLW_XMM_XMM_XMM // VPSRLW xmm, xmm, xmm
// , VPSRLW_YMM_YMM_IMM8 // VPSRLW ymm, ymm, imm8
// , VPSRLW_YMM_YMM_M128 // VPSRLW ymm, ymm, m128
// , VPSRLW_YMM_YMM_XMM // VPSRLW ymm, ymm, xmm
// , VPSUBB_XMM_XMM_M128 // VPSUBB xmm, xmm, m128
// , VPSUBB_XMM_XMM_XMM // VPSUBB xmm, xmm, xmm
// , VPSUBB_YMM_YMM_M256 // VPSUBB ymm, ymm, m256
// , VPSUBB_YMM_YMM_YMM // VPSUBB ymm, ymm, ymm
// , VPSUBD_XMM_XMM_M128 // VPSUBD xmm, xmm, m128
// , VPSUBD_XMM_XMM_XMM // VPSUBD xmm, xmm, xmm
// , VPSUBD_YMM_YMM_M256 // VPSUBD ymm, ymm, m256
// , VPSUBD_YMM_YMM_YMM // VPSUBD ymm, ymm, ymm
// , VPSUBQ_XMM_XMM_M128 // VPSUBQ xmm, xmm, m128
// , VPSUBQ_XMM_XMM_XMM // VPSUBQ xmm, xmm, xmm
// , VPSUBQ_YMM_YMM_M256 // VPSUBQ ymm, ymm, m256
// , VPSUBQ_YMM_YMM_YMM // VPSUBQ ymm, ymm, ymm
// , VPSUBSB_XMM_XMM_M128 // VPSUBSB xmm, xmm, m128
// , VPSUBSB_XMM_XMM_XMM // VPSUBSB xmm, xmm, xmm
// , VPSUBSB_YMM_YMM_M256 // VPSUBSB ymm, ymm, m256
// , VPSUBSB_YMM_YMM_YMM // VPSUBSB ymm, ymm, ymm
// , VPSUBSW_XMM_XMM_M128 // VPSUBSW xmm, xmm, m128
// , VPSUBSW_XMM_XMM_XMM // VPSUBSW xmm, xmm, xmm
// , VPSUBSW_YMM_YMM_M256 // VPSUBSW ymm, ymm, m256
// , VPSUBSW_YMM_YMM_YMM // VPSUBSW ymm, ymm, ymm
// , VPSUBUSB_XMM_XMM_M128 // VPSUBUSB xmm, xmm, m128
// , VPSUBUSB_XMM_XMM_XMM // VPSUBUSB xmm, xmm, xmm
// , VPSUBUSB_YMM_YMM_M256 // VPSUBUSB ymm, ymm, m256
// , VPSUBUSB_YMM_YMM_YMM // VPSUBUSB ymm, ymm, ymm
// , VPSUBUSW_XMM_XMM_M128 // VPSUBUSW xmm, xmm, m128
// , VPSUBUSW_XMM_XMM_XMM // VPSUBUSW xmm, xmm, xmm
// , VPSUBUSW_YMM_YMM_M256 // VPSUBUSW ymm, ymm, m256
// , VPSUBUSW_YMM_YMM_YMM // VPSUBUSW ymm, ymm, ymm
// , VPSUBW_XMM_XMM_M128 // VPSUBW xmm, xmm, m128
// , VPSUBW_XMM_XMM_XMM // VPSUBW xmm, xmm, xmm
// , VPSUBW_YMM_YMM_M256 // VPSUBW ymm, ymm, m256
// , VPSUBW_YMM_YMM_YMM // VPSUBW ymm, ymm, ymm
// , VPTEST_XMM_M128 // VPTEST xmm, m128
// , VPTEST_XMM_XMM // VPTEST xmm, xmm
// , VPTEST_YMM_M256 // VPTEST ymm, m256
// , VPTEST_YMM_YMM // VPTEST ymm, ymm
// , VPUNPCKHBW_XMM_XMM_M128 // VPUNPCKHBW xmm, xmm, m128
// , VPUNPCKHBW_XMM_XMM_XMM // VPUNPCKHBW xmm, xmm, xmm
// , VPUNPCKHBW_YMM_YMM_M256 // VPUNPCKHBW ymm, ymm, m256
// , VPUNPCKHBW_YMM_YMM_YMM // VPUNPCKHBW ymm, ymm, ymm
// , VPUNPCKHDQ_XMM_XMM_M128 // VPUNPCKHDQ xmm, xmm, m128
// , VPUNPCKHDQ_XMM_XMM_XMM // VPUNPCKHDQ xmm, xmm, xmm
// , VPUNPCKHDQ_YMM_YMM_M256 // VPUNPCKHDQ ymm, ymm, m256
// , VPUNPCKHDQ_YMM_YMM_YMM // VPUNPCKHDQ ymm, ymm, ymm
// , VPUNPCKHQDQ_XMM_XMM_M128 // VPUNPCKHQDQ xmm, xmm, m128
// , VPUNPCKHQDQ_XMM_XMM_XMM // VPUNPCKHQDQ xmm, xmm, xmm
// , VPUNPCKHQDQ_YMM_YMM_M256 // VPUNPCKHQDQ ymm, ymm, m256
// , VPUNPCKHQDQ_YMM_YMM_YMM // VPUNPCKHQDQ ymm, ymm, ymm
// , VPUNPCKHWD_XMM_XMM_M128 // VPUNPCKHWD xmm, xmm, m128
// , VPUNPCKHWD_XMM_XMM_XMM // VPUNPCKHWD xmm, xmm, xmm
// , VPUNPCKHWD_YMM_YMM_M256 // VPUNPCKHWD ymm, ymm, m256
// , VPUNPCKHWD_YMM_YMM_YMM // VPUNPCKHWD ymm, ymm, ymm
// , VPUNPCKLBW_XMM_XMM_M128 // VPUNPCKLBW xmm, xmm, m128
// , VPUNPCKLBW_XMM_XMM_XMM // VPUNPCKLBW xmm, xmm, xmm
// , VPUNPCKLBW_YMM_YMM_M256 // VPUNPCKLBW ymm, ymm, m256
// , VPUNPCKLBW_YMM_YMM_YMM // VPUNPCKLBW ymm, ymm, ymm
// , VPUNPCKLDQ_XMM_XMM_M128 // VPUNPCKLDQ xmm, xmm, m128
// , VPUNPCKLDQ_XMM_XMM_XMM // VPUNPCKLDQ xmm, xmm, xmm
// , VPUNPCKLDQ_YMM_YMM_M256 // VPUNPCKLDQ ymm, ymm, m256
// , VPUNPCKLDQ_YMM_YMM_YMM // VPUNPCKLDQ ymm, ymm, ymm
// , VPUNPCKLQDQ_XMM_XMM_M128 // VPUNPCKLQDQ xmm, xmm, m128
// , VPUNPCKLQDQ_XMM_XMM_XMM // VPUNPCKLQDQ xmm, xmm, xmm
// , VPUNPCKLQDQ_YMM_YMM_M256 // VPUNPCKLQDQ ymm, ymm, m256
// , VPUNPCKLQDQ_YMM_YMM_YMM // VPUNPCKLQDQ ymm, ymm, ymm
// , VPUNPCKLWD_XMM_XMM_M128 // VPUNPCKLWD xmm, xmm, m128
// , VPUNPCKLWD_XMM_XMM_XMM // VPUNPCKLWD xmm, xmm, xmm
// , VPUNPCKLWD_YMM_YMM_M256 // VPUNPCKLWD ymm, ymm, m256
// , VPUNPCKLWD_YMM_YMM_YMM // VPUNPCKLWD ymm, ymm, ymm
// , VPXOR_XMM_XMM_M128 // VPXOR xmm, xmm, m128
// , VPXOR_XMM_XMM_XMM // VPXOR xmm, xmm, xmm
// , VPXOR_YMM_YMM_M256 // VPXOR ymm, ymm, m256
// , VPXOR_YMM_YMM_YMM // VPXOR ymm, ymm, ymm
// , VRCPPS_XMM_M128 // VRCPPS xmm, m128
// , VRCPPS_XMM_XMM // VRCPPS xmm, xmm
// , VRCPPS_YMM_M256 // VRCPPS ymm, m256
// , VRCPPS_YMM_YMM // VRCPPS ymm, ymm
// , VRCPSS_XMM_XMM_M32 // VRCPSS xmm, xmm, m32
// , VRCPSS_XMM_XMM_XMM // VRCPSS xmm, xmm, xmm
// , VROUNDPD_XMM_M128_IMM8 // VROUNDPD xmm, m128, imm8
// , VROUNDPD_XMM_XMM_IMM8 // VROUNDPD xmm, xmm, imm8
// , VROUNDPD_YMM_M256_IMM8 // VROUNDPD ymm, m256, imm8
// , VROUNDPD_YMM_YMM_IMM8 // VROUNDPD ymm, ymm, imm8
// , VROUNDPS_XMM_M128_IMM8 // VROUNDPS xmm, m128, imm8
// , VROUNDPS_XMM_XMM_IMM8 // VROUNDPS xmm, xmm, imm8
// , VROUNDPS_YMM_M256_IMM8 // VROUNDPS ymm, m256, imm8
// , VROUNDPS_YMM_YMM_IMM8 // VROUNDPS ymm, ymm, imm8
// , VROUNDSD_XMM_XMM_M64_IMM8 // VROUNDSD xmm, xmm, m64, imm8
// , VROUNDSD_XMM_XMM_XMM_IMM8 // VROUNDSD xmm, xmm, xmm, imm8
// , VROUNDSS_XMM_XMM_M32_IMM8 // VROUNDSS xmm, xmm, m32, imm8
// , VROUNDSS_XMM_XMM_XMM_IMM8 // VROUNDSS xmm, xmm, xmm, imm8
// , VRSQRTPS_XMM_M128 // VRSQRTPS xmm, m128
// , VRSQRTPS_XMM_XMM // VRSQRTPS xmm, xmm
// , VRSQRTPS_YMM_M256 // VRSQRTPS ymm, m256
// , VRSQRTPS_YMM_YMM // VRSQRTPS ymm, ymm
// , VRSQRTSS_XMM_XMM_M32 // VRSQRTSS xmm, xmm, m32
// , VRSQRTSS_XMM_XMM_XMM // VRSQRTSS xmm, xmm, xmm
// , VSHUFPD_XMM_XMM_M128_IMM8 // VSHUFPD xmm, xmm, m128, imm8
// , VSHUFPD_XMM_XMM_XMM_IMM8 // VSHUFPD xmm, xmm, xmm, imm8
// , VSHUFPD_YMM_YMM_M256_IMM8 // VSHUFPD ymm, ymm, m256, imm8
// , VSHUFPD_YMM_YMM_YMM_IMM8 // VSHUFPD ymm, ymm, ymm, imm8
// , VSHUFPS_XMM_XMM_M128_IMM8 // VSHUFPS xmm, xmm, m128, imm8
// , VSHUFPS_XMM_XMM_XMM_IMM8 // VSHUFPS xmm, xmm, xmm, imm8
// , VSHUFPS_YMM_YMM_M256_IMM8 // VSHUFPS ymm, ymm, m256, imm8
// , VSHUFPS_YMM_YMM_YMM_IMM8 // VSHUFPS ymm, ymm, ymm, imm8
// , VSQRTPD_XMM_M128 // VSQRTPD xmm, m128
// , VSQRTPD_XMM_XMM // VSQRTPD xmm, xmm
// , VSQRTPD_YMM_M256 // VSQRTPD ymm, m256
// , VSQRTPD_YMM_YMM // VSQRTPD ymm, ymm
// , VSQRTPS_XMM_M128 // VSQRTPS xmm, m128
// , VSQRTPS_XMM_XMM // VSQRTPS xmm, xmm
// , VSQRTPS_YMM_M256 // VSQRTPS ymm, m256
// , VSQRTPS_YMM_YMM // VSQRTPS ymm, ymm
// , VSQRTSD_XMM_XMM_M64 // VSQRTSD xmm, xmm, m64
// , VSQRTSD_XMM_XMM_XMM // VSQRTSD xmm, xmm, xmm
// , VSQRTSS_XMM_XMM_M32 // VSQRTSS xmm, xmm, m32
// , VSQRTSS_XMM_XMM_XMM // VSQRTSS xmm, xmm, xmm
// , VSTMXCSR_M32 // VSTMXCSR m32
// , VSUBPD_XMM_XMM_M128 // VSUBPD xmm, xmm, m128
// , VSUBPD_XMM_XMM_XMM // VSUBPD xmm, xmm, xmm
// , VSUBPD_YMM_YMM_M256 // VSUBPD ymm, ymm, m256
// , VSUBPD_YMM_YMM_YMM // VSUBPD ymm, ymm, ymm
// , VSUBPS_XMM_XMM_M128 // VSUBPS xmm, xmm, m128
// , VSUBPS_XMM_XMM_XMM // VSUBPS xmm, xmm, xmm
// , VSUBPS_YMM_YMM_M256 // VSUBPS ymm, ymm, m256
// , VSUBPS_YMM_YMM_YMM // VSUBPS ymm, ymm, ymm
// , VSUBSD_XMM_XMM_M64 // VSUBSD xmm, xmm, m64
// , VSUBSD_XMM_XMM_XMM // VSUBSD xmm, xmm, xmm
// , VSUBSS_XMM_XMM_M32 // VSUBSS xmm, xmm, m32
// , VSUBSS_XMM_XMM_XMM // VSUBSS xmm, xmm, xmm
// , VTESTPD_XMM_M128 // VTESTPD xmm, m128
// , VTESTPD_XMM_XMM // VTESTPD xmm, xmm
// , VTESTPD_YMM_M256 // VTESTPD ymm, m256
// , VTESTPD_YMM_YMM // VTESTPD ymm, ymm
// , VTESTPS_XMM_M128 // VTESTPS xmm, m128
// , VTESTPS_XMM_XMM // VTESTPS xmm, xmm
// , VTESTPS_YMM_M256 // VTESTPS ymm, m256
// , VTESTPS_YMM_YMM // VTESTPS ymm, ymm
// , VUCOMISD_XMM_M64 // VUCOMISD xmm, m64
// , VUCOMISD_XMM_XMM // VUCOMISD xmm, xmm
// , VUCOMISS_XMM_M32 // VUCOMISS xmm, m32
// , VUCOMISS_XMM_XMM // VUCOMISS xmm, xmm
// , VUNPCKHPD_XMM_XMM_M128 // VUNPCKHPD xmm, xmm, m128
// , VUNPCKHPD_XMM_XMM_XMM // VUNPCKHPD xmm, xmm, xmm
// , VUNPCKHPD_YMM_YMM_M256 // VUNPCKHPD ymm, ymm, m256
// , VUNPCKHPD_YMM_YMM_YMM // VUNPCKHPD ymm, ymm, ymm
// , VUNPCKHPS_XMM_XMM_M128 // VUNPCKHPS xmm, xmm, m128
// , VUNPCKHPS_XMM_XMM_XMM // VUNPCKHPS xmm, xmm, xmm
// , VUNPCKHPS_YMM_YMM_M256 // VUNPCKHPS ymm, ymm, m256
// , VUNPCKHPS_YMM_YMM_YMM // VUNPCKHPS ymm, ymm, ymm
// , VUNPCKLPD_XMM_XMM_M128 // VUNPCKLPD xmm, xmm, m128
// , VUNPCKLPD_XMM_XMM_XMM // VUNPCKLPD xmm, xmm, xmm
// , VUNPCKLPD_YMM_YMM_M256 // VUNPCKLPD ymm, ymm, m256
// , VUNPCKLPD_YMM_YMM_YMM // VUNPCKLPD ymm, ymm, ymm
// , VUNPCKLPS_XMM_XMM_M128 // VUNPCKLPS xmm, xmm, m128
// , VUNPCKLPS_XMM_XMM_XMM // VUNPCKLPS xmm, xmm, xmm
// , VUNPCKLPS_YMM_YMM_M256 // VUNPCKLPS ymm, ymm, m256
// , VUNPCKLPS_YMM_YMM_YMM // VUNPCKLPS ymm, ymm, ymm
// , VXORPD_XMM_XMM_M128 // VXORPD xmm, xmm, m128
// , VXORPD_XMM_XMM_XMM // VXORPD xmm, xmm, xmm
// , VXORPD_YMM_YMM_M256 // VXORPD ymm, ymm, m256
// , VXORPD_YMM_YMM_YMM // VXORPD ymm, ymm, ymm
// , VXORPS_XMM_XMM_M128 // VXORPS xmm, xmm, m128
// , VXORPS_XMM_XMM_XMM // VXORPS xmm, xmm, xmm
// , VXORPS_YMM_YMM_M256 // VXORPS ymm, ymm, m256
// , VXORPS_YMM_YMM_YMM // VXORPS ymm, ymm, ymm
// , VZEROALL // VZEROALL
  , VZEROUPPER // VZEROUPPER
// , WAIT // WAIT
// , WRFSBASE_R32 // WRFSBASE r32
// , WRFSBASE_R64 // WRFSBASE r64
// , WRGSBASE_R32 // WRGSBASE r32
// , WRGSBASE_R64 // WRGSBASE r64
// , XABORT_IMM8 // XABORT imm8
// , XACQUIRE // XACQUIRE
// , XADD_M16_R16 // XADD m16, r16
// , XADD_M32_R32 // XADD m32, r32
// , XADD_M64_R64 // XADD m64, r64
// , XADD_M8_R8 // XADD m8, r8
// , XADD_M8_RH // XADD m8, rh
// , XADD_R16_R16 // XADD r16, r16
// , XADD_R32_R32 // XADD r32, r32
// , XADD_R64_R64 // XADD r64, r64
// , XADD_R8_R8 // XADD r8, r8
// , XADD_R8_RH // XADD r8, rh
// , XADD_RH_R8 // XADD rh, r8
// , XADD_RH_RH // XADD rh, rh
// , XBEGIN_REL32 // XBEGIN rel32
// , XBEGIN_LABEL // XBEGIN label
// , XCHG_AX_R16 // XCHG AX, r16
// , XCHG_EAX_R32 // XCHG EAX, r32
// , XCHG_M16_R16 // XCHG m16, r16
// , XCHG_M32_R32 // XCHG m32, r32
// , XCHG_M64_R64 // XCHG m64, r64
// , XCHG_M8_R8 // XCHG m8, r8
// , XCHG_M8_RH // XCHG m8, rh
// , XCHG_R16_AX // XCHG r16, AX
// , XCHG_R16_M16 // XCHG r16, m16
// , XCHG_R16_R16 // XCHG r16, r16
// , XCHG_R32_EAX // XCHG r32, EAX
// , XCHG_R32_M32 // XCHG r32, m32
// , XCHG_R32_R32 // XCHG r32, r32
// , XCHG_R64_M64 // XCHG r64, m64
// , XCHG_R64_R64 // XCHG r64, r64
// , XCHG_R64_RAX // XCHG r64, RAX
// , XCHG_R8_M8 // XCHG r8, m8
// , XCHG_R8_R8 // XCHG r8, r8
// , XCHG_R8_RH // XCHG r8, rh
// , XCHG_RAX_R64 // XCHG RAX, r64
// , XCHG_RH_M8 // XCHG rh, m8
// , XCHG_RH_R8 // XCHG rh, r8
// , XCHG_RH_RH // XCHG rh, rh
// , XEND // XEND
// , XGETBV // XGETBV
// , XLAT_M8 // XLAT m8
// , XLATB // XLATB
// , XOR_AL_IMM8 // XOR AL, imm8
// , XOR_AX_IMM16 // XOR AX, imm16
// , XOR_EAX_IMM32 // XOR EAX, imm32
// , XOR_M16_IMM16 // XOR m16, imm16
// , XOR_M16_IMM8 // XOR m16, imm8
// , XOR_M16_R16 // XOR m16, r16
// , XOR_M32_IMM32 // XOR m32, imm32
// , XOR_M32_IMM8 // XOR m32, imm8
// , XOR_M32_R32 // XOR m32, r32
// , XOR_M64_IMM32 // XOR m64, imm32
// , XOR_M64_IMM8 // XOR m64, imm8
// , XOR_M64_R64 // XOR m64, r64
// , XOR_M8_IMM8 // XOR m8, imm8
// , XOR_M8_R8 // XOR m8, r8
// , XOR_M8_RH // XOR m8, rh
// , XOR_R16_IMM16 // XOR r16, imm16
// , XOR_R16_IMM8 // XOR r16, imm8
// , XOR_R16_M16 // XOR r16, m16
// , XOR_R16_R16 // XOR r16, r16
// , XOR_R32_IMM32 // XOR r32, imm32
// , XOR_R32_IMM8 // XOR r32, imm8
// , XOR_R32_M32 // XOR r32, m32
  , XOR_R32_R32 // XOR r32, r32
// , XOR_R64_IMM32 // XOR r64, imm32
// , XOR_R64_IMM8 // XOR r64, imm8
// , XOR_R64_M64 // XOR r64, m64
// , XOR_R64_R64 // XOR r64, r64
// , XOR_R8_IMM8 // XOR r8, imm8
// , XOR_R8_M8 // XOR r8, m8
  , XOR_R8_R8 // XOR r8, r8
// , XOR_R8_RH // XOR r8, rh
// , XOR_RAX_IMM32 // XOR RAX, imm32
// , XOR_RH_IMM8 // XOR rh, imm8
// , XOR_RH_M8 // XOR rh, m8
// , XOR_RH_R8 // XOR rh, r8
// , XOR_RH_RH // XOR rh, rh
// , XORPD_XMM_M128 // XORPD xmm, m128
// , XORPD_XMM_XMM // XORPD xmm, xmm
// , XORPS_XMM_M128 // XORPS xmm, m128
// , XORPS_XMM_XMM // XORPS xmm, xmm
// , XRELEASE // XRELEASE
// , XRSTOR_M16 // XRSTOR m16
// , XRSTOR_M32 // XRSTOR m32
// , XRSTOR_M64 // XRSTOR m64
// , XRSTOR64_M16 // XRSTOR64 m16
// , XRSTOR64_M32 // XRSTOR64 m32
// , XRSTOR64_M64 // XRSTOR64 m64
// , XSAVE_M16 // XSAVE m16
// , XSAVE_M32 // XSAVE m32
// , XSAVE_M64 // XSAVE m64
// , XSAVE64_M16 // XSAVE64 m16
// , XSAVE64_M32 // XSAVE64 m32
// , XSAVE64_M64 // XSAVE64 m64
// , XSAVEOPT_M16 // XSAVEOPT m16
// , XSAVEOPT_M32 // XSAVEOPT m32
// , XSAVEOPT_M64 // XSAVEOPT m64
// , XSAVEOPT64_M16 // XSAVEOPT64 m16
// , XSAVEOPT64_M32 // XSAVEOPT64 m32
// , XSAVEOPT64_M64 // XSAVEOPT64 m64
// , XTEST // XTEST
};

} // namespace stoke

#endif



