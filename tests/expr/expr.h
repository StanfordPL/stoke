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
#include <functional>

#include "src/expr/expr.h"
#include "src/expr/expr_parser.h"

namespace stoke {

class ExprTest : public ::testing::Test {

protected:

  size_t eval(const std::string expr, const std::function<bool (const std::string&)>& is_var_valid = [](const std::string& a) -> bool { return false; }, const std::function<size_t (const std::string&)>& environment = [](const std::string& a) {
    return 0;
  }, bool should_parse = true) {
    ExprParser<size_t> parser(expr, is_var_valid);
    if (should_parse) {
      EXPECT_FALSE(parser.has_error()) << "there should not be a parser error when parsing '" << expr << "'. Error: " << parser.get_error();
      Expr<size_t> e = *parser.get();
      return e(environment);
    } else {
      EXPECT_TRUE(parser.has_error()) << "there should be a parser error when parsing '" << expr << "'.";
      return 0;
    }
  }

};

TEST_F(ExprTest, Simple) {
  EXPECT_EQ(eval("2*3"), 6);
  EXPECT_EQ(eval("2* 3"), 6);
  EXPECT_EQ(eval("2 * 3"), 6);
  EXPECT_EQ(eval("2*3   "), 6);
  EXPECT_EQ(eval("   2*3   "), 6);
  EXPECT_EQ(eval(" 2* 3   "), 6);
  EXPECT_EQ(eval("   2*3   "), 6);
  EXPECT_EQ(eval(" ( 2* 3  ) "), 6);

  EXPECT_EQ(eval("1+2"), 3);
  EXPECT_EQ(eval("1-2"), -1);
  EXPECT_EQ(eval("0*10"), 0);
  EXPECT_EQ(eval("1 << 2"), 4);
  EXPECT_EQ(eval("4 >> 1"), 2);
  EXPECT_EQ(eval("2 ** 3"), 8);
  EXPECT_EQ(eval("2 == 3"), 0);
  EXPECT_EQ(eval("3 != 3"), 0);
  EXPECT_EQ(eval("11 % 2"), 1);
  EXPECT_EQ(eval("6 / 3"), 2);
  EXPECT_EQ(eval("1 | 2"), 3);
  EXPECT_EQ(eval("1 & 2 & 0"), 0);
  EXPECT_EQ(eval("1 < 1"), 0);
  EXPECT_EQ(eval("1 <= 1"), 1);
  EXPECT_EQ(eval("1 > 1"), 0);
  EXPECT_EQ(eval("1 >= 1"), 1);

  EXPECT_EQ(eval("1+(2)"), 3);
  EXPECT_EQ(eval("1+(2)"), 3);
  EXPECT_EQ(eval("(1+(2))"), 3);
  EXPECT_EQ(eval("(((1)))+(2)"), 3);
  EXPECT_EQ(eval("(0) + (1+(2))"), 3);
}

TEST_F(ExprTest, Variables) {
  const std::function<bool (const std::string&)>& v =
  [](const std::string& a) {
    return a == "a" || a == "b";
  };
  const std::function<size_t (const std::string&)>& e =
  [](const std::string& a) {
    return a == "a" ? 10 : 0;
  };
  EXPECT_EQ(eval("a", v, e), 10);
  EXPECT_EQ(eval("b", v, e), 0);
  EXPECT_EQ(eval("a+b", v, e), 10);
  EXPECT_EQ(eval("a + b", v, e), 10);
  EXPECT_EQ(eval("a +  b   ", v, e), 10);
  EXPECT_EQ(eval("a ** b", v, e), 1);
  eval("c", v, e, false);
  eval("=", v, e, false);
  eval("++", v, e, false);
  eval("-1", v, e, false);
  eval("1--1", v, e, false);
  eval("2+=2", v, e, false);
  eval("abc", v, e, false);
  eval("2+c", v, e, false);
  eval("(c+2", v, e, false);
  eval("(", v, e, false);
}

} //namespace stoke
