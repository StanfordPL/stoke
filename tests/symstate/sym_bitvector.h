
#include "src/symstate/sym_bitvector.h"

TEST(SymStateTest, CanBuildExpressions) {


  stoke::SymBitVector<64> a = stoke::SymBitVectorConstant<64>(0xdeadbeef);
  stoke::SymBitVector<64> b = stoke::SymBitVectorConstant<64>(0xc0decafe);
  auto c = a + b;
  auto d = stoke::SymBitVectorExtract<32, 64>(c, 10);
  auto e = c.extract<32>(10);
  auto f = (e >> 3) + d;
  auto g = d == e;
  auto h = f[5];
  auto i = g == h;
  auto j = h || i;

  stoke::SymBitVector<128> k = a || b;
}

