
#include "src/solver/z3solver.h"

TEST(Z3SolverTest, TautologyIsSat) {

  auto x = stoke::SymBitVectorVar(64, "x");
  auto y = stoke::SymBitVectorVar(64, "y");
  auto z = stoke::SymBitVectorVar(64, "z");

  auto lhs = (x | y) & z;
  EXPECT_EQ(stoke::SymBitVector::AND, lhs.type());
  EXPECT_EQ(stoke::SymBitVector::OR, lhs.a_.type());
  EXPECT_EQ(stoke::SymBitVector::VAR, lhs.b_.type());

  auto rhs = (x & z) | (y & z);
  EXPECT_EQ(stoke::SymBitVector::OR, rhs.type());
  EXPECT_EQ(stoke::SymBitVector::AND, rhs.a_.type());
  EXPECT_EQ(stoke::SymBitVector::AND, rhs.b_.type());

  auto eq = lhs == rhs;
  EXPECT_EQ(stoke::SymBool::EQ, eq.type());

  auto constraints = std::vector<stoke::SymBool*>();
  constraints.push_back(&eq);

  stoke::Z3Solver z3;
  EXPECT_TRUE(z3.is_sat(constraints));

}


TEST(Z3SolverTest, FalsehoodIsUnSat) {

  auto x = stoke::SymBitVectorVar(64, "x");
  auto y = stoke::SymBitVectorVar(64, "y");
  auto z = stoke::SymBitVectorVar(64, "z");

  auto lhs = (x | y) & z;
  auto rhs = (x & z) | (y & z);
  auto eq = lhs != rhs;

  auto constraints = std::vector<stoke::SymBool*>();
  constraints.push_back(&eq);

  stoke::Z3Solver z3;
  EXPECT_FALSE(z3.is_sat(constraints));

}

TEST(Z3SolverTest, ImpliesWorksUnsat) {

  auto x = stoke::SymBoolVar("x");
  auto y = stoke::SymBoolVar("y");

  auto lhs = (!x) | y;
  auto rhs = stoke::SymBoolImplies(x,y);

  auto neq = lhs != rhs;

  auto constraints = std::vector<stoke::SymBool*>();
  constraints.push_back(&neq);

  stoke::Z3Solver z3;
  EXPECT_FALSE(z3.is_sat(constraints));

}

TEST(Z3SolverTest, ImpliesWorksSat) {

  auto x = stoke::SymBoolVar("x");
  auto y = stoke::SymBoolVar("y");

  auto lhs = (!x) | y;
  auto rhs = stoke::SymBoolImplies(x,y);

  auto eq = lhs == rhs;

  auto constraints = std::vector<stoke::SymBool*>();
  constraints.push_back(&eq);

  stoke::Z3Solver z3;
  EXPECT_TRUE(z3.is_sat(constraints));

}
