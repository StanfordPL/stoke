
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

  EXPECT_EQ("(and (plus <x|3> <y|3>) (xor (<< <x|3> [ 0, 1, 1 ]) (not <y|3>)))[2:1]", ss.str());

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

  auto x = stoke::SymBitVector::constant(3, 8);
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
