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


#include "src/symstate/bitvector.h"
#include "src/symstate/typecheck_visitor.h"

TEST(SymBitvectorTest, CanPrintConstantsAtWidth) {

  auto a = stoke::SymBitVector::constant(3, 5);

  std::stringstream ss;
  ss << a;

  EXPECT_EQ("[ 1, 0, 1 ]", ss.str());
}

TEST(SymBitvectorTest, CanPrintConstantsOverWidth) {

  auto a = stoke::SymBitVector::constant(4, 5);

  std::stringstream ss;
  ss << a;

  EXPECT_EQ("[ 0, 1, 0, 1 ]", ss.str());
}

TEST(SymBitvectorTest, CanPrintExpressions) {

  auto x = stoke::SymBitVector::var(3, "x");
  auto y = stoke::SymBitVector::var(3, "y");

  auto z = ((x+y) & (( x << 3) ^ !y))[2][1];

  std::stringstream ss;
  ss << z;

  EXPECT_EQ("(and (plus <x|3> <y|3>) (xor (<< <x|3> [ 0, 1, 1 ]) !<y|3>))[2:1]", ss.str());

}

TEST(SymBitVectorTest, TypecheckWorks) {

  auto x = stoke::SymBitVector::var(32, "x");
  auto y = stoke::SymBitVector::var(32, "y");

  auto z = ((x+y) & (( x << 3) ^ !y))[10][5];

  stoke::SymTypecheckVisitor tc;
  EXPECT_EQ(6, tc(z));

}

TEST(SymBitVectorTest, TypecheckDetectsBad) {

  auto x = stoke::SymBitVector::var(32, "x");
  auto y = stoke::SymBitVector::var(32, "y");

  auto z = ((x || y) == y);

  stoke::SymTypecheckVisitor tc;
  EXPECT_EQ(0, tc(z));

}

TEST(SymBitVectorTest, ConstantsTypecheck) {

  stoke::SymTypecheckVisitor tc;

  auto x = stoke::SymBitVector::constant(0, 8);
  EXPECT_EQ(0, tc(x));

  auto y = stoke::SymBitVector::constant(3, 7);
  EXPECT_EQ(3, tc(y));
}

TEST(SymBitVectorTest, ExtractTypechecks) {

  auto x = stoke::SymBitVector::constant(32, 8);
  stoke::SymTypecheckVisitor tc;

  EXPECT_EQ(0, tc(x[33][0]));
  EXPECT_EQ(0, tc(x[0][7]));
  EXPECT_EQ(8, tc(x[7][0]));
}

TEST(SymBitVectorTest, UninterpretedFunctionTypechecks) {

  auto x = stoke::SymBitVector::var(32, "x");
  auto y = stoke::SymBitVector::var(32, "y");

  auto f = stoke::SymFunction("f", 32, {32, 32});
  auto eq = f(x,y) == f(x,y);

  auto constraints = std::vector<stoke::SymBool>();
  constraints.push_back(eq);

  stoke::SymTypecheckVisitor tc;
  EXPECT_EQ(32, tc(f(x,y)));
  EXPECT_EQ(1, tc(eq));
}

TEST(SymBitVectorTest, UninterpretedFunctionWrongArg) {

  auto x = stoke::SymBitVector::var(32, "x");
  auto y = stoke::SymBitVector::var(40, "y");

  auto f = stoke::SymFunction("f", 32, {32, 32});
  auto eq = f(x,y) == f(x,y);

  auto constraints = std::vector<stoke::SymBool>();
  constraints.push_back(eq);

  stoke::SymTypecheckVisitor tc;
  EXPECT_EQ(0, tc(f(x,y)));
  EXPECT_EQ(0, tc(eq));
}

TEST(SymBitVectorTest, UninterpretedFunctionWrongArgNum) {

  auto x = stoke::SymBitVector::var(32, "x");
  auto y = stoke::SymBitVector::var(32, "y");

  auto f = stoke::SymFunction("f", 32, {32, 32});

  stoke::SymTypecheckVisitor tc;
  EXPECT_EQ(0, tc(f(x,y, x)));
}

TEST(SymBitVectorTest, UninterpretedFunctionTypesDisagree) {

  auto x = stoke::SymBitVector::var(32, "x");
  auto y = stoke::SymBitVector::var(32, "y");

  auto f = stoke::SymFunction("f", 32, {32, 32});
  auto g = stoke::SymFunction("f", 32, {32, 32, 32});

  stoke::SymTypecheckVisitor tc;
  EXPECT_EQ(0, tc(f(x,y) == g(x,x,y)));
}
