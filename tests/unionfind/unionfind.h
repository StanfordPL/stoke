// Copyright 2013-2016 Stanford University
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


#include "src/unionfind/unionfind.h"

namespace stoke {

class UnionFindTest : public ::testing::Test {

protected:
  UnionFind<size_t> uf;
};

TEST_F(UnionFindTest, IsolatedComponents) {
  size_t count = 3;
  for(size_t i = 0; i < count; ++i) {
    uf.add(i);
  }

  for(size_t i = 0; i < count; ++i) {
    ASSERT_EQ(i, uf.lookup(i));
    ASSERT_EQ(i, uf.max_value(i));
  }
  ASSERT_EQ(count, uf.components().size());
}

TEST_F(UnionFindTest, OneComponent) {
  size_t count = 3;
  for(size_t i = 0; i < count; ++i) {
    uf.add(i);
    if(i > 0)
      uf.join(i, i-1);
  }

  for(size_t i = 0; i < count; ++i) {
    ASSERT_EQ(0ul, uf.lookup(i));
    ASSERT_EQ(2ul, uf.max_value(i));
  }
  ASSERT_EQ(1ul, uf.components().size());
}

TEST_F(UnionFindTest, Example) {
  uf.add(0);
  uf.add(1);
  uf.join(0, 1);
  uf.add(2);
  uf.join(0, 2);
  uf.add(3);
  uf.add(4);
  uf.join(3, 4);
  uf.add(5);

  ASSERT_EQ(0ul, uf.lookup(0));
  ASSERT_EQ(0ul, uf.lookup(1));
  ASSERT_EQ(0ul, uf.lookup(2));
  ASSERT_EQ(2ul, uf.max_value(0));
  ASSERT_EQ(2ul, uf.max_value(1));
  ASSERT_EQ(2ul, uf.max_value(2));
  ASSERT_EQ(3ul, uf.lookup(3));
  ASSERT_EQ(3ul, uf.lookup(4));
  ASSERT_EQ(4ul, uf.max_value(3));
  ASSERT_EQ(4ul, uf.max_value(4));
  ASSERT_EQ(5ul, uf.lookup(5));
  ASSERT_EQ(5ul, uf.max_value(5));
  ASSERT_EQ(3ul, uf.components().size());
}

TEST_F(UnionFindTest, Example2) {
  // same as before, with orders swapped
  uf.add(0);
  uf.add(1);
  uf.add(2);
  uf.join(2, 0);
  uf.join(1, 0);
  uf.add(3);
  uf.add(4);
  uf.join(4, 3);
  uf.add(5);

  ASSERT_EQ(0ul, uf.lookup(0));
  ASSERT_EQ(0ul, uf.lookup(1));
  ASSERT_EQ(0ul, uf.lookup(2));
  ASSERT_EQ(2ul, uf.max_value(0));
  ASSERT_EQ(2ul, uf.max_value(1));
  ASSERT_EQ(2ul, uf.max_value(2));
  ASSERT_EQ(3ul, uf.lookup(3));
  ASSERT_EQ(3ul, uf.lookup(4));
  ASSERT_EQ(4ul, uf.max_value(3));
  ASSERT_EQ(4ul, uf.max_value(4));
  ASSERT_EQ(5ul, uf.lookup(5));
  ASSERT_EQ(5ul, uf.max_value(5));
  ASSERT_EQ(3ul, uf.components().size());
}


} //namespace stoke
