

TEST(CpputilBitvector, GetFixedBitsWork) {

  cpputil::BitVector bv(64);
  bv.get_fixed_quad(0) = 0xdeadbeef;

  EXPECT_EQ(0xef, bv.get_fixed_byte(0));
  EXPECT_EQ(0xbe, bv.get_fixed_byte(1));
  EXPECT_EQ(0xdead, bv.get_fixed_word(1));
  EXPECT_EQ(0xdeadbeef, bv.get_fixed_quad(0));

}

TEST(CpputilBitvector, CanIterateBytes) {

  cpputil::BitVector bv(64);
  bv.get_fixed_quad(0) = 0xdeadbeef;

  size_t i = 0;
  for (auto it = bv.fixed_byte_begin(); it != bv.fixed_byte_end(); ++it, ++i) {
    switch (i) {
      case 0:
        EXPECT_EQ(0xef, *it);
        break;

      case 1:
        EXPECT_EQ(0xbe, *it);
        break;

      case 2:
        EXPECT_EQ(0xad, *it);
        break;

      case 3:
        EXPECT_EQ(0xde, *it);
        break;

      default:
        EXPECT_EQ(0, *it);
        EXPECT_LT(i, 8);
        break;
    }
  }
  EXPECT_EQ(8, i);
}

TEST(CpputilBitvector, CanIterateWords) {

  cpputil::BitVector bv(64);
  bv.get_fixed_quad(0) = 0xdeadbeef;

  size_t i = 0;
  for (auto it = bv.fixed_word_begin(); it != bv.fixed_word_end(); ++it, ++i) {
    switch (i) {
      case 0:
        EXPECT_EQ(0xbeef, *it);
        break;

      case 1:
        EXPECT_EQ(0xdead, *it);
        break;

      default:
        EXPECT_EQ(0, *it);
        EXPECT_LT(i, 4);
        break;
    }
  }
  EXPECT_EQ(4, i);
}

TEST(CpputilBitvector, CanIterateQuads) {

  cpputil::BitVector bv(64);
  bv.get_fixed_quad(0) = 0xdeadbeef;

  size_t i = 0;
  for (auto it = bv.fixed_quad_begin(); it != bv.fixed_quad_end(); ++it, ++i) {
    switch (i) {
      case 0:
        EXPECT_EQ(0xdeadbeef, *it);
        break;

      default:
        EXPECT_LT(i, 1);
        break;
    }
  }
  EXPECT_EQ(1, i);
}

TEST(CpputilBitvector, IterateBitsOfZero) {

  cpputil::BitVector bv(128);
  bv.get_fixed_quad(0) = 0;
  bv.get_fixed_quad(1) = 0;

  for (auto it = bv.set_bit_index_begin(); it != bv.set_bit_index_end(); ++it) {
    ADD_FAILURE() << "Found bit set in zero: " << *it << std::endl;
  }

}
