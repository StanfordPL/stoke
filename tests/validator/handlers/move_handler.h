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


#include "src/symstate/bitvector.h"
#include "src/validator/handlers/move_handler.h"

#define EXPECT_BV_EQ(X, Y) EXPECT_TRUE((X).equals(Y)) \
                           << "Expected: " << (X) << std::endl \
                           << "Actual:   " << (Y) << std::endl

class ValidatorMoveTest : public ValidatorTest {};



TEST(MoveHandler, R64R64Works) {

  x64asm::Instruction i(x64asm::MOV_R64_R64);
  i.set_operand(0, x64asm::rdi); //dest
  i.set_operand(1, x64asm::rsi);

  stoke::MoveHandler h;
  EXPECT_EQ(stoke::Handler::BASIC | stoke::Handler::CEG, h.get_support(i));
  EXPECT_FALSE(h.has_error()) << h.error();

  stoke::SymState ss;
  auto rsi = stoke::SymBitVector::var(64, "RSI");
  auto rdi = stoke::SymBitVector::var(64, "RDI");

  ss.set(x64asm::rdi, rdi);
  ss.set(x64asm::rsi, rsi);

  h.build_circuit(i, ss);
  EXPECT_FALSE(h.has_error()) << h.error();

  EXPECT_BV_EQ(rsi, ss[x64asm::rdi]);
  EXPECT_BV_EQ(rsi, ss[x64asm::rsi]);

}

TEST(MoveHandler, R32R32ZerosTop) {

  x64asm::Instruction i(x64asm::MOV_R32_R32);
  i.set_operand(0, x64asm::edi); //dest
  i.set_operand(1, x64asm::esi);

  stoke::MoveHandler h;
  EXPECT_EQ(stoke::Handler::BASIC | stoke::Handler::CEG, h.get_support(i));
  EXPECT_FALSE(h.has_error()) << h.error();

  stoke::SymState ss;
  auto rsi = stoke::SymBitVector::var(64, "RSI");
  auto rdi = stoke::SymBitVector::var(64, "RDI");

  ss.set(x64asm::rdi, rdi);
  ss.set(x64asm::rsi, rsi);

  h.build_circuit(i, ss);
  EXPECT_FALSE(h.has_error()) << h.error();

  // Check RSI is unchanged
  EXPECT_BV_EQ(rsi, ss[x64asm::rsi]);
  // Check RDI is a concatenation of 0 with RSI[31:0]
  EXPECT_BV_EQ(stoke::SymBitVector::constant(32, 0) || rsi[31][0], ss[x64asm::rdi]);
}

TEST(MoveHandler, R16R16PreservesTop) {

  x64asm::Instruction i(x64asm::MOV_R16_R16);
  i.set_operand(0, x64asm::di); //dest
  i.set_operand(1, x64asm::si);

  stoke::MoveHandler h;
  EXPECT_EQ(stoke::Handler::BASIC | stoke::Handler::CEG, h.get_support(i));
  EXPECT_FALSE(h.has_error()) << h.error();

  stoke::SymState ss;
  auto rsi = stoke::SymBitVector::var(64, "RSI");
  auto rdi = stoke::SymBitVector::var(64, "RDI");

  ss.set(x64asm::rdi, rdi);
  ss.set(x64asm::rsi, rsi);

  h.build_circuit(i, ss);
  EXPECT_FALSE(h.has_error()) << h.error();

  // Check RSI is unchanged
  EXPECT_BV_EQ(rsi, ss[x64asm::rsi]);
  // Check RDI is a concatenation of 0 with RSI[31:0]
  EXPECT_BV_EQ(rdi[63][16] || rsi[15][0], ss[x64asm::rdi]);
}

TEST_F(ValidatorMoveTest, SimpleExample) {

  target_ << "movq $0x10, %rax" << std::endl;

  rewrite_ << "movq $0x10, %rcx" << std::endl;
  rewrite_ << "movq %rcx, %rax" << std::endl;

  set_live_outs(x64asm::RegSet::empty() + x64asm::rax);

  assert_equiv();

}

TEST_F(ValidatorMoveTest, MoveRaxToRaxNoop) {

  target_ << "movq %rax, %rax" << std::endl;
  target_ << "retq" << std::endl;

  rewrite_ << "retq" << std::endl;

  assert_equiv();
}


TEST_F(ValidatorMoveTest, MovesCommute) {

  target_ << "movq %rax, %rcx" << std::endl;
  target_ << "movq %rax, %rdx" << std::endl;
  target_ << "retq" << std::endl;

  rewrite_ << "movq %rax, %rdx" << std::endl;
  rewrite_ << "movq %rax, %rcx" << std::endl;
  rewrite_ << "retq" << std::endl;

  assert_equiv();
}

TEST_F(ValidatorMoveTest, MovesDontCommute) {

  target_ << "movq %rcx, %rax" << std::endl;
  target_ << "movq %rdx, %rax" << std::endl;
  target_ << "retq" << std::endl;

  rewrite_ << "movq %rdx, %rax" << std::endl;
  rewrite_ << "movq %rcx, %rax" << std::endl;
  rewrite_ << "retq" << std::endl;

  assert_ceg();
}


TEST_F(ValidatorMoveTest, Issue236SimpleIsSat) {

  target_ << "movw $0x2, %r8w" << std::endl;
  target_ << "retq" << std::endl;

  rewrite_ << "movw $0x2, %r8w" << std::endl;
  rewrite_ << "retq" << std::endl;

  assert_equiv();
}

TEST_F(ValidatorMoveTest, Issue272) {

  target_ << "movq %xmm0, %xmm0" << std::endl;
  target_ << "retq" << std::endl;

  stoke::CpuState cs;
  cs.sse[x64asm::xmm0].get_fixed_quad(0) = 0xc0deface;
  cs.sse[x64asm::xmm0].get_fixed_quad(1) = 0xc0deface;

  check_circuit(cs);
}

TEST_F(ValidatorMoveTest, Issue272_2) {

  target_ << "movq %xmm0, %xmm1" << std::endl;
  target_ << "retq" << std::endl;

  stoke::CpuState cs;
  cs.sse[x64asm::xmm0].get_fixed_quad(0) = 0xc0deface;
  cs.sse[x64asm::xmm0].get_fixed_quad(1) = 0xc0deface;

  check_circuit(cs);
}

TEST_F(ValidatorMoveTest, MovqByteImmediate) {

  target_ << "movq $0xab, %rax" << std::endl;
  target_ << "retq" << std::endl;

  stoke::CpuState cs;
  check_circuit(cs);
}

TEST_F(ValidatorMoveTest, Movzbq) {

  target_ << "movb $0xab, %al" << std::endl;
  target_ << "movzbq %al, %rax" << std::endl;
  target_ << "retq" << std::endl;

  stoke::CpuState cs;
  check_circuit(cs);
}

TEST_F(ValidatorMoveTest, MovqMovzbqEquivalent) {

  target_ << "movq $0xab, %rax" << std::endl;
  target_ << "retq" << std::endl;

  rewrite_ << "movb $0xab, %al" << std::endl;
  rewrite_ << "movzbq %al, %rax" << std::endl;
  rewrite_ << "retq" << std::endl;

  assert_equiv();
}
