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
  void check(Invariant* inv, bool nodelete = false) {
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

    if(!nodelete) {
      delete inv;
      delete new_inv;
    }
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
  auto a = new FlagInvariant("lt", false, true);

  // b
  Variable v1("hello", true);
  Variable v2(x64asm::rax, false);

  auto b = new InequalityInvariant(v1, v2, false, true);

  // c
  auto c = new EqualityInvariant({v1, v2}, -8, 32);

  auto inv = new ConjunctionInvariant({a, b, c});
  check(inv);

  auto inv2 = new DisjunctionInvariant({a, b, c});
  check(inv2);

  delete a;
  delete b;
  delete c;
}

TEST_F(ValidatorInvariantSerializationTest, EqualityInvariant) {
  std::vector<Variable> terms;
  terms.push_back(Variable("hello", true));
  terms.push_back(Variable(x64asm::rax, false));

  auto inv = new EqualityInvariant(terms, 8, 32);
  check(inv);
}

TEST_F(ValidatorInvariantSerializationTest, ExprInvariant) {
  string s = "t_%rdi>1000";
  auto expr = ExprInvariant::parse(s);
  auto inv = new ExprInvariant(expr, s);
  check(inv);
}



TEST_F(ValidatorInvariantSerializationTest, FalseInvariant) {
  auto inv = new FalseInvariant();
  check(inv);
}

TEST_F(ValidatorInvariantSerializationTest, FlagInvariant) {
  auto inv = new FlagInvariant("lt", false, true);
  check(inv);
}

TEST_F(ValidatorInvariantSerializationTest, FlagSetInvariant) {
  auto inv = new FlagSetInvariant(x64asm::eflags_cf, false, true);
  check(inv);
}

TEST_F(ValidatorInvariantSerializationTest, ImplicationInvariant) {
  auto inv1 = new FlagSetInvariant(x64asm::eflags_cf, true, true);
  auto inv2 = new FlagInvariant("lt", true, false);
  auto inv = new ImplicationInvariant(inv1, inv2);
  check(inv);
  delete inv1;
  delete inv2;
}

TEST_F(ValidatorInvariantSerializationTest, InequalityInvariant) {
  Variable v1("hello", true);
  Variable v2(x64asm::rax, false);

  auto inv = new InequalityInvariant(v1, v2, false, true);
  check(inv);
}

TEST_F(ValidatorInvariantSerializationTest, MemoryEqualityInvariant) {
  auto inv = new MemoryEqualityInvariant();
  check(inv);
}

TEST_F(ValidatorInvariantSerializationTest, MemoryNullInvariant) {
  auto inv = new MemoryNullInvariant(x64asm::M16(x64asm::rdx), false, true);
  check(inv);
}

TEST_F(ValidatorInvariantSerializationTest, Mod2NInvariant) {
  Variable v(x64asm::rsi, false);

  auto inv = new Mod2NInvariant(v, 4);
  check(inv);
}

TEST_F(ValidatorInvariantSerializationTest, NonzeroInvariant) {
  Variable v(x64asm::rsi, true);

  auto inv = new NonzeroInvariant(v, true);
  check(inv);
}

TEST_F(ValidatorInvariantSerializationTest, NoSignalsInvariant) {
  auto inv = new NoSignalsInvariant();
  check(inv);
}

TEST_F(ValidatorInvariantSerializationTest, NotInvariant) {
  auto a = new NoSignalsInvariant();
  auto inv = new NotInvariant(a);
  check(inv);
  delete a;
}

TEST_F(ValidatorInvariantSerializationTest, PointerNullInvariant) {
  Variable v(x64asm::rsi, false);
  auto inv = new PointerNullInvariant(v, 4);
  check(inv);
}

TEST_F(ValidatorInvariantSerializationTest, RangeInvariant) {
  Variable v("hello", false);

  auto inv = new RangeInvariant(v, 32, (uint64_t)(-32));
  check(inv);
}

TEST_F(ValidatorInvariantSerializationTest, SignInvariant) {
  Variable v("hello", false);

  auto inv = new SignInvariant(v, true);
  check(inv);
}

TEST_F(ValidatorInvariantSerializationTest, StateEqualityInvariant) {
  Variable v("hello", false);
  auto regset = x64asm::RegSet::empty() + x64asm::ecx + x64asm::di;
  auto inv = new StateEqualityInvariant(regset, {v, v, v});
  check(inv);
}

TEST_F(ValidatorInvariantSerializationTest, TopZeroInvariant) {
  auto inv = new TopZeroInvariant(x64asm::rdx, false);
  check(inv);
}

TEST_F(ValidatorInvariantSerializationTest, TrueInvariant) {
  auto inv = new TrueInvariant();
  check(inv);
}





} //namespace stoke
