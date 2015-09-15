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
#include "src/validator/handlers/pseudo_handler.h"

#define EXPECT_BV_EQ(X, Y) EXPECT_TRUE((X).equals(Y)) \
                           << "Expected: " << (X) << std::endl \
                           << "Actual:   " << (Y) << std::endl

#define EXPECT_BIT_EQ(X, Y) EXPECT_TRUE((X).equals(Y))

namespace stoke {

class ValidatorPseudoTest : public ValidatorTest {};


TEST_F(ValidatorPseudoTest, Move_128) {

  auto target = R"STR(.target:
pand %xmm9, %xmm8
retq
)STR";

  auto rewrite = R"STR(.rewrite:
callq .move_128_064_xmm9_rax_rbx
callq .move_128_064_xmm8_rcx_rdx
andq %rax, %rcx
andq %rbx, %rdx
callq .move_064_128_rcx_rdx_xmm8
retq
)STR";

  target_ << target;
  rewrite_ << rewrite;
  set_live_outs(x64asm::RegSet::empty() + x64asm::xmm8);
  assert_equiv();

}

TEST(HandlerPseudoTest, SetOF) {

  x64asm::Instruction i(x64asm::CALL_LABEL);
  i.set_operand(0, x64asm::Label(".set_of"));

  stoke::PseudoHandler h;
  EXPECT_EQ(stoke::Handler::BASIC | stoke::Handler::CEG, h.get_support(i));
  EXPECT_FALSE(h.has_error()) << h.error();

  stoke::SymState ss;
  auto flag = stoke::SymBool::var("flag");

  ss.set(x64asm::eflags_of, flag);

  h.build_circuit(i, ss);
  EXPECT_FALSE(h.has_error()) << h.error();

  EXPECT_BIT_EQ(stoke::SymBool::constant(true), ss[x64asm::eflags_of]);
}

TEST(HandlerPseudoTest, ClearOF) {

  x64asm::Instruction i(x64asm::CALL_LABEL);
  i.set_operand(0, x64asm::Label(".clear_of"));

  stoke::PseudoHandler h;
  EXPECT_EQ(stoke::Handler::BASIC | stoke::Handler::CEG, h.get_support(i));
  EXPECT_FALSE(h.has_error()) << h.error();

  stoke::SymState ss;
  auto flag = stoke::SymBool::var("flag");

  ss.set(x64asm::eflags_of, flag);

  h.build_circuit(i, ss);
  EXPECT_FALSE(h.has_error()) << h.error();

  EXPECT_BIT_EQ(stoke::SymBool::constant(false), ss[x64asm::eflags_of]);
}

TEST(HandlerPseudoTest, SetCF) {

  x64asm::Instruction i(x64asm::CALL_LABEL);
  i.set_operand(0, x64asm::Label(".set_cf"));

  stoke::PseudoHandler h;
  EXPECT_EQ(stoke::Handler::BASIC | stoke::Handler::CEG, h.get_support(i));
  EXPECT_FALSE(h.has_error()) << h.error();

  stoke::SymState ss;
  auto flag = stoke::SymBool::var("flag");

  ss.set(x64asm::eflags_cf, flag);

  h.build_circuit(i, ss);
  EXPECT_FALSE(h.has_error()) << h.error();

  EXPECT_BIT_EQ(stoke::SymBool::constant(true), ss[x64asm::eflags_cf]);
}

TEST(HandlerPseudoTest, ClearCF) {

  x64asm::Instruction i(x64asm::CALL_LABEL);
  i.set_operand(0, x64asm::Label(".clear_cf"));

  stoke::PseudoHandler h;
  EXPECT_EQ(stoke::Handler::BASIC | stoke::Handler::CEG, h.get_support(i));
  EXPECT_FALSE(h.has_error()) << h.error();

  stoke::SymState ss;
  auto flag = stoke::SymBool::var("flag");

  ss.set(x64asm::eflags_cf, flag);

  h.build_circuit(i, ss);
  EXPECT_FALSE(h.has_error()) << h.error();

  EXPECT_BIT_EQ(stoke::SymBool::constant(false), ss[x64asm::eflags_cf]);
}

TEST(HandlerPseudoTest, SetAF) {

  x64asm::Instruction i(x64asm::CALL_LABEL);
  i.set_operand(0, x64asm::Label(".set_af"));

  stoke::PseudoHandler h;
  EXPECT_EQ(stoke::Handler::BASIC | stoke::Handler::CEG, h.get_support(i));
  EXPECT_FALSE(h.has_error()) << h.error();

  stoke::SymState ss;
  auto flag = stoke::SymBool::var("flag");

  ss.set(x64asm::eflags_af, flag);

  h.build_circuit(i, ss);
  EXPECT_FALSE(h.has_error()) << h.error();

  EXPECT_BIT_EQ(stoke::SymBool::constant(true), ss[x64asm::eflags_af]);
}

TEST(HandlerPseudoTest, ClearAF) {

  x64asm::Instruction i(x64asm::CALL_LABEL);
  i.set_operand(0, x64asm::Label(".clear_af"));

  stoke::PseudoHandler h;
  EXPECT_EQ(stoke::Handler::BASIC | stoke::Handler::CEG, h.get_support(i));
  EXPECT_FALSE(h.has_error()) << h.error();

  stoke::SymState ss;
  auto flag = stoke::SymBool::var("flag");

  ss.set(x64asm::eflags_of, flag);

  h.build_circuit(i, ss);
  EXPECT_FALSE(h.has_error()) << h.error();

  EXPECT_BIT_EQ(stoke::SymBool::constant(false), ss[x64asm::eflags_af]);
}

TEST(HandlerPseudoTest, SetZF) {

  x64asm::Instruction i(x64asm::CALL_LABEL);
  i.set_operand(0, x64asm::Label(".set_zf"));

  stoke::PseudoHandler h;
  EXPECT_EQ(stoke::Handler::BASIC | stoke::Handler::CEG, h.get_support(i));
  EXPECT_FALSE(h.has_error()) << h.error();

  stoke::SymState ss;
  auto flag = stoke::SymBool::var("flag");

  ss.set(x64asm::eflags_zf, flag);

  h.build_circuit(i, ss);
  EXPECT_FALSE(h.has_error()) << h.error();

  EXPECT_BIT_EQ(stoke::SymBool::constant(true), ss[x64asm::eflags_zf]);
}

TEST(HandlerPseudoTest, ClearZF) {

  x64asm::Instruction i(x64asm::CALL_LABEL);
  i.set_operand(0, x64asm::Label(".clear_zf"));

  stoke::PseudoHandler h;
  EXPECT_EQ(stoke::Handler::BASIC | stoke::Handler::CEG, h.get_support(i));
  EXPECT_FALSE(h.has_error()) << h.error();

  stoke::SymState ss;
  auto flag = stoke::SymBool::var("flag");

  ss.set(x64asm::eflags_zf, flag);

  h.build_circuit(i, ss);
  EXPECT_FALSE(h.has_error()) << h.error();

  EXPECT_BIT_EQ(stoke::SymBool::constant(false), ss[x64asm::eflags_zf]);
}

}