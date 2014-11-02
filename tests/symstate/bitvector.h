
#include "src/symstate/bitvector.h"

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

  auto z = ((x+y) & (( x << 3) ^ !y));

  std::stringstream ss;
  ss << z;

  EXPECT_EQ("(and (plus <x|32> <y|32>) (xor (<x|32> << 3) (not <y|32>)))", ss.str());

}
