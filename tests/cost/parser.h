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


#include <sstream>

#include "src/cfg/cfg.h"
#include "src/cost/cost_function.h"
#include "src/cost/cost_parser.h"
#include "src/cost/expr.h"

class CostParserTest : public ::testing::Test {

public:
  CostParserTest() : a(2), b(3), c(7) {}

protected:

  /** Parses the string s and tests the cost. */
  stoke::Cost check(std::string s) {
    stoke::Cfg empty({}, x64asm::RegSet::empty(), x64asm::RegSet::empty());;

    stoke::CostParser cp(s, table_);
    stoke::CostFunction* cf = cp.run();
    EXPECT_TRUE(cf);
    EXPECT_EQ("", cp.get_error());

    if (cf) {
      auto result = (*cf)(empty).second;
      return result;
    } else {
      return 0ul;
    }
  }

  /** Parses the string s and checks for an error. */
  std::string check_err(std::string s) {
    stoke::CostParser cp(s, table_);
    stoke::CostFunction* cf = cp.run();
    EXPECT_FALSE(cf);
    auto result = cp.get_error();
    return result;
  }

private:

  stoke::ExprCost a; // 2
  stoke::ExprCost b; // 3
  stoke::ExprCost c; // 7

  stoke::CostParser::SymbolTable table_;

  void SetUp() {
    table_["a"] = &a;
    table_["bb"] = &b;
    table_["ccc"] = &c;
  }
};

TEST_F(CostParserTest, Trivial) {
  EXPECT_EQ(1ul, check("1"));
}

TEST_F(CostParserTest, Addition) {
  EXPECT_EQ(5ul, check("a+bb"));
}

TEST_F(CostParserTest, Subtraction) {
  EXPECT_EQ(1ul, check("bb-a"));
}

TEST_F(CostParserTest, SpacesWork) {
  EXPECT_EQ(1ul, check("bb -a   "));
}

TEST_F(CostParserTest, Multiplication) {
  EXPECT_EQ(6ul, check("bb*a"));
}

TEST_F(CostParserTest, Division) {
  EXPECT_EQ(3ul, check("ccc/a"));
}

TEST_F(CostParserTest, Modulus) {
  EXPECT_EQ(1ul, check("ccc % bb"));
  EXPECT_EQ(1ul, check("ccc % a"));
  EXPECT_EQ(0ul, check("(ccc+1) % a"));
  EXPECT_EQ(2ul, check("(ccc+1) % bb"));
}

TEST_F(CostParserTest, And) {
  EXPECT_EQ(3ul, check("ccc & bb"));
  EXPECT_EQ(2ul, check("ccc & a"));
  EXPECT_EQ(0ul, check("(ccc+1) & a"));
  EXPECT_EQ(0ul, check("(ccc+1) & bb"));
}

TEST_F(CostParserTest, Or) {
  EXPECT_EQ(7ul,  check("ccc | bb"));
  EXPECT_EQ(7ul,  check("ccc | a"));
  EXPECT_EQ(10ul, check("(ccc+1) | a"));
  EXPECT_EQ(11ul, check("(ccc+1) | bb"));
}

TEST_F(CostParserTest, Shl) {
  EXPECT_EQ(7ul*8ul,  check("ccc << bb"));
  EXPECT_EQ(28ul,     check("ccc << a"));
  EXPECT_EQ(32ul,     check("(ccc+1) << a"));
  EXPECT_EQ(64ul,     check("(ccc+1) << bb"));
}

TEST_F(CostParserTest, Shr) {
  EXPECT_EQ(0ul,  check("ccc >> bb"));
  EXPECT_EQ(1ul,  check("ccc >> a"));
  EXPECT_EQ(2ul,  check("(ccc+1) >> a"));
  EXPECT_EQ(1ul,  check("(ccc+1) >> bb"));
}

TEST_F(CostParserTest, Lt) {
  EXPECT_EQ(0ul,  check("ccc < bb"));
  EXPECT_EQ(0ul,  check("ccc < a"));
  EXPECT_EQ(1ul,  check("a < ccc"));
  EXPECT_EQ(1ul,  check("bb < ccc"));
  EXPECT_EQ(0ul,  check("ccc < ccc"));
}

TEST_F(CostParserTest, Gt) {
  EXPECT_EQ(1ul,  check("ccc > bb"));
  EXPECT_EQ(1ul,  check("ccc > a"));
  EXPECT_EQ(0ul,  check("a > ccc"));
  EXPECT_EQ(0ul,  check("bb > ccc"));
  EXPECT_EQ(0ul,  check("ccc > ccc"));
}

TEST_F(CostParserTest, Lte) {
  EXPECT_EQ(0ul,  check("ccc <= bb"));
  EXPECT_EQ(0ul,  check("ccc <= a"));
  EXPECT_EQ(1ul,  check("a   <= ccc"));
  EXPECT_EQ(1ul,  check("bb  <= ccc"));
  EXPECT_EQ(1ul,  check("ccc <= ccc"));
}

TEST_F(CostParserTest, Gte) {
  EXPECT_EQ(1ul,  check("ccc >= bb"));
  EXPECT_EQ(1ul,  check("ccc >= a"));
  EXPECT_EQ(0ul,  check("a   >= ccc"));
  EXPECT_EQ(0ul,  check("bb  >= ccc"));
  EXPECT_EQ(1ul,  check("ccc >= ccc"));
}

TEST_F(CostParserTest, Eq) {
  EXPECT_EQ(0ul,  check("ccc == bb"));
  EXPECT_EQ(0ul,  check("ccc == a"));
  EXPECT_EQ(0ul,  check("a   == ccc"));
  EXPECT_EQ(0ul,  check("bb  == ccc"));
  EXPECT_EQ(1ul,  check("ccc == ccc"));
}

TEST_F(CostParserTest, TimesBeforePlus) {
  EXPECT_EQ(13ul,  check("7+3*2"));
  EXPECT_EQ(20ul,  check("(7+3)*2"));
  EXPECT_EQ(23ul,  check("ccc*bb+a"));
}

TEST_F(CostParserTest, VariableNotFound) {
  check_err("aa");
}

TEST_F(CostParserTest, MiscelaneousErrors) {
  check_err("1+");
  check_err("1+()");
}

TEST_F(CostParserTest, DoLogic) {
  EXPECT_EQ(1ul, check("(3 > 2) & (3 >= 3)"));
  EXPECT_EQ(0ul, check("(2 > 2) & (3 >= 3)"));
  EXPECT_EQ(1ul, check("(2 > 2) | (3 >= 3)"));
  EXPECT_EQ(0ul, check("(2 > 2) | (3 > 3)"));
}
