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

#include "src/disassembler/disassembler.h"
#include "src/tunit/tunit.h"

namespace stoke {

TEST(DisassemblerTest, SimpleExample) {
  /* These are the expected answers */
  std::stringstream tmp;
  tmp << ".sample:" << std::endl;
  tmp << "leal (%rsi, %rdi, 2), %eax" << std::endl;
  tmp << "subl  %edi, %esi" << std::endl;
  tmp << "imull %eax, %esi" << std::endl;
  tmp << "leal -0x3(%rsi), %eax" << std::endl;
  tmp << "addl $0x5, %esi" << std::endl;
  tmp << "imull %esi, %eax" << std::endl;
  tmp << "retq" << std::endl;

  x64asm::Code sample_code;
  tmp >> sample_code;

  /* Here's the callback sent to the disassembler */
  bool found_sample = false;

  Disassembler::Callback test_tunit =
  [&](const FunctionCallbackData & fcd) {
    EXPECT_FALSE(fcd.parse_error) << fcd.parse_error_msg;

    // There's only one function we're really testing.
    if (fcd.tunit.get_name() == "sample") {
      EXPECT_EQ(sample_code, fcd.tunit.get_code());
      EXPECT_EQ((uint64_t)0x40, fcd.tunit.get_file_offset());
      found_sample = true;
    }
  };

  Disassembler d;
  d.set_function_callback(&test_tunit);
  d.disassemble("tests/fixtures/disassembler/sample");

  EXPECT_TRUE(found_sample);
  EXPECT_FALSE(d.has_error());
  EXPECT_EQ("", d.get_error());
}

/* This is primarily to check that labels are generated
   correctly.  It also checks that offsets are correct
   in the presense of labels. */
TEST(DisassemblerTest, PopCnt) {
  /* These are the expected answers */
  std::stringstream tmp;
  tmp << "._Z6popcntm:" << std::endl;
  tmp << "testq  %rdi,%rdi" << std::endl;
  tmp << "je     .L_40058f" << std::endl;
  tmp << "nop" << std::endl;
  tmp << "nop" << std::endl;
  tmp << "xorl   %eax,%eax" << std::endl;
  for(size_t i = 0; i < 9; ++i)
    tmp << "nop" << std::endl;
  tmp << ".L_400580:" << std::endl;
  tmp << "movl   %edi,%edx" << std::endl;
  tmp << "andl   $0x1,%edx" << std::endl;
  tmp << "addl   %edx,%eax" << std::endl;
  tmp << "shrq   $0x1, %rdi" << std::endl;
  tmp << "jne    .L_400580" << std::endl;
  tmp << "nop" << std::endl;
  tmp << "nop" << std::endl;
  tmp << "cltq   " << std::endl;
  tmp << "retq   " << std::endl;
  tmp << ".L_40058f:" << std::endl;
  tmp << "xorl   %eax, %eax" << std::endl;
  tmp << "retq" << std::endl;
  for(size_t i = 0; i < 14; ++i)
    tmp << "nop" << std::endl;

  x64asm::Code popcnt_code;
  tmp >> popcnt_code;

  /* Here's the callback sent to the disassembler */
  bool found_popcnt = false;
  bool found_main = false;

  Disassembler::Callback test_tunit =
  [&](const FunctionCallbackData & pf) {
    EXPECT_FALSE(pf.parse_error) << pf.parse_error_msg;

    // There's only one function we're really testing.
    if (pf.tunit.get_name() == "_Z6popcntm") {
      EXPECT_EQ(popcnt_code, pf.tunit.get_code());
      EXPECT_EQ((uint64_t)0x570, pf.tunit.get_file_offset());
      found_popcnt = true;
    }

    if (pf.tunit.get_name() == "main") {
      found_main = true;
    }
  };

  Disassembler d;
  d.set_function_callback(&test_tunit);
  d.disassemble("tests/fixtures/disassembler/popcnt");

  EXPECT_TRUE(found_popcnt);
  EXPECT_TRUE(found_main);
  EXPECT_FALSE(d.has_error());
  EXPECT_EQ("", d.get_error());
}

TEST(DisassemblerTest, ParseErrors) {
  size_t errors_found = 0;

  Disassembler::Callback test_tunit =
  [&](const FunctionCallbackData & pf) {
    if (pf.parse_error) {
      errors_found++;
    }
  };

  Disassembler d;
  d.set_function_callback(&test_tunit);
  d.disassemble("tests/fixtures/disassembler/errors");

  EXPECT_EQ(errors_found, (uint64_t)0);
}


TEST(DisassemblerTest, NoFileGraceful) {
  Disassembler::Callback  empty =
  [](const FunctionCallbackData & pf) {
    EXPECT_TRUE(false) << "The file isn't supposed to exist...";
  };

  Disassembler d;
  d.set_function_callback(&empty);

  d.disassemble("texts/fixtures/disassembler/does_not_exist");
  EXPECT_TRUE(d.has_error());
  EXPECT_EQ("Error opening file.", d.get_error());
}

TEST(DisassemblerTest, NoShellInjection) {
  Disassembler d;

  Disassembler::Callback  empty =
  [](const FunctionCallbackData & pf) {
    EXPECT_TRUE(false) << "The file isn't supposed to exist...";
  };

  d.disassemble("/usr/bin/ls && touch ~/pwned");
  d.set_function_callback(&empty);

  EXPECT_TRUE(d.has_error());
  EXPECT_EQ("Character ' ' not allowed in filename for security.", d.get_error());
}

} //namespace stoke
