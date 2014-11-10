
#include "src/solver/z3solver.h"

TEST(Z3SolverTest, TautologyIsSat) {

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

  stoke::Z3Solver z3;
  EXPECT_TRUE(z3.is_sat(constraints));
  EXPECT_FALSE(z3.has_error()) << "Z3 encountered: " << z3.get_error();

}


TEST(Z3SolverTest, FalsehoodIsUnSat) {

  auto x = stoke::SymBitVector::var(64, "x");
  auto y = stoke::SymBitVector::var(64, "y");
  auto z = stoke::SymBitVector::var(64, "z");

  auto lhs = (x | y) & z;
  auto rhs = (x & z) | (y & z);
  auto eq = lhs != rhs;

  auto constraints = std::vector<stoke::SymBool>();
  constraints.push_back(eq);

  stoke::Z3Solver z3;
  EXPECT_FALSE(z3.is_sat(constraints));
  EXPECT_FALSE(z3.has_error()) << "Z3 encountered: " << z3.get_error();

}

TEST(Z3SolverTest, ImpliesWorksUnsat) {

  auto x = stoke::SymBool::var("x");
  auto y = stoke::SymBool::var("y");

  auto lhs = (!x) | y;
  auto rhs = x.implies(y);

  auto neq = lhs != rhs;

  auto constraints = std::vector<stoke::SymBool>();
  constraints.push_back(neq);

  stoke::Z3Solver z3;
  EXPECT_FALSE(z3.is_sat(constraints));
  EXPECT_FALSE(z3.has_error()) << "Z3 encountered: " << z3.get_error();

}

TEST(Z3SolverTest, ImpliesWorksSat) {

  auto x = stoke::SymBool::var("x");
  auto y = stoke::SymBool::var("y");

  auto lhs = (!x) | y;
  auto rhs = x.implies(y);

  auto eq = lhs == rhs;

  auto constraints = std::vector<stoke::SymBool>();
  constraints.push_back(eq);

  stoke::Z3Solver z3;
  EXPECT_TRUE(z3.is_sat(constraints));
  EXPECT_FALSE(z3.has_error()) << "Z3 encountered: " << z3.get_error();

}

TEST(Z3SolverTest, ConcatTautology) {

  auto x = stoke::SymBitVector::var(32, "x");
  auto eq = (x[31][16] || x[15][0]) != x;

  auto constraints = std::vector<stoke::SymBool>();
  constraints.push_back(eq);

  stoke::Z3Solver z3;
  EXPECT_FALSE(z3.is_sat(constraints));
  EXPECT_FALSE(z3.has_error()) << "Z3 encountered: " << z3.get_error();
}

TEST(Z3SolverTest, ConcatTautology2) {

  auto x = stoke::SymBitVector::var(32, "x");
  auto zeros = stoke::SymBitVector::constant(16, 0);
  auto eq1 = (zeros || x[15][0]) != x;
  auto eq2 = x[31][16] == zeros;

  auto constraints = std::vector<stoke::SymBool>();
  constraints.push_back(eq1);
  constraints.push_back(eq2);

  stoke::Z3Solver z3;
  EXPECT_FALSE(z3.is_sat(constraints));
  EXPECT_FALSE(z3.has_error()) << "Z3 encountered: " << z3.get_error();
}


TEST(Z3SolverTest, MulModTest) {

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

  auto constraints = std::vector<stoke::SymBool>();
  constraints.push_back(eq);
  constraints.push_back(zero_x);
  constraints.push_back(zero_y);

  stoke::Z3Solver z3;
  EXPECT_FALSE(z3.is_sat(constraints));
  EXPECT_FALSE(z3.has_error()) << "Z3 encountered: " << z3.get_error();

}
