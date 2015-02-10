// Copyright 2013-2015 Stanford University
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
      EXPECT_LT(i, (size_t)8);
      break;
    }
  }
  EXPECT_EQ((size_t)8, i);
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
      EXPECT_LT(i, (size_t)4);
      break;
    }
  }
  EXPECT_EQ((size_t)4, i);
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
      EXPECT_LT(i, (size_t)1);
      break;
    }
  }
  EXPECT_EQ((size_t)1, i);
}

TEST(CpputilBitvector, IterateBitsOfZero) {

  cpputil::BitVector bv(128);
  bv.get_fixed_quad(0) = 0;
  bv.get_fixed_quad(1) = 0;

  for (auto it = bv.set_bit_index_begin(); it != bv.set_bit_index_end(); ++it) {
    ADD_FAILURE() << "Found bit set in zero: " << *it << std::endl;
  }

}
