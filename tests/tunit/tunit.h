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


#ifndef _STOKE_TEST_TUNIT_TUNIT_H
#define _STOKE_TEST_TUNIT_TUNIT_H

#include "src/ext/cpputil/include/io/fail.h"
#include "src/ext/x64asm/src/constants.h"

namespace stoke {

TEST(TunitParsing, Simple) {
  std::stringstream ss;
  ss << "  .text" << std::endl;
  ss << "  .globl foo" << std::endl;
  ss << "  .type foo, @function" << std::endl;
  ss << ".foo:" << std::endl;
  ss << "  retq" << std::endl;
  ss << "" << std::endl;
  ss << ".size foo, .-foo" << std::endl;

  TUnit tunit;
  ss >> tunit;
  ASSERT_FALSE(cpputil::failed(ss));
}

TEST(TunitParsing, RequireLabel) {
  std::stringstream ss;
  ss << "  .text" << std::endl;
  ss << "  .globl foo" << std::endl;
  ss << "  .type foo, @function" << std::endl;
  ss << "  retq" << std::endl;
  ss << "" << std::endl;
  ss << ".size foo, .-foo" << std::endl;

  TUnit tunit;
  ss >> tunit;
  ASSERT_TRUE(cpputil::failed(ss));
}

TEST(TunitParsing, RequireCorrectLabel) {
  std::stringstream ss;
  ss << "  .text" << std::endl;
  ss << "  .globl foo" << std::endl;
  ss << "  .type foo, @function" << std::endl;
  ss << ".bar:" << std::endl;
  ss << "  retq" << std::endl;
  ss << "" << std::endl;
  ss << ".size foo, .-foo" << std::endl;

  TUnit tunit;
  ss >> tunit;
  ASSERT_TRUE(cpputil::failed(ss));
}

TEST(TunitParsing, EmptyLine) {
  std::stringstream ss;
  ss << "  .text" << std::endl;
  ss << "  .globl foo" << std::endl;
  ss << "  .type foo, @function" << std::endl;
  ss << ".foo:" << std::endl;
  ss << "" << std::endl;
  ss << "  retq" << std::endl;
  ss << "" << std::endl;
  ss << ".size foo, .-foo" << std::endl;

  TUnit tunit;
  ss >> tunit;
  ASSERT_FALSE(cpputil::failed(ss));
  ASSERT_EQ((size_t)2, tunit.get_code().size());
}

TEST(TunitParsing, DataflowAnnotations) {
  std::stringstream ss;
  ss << "  .text" << std::endl;
  ss << "  .globl foo" << std::endl;
  ss << "  .type foo, @function" << std::endl;
  ss << "#! maybe-read { }" << std::endl;
  ss << "#! maybe-write { %rcx }" << std::endl;
  ss << "#! maybe-undef { %rcx }" << std::endl;
  ss << "#! must-read { }" << std::endl;
  ss << "#! must-write { }" << std::endl;
  ss << "#! must-undef { }" << std::endl;
  ss << ".foo:" << std::endl;
  ss << "  retq" << std::endl;
  ss << "" << std::endl;
  ss << ".size foo, .-foo" << std::endl;

  TUnit tunit;
  ss >> tunit;
  x64asm::RegSet empty;
  x64asm::RegSet rcxonly;
  rcxonly += x64asm::Constants::rcx();
  ASSERT_FALSE(ss.fail());
	const auto sets = tunit.get_may_must_sets();
  ASSERT_EQ(sets.must_read_set, empty);
  ASSERT_EQ(sets.must_write_set, empty);
  ASSERT_EQ(sets.must_undef_set, empty);
  ASSERT_EQ(sets.maybe_read_set, empty);
  ASSERT_EQ(sets.maybe_write_set, rcxonly);
  ASSERT_EQ(sets.maybe_undef_set, rcxonly);
}

TEST(TunitParsing, DataflowAnnotationsNormalization) {
  std::stringstream ss;
  ss << "  .text" << std::endl;
  ss << "  .globl foo" << std::endl;
  ss << "  .type foo, @function" << std::endl;
  ss << "#! maybe-read { }" << std::endl;
  ss << "#! must-write { %rcx }" << std::endl;
  ss << ".foo:" << std::endl;
  ss << "  retq" << std::endl;
  ss << "" << std::endl;
  ss << ".size foo, .-foo)" << std::endl;

  TUnit tunit;
  ss >> tunit;
  x64asm::RegSet empty;
  x64asm::RegSet rcxonly;
  x64asm::RegSet all = x64asm::RegSet::universe();
  rcxonly += x64asm::Constants::rcx();

  TUnit::MayMustSets mms = {
    all, // must_read_set
    empty, // must_write_set
    empty, // must_undef_set
    all, // maybe_read_set
    empty, // maybe_write_set
    empty // maybe_undef_set
  };
  mms = tunit.get_may_must_sets(mms);
  ASSERT_FALSE(ss.fail());
  // must read should be empty, because user specified empty set as maybe-read, and
  // thus must read automatically gets to be empty, too
  ASSERT_EQ(mms.must_read_set, empty);
  // maybe write should be rcx, because user specified must write as rcx
  ASSERT_EQ(mms.maybe_write_set, rcxonly);
}

TEST(TunitParsing, NakedRead) {
  std::stringstream ss;
  ss << "xorq %rax, %rax" << std::endl;
  ss << "retq" << std::endl;

  TUnit tunit;
  ss >> tunit;

  ASSERT_FALSE(ss.fail());
}

} //namespace stoke

#endif

