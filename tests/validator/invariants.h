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

#include "src/validator/invariants/no_signals.h"

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




} //namespace stoke
