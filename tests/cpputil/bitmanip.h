
#include "src/ext/cpputil/include/bits/bit_manip.h"

TEST(CpputilBitManip, TrailingZeroCountWorks) {

  EXPECT_EQ(0,  cpputil::BitManip<uint64_t>::ntz(-1));
  EXPECT_EQ(64, cpputil::BitManip<uint64_t>::ntz(0));
  EXPECT_EQ(3,  cpputil::BitManip<uint64_t>::ntz(8));
  EXPECT_EQ(1,  cpputil::BitManip<uint64_t>::ntz(10));

}

TEST(CpputilBitManip, PopCntWorks) {

  EXPECT_EQ(0,  cpputil::BitManip<uint64_t>::pop_count(0));
  EXPECT_EQ(1,  cpputil::BitManip<uint64_t>::pop_count(1));
  EXPECT_EQ(64, cpputil::BitManip<uint64_t>::pop_count(-1));
  EXPECT_EQ(2,  cpputil::BitManip<uint64_t>::pop_count(9));

  uint64_t x = (1 << 12) | (1 << 11) | (1 << 7) | (1 << 3) | (1 << 1);
  EXPECT_EQ(5,  cpputil::BitManip<uint64_t>::pop_count(x));
}

TEST(CpputilBitManip, UnsetRightmostWorks) {

  uint64_t x, y;

  x = 1;
  y = cpputil::BitManip<uint64_t>::unset_rightmost(x);
  EXPECT_EQ(0, x);
  EXPECT_EQ(x, y);

  x = 3;
  y = cpputil::BitManip<uint64_t>::unset_rightmost(x);
  EXPECT_EQ(2, x);
  EXPECT_EQ(x, y);

  x = 16;
  y = cpputil::BitManip<uint64_t>::unset_rightmost(x);
  EXPECT_EQ(0, x);
  EXPECT_EQ(x, y);

  x = (1 << 12) | (1 << 11) | (1 << 7) | (1 << 3);
  y = cpputil::BitManip<uint64_t>::unset_rightmost(x);
  EXPECT_EQ((1 << 12) | (1 << 11) | (1 << 7), x);
  EXPECT_EQ(x, y);

  x = -1;
  y = cpputil::BitManip<uint64_t>::unset_rightmost(x);
  EXPECT_EQ(-2, x);
  EXPECT_EQ(x, y);
}

TEST(CpputilBitManip, UnsetRightmostParamWorks) {

  uint64_t x, y;

  x = 1;
  y = cpputil::BitManip<uint64_t>::unset_rightmost(x, 0);
  EXPECT_EQ(1, x);
  EXPECT_EQ(x, y);
  y = cpputil::BitManip<uint64_t>::unset_rightmost(x, 1);
  EXPECT_EQ(0, x);
  EXPECT_EQ(x, y);

  x = 3;
  y = cpputil::BitManip<uint64_t>::unset_rightmost(x, 1);
  EXPECT_EQ(2, x);
  EXPECT_EQ(x, y);
  y = cpputil::BitManip<uint64_t>::unset_rightmost(x, 1);
  EXPECT_EQ(2, x);
  EXPECT_EQ(x, y);
  y = cpputil::BitManip<uint64_t>::unset_rightmost(x, 3);
  EXPECT_EQ(0, x);
  EXPECT_EQ(x, y);

  x = 16;
  y = cpputil::BitManip<uint64_t>::unset_rightmost(x, 4);
  EXPECT_EQ(16, x);
  EXPECT_EQ(x, y);
  y = cpputil::BitManip<uint64_t>::unset_rightmost(x, 5);
  EXPECT_EQ(0, x);
  EXPECT_EQ(x, y);

  x = (1 << 12) | (1 << 11) | (1 << 7) | (1 << 3);
  y = cpputil::BitManip<uint64_t>::unset_rightmost(x, 8);
  EXPECT_EQ((1 << 12) | (1 << 11), x);
  EXPECT_EQ(x, y);
  y = cpputil::BitManip<uint64_t>::unset_rightmost(x, 8);
  EXPECT_EQ((1 << 12) | (1 << 11), x);
  EXPECT_EQ(x, y);
  y = cpputil::BitManip<uint64_t>::unset_rightmost(x, 12);
  EXPECT_EQ((1 << 12), x);
  EXPECT_EQ(x, y);
  y = cpputil::BitManip<uint64_t>::unset_rightmost(x, 13);
  EXPECT_EQ(0, x);
  EXPECT_EQ(x, y);

  x = -1;
  y = cpputil::BitManip<uint64_t>::unset_rightmost(x, 0);
  EXPECT_EQ(-1, x);
  y = cpputil::BitManip<uint64_t>::unset_rightmost(x, 64);
  EXPECT_EQ(0, x);

}
