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

#include "src/serialize/serialize.h"
#include "src/validator/invariant.h"
#include "src/validator/invariants.h"

namespace stoke {

class SerializeTest : public ::testing::Test { 

protected:
  template<typename T>
  void check(T t) {
    stringstream ss;
    serialize(ss, t);
    auto copy = ss.str();

    // check that deserialization results in an invariant with the same representation
    auto new_t = deserialize<T>(ss);

    // check that reserializing gives the same serialization
    stringstream ss2;
    serialize(ss2, new_t);
    auto copy2 = ss2.str();
    ASSERT_EQ(copy, copy2);
  }

};

TEST_F(SerializeTest, Int) {
  check<int>(5);
  check<int>(-5);
}

TEST_F(SerializeTest, IntVector) {
  check<vector<int>>({});
  check<vector<int>>({2, -5, 3});
}

TEST_F(SerializeTest, SandboxEmpty) {
  Sandbox sb;
  check<Sandbox>(sb);
}

TEST_F(SerializeTest, SandboxOneTc) {
  CpuState tc;
  Sandbox sb;
  sb.insert_input(tc);
  check<Sandbox>(sb);
}

TEST_F(SerializeTest, SandboxTwoTc) {
  CpuState tc;
  CpuState tc2;
  Sandbox sb;
  sb.insert_input(tc);
  sb.insert_input(tc2);
  check<Sandbox>(sb);
}

TEST_F(SerializeTest, TUnit) {
  stringstream ss;
  ss << ".test:" << endl;
  ss << " movl $0x10, %eax" << endl << endl;
  Code c;
  ss >> c;
  TUnit tu(c, 0x10, 0x20, 0x30);
  check<TUnit>(tu);
}

TEST_F(SerializeTest, Cfg) {
  stringstream ss;
  ss << ".test:" << endl;
  ss << " movl $0x10, %eax" << endl << endl;
  Code c;
  ss >> c;
  TUnit tu(c, 0x10, 0x20, 0x30);
  Cfg cfg(tu, RegSet::empty(), x64asm::RegSet::empty() + x64asm::rax);
  check<Cfg>(cfg);
}

TEST_F(SerializeTest, PairSandboxVector) {
  CpuState tc;
  Sandbox sb;
  sb.insert_input(tc);

  vector<int> x = {1, 3, 5};
  pair<Sandbox, vector<int>> p(sb, x);
  check<pair<Sandbox, vector<int>>>(p);
}


} //namespace stoke
