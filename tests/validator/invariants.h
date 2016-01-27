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

#include "src/validator/invariants/flag.h"
#include "src/validator/invariants/no_signals.h"
#include "src/validator/invariants/state_equality.h"

namespace stoke {

class ValidatorInvariantTest : public ::testing::Test { };

TEST_F(ValidatorInvariantTest, NoSignalsCheckTrue) {
  CpuState cs;
  NoSignalsInvariant nsi;
  EXPECT_TRUE(nsi.check(cs, cs));
}

TEST_F(ValidatorInvariantTest, NoSignalsCheckFalseTarget) {
  CpuState cs;
  CpuState bad;
  bad.code = ErrorCode::SIGSEGV_;
  NoSignalsInvariant nsi;
  EXPECT_FALSE(nsi.check(bad, cs));
}


TEST_F(ValidatorInvariantTest, NoSignalsCheckFalseRewrite) {
  CpuState cs;
  CpuState bad;
  bad.code = ErrorCode::SIGSEGV_;
  NoSignalsInvariant nsi;
  EXPECT_FALSE(nsi.check(cs, bad));
}

TEST_F(ValidatorInvariantTest, NoSignalsCheckFalseBoth) {
  CpuState cs;
  CpuState bad;
  bad.code = ErrorCode::SIGSEGV_;
  NoSignalsInvariant nsi;
  EXPECT_FALSE(nsi.check(bad, bad));
}

TEST_F(ValidatorInvariantTest, JETaken) {
  // instruction
  stringstream ss;
  ss << ".foo:" << endl;
  ss << "je .foo" << endl;

  x64asm::Code code;
  ss >> code;
  auto instr = code[1];

  // test if the jump will be taken
  FlagInvariant fi_taken(instr, false, false);
  CpuState cs;

  cs.rf.set(eflags_zf.index(), false);
  EXPECT_FALSE(fi_taken.check(cs, cs));

  cs.rf.set(eflags_zf.index(), true);
  EXPECT_TRUE(fi_taken.check(cs, cs));


  // test if the jump will not be taken
  FlagInvariant fi_fall(instr, false, true);

  cs.rf.set(eflags_zf.index(), false);
  EXPECT_TRUE(fi_fall.check(cs, cs));

  cs.rf.set(eflags_zf.index(), true);
  EXPECT_FALSE(fi_fall.check(cs, cs));
}


TEST_F(ValidatorInvariantTest, StateEqualityXmm) {
  RegSet rs = RegSet::empty() + xmm3;
  Sandbox sb;
  StateGen sg(&sb);
  CpuState target, rewrite;
  sg.get(target);
  sg.get(rewrite);

  StateEqualityInvariant sei(rs);

  EXPECT_FALSE(sei.check(target, rewrite));

  rewrite = target;

  EXPECT_TRUE(sei.check(target, rewrite));

  rewrite.sse[xmm3].get_fixed_quad(2)++;

  EXPECT_TRUE(sei.check(target, rewrite));

  rewrite.sse[xmm3].get_fixed_quad(1)++;

  EXPECT_FALSE(sei.check(target, rewrite));
}

TEST_F(ValidatorInvariantTest, StateEqualityYmm) {
  RegSet rs = RegSet::empty() + ymm3;
  Sandbox sb;
  StateGen sg(&sb);
  CpuState target, rewrite;
  sg.get(target);
  sg.get(rewrite);

  StateEqualityInvariant sei(rs);

  EXPECT_FALSE(sei.check(target, rewrite));

  rewrite = target;

  EXPECT_TRUE(sei.check(target, rewrite));

  rewrite.sse[xmm3].get_fixed_quad(2)++;
  
  EXPECT_FALSE(sei.check(target, rewrite));

  rewrite.sse[xmm3].get_fixed_quad(1)++;

  EXPECT_FALSE(sei.check(target, rewrite));
}

} //namespace stoke
