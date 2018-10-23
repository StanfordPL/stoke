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

#include "src/validator/invariant.h"
#include "src/validator/invariants.h"

namespace stoke {

class ValidatorInvariantSerializationTest : public ::testing::Test { 

protected:
  void check(std::shared_ptr<Invariant> inv) {
    stringstream ss;
    inv->serialize(ss);
    auto copy = ss.str();
    cout << "Invariant: " << *inv << endl;
    cout << "Serialized: " << endl << copy << endl;

    // check that deserialization results in an invariant with the same representation
    auto new_inv = Invariant::deserialize(ss);
    ASSERT_EQ(*inv, *new_inv);

    // check that reserializing gives the same serialization
    stringstream ss2;
    new_inv->serialize(ss2);
    auto copy2 = ss2.str();
    ASSERT_EQ(copy, copy2);
  }

  void check(Variable v) {
    stringstream ss;
    v.serialize(ss);

    Variable w(ss);
    ASSERT_EQ(v, w);
  }
};

TEST_F(ValidatorInvariantSerializationTest, GhostVariable) {
  Variable v("boo", true, 4);
  check(v);
}

TEST_F(ValidatorInvariantSerializationTest, OperandVariable) {
  Variable v(rdi, false, 1, 3);
  check(v);
}

TEST_F(ValidatorInvariantSerializationTest, ConjunctionDisjunctionInvariant) {
  // a
  auto a = std::make_shared<FlagInvariant>("lt", false, true);

  // b
  Variable v1("hello", true);
  Variable v2(x64asm::rax, false);

  auto b = std::make_shared<InequalityInvariant>(v1, v2, false, true);

  // c
  auto c = std::make_shared<EqualityInvariant>(vector<Variable>({v1, v2}), -8, 32);

  auto inv = std::make_shared<ConjunctionInvariant>(vector<shared_ptr<Invariant>>({a, b, c}));
  check(inv);

  auto inv2 = std::make_shared<DisjunctionInvariant>(vector<shared_ptr<Invariant>>({a, b, c}));
  check(inv2);
}

TEST_F(ValidatorInvariantSerializationTest, EqualityInvariant) {
  std::vector<Variable> terms;
  terms.push_back(Variable("hello", true));
  terms.push_back(Variable(x64asm::rax, false));

  auto inv = std::make_shared<EqualityInvariant>(terms, 8, 32);
  check(inv);
}

TEST_F(ValidatorInvariantSerializationTest, ExprInvariant) {
  string s = "t_%rdi>1000";
  auto expr = ExprInvariant::parse(s);
  auto inv = std::make_shared<ExprInvariant>(expr, s);
  check(inv);
}

TEST_F(ValidatorInvariantSerializationTest, ExprInvariant2) {
  string s = "(4096<=t_%rdi)&(t_%rdi+t_%esi*4+8<=18446744073709547519)&(t_%rdi<=t_%rdi+t_%esi*4+8)";
  auto expr = ExprInvariant::parse(s);
  auto inv = std::make_shared<ExprInvariant>(expr, s);
  check(inv);
}



TEST_F(ValidatorInvariantSerializationTest, FalseInvariant) {
  auto inv = std::make_shared<FalseInvariant>();
  check(inv);
}

TEST_F(ValidatorInvariantSerializationTest, FlagInvariant) {
  auto inv = std::make_shared<FlagInvariant>("lt", false, true);
  check(inv);
}

TEST_F(ValidatorInvariantSerializationTest, FlagSetInvariant) {
  auto inv = std::make_shared<FlagSetInvariant>(x64asm::eflags_cf, false, true);
  check(inv);
}

TEST_F(ValidatorInvariantSerializationTest, ImplicationInvariant) {
  auto inv1 = std::make_shared<FlagSetInvariant>(x64asm::eflags_cf, true, true);
  auto inv2 = std::make_shared<FlagInvariant>("lt", true, false);
  auto inv = std::make_shared<ImplicationInvariant>(inv1, inv2);
  check(inv);
}

TEST_F(ValidatorInvariantSerializationTest, InequalityInvariant) {
  Variable v1("hello", true);
  Variable v2(x64asm::rax, false);

  auto inv = std::make_shared<InequalityInvariant>(v1, v2, false, true);
  check(inv);
}

TEST_F(ValidatorInvariantSerializationTest, MemoryEqualityInvariant) {
  auto inv = std::make_shared<MemoryEqualityInvariant>();
  check(inv);
}

TEST_F(ValidatorInvariantSerializationTest, MemoryNullInvariant) {
  auto inv = std::make_shared<MemoryNullInvariant>(x64asm::M16(x64asm::rdx), false, true);
  check(inv);
}

TEST_F(ValidatorInvariantSerializationTest, Mod2NInvariant) {
  Variable v(x64asm::rsi, false);

  auto inv = std::make_shared<Mod2NInvariant>(v, 4);
  check(inv);
}

TEST_F(ValidatorInvariantSerializationTest, NonzeroInvariant) {
  Variable v(x64asm::rsi, true);

  auto inv = std::make_shared<NonzeroInvariant>(v, true);
  check(inv);
}

TEST_F(ValidatorInvariantSerializationTest, NoSignalsInvariant) {
  auto inv = std::make_shared<NoSignalsInvariant>();
  check(inv);
}

TEST_F(ValidatorInvariantSerializationTest, NotInvariant) {
  auto a = std::make_shared<NoSignalsInvariant>();
  auto inv = std::make_shared<NotInvariant>(a);
  check(inv);
}

TEST_F(ValidatorInvariantSerializationTest, PointerNullInvariant) {
  Variable v(x64asm::rsi, false);
  auto inv = std::make_shared<PointerNullInvariant>(v, 4);
  check(inv);
}

TEST_F(ValidatorInvariantSerializationTest, RangeInvariant) {
  Variable v("hello", false);

  auto inv = std::make_shared<RangeInvariant>(v, 32, (uint64_t)(-32));
  check(inv);
}

TEST_F(ValidatorInvariantSerializationTest, SignInvariant) {
  Variable v("hello", false);

  auto inv = std::make_shared<SignInvariant>(v, true);
  check(inv);
}

TEST_F(ValidatorInvariantSerializationTest, StateEqualityInvariant) {
  Variable v("hello", false);
  auto regset = x64asm::RegSet::empty() + x64asm::ecx + x64asm::di;
  auto inv = std::make_shared<StateEqualityInvariant>(regset, vector<Variable>({v, v, v}));
  check(inv);
}

TEST_F(ValidatorInvariantSerializationTest, TopZeroInvariant) {
  auto inv = std::make_shared<TopZeroInvariant>(x64asm::rdx, false);
  check(inv);
}

TEST_F(ValidatorInvariantSerializationTest, TrueInvariant) {
  auto inv = std::make_shared<TrueInvariant>();
  check(inv);
}

TEST_F(ValidatorInvariantSerializationTest, MemoryConstantInvariant) {
  x64asm::M8 m(x64asm::rdx);
  auto inv = std::make_shared<MemoryConstantInvariant>(m, true, 0x40);
  check(inv);
}

TEST_F(ValidatorInvariantSerializationTest, MemoryConstantInvariant2) {
  x64asm::M8 m(x64asm::Imm32(0xdeadbeef));
  auto inv = std::make_shared<MemoryConstantInvariant>(m, false, 0xf0);
  check(inv);
}
} //namespace stoke
