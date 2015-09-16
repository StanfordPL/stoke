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

#ifndef STOKE_TOOLS_APPS_SUPPORT_H
#define STOKE_TOOLS_APPS_SUPPORT_H

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

vector<Opcode> instr_cat_crypto_ = {
  AESDEC_XMM_M128 // AESDEC xmm, m128
  , AESDEC_XMM_XMM // AESDEC xmm, xmm
  , AESDECLAST_XMM_M128 // AESDECLAST xmm, m128
  , AESDECLAST_XMM_XMM // AESDECLAST xmm, xmm
  , AESENC_XMM_M128 // AESENC xmm, m128
  , AESENC_XMM_XMM // AESENC xmm, xmm
  , AESENCLAST_XMM_M128 // AESENCLAST xmm, m128
  , AESENCLAST_XMM_XMM // AESENCLAST xmm, xmm
  , AESIMC_XMM_M128 // AESIMC xmm, m128
  , AESIMC_XMM_XMM // AESIMC xmm, xmm
  , AESKEYGENASSIST_XMM_M128_IMM8 // AESKEYGENASSIST xmm, m128, imm8
  , AESKEYGENASSIST_XMM_XMM_IMM8 // AESKEYGENASSIST xmm, xmm, imm8

  , CRC32_R32_M16 // CRC32 r32, m16
  , CRC32_R32_M32 // CRC32 r32, m32
  , CRC32_R32_M8 // CRC32 r32, m8
  , CRC32_R32_R16 // CRC32 r32, r16
  , CRC32_R32_R32 // CRC32 r32, r32
  , CRC32_R32_R8 // CRC32 r32, r8
  , CRC32_R32_RH // CRC32 r32, rh
  , CRC32_R64_M64 // CRC32 r64, m64
  , CRC32_R64_M8 // CRC32 r64, m8
  , CRC32_R64_R64 // CRC32 r64, r64
  , CRC32_R64_R8 // CRC32 r64, r8

  , VAESDEC_XMM_XMM_M128 // VAESDEC xmm, xmm, m128
  , VAESDEC_XMM_XMM_XMM // VAESDEC xmm, xmm, xmm
  , VAESDECLAST_XMM_XMM_M128 // VAESDECLAST xmm, xmm, m128
  , VAESDECLAST_XMM_XMM_XMM // VAESDECLAST xmm, xmm, xmm
  , VAESENC_XMM_XMM_M128 // VAESENC xmm, xmm, m128
  , VAESENC_XMM_XMM_XMM // VAESENC xmm, xmm, xmm
  , VAESENCLAST_XMM_XMM_M128 // VAESENCLAST xmm, xmm, m128
  , VAESENCLAST_XMM_XMM_XMM // VAESENCLAST xmm, xmm, xmm
  , VAESIMC_XMM_M128 // VAESIMC xmm, m128
  , VAESIMC_XMM_XMM // VAESIMC xmm, xmm
  , VAESKEYGENASSIST_XMM_M128_IMM8 // VAESKEYGENASSIST xmm, m128, imm8
  , VAESKEYGENASSIST_XMM_XMM_IMM8 // VAESKEYGENASSIST xmm, xmm, imm8
};

vector<Opcode> instr_cat_duplicates_ = {
  ADC_R16_R16_1 // ADC r16, r16
  , ADC_R32_R32_1 // ADC r32, r32
  , ADC_R64_R64_1 // ADC r64, r64
  , ADC_R8_RH_1 // ADC r8, rh
  , ADC_RH_R8_1 // ADC rh, r8
  , ADC_RH_RH_1 // ADC rh, rh
  , ADD_R16_R16_1 // ADD r16, r16
  , ADD_R32_R32_1 // ADD r32, r32
  , ADD_R64_R64_1 // ADD r64, r64
  , ADD_R8_R8_1 // ADD r8, r8
  , ADD_R8_RH_1 // ADD r8, rh
  , ADD_RH_R8_1 // ADD rh, r8
  , ADD_RH_RH_1 // ADD rh, rh
  , AND_R16_R16_1 // AND r16, r16
  , AND_R32_R32_1 // AND r32, r32
  , AND_R64_R64_1 // AND r64, r64
  , AND_R8_R8_1 // AND r8, r8
  , AND_R8_RH_1 // AND r8, rh
  , AND_RH_R8_1 // AND rh, r8
  , AND_RH_RH_1 // AND rh, rh
  , CMP_R16_R16_1 // CMP r16, r16
  , CMP_R32_R32_1 // CMP r32, r32
  , CMP_R64_R64_1 // CMP r64, r64
  , CMP_R8_R8_1 // CMP r8, r8
  , CMP_R8_RH_1 // CMP r8, rh
  , CMP_RH_R8_1 // CMP rh, r8
  , CMP_RH_RH_1 // CMP rh, rh
  , MOV_R16_IMM16_1 // MOV r16, imm16
  , MOV_R16_R16_1 // MOV r16, r16
  , MOV_R32_IMM32_1 // MOV r32, imm32
  , MOV_R32_R32_1 // MOV r32, r32
  , MOV_R64_R64_1 // MOV r64, r64
  , MOV_R8_IMM8_1 // MOV r8, imm8
  , MOV_R8_R8_1 // MOV r8, r8
  , MOV_R8_RH_1 // MOV r8, rh
  , MOV_RH_IMM8_1 // MOV rh, imm8
  , MOV_RH_R8_1 // MOV rh, r8
  , MOV_RH_RH_1 // MOV rh, rh
  , MOVAPD_XMM_XMM_1 // MOVAPD xmm, xmm
  , MOVAPS_XMM_XMM_1 // MOVAPS xmm, xmm
  , MOVDQA_XMM_XMM_1 // MOVDQA xmm, xmm
  , MOVDQU_XMM_XMM_1 // MOVDQU xmm, xmm
  , MOVQ_M64_MM_1 // MOVQ m64, mm
  , MOVQ_M64_XMM_1 // MOVQ m64, xmm
  , MOVQ_MM_M64_1 // MOVQ mm, m64
  , MOVQ_MM_MM_1 // MOVQ mm, mm
  , MOVQ_XMM_M64_1 // MOVQ xmm, m64
  , MOVQ_XMM_XMM_1 // MOVQ xmm, xmm
  , MOVSD_XMM_XMM_1 // MOVSD xmm, xmm
  , MOVSS_XMM_XMM_1 // MOVSS xmm, xmm
  , MOVUPD_XMM_XMM_1 // MOVUPD xmm, xmm
  , MOVUPS_XMM_XMM_1 // MOVUPS xmm, xmm
  , OR_R16_R16_1 // OR r16, r16
  , OR_R32_R32_1 // OR r32, r32
  , OR_R64_R64_1 // OR r64, r64
  , OR_R8_R8_1 // OR r8, r8
  , OR_R8_RH_1 // OR r8, rh
  , OR_RH_R8_1 // OR rh, r8
  , OR_RH_RH_1 // OR rh, rh
  , PEXTRW_R32_XMM_IMM8_1 // PEXTRW r32, xmm, imm8
  , PEXTRW_R64_XMM_IMM8_1 // PEXTRW r64, xmm, imm8
  , POP_R16_1 // POP r16
  , POP_R64_1 // POP r64
  , PUSH_R16_1 // PUSH r16
  , PUSH_R64_1 // PUSH r64
  , REP_INS_M8_DX_1 // REP_INS m8, DX
  , REP_LODS_AL_1 // REP_LODS AL
  , REP_MOVS_M8_M8_1 // REP_MOVS m8, m8
  , REP_OUTS_DX_M8_1 // REP_OUTS DX, m8
  , REP_STOS_M8_1 // REP_STOS m8
  , REPE_CMPS_M8_M8_1 // REPE_CMPS m8, m8
  , REPE_SCAS_M8_1 // REPE_SCAS m8
  , REPNE_CMPS_M8_M8_1 // REPNE_CMPS m8, m8
  , REPNE_SCAS_M8_1 // REPNE_SCAS m8
  , SBB_R16_R16_1 // SBB r16, r16
  , SBB_R32_R32_1 // SBB r32, r32
  , SBB_R64_R64_1 // SBB r64, r64
  , SBB_R8_R8_1 // SBB r8, r8
  , SBB_R8_RH_1 // SBB r8, rh
  , SBB_RH_R8_1 // SBB rh, r8
  , SBB_RH_RH_1 // SBB rh, rh
  , SUB_R16_R16_1 // SUB r16, r16
  , SUB_R32_R32_1 // SUB r32, r32
  , SUB_R64_R64_1 // SUB r64, r64
  , SUB_R8_R8_1 // SUB r8, r8
  , SUB_R8_RH_1 // SUB r8, rh
  , SUB_RH_R8_1 // SUB rh, r8
  , SUB_RH_RH_1 // SUB rh, rh
  , VGATHERQPS_XMM_M64_XMM_1 // VGATHERQPS xmm, m64, xmm
  , VMOVAPD_XMM_XMM_1 // VMOVAPD xmm, xmm
  , VMOVAPD_YMM_YMM_1 // VMOVAPD ymm, ymm
  , VMOVAPS_XMM_XMM_1 // VMOVAPS xmm, xmm
  , VMOVAPS_YMM_YMM_1 // VMOVAPS ymm, ymm
  , VMOVDQA_XMM_XMM_1 // VMOVDQA xmm, xmm
  , VMOVDQA_YMM_YMM_1 // VMOVDQA ymm, ymm
  , VMOVDQU_XMM_XMM_1 // VMOVDQU xmm, xmm
  , VMOVDQU_YMM_YMM_1 // VMOVDQU ymm, ymm
  , VMOVQ_M64_XMM_1 // VMOVQ m64, xmm
  , VMOVQ_XMM_M64_1 // VMOVQ xmm, m64
  , VMOVQ_XMM_XMM_1 // VMOVQ xmm, xmm
  , VMOVSD_XMM_XMM_XMM_1 // VMOVSD xmm, xmm, xmm
  , VMOVSS_XMM_XMM_XMM_1 // VMOVSS xmm, xmm, xmm
  , VMOVUPD_XMM_XMM_1 // VMOVUPD xmm, xmm
  , VMOVUPD_YMM_YMM_1 // VMOVUPD ymm, ymm
  , VMOVUPS_XMM_XMM_1 // VMOVUPS xmm, xmm
  , VMOVUPS_YMM_YMM_1 // VMOVUPS ymm, ymm
  , VPEXTRW_R32_XMM_IMM8_1 // VPEXTRW r32, xmm, imm8
  , VPEXTRW_R64_XMM_IMM8_1 // VPEXTRW r64, xmm, imm8
  , VPGATHERQD_XMM_M64_XMM_1 // VPGATHERQD xmm, m64, xmm
  , XCHG_R16_R16_1 // XCHG r16, r16
  , XCHG_R32_R32_1 // XCHG r32, r32
  , XCHG_R64_R64_1 // XCHG r64, r64
  , XCHG_R8_R8_1 // XCHG r8, r8
  , XCHG_R8_RH_1 // XCHG r8, rh
  , XCHG_RH_R8_1 // XCHG rh, r8
  , XCHG_RH_RH_1 // XCHG rh, rh
  , XLATB_1 // XLATB
  , XOR_R16_R16_1 // XOR r16, r16
  , XOR_R32_R32_1 // XOR r32, r32
  , XOR_R64_R64_1 // XOR r64, r64
  , XOR_R8_R8_1 // XOR r8, r8
  , XOR_R8_RH_1 // XOR r8, rh
  , XOR_RH_R8_1 // XOR rh, r8
  , XOR_RH_RH_1 // XOR rh, rh
};

vector<Opcode> instr_cat_float_ = {
  F2XM1 // F2XM1
  , FABS // FABS
  , FADD_M32FP // FADD m32fp
  , FADD_M64FP // FADD m64fp
  , FADD_ST_ST0 // FADD ST(i), ST
  , FADD_ST0_ST // FADD ST, ST(i)
  , FADDP // FADDP
  , FADDP_ST_ST0 // FADDP ST(i), ST
  , FBLD_M80BCD // FBLD m80bcd
  , FBSTP_M80BCD // FBSTP m80bcd
  , FCHS // FCHS
  , FCLEX // FCLEX
  , FCMOVB_ST0_ST // FCMOVB ST, ST(i)
  , FCMOVBE_ST0_ST // FCMOVBE ST, ST(i)
  , FCMOVE_ST0_ST // FCMOVE ST, ST(i)
  , FCMOVNB_ST0_ST // FCMOVNB ST, ST(i)
  , FCMOVNBE_ST0_ST // FCMOVNBE ST, ST(i)
  , FCMOVNE_ST0_ST // FCMOVNE ST, ST(i)
  , FCMOVNU_ST0_ST // FCMOVNU ST, ST(i)
  , FCMOVU_ST0_ST // FCMOVU ST, ST(i)
  , FCOM // FCOM
  , FCOM_M32FP // FCOM m32fp
  , FCOM_M64FP // FCOM m64fp
  , FCOM_ST // FCOM ST(i)
  , FCOMI_ST0_ST // FCOMI ST, ST(i)
  , FCOMIP_ST0_ST // FCOMIP ST, ST(i)
  , FCOMP // FCOMP
  , FCOMP_M32FP // FCOMP m32fp
  , FCOMP_M64FP // FCOMP m64fp
  , FCOMP_ST // FCOMP ST(i)
  , FCOMPP // FCOMPP
  , FCOS // FCOS
  , FDECSTP // FDECSTP
  , FDIV_M32FP // FDIV m32fp
  , FDIV_M64FP // FDIV m64fp
  , FDIV_ST_ST0 // FDIV ST(i), ST
  , FDIV_ST0_ST // FDIV ST, ST(i)
  , FDIVP // FDIVP
  , FDIVP_ST_ST0 // FDIVP ST(i), ST
  , FDIVR_M32FP // FDIVR m32fp
  , FDIVR_M64FP // FDIVR m64fp
  , FDIVR_ST_ST0 // FDIVR ST(i), ST
  , FDIVR_ST0_ST // FDIVR ST, ST(i)
  , FDIVRP // FDIVRP
  , FDIVRP_ST_ST0 // FDIVRP ST(i), ST
  , FFREE_ST // FFREE ST(i)
  , FIADD_M16INT // FIADD m16int
  , FIADD_M32INT // FIADD m32int
  , FICOM_M16INT // FICOM m16int
  , FICOM_M32INT // FICOM m32int
  , FICOMP_M16INT // FICOMP m16int
  , FICOMP_M32INT // FICOMP m32int
  , FIDIV_M16INT // FIDIV m16int
  , FIDIV_M32INT // FIDIV m32int
  , FIDIVR_M16INT // FIDIVR m16int
  , FIDIVR_M32INT // FIDIVR m32int
  , FILD_M16INT // FILD m16int
  , FILD_M32INT // FILD m32int
  , FILD_M64INT // FILD m64int
  , FIMUL_M16INT // FIMUL m16int
  , FIMUL_M32INT // FIMUL m32int
  , FINCSTP // FINCSTP
  , FINIT // FINIT
  , FIST_M16INT // FIST m16int
  , FIST_M32INT // FIST m32int
  , FISTP_M16INT // FISTP m16int
  , FISTP_M32INT // FISTP m32int
  , FISTP_M64INT // FISTP m64int
  , FISTTP_M16INT // FISTTP m16int
  , FISTTP_M32INT // FISTTP m32int
  , FISTTP_M64INT // FISTTP m64int
  , FISUB_M16INT // FISUB m16int
  , FISUB_M32INT // FISUB m32int
  , FISUBR_M16INT // FISUBR m16int
  , FISUBR_M32INT // FISUBR m32int
  , FLD_M32FP // FLD m32fp
  , FLD_M64FP // FLD m64fp
  , FLD_M80FP // FLD m80fp
  , FLD_ST // FLD ST(i)
  , FLD1 // FLD1
  , FLDCW_M2BYTE // FLDCW m2byte
  , FLDENV_M28BYTE // FLDENV m28byte
  , FLDL2E // FLDL2E
  , FLDL2T // FLDL2T
  , FLDLG2 // FLDLG2
  , FLDLN2 // FLDLN2
  , FLDPI // FLDPI
  , FLDZ // FLDZ
  , FMUL_M32FP // FMUL m32fp
  , FMUL_M64FP // FMUL m64fp
  , FMUL_ST_ST0 // FMUL ST(i), ST
  , FMUL_ST0_ST // FMUL ST, ST(i)
  , FMULP // FMULP
  , FMULP_ST_ST0 // FMULP ST(i), ST
  , FNCLEX // FNCLEX
  , FNINIT // FNINIT
  , FNOP // FNOP
  , FNSAVE_M108BYTE // FNSAVE m108byte
  , FNSTCW_M2BYTE // FNSTCW m2byte
  , FNSTENV_M28BYTE // FNSTENV m28byte
  , FNSTSW_AX // FNSTSW AX
  , FNSTSW_M2BYTE // FNSTSW m2byte
  , FPATAN // FPATAN
  , FPREM // FPREM
  , FPREM1 // FPREM1
  , FPTAN // FPTAN
  , FRNDINT // FRNDINT
  , FRSTOR_M108BYTE // FRSTOR m108byte
  , FSAVE_M108BYTE // FSAVE m108byte
  , FSCALE // FSCALE
  , FSIN // FSIN
  , FSINCOS // FSINCOS
  , FSQRT // FSQRT
  , FST_M32FP // FST m32fp
  , FST_M64FP // FST m64fp
  , FST_ST // FST ST(i)
  , FSTCW_M2BYTE // FSTCW m2byte
  , FSTENV_M28BYTE // FSTENV m28byte
  , FSTP_M32FP // FSTP m32fp
  , FSTP_M64FP // FSTP m64fp
  , FSTP_M80FP // FSTP m80fp
  , FSTP_ST // FSTP ST(i)
  , FSTSW_AX // FSTSW AX
  , FSTSW_M2BYTE // FSTSW m2byte
  , FSUB_M32FP // FSUB m32fp
  , FSUB_M64FP // FSUB m64fp
  , FSUB_ST_ST0 // FSUB ST(i), ST
  , FSUB_ST0_ST // FSUB ST, ST(i)
  , FSUBP // FSUBP
  , FSUBP_ST_ST0 // FSUBP ST(i), ST
  , FSUBR_M32FP // FSUBR m32fp
  , FSUBR_M64FP // FSUBR m64fp
  , FSUBR_ST_ST0 // FSUBR ST(i), ST
  , FSUBR_ST0_ST // FSUBR ST, ST(i)
  , FSUBRP // FSUBRP
  , FSUBRP_ST_ST0 // FSUBRP ST(i), ST
  , FTST // FTST
  , FUCOM // FUCOM
  , FUCOM_ST // FUCOM ST(i)
  , FUCOMI_ST0_ST // FUCOMI ST, ST(i)
  , FUCOMIP_ST0_ST // FUCOMIP ST, ST(i)
  , FUCOMP // FUCOMP
  , FUCOMP_ST // FUCOMP ST(i)
  , FUCOMPP // FUCOMPP
  , FWAIT // FWAIT
  , FXAM // FXAM
  , FXCH // FXCH
  , FXCH_ST // FXCH ST(i)
  , FXRSTOR_M512BYTE // FXRSTOR m512byte
  , FXRSTOR64_M512BYTE // FXRSTOR64 m512byte
  , FXSAVE_M512BYTE // FXSAVE m512byte
  , FXSAVE64_M512BYTE // FXSAVE64 m512byte
  , FXTRACT // FXTRACT
  , FYL2X // FYL2X
  , FYL2XP1 // FYL2XP1
};

vector<Opcode> instr_cat_system_ = {
  CALL_FARPTR1616 // CALL m16:16
  , CALL_FARPTR1632 // CALL m16:32
  , CALL_FARPTR1664 // CALL m16:64
  , CALL_M64 // CALL m64
  , CALL_R64 // CALL r64
  , CALL_REL32 // CALL rel32
  , CALL_LABEL // CALL label

  , BSF_R32_M32 // BSF r32, m32
  , BSF_R32_R32 // BSF r32, r32
  , BSF_R64_M64 // BSF r64, m64
  , BSF_R64_R64 // BSF r64, r64
  , BSR_R16_M16 // BSR r16, m16
  , BSR_R16_R16 // BSR r16, r16
  , BSR_R32_M32 // BSR r32, m32
  , BSR_R32_R32 // BSR r32, r32
  , BSR_R64_M64 // BSR r64, m64
  , BSR_R64_R64 // BSR r64, r64

  , CLFLUSH_M8 // CLFLUSH m8
  , CLI // CLI

  , CPUID // CPUID

  , ENTER_IMM8_IMM16 // ENTER imm8, imm16
  , ENTER_ONE_IMM16 // ENTER 1, imm16
  , ENTER_ZERO_IMM16 // ENTER 0, imm16

  , EMMS // EMMS

  , IN_AL_DX // IN AL, DX
  , IN_AL_IMM8 // IN AL, imm8
  , IN_AX_DX // IN AX, DX
  , IN_AX_IMM8 // IN AX, imm8
  , IN_EAX_DX // IN EAX, DX
  , IN_EAX_IMM8 // IN EAX, imm8

  , INS_M16_DX // INS m16, DX
  , INS_M32_DX // INS m32, DX
  , INS_M8_DX // INS m8, DX
  , INSB // INSB
  , INSD // INSD

  , INSW // INSW

  , INT_IMM8 // INT imm8
  , INT_THREE // INT 3

  , INVPCID_R64_M128 // INVPCID r64, m128

  , IRET // IRET
  , IRETD // IRETD
  , IRETQ // IRETQ

  , JA_REL32 // JA rel32
  , JA_LABEL // JA label
  , JA_REL32_HINT // JA rel32, hint
  , JA_LABEL_HINT // JA label, hint
  , JA_REL8 // JA rel8
  , JA_REL8_HINT // JA rel8, hint
  , JAE_REL32 // JAE rel32
  , JAE_LABEL // JAE label
  , JAE_REL32_HINT // JAE rel32, hint
  , JAE_LABEL_HINT // JAE label, hint
  , JAE_REL8 // JAE rel8
  , JAE_REL8_HINT // JAE rel8, hint
  , JB_REL32 // JB rel32
  , JB_LABEL // JB label
  , JB_REL32_HINT // JB rel32, hint
  , JB_LABEL_HINT // JB label, hint
  , JB_REL8 // JB rel8
  , JB_REL8_HINT // JB rel8, hint
  , JBE_REL32 // JBE rel32
  , JBE_LABEL // JBE label
  , JBE_REL32_HINT // JBE rel32, hint
  , JBE_LABEL_HINT // JBE label, hint
  , JBE_REL8 // JBE rel8
  , JBE_REL8_HINT // JBE rel8, hint
  , JC_REL32 // JC rel32
  , JC_LABEL // JC label
  , JC_REL32_HINT // JC rel32, hint
  , JC_LABEL_HINT // JC label, hint
  , JC_REL8 // JC rel8
  , JC_REL8_HINT // JC rel8, hint
  , JE_REL32 // JE rel32
  , JE_LABEL // JE label
  , JE_REL32_HINT // JE rel32, hint
  , JE_LABEL_HINT // JE label, hint
  , JE_REL8 // JE rel8
  , JE_REL8_HINT // JE rel8, hint
  , JECXZ_REL8 // JECXZ rel8
  , JECXZ_REL8_HINT // JECXZ rel8, hint
  , JG_REL32 // JG rel32
  , JG_LABEL // JG label
  , JG_REL32_HINT // JG rel32, hint
  , JG_LABEL_HINT // JG label, hint
  , JG_REL8 // JG rel8
  , JG_REL8_HINT // JG rel8, hint
  , JGE_REL32 // JGE rel32
  , JGE_LABEL // JGE label
  , JGE_REL32_HINT // JGE rel32, hint
  , JGE_LABEL_HINT // JGE label, hint
  , JGE_REL8 // JGE rel8
  , JGE_REL8_HINT // JGE rel8, hint
  , JL_REL32 // JL rel32
  , JL_LABEL // JL label
  , JL_REL32_HINT // JL rel32, hint
  , JL_LABEL_HINT // JL label, hint
  , JL_REL8 // JL rel8
  , JL_REL8_HINT // JL rel8, hint
  , JLE_REL32 // JLE rel32
  , JLE_LABEL // JLE label
  , JLE_REL32_HINT // JLE rel32, hint
  , JLE_LABEL_HINT // JLE label, hint
  , JLE_REL8 // JLE rel8
  , JLE_REL8_HINT // JLE rel8, hint
  , JMP_FARPTR1616 // JMP m16:16
  , JMP_FARPTR1632 // JMP m16:32
  , JMP_FARPTR1664 // JMP m16:64
  , JMP_M64 // JMP m64
  , JMP_R64 // JMP r64
  , JMP_REL32 // JMP rel32
  , JMP_LABEL // JMP label
  , JMP_REL8 // JMP rel8
  , JNA_REL32 // JNA rel32
  , JNA_LABEL // JNA label
  , JNA_REL32_HINT // JNA rel32, hint
  , JNA_LABEL_HINT // JNA label, hint
  , JNA_REL8 // JNA rel8
  , JNA_REL8_HINT // JNA rel8, hint
  , JNAE_REL32 // JNAE rel32
  , JNAE_LABEL // JNAE label
  , JNAE_REL32_HINT // JNAE rel32, hint
  , JNAE_LABEL_HINT // JNAE label, hint
  , JNAE_REL8 // JNAE rel8
  , JNAE_REL8_HINT // JNAE rel8, hint
  , JNB_REL32 // JNB rel32
  , JNB_LABEL // JNB label
  , JNB_REL32_HINT // JNB rel32, hint
  , JNB_LABEL_HINT // JNB label, hint
  , JNB_REL8 // JNB rel8
  , JNB_REL8_HINT // JNB rel8, hint
  , JNBE_REL32 // JNBE rel32
  , JNBE_LABEL // JNBE label
  , JNBE_REL32_HINT // JNBE rel32, hint
  , JNBE_LABEL_HINT // JNBE label, hint
  , JNBE_REL8 // JNBE rel8
  , JNBE_REL8_HINT // JNBE rel8, hint
  , JNC_REL32 // JNC rel32
  , JNC_LABEL // JNC label
  , JNC_REL32_HINT // JNC rel32, hint
  , JNC_LABEL_HINT // JNC label, hint
  , JNC_REL8 // JNC rel8
  , JNC_REL8_HINT // JNC rel8, hint
  , JNE_REL32 // JNE rel32
  , JNE_LABEL // JNE label
  , JNE_REL32_HINT // JNE rel32, hint
  , JNE_LABEL_HINT // JNE label, hint
  , JNE_REL8 // JNE rel8
  , JNE_REL8_HINT // JNE rel8, hint
  , JNG_REL32 // JNG rel32
  , JNG_LABEL // JNG label
  , JNG_REL32_HINT // JNG rel32, hint
  , JNG_LABEL_HINT // JNG label, hint
  , JNG_REL8 // JNG rel8
  , JNG_REL8_HINT // JNG rel8, hint
  , JNGE_REL32 // JNGE rel32
  , JNGE_LABEL // JNGE label
  , JNGE_REL32_HINT // JNGE rel32, hint
  , JNGE_LABEL_HINT // JNGE label, hint
  , JNGE_REL8 // JNGE rel8
  , JNGE_REL8_HINT // JNGE rel8, hint
  , JNL_REL32 // JNL rel32
  , JNL_LABEL // JNL label
  , JNL_REL32_HINT // JNL rel32, hint
  , JNL_LABEL_HINT // JNL label, hint
  , JNL_REL8 // JNL rel8
  , JNL_REL8_HINT // JNL rel8, hint
  , JNLE_REL32 // JNLE rel32
  , JNLE_LABEL // JNLE label
  , JNLE_REL32_HINT // JNLE rel32, hint
  , JNLE_LABEL_HINT // JNLE label, hint
  , JNLE_REL8 // JNLE rel8
  , JNLE_REL8_HINT // JNLE rel8, hint
  , JNO_REL32 // JNO rel32
  , JNO_LABEL // JNO label
  , JNO_REL32_HINT // JNO rel32, hint
  , JNO_LABEL_HINT // JNO label, hint
  , JNO_REL8 // JNO rel8
  , JNO_REL8_HINT // JNO rel8, hint
  , JNP_REL32 // JNP rel32
  , JNP_LABEL // JNP label
  , JNP_REL32_HINT // JNP rel32, hint
  , JNP_LABEL_HINT // JNP label, hint
  , JNP_REL8 // JNP rel8
  , JNP_REL8_HINT // JNP rel8, hint
  , JNS_REL32 // JNS rel32
  , JNS_LABEL // JNS label
  , JNS_REL32_HINT // JNS rel32, hint
  , JNS_LABEL_HINT // JNS label, hint
  , JNS_REL8 // JNS rel8
  , JNS_REL8_HINT // JNS rel8, hint
  , JNZ_REL32 // JNZ rel32
  , JNZ_LABEL // JNZ label
  , JNZ_REL32_HINT // JNZ rel32, hint
  , JNZ_LABEL_HINT // JNZ label, hint
  , JNZ_REL8 // JNZ rel8
  , JNZ_REL8_HINT // JNZ rel8, hint
  , JO_REL32 // JO rel32
  , JO_LABEL // JO label
  , JO_REL32_HINT // JO rel32, hint
  , JO_LABEL_HINT // JO label, hint
  , JO_REL8 // JO rel8
  , JO_REL8_HINT // JO rel8, hint
  , JP_REL32 // JP rel32
  , JP_LABEL // JP label
  , JP_REL32_HINT // JP rel32, hint
  , JP_LABEL_HINT // JP label, hint
  , JP_REL8 // JP rel8
  , JP_REL8_HINT // JP rel8, hint
  , JPE_REL32 // JPE rel32
  , JPE_LABEL // JPE label
  , JPE_REL32_HINT // JPE rel32, hint
  , JPE_LABEL_HINT // JPE label, hint
  , JPE_REL8 // JPE rel8
  , JPE_REL8_HINT // JPE rel8, hint
  , JPO_REL32 // JPO rel32
  , JPO_LABEL // JPO label
  , JPO_REL32_HINT // JPO rel32, hint
  , JPO_LABEL_HINT // JPO label, hint
  , JPO_REL8 // JPO rel8
  , JPO_REL8_HINT // JPO rel8, hint
  , JRCXZ_REL8 // JRCXZ rel8
  , JRCXZ_REL8_HINT // JRCXZ rel8, hint
  , JS_REL32 // JS rel32
  , JS_LABEL // JS label
  , JS_REL32_HINT // JS rel32, hint
  , JS_LABEL_HINT // JS label, hint
  , JS_REL8 // JS rel8
  , JS_REL8_HINT // JS rel8, hint
  , JZ_REL32 // JZ rel32
  , JZ_LABEL // JZ label
  , JZ_REL32_HINT // JZ rel32, hint
  , JZ_LABEL_HINT // JZ label, hint
  , JZ_REL8 // JZ rel8
  , JZ_REL8_HINT // JZ rel8, hint

  , LAR_R16_M16 // LAR r16, m16
  , LAR_R16_R16 // LAR r16, r16
  , LAR_R32_M16 // LAR r32, m16
  , LAR_R32_R32 // LAR r32, r32
  , LAR_R64_M16 // LAR r64, m16
  , LAR_R64_R32 // LAR r64, r32

  , LAHF // LAHF
  , SAHF // SAHF
  , POPF // POPF
  , POPFQ // POPFQ
  , PUSHF // PUSHF
  , PUSHFQ // PUSHFQ
  , STI // STI

  , LDMXCSR_M32 // LDMXCSR m32

  , LEAVE // LEAVE
  , LEAVE_PREF66 // LEAVE p66

  , LFENCE // LFENCE

  , LFS_R16_FARPTR1616 // LFS r16, m16:16
  , LFS_R32_FARPTR1632 // LFS r32, m16:32
  , LFS_R64_FARPTR1664 // LFS r64, m16:64
  , LGS_R16_FARPTR1616 // LGS r16, m16:16
  , LGS_R32_FARPTR1632 // LGS r32, m16:32
  , LGS_R64_FARPTR1664 // LGS r64, m16:64

  , LOCK // LOCK

  , LSL_R16_M16 // LSL r16, m16
  , LSL_R16_R16 // LSL r16, r16
  , LSL_R32_M16 // LSL r32, m16
  , LSL_R32_R32 // LSL r32, r32
  , LSL_R64_M16 // LSL r64, m16
  , LSL_R64_R32 // LSL r64, r32

  , LSS_R16_FARPTR1616 // LSS r16, m16:16
  , LSS_R32_FARPTR1632 // LSS r32, m16:32
  , LSS_R64_FARPTR1664 // LSS r64, m16:64

  , MFENCE // MFENCE

  , MONITOR // MONITOR

  , MWAIT // MWAIT

  , OUT_DX_AL // OUT DX, AL
  , OUT_DX_AX // OUT DX, AX
  , OUT_DX_EAX // OUT DX, EAX
  , OUT_IMM8_AL // OUT imm8, AL
  , OUT_IMM8_AX // OUT imm8, AX
  , OUT_IMM8_EAX // OUT imm8, EAX
  , OUTS_DX_M16 // OUTS DX, m16
  , OUTS_DX_M32 // OUTS DX, m32
  , OUTS_DX_M8 // OUTS DX, m8
  , OUTSB // OUTSB
  , OUTSD // OUTSD
  , OUTSW // OUTSW

  , PAUSE // PAUSE

  , PREFETCHNTA_M8 // PREFETCHNTA m8
  , PREFETCHT0_M8 // PREFETCHT0 m8
  , PREFETCHT1_M8 // PREFETCHT1 m8
  , PREFETCHT2_M8 // PREFETCHT2 m8

  , RDFSBASE_R32 // RDFSBASE r32
  , RDFSBASE_R64 // RDFSBASE r64
  , RDGSBASE_R32 // RDGSBASE r32
  , RDGSBASE_R64 // RDGSBASE r64

  , RDRAND_R16 // RDRAND r16
  , RDRAND_R32 // RDRAND r32
  , RDRAND_R64 // RDRAND r64

  , REP_INS_M16_DX // REP_INS m16, DX
  , REP_INS_M32_DX // REP_INS m32, DX
  , REP_INS_M64_DX // REP_INS m64, DX
  , REP_INS_M8_DX // REP_INS m8, DX

  , REP_OUTS_DX_M16 // REP_OUTS DX, m16
  , REP_OUTS_DX_M32 // REP_OUTS DX, m32
  , REP_OUTS_DX_M64 // REP_OUTS DX, m64
  , REP_OUTS_DX_M8 // REP_OUTS DX, m8

  , RET // RET
  , RET_FAR // RET far
  , RET_IMM16 // RET imm16
  , RET_IMM16_FAR // RET imm16, far

  , SFENCE // SFENCE

  , STMXCSR_M32 // STMXCSR m32

  , SWAPGS // SWAPGS
  , SYSCALL // SYSCALL
  , SYSENTER // SYSENTER
  , SYSEXIT // SYSEXIT
  , SYSEXIT_PREFREXW // SYSEXIT pw
  , SYSRET // SYSRET
  , SYSRET_PREFREXW // SYSRET pw

  , UD2 // UD2

  , WAIT // WAIT
  , WRFSBASE_R32 // WRFSBASE r32
  , WRFSBASE_R64 // WRFSBASE r64
  , WRGSBASE_R32 // WRGSBASE r32
  , WRGSBASE_R64 // WRGSBASE r64
  , XABORT_IMM8 // XABORT imm8
  , XACQUIRE // XACQUIRE

  , XBEGIN_REL32 // XBEGIN rel32
  , XBEGIN_LABEL // XBEGIN label

  , XEND // XEND
  , XGETBV // XGETBV
  , XLAT_M8 // XLAT m8
  , XLATB // XLATB

  , XRELEASE // XRELEASE
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
  , XTEST // XTEST
};


} // namespace stoke

#endif



