// Copyright 2013-2015 Stanford University
//
// Licensed under the Apache License, Version 2.0 (the License);
// you may not use this file except in compliance with the License.
// You may obtain a copy of the License at
//
//     http://www.apache.org/licenses/LICENSE-2.0
//
// Unless required by applicable law or agreed to in writing, software
// distributed under the License is distributed on an AS IS BASIS,
// WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
// See the License for the specific language governing permissions and
// limitations under the License.


#ifndef _STOKE_TEST_X64ASM_OPC_SET_H
#define _STOKE_TEST_X64ASM_OPC_SET_H

#include "tools/io/opc_set.h"

namespace stoke {

class X64AsmOpcSetTest : public ::testing::Test {

public:

  void test(std::string str, std::set<x64asm::Opcode> expected, bool test_write = true) {
    ss_.clear();
    ss_.str("");
    os_ = {};

    ss_ << str;
    reader_(ss_, os_);
    EXPECT_EQ(expected, os_);

    if (test_write) {
      ss_.clear();
      ss_.str("");

      writer_(ss_, os_);
      EXPECT_EQ(str, ss_.str());
    }
  }

protected:

  std::stringstream ss_;
  std::set<x64asm::Opcode> os_;
  OpcSetReader reader_;
  OpcSetWriter writer_;

};

TEST_F(X64AsmOpcSetTest, Basic) {
  test("{ callq_label }", { x64asm::CALL_LABEL });
  test("{ xorl_r32_r32 }", { x64asm::XOR_R32_R32 });
  test("{ xorl_r32_r32 xorl_r32_r32 }", { x64asm::XOR_R32_R32 }, false);
  test("{ xorl_r32_r32 xorq_r64_r64 }", { x64asm::XOR_R32_R32, x64asm::XOR_R64_R64 });
}

TEST_F(X64AsmOpcSetTest, Regex) {
  test("{ xor._.* }", {
    x64asm::XOR_AL_IMM8 // XOR AL, imm8
    , x64asm::XOR_AX_IMM16 // XOR AX, imm16
    , x64asm::XOR_EAX_IMM32 // XOR EAX, imm32
    , x64asm::XOR_M16_IMM16 // XOR m16, imm16
    , x64asm::XOR_M16_IMM8 // XOR m16, imm8
    , x64asm::XOR_M16_R16 // XOR m16, r16
    , x64asm::XOR_M32_IMM32 // XOR m32, imm32
    , x64asm::XOR_M32_IMM8 // XOR m32, imm8
    , x64asm::XOR_M32_R32 // XOR m32, r32
    , x64asm::XOR_M64_IMM32 // XOR m64, imm32
    , x64asm::XOR_M64_IMM8 // XOR m64, imm8
    , x64asm::XOR_M64_R64 // XOR m64, r64
    , x64asm::XOR_M8_IMM8 // XOR m8, imm8
    , x64asm::XOR_M8_R8 // XOR m8, r8
    , x64asm::XOR_M8_RH // XOR m8, rh
    , x64asm::XOR_R16_IMM16 // XOR r16, imm16
    , x64asm::XOR_R16_IMM8 // XOR r16, imm8
    , x64asm::XOR_R16_M16 // XOR r16, m16
    , x64asm::XOR_R16_R16 // XOR r16, r16
    , x64asm::XOR_R16_R16_1 // XOR r16, r16
    , x64asm::XOR_R32_IMM32 // XOR r32, imm32
    , x64asm::XOR_R32_IMM8 // XOR r32, imm8
    , x64asm::XOR_R32_M32 // XOR r32, m32
    , x64asm::XOR_R32_R32 // XOR r32, r32
    , x64asm::XOR_R32_R32_1 // XOR r32, r32
    , x64asm::XOR_R64_IMM32 // XOR r64, imm32
    , x64asm::XOR_R64_IMM8 // XOR r64, imm8
    , x64asm::XOR_R64_M64 // XOR r64, m64
    , x64asm::XOR_R64_R64 // XOR r64, r64
    , x64asm::XOR_R64_R64_1 // XOR r64, r64
    , x64asm::XOR_R8_IMM8 // XOR r8, imm8
    , x64asm::XOR_R8_M8 // XOR r8, m8
    , x64asm::XOR_R8_R8 // XOR r8, r8
    , x64asm::XOR_R8_R8_1 // XOR r8, r8
    , x64asm::XOR_R8_RH // XOR r8, rh
    , x64asm::XOR_R8_RH_1 // XOR r8, rh
    , x64asm::XOR_RAX_IMM32 // XOR RAX, imm32
    , x64asm::XOR_RH_IMM8 // XOR rh, imm8
    , x64asm::XOR_RH_M8 // XOR rh, m8
    , x64asm::XOR_RH_R8 // XOR rh, r8
    , x64asm::XOR_RH_R8_1 // XOR rh, r8
    , x64asm::XOR_RH_RH // XOR rh, rh
    , x64asm::XOR_RH_RH_1 // XOR rh, rh
  }, false);
}


} //namespace x64asm

#endif
