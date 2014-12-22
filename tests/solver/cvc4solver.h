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


#include "src/solver/cvc4solver.h"

TEST(Cvc4SolverTest, TautologyIsSat) {

  auto x = stoke::SymBitVector::var(64, "x");
  auto y = stoke::SymBitVector::var(64, "y");
  auto z = stoke::SymBitVector::var(64, "z");

  auto lhs = (x | y) & z;
  EXPECT_EQ(stoke::SymBitVector::AND, lhs.type());

  auto rhs = (x & z) | (y & z);
  EXPECT_EQ(stoke::SymBitVector::OR, rhs.type());

  auto eq = lhs == rhs;
  EXPECT_EQ(stoke::SymBool::EQ, eq.type());

  auto constraints = std::vector<stoke::SymBool>();
  constraints.push_back(eq);

  stoke::Cvc4Solver cvc4;
  EXPECT_TRUE(cvc4.is_sat(constraints));
  EXPECT_FALSE(cvc4.has_error()) << "CVC4 encountered" << cvc4.get_error();

}


TEST(Cvc4SolverTest, FalsehoodIsUnSat) {

  auto x = stoke::SymBitVector::var(64, "x");
  auto y = stoke::SymBitVector::var(64, "y");
  auto z = stoke::SymBitVector::var(64, "z");

  auto lhs = (x | y) & z;
  auto rhs = (x & z) | (y & z);
  auto eq = lhs != rhs;

  auto constraints = std::vector<stoke::SymBool>();
  constraints.push_back(eq);

  stoke::Cvc4Solver cvc4;
  EXPECT_FALSE(cvc4.is_sat(constraints));
  EXPECT_FALSE(cvc4.has_error()) << "CVC4 encountered" << cvc4.get_error();

}

TEST(Cvc4SolverTest, ImpliesWorksUnsat) {

  auto x = stoke::SymBool::var("x");
  auto y = stoke::SymBool::var("y");

  auto lhs = (!x) | y;
  auto rhs = x.implies(y);

  auto neq = lhs != rhs;

  auto constraints = std::vector<stoke::SymBool>();
  constraints.push_back(neq);

  stoke::Cvc4Solver cvc4;
  EXPECT_FALSE(cvc4.is_sat(constraints));
  EXPECT_FALSE(cvc4.has_error()) << "CVC4 encountered" << cvc4.get_error();

}

TEST(Cvc4SolverTest, ImpliesWorksSat) {

  auto x = stoke::SymBool::var("x");
  auto y = stoke::SymBool::var("y");

  auto lhs = (!x) | y;
  auto rhs = x.implies(y);

  auto eq = lhs == rhs;

  auto constraints = std::vector<stoke::SymBool>();
  constraints.push_back(eq);

  stoke::Cvc4Solver cvc4;
  EXPECT_TRUE(cvc4.is_sat(constraints));
  EXPECT_FALSE(cvc4.has_error()) << "CVC4 encountered" << cvc4.get_error();

}

TEST(Cvc4SolverTest, ConcatTautology) {

  auto x = stoke::SymBitVector::var(32, "x");
  auto eq = (x[31][16] || x[15][0]) != x;

  auto constraints = std::vector<stoke::SymBool>();
  constraints.push_back(eq);

  stoke::Cvc4Solver cvc4;
  EXPECT_FALSE(cvc4.is_sat(constraints));
  EXPECT_FALSE(cvc4.has_error()) << "CVC4 encountered" << cvc4.get_error();
}

TEST(Cvc4SolverTest, ConcatTautology2) {

  auto x = stoke::SymBitVector::var(32, "x");
  auto zeros = stoke::SymBitVector::constant(16, 0);
  auto eq1 = (zeros || x[15][0]) != x;
  auto eq2 = x[31][16] == zeros;

  auto constraints = std::vector<stoke::SymBool>();
  constraints.push_back(eq1);
  constraints.push_back(eq2);

  stoke::Cvc4Solver cvc4;
  EXPECT_FALSE(cvc4.is_sat(constraints));
  EXPECT_FALSE(cvc4.has_error()) << "CVC4 encountered" << cvc4.get_error();
}


TEST(Cvc4SolverTest, MulModTest) {

  auto x = stoke::SymBitVector::var(8, "x");
  auto y = stoke::SymBitVector::var(8, "y");

  auto m = stoke::SymBitVector::var(4, "m");
  auto mx = (stoke::SymBitVector::constant(4, 0) || m);

  // x*y % m == ((x % m) * (y % m)) % m
  auto lhs = (x * y) % mx;
  auto rhs = ((x % mx) * (y % mx)) % mx;
  auto eq = lhs != rhs;

  // Constrain upper 5 bits of x and y to 0.
  auto zero_x = x[7][3] == stoke::SymBitVector::constant(5,0);
  auto zero_y = y[7][3] == stoke::SymBitVector::constant(5,0);

  // m may not be zero
  auto m_nonzero = m != stoke::SymBitVector::constant(4, 0);

  auto constraints = std::vector<stoke::SymBool>();
  constraints.push_back(eq);
  constraints.push_back(m_nonzero);
  constraints.push_back(zero_x);
  constraints.push_back(zero_y);

  stoke::Cvc4Solver cvc4;
  EXPECT_FALSE(cvc4.is_sat(constraints));
  EXPECT_FALSE(cvc4.has_error()) << "CVC4 encountered" << cvc4.get_error();

}

TEST(Cvc4SolverTest, UninterpretedFunctionIdentity) {

  auto x = stoke::SymBitVector::var(32, "x");
  auto y = stoke::SymBitVector::var(32, "y");

  auto f = stoke::SymFunction("f", 32, {32, 32});
  auto eq = f(x,y) == f(x,y);

  auto constraints = std::vector<stoke::SymBool>();
  constraints.push_back(eq);

  stoke::Cvc4Solver cvc4;
  EXPECT_TRUE(cvc4.is_sat(constraints));
  EXPECT_FALSE(cvc4.has_error()) << "CVC4 encountered" << cvc4.get_error();
}

TEST(Cvc4SolverTest, UninterpretedFunctionFail) {

  auto x = stoke::SymBitVector::var(32, "x");
  auto y = stoke::SymBitVector::var(32, "y");

  auto f = stoke::SymFunction("f", 32, {32, 32});
  auto eq = f(x,y) == x + y;

  auto constraints = std::vector<stoke::SymBool>();
  constraints.push_back(eq);

  stoke::Cvc4Solver cvc4;
  EXPECT_TRUE(cvc4.is_sat(constraints));
  EXPECT_FALSE(cvc4.has_error()) << "CVC4 encountered" << cvc4.get_error();
}

TEST(Cvc4SolverTest, DivWorks) {

  auto x = stoke::SymBitVector::var(32, "x");
  auto y = stoke::SymBitVector::var(32, "y");
  auto z = stoke::SymBitVector::var(32, "z");


  auto constraints = std::vector<stoke::SymBool>();
  constraints.push_back(x/y == z);

  stoke::Cvc4Solver cvc4;
  EXPECT_TRUE(cvc4.is_sat(constraints));
  EXPECT_FALSE(cvc4.has_error()) << "CVC4 encountered" << cvc4.get_error();
}

TEST(Cvc4SolverTest, RolWorks) {

  auto x = stoke::SymBitVector::var(32, "x");
  auto y = stoke::SymBitVector::var(32, "y");
  auto z = stoke::SymBitVector::var(32, "z");


  auto constraints = std::vector<stoke::SymBool>();

  // there's a y so that rotating to the left/right by y gives you back x (e.g. 32)
  constraints.push_back(x.ror(y) == x);
  constraints.push_back(x.rol(y) == x);

  // there's a z so that rotating left/right gives different values)
  auto z_l = x.rol(z);
  auto z_r = x.ror(z);
  constraints.push_back(z_l != x);
  constraints.push_back(z_r != x);
  constraints.push_back(z_l != z_r);

  // x is not 0 or -1; y is not 0.
  constraints.push_back(x != stoke::SymBitVector::constant(32, 0));
  constraints.push_back(x != stoke::SymBitVector::constant(32, -1));
  constraints.push_back(y != stoke::SymBitVector::constant(32, 0));

  stoke::Cvc4Solver cvc4;
  EXPECT_TRUE(cvc4.is_sat(constraints));
  EXPECT_FALSE(cvc4.has_error()) << "CVC4 encountered" << cvc4.get_error();
}

TEST(Cvc4SolverTest, RolWorks2) {

  auto x = stoke::SymBitVector::var(32, "x");
  auto one = stoke::SymBitVector::constant(32, 1);

  auto constraints = std::vector<stoke::SymBool>();

  // rotating x by 1 = x implies x = 0 or x = -1.
  constraints.push_back(x.ror(one) == x);

  // x is not 0 or -1
  constraints.push_back(x != stoke::SymBitVector::constant(32, 0));
  constraints.push_back(x != stoke::SymBitVector::constant(32, -1));

  stoke::Cvc4Solver cvc4;
  EXPECT_FALSE(cvc4.is_sat(constraints));
  EXPECT_FALSE(cvc4.has_error()) << "CVC4 encountered" << cvc4.get_error();
}
