
#include "src/symstate/bitvector.h"
#include "src/symstate/typecheck_visitor.h"

TEST(SymBitvectorTest, CanPrintConstantsAtWidth) {

  auto a = stoke::SymBitVectorConstant(3, 5);

  std::stringstream ss;
  ss << a;

  EXPECT_EQ("[ 1, 0, 1 ]", ss.str());
}

TEST(SymBitvectorTest, CanPrintConstantsOverWidth) {

  auto a = stoke::SymBitVectorConstant(4, 5);

  std::stringstream ss;
  ss << a;

  EXPECT_EQ("[ 0, 1, 0, 1 ]", ss.str());
}

TEST(SymBitvectorTest, CanPrintExpressions) {

  auto x = stoke::SymBitVectorVar(32, "x");
  auto y = stoke::SymBitVectorVar(32, "y");

  auto z = ((x+y) & (( x << 3) ^ !y))[10][5];

  std::stringstream ss;
  ss << z;

  EXPECT_EQ("(and (plus <x|32> <y|32>) (xor (<x|32> << 3) (not <y|32>)))[10:5]", ss.str());

}

TEST(SymBitVectorTest, TypecheckWorks) {

  auto x = stoke::SymBitVectorVar(32, "x");
  auto y = stoke::SymBitVectorVar(32, "y");

  auto z = ((x+y) & (( x << 3) ^ !y))[10][5];

  stoke::SymTypecheckVisitor tc;
  EXPECT_EQ(6, tc(z));

}

TEST(SymBitVectorTest, TypecheckDetectsBad) {

  auto x = stoke::SymBitVectorVar(32, "x");
  auto y = stoke::SymBitVectorVar(32, "y");

  auto z = ((x || y) == y);

  stoke::SymTypecheckVisitor tc;
  EXPECT_EQ(0, tc(z));

}

TEST(SymBitVectorTest, ConstantsTypecheck) {

  stoke::SymTypecheckVisitor tc;

  auto x = stoke::SymBitVectorConstant(3, 8);
  EXPECT_EQ(0, tc(x));

  auto y = stoke::SymBitVectorConstant(3, 7);
  EXPECT_EQ(3, tc(y));
}

TEST(SymBitVectorTest, ExtractTypechecks) {

  auto x = stoke::SymBitVectorConstant(32, 8);
  stoke::SymTypecheckVisitor tc;

  EXPECT_EQ(0, tc(x[33][0]));
  EXPECT_EQ(0, tc(x[0][7]));
  EXPECT_EQ(8, tc(x[7][0]));
}
