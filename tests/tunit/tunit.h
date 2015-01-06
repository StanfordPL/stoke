// Copyright 2013-2015 Eric Schkufza, Rahul Sharma, Berkeley Churchill, Stefan Heule
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


TEST(TunitParsing, Simple) {
  std::stringstream ss;
  ss << R"(  .text
  .globl foo
  .type foo, @function
.foo:
  retq

.size foo, .-foo)";

  stoke::TUnit tunit;
  ss >> tunit;
  ASSERT_FALSE(ss.fail());
}

TEST(TunitParsing, RequireLabel) {
  std::stringstream ss;
  ss << R"(  .text
  .globl foo
  .type foo, @function
  retq

.size foo, .-foo)";

  stoke::TUnit tunit;
  ss >> tunit;
  ASSERT_TRUE(ss.fail());
}

TEST(TunitParsing, RequireCorrectLabel) {
  std::stringstream ss;
  ss << R"(  .text
  .globl foo
  .type foo, @function
.bar:
  retq

.size foo, .-foo)";

  stoke::TUnit tunit;
  ss >> tunit;
  ASSERT_TRUE(ss.fail());
}

TEST(TunitParsing, EmptyLine) {
  std::stringstream ss;
  ss << R"(  .text
  .globl foo
  .type foo, @function
.foo:

  retq

.size foo, .-foo)";

  stoke::TUnit tunit;
  ss >> tunit;
  ASSERT_FALSE(ss.fail());
  ASSERT_EQ((size_t)2, tunit.code.size());
}


#endif
