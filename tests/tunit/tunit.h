
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
  ASSERT_EQ(2, tunit.code.size());
}


#endif
