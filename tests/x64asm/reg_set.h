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


#ifndef _STOKE_TEST_X64ASM_REGSET_H
#define _STOKE_TEST_X64ASM_REGSET_H

#include "src/ext/x64asm/src/reg_set.h"

#include <sstream>

namespace x64asm {


class RegSetReaderTest : public ::testing::Test {

public:

  void SetUp() {

  }

protected:

  std::stringstream ss_;
  RegSet rs_;

};

TEST_F(RegSetReaderTest, ReadsRAX) {

  ss_ << "{ %rax }";
  RegSet expected = RegSet::empty() + Constants::rax();

  ss_ >> rs_;
  ASSERT_EQ(expected, rs_);

}

TEST_F(RegSetReaderTest, WritesRAX) {

  std::string expected = "{ %rax }";
  RegSet rs_ = RegSet::empty() + Constants::rax();

  ss_ << rs_;
  ASSERT_EQ(expected, ss_.str());

}

TEST_F(RegSetReaderTest, ReadsAX) {

  ss_ << "{ %ax }";
  RegSet expected = RegSet::empty() + Constants::ax();

  ss_ >> rs_;
  ASSERT_EQ(expected, rs_);

}

TEST_F(RegSetReaderTest, WritesAX) {

  std::string expected = "{ %ax }";
  RegSet rs_ = RegSet::empty() + Constants::ax();

  ss_ << rs_;
  ASSERT_EQ(expected, ss_.str());

}

TEST_F(RegSetReaderTest, WritesAxEcx) {

  std::string expected = "{ %ax %ecx }";
  RegSet rs_ = RegSet::empty() + Constants::ax() + Constants::ecx();

  ss_ << rs_;
  ASSERT_EQ(expected, ss_.str());
}

TEST_F(RegSetReaderTest, ReadsXMM0) {

  ss_ << "{ %xmm0 }";
  RegSet expected = RegSet::empty() + Constants::xmm0();

  ss_ >> rs_;
  ASSERT_EQ(expected, rs_);

}

TEST_F(RegSetReaderTest, WritesXMM0) {

  std::string expected = "{ %xmm0 }";
  RegSet rs_ = RegSet::empty() + Constants::xmm0();

  ss_ << rs_;
  ASSERT_EQ(expected, ss_.str());

}

TEST_F(RegSetReaderTest, ReadsYMM0) {

  ss_ << "{ %ymm0 }";
  RegSet expected = RegSet::empty() + Constants::ymm0();

  ss_ >> rs_;
  ASSERT_EQ(expected, rs_);

}

TEST_F(RegSetReaderTest, WritesYMM0) {

  std::string expected = "{ %ymm0 }";
  RegSet rs_ = RegSet::empty() + Constants::ymm0();

  ss_ << rs_;
  ASSERT_EQ(expected, ss_.str());

}

TEST_F(RegSetReaderTest, ReadsCf) {

  ss_ << "{ %cf }";
  RegSet expected = RegSet::empty() + eflags_cf;

  ss_ >> rs_;
  ASSERT_EQ(expected, rs_);

}

TEST_F(RegSetReaderTest, WritesCf) {

  std::string expected = "{ %cf }";
  RegSet rs_ = RegSet::empty() + eflags_cf;

  ss_ << rs_;
  ASSERT_EQ(expected, ss_.str());

}

TEST_F(RegSetReaderTest, ReadsIopl) {

  ss_ << "{ %iopl }";
  RegSet expected = RegSet::empty() + eflags_iopl;

  ss_ >> rs_;
  ASSERT_EQ(expected, rs_);

}

TEST_F(RegSetReaderTest, WritesIopl) {

  std::string expected = "{ %iopl }";
  RegSet rs_ = RegSet::empty() + eflags_iopl;

  ss_ << rs_;
  ASSERT_EQ(expected, ss_.str());

}

TEST(RegSetWriteSet, AddbSil) {

  std::stringstream ss;
  ss << "addb $0x10, %sil" << std::endl;

  Code c;
  ss >> c;

  Instruction i = c[0];
  RegSet writes = i.must_write_set();
  EXPECT_TRUE(writes.contains(sil));

}

} //namespace x64asm

#endif
