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


#ifndef _STOKE_SRC_SYMSTATE_AXIOM_VISITOR
#define _STOKE_SRC_SYMSTATE_AXIOM_VISITOR

#include <string>
#include <vector>
#include <set>

#include "src/symstate/visitor.h"

namespace stoke {

/** A class to print symbolic formulas in a nicely readable way. */
class SymAxiomVisitor : public SymVisitor<void, void, void> {

public:
  SymAxiomVisitor() {}

  std::vector<SymBool> get_axioms() {
    return axioms_;
  }

  void visit_binop(const SymBitVectorBinop * const e) override {
    (*this)(e->a_);
    (*this)(e->b_);
  }

  /* Visit a binop on a bool */
  void visit_binop(const SymBoolBinop * const e) override {
    (*this)(e->a_);
    (*this)(e->b_);
  }

  void visit_unop(const SymBitVectorUnop * const bv) override {
    (*this)(bv->bv_);
  }

  void visit_compare(const SymBoolCompare * const e) override {
    (*this)(e->a_);
    (*this)(e->b_);
  }

  /** Visit a bit-vector variable */
  void visit(const SymBitVectorArrayLookup * const bv) override {
    (*this)(bv->a_);
    (*this)(bv->key_);
  }

  /** Visit a bit-vector constant */
  void visit(const SymBitVectorConstant * const bv) override {
    return;
  }

  /** Visit a bit-vector extract */
  void visit(const SymBitVectorExtract * const bv) override {
    (*this)(bv->bv_);
  }

  /** Visit a bit-vector function */
  void visit(const SymBitVectorFunction * const bv) override {
    auto fxn = bv->f_;
    std::string name = fxn.name;
    if(!functions_seen_.count(name)) {
      functions_seen_.insert(name);

      if(commutative_functions_.count(name)) {
        assert(fxn.args.size() == 2);
        assert(fxn.args[0] == fxn.args[1]);
        auto x = SymBitVector::tmp_var(fxn.args[0]);
        auto y = SymBitVector::tmp_var(fxn.args[0]);
        auto lhs = fxn(x, y);
        auto rhs = fxn(y, x);
        auto axiom = (lhs == rhs).forall({x, y}, {lhs});
        axioms_.push_back(axiom);
      }
      if(associative_functions_.count(name)) {
        assert(fxn.args.size() == 3);
        assert(fxn.args[0] == fxn.args[1]);
        assert(fxn.args[1] == fxn.args[2]);
        auto x = SymBitVector::tmp_var(fxn.args[0]);
        auto y = SymBitVector::tmp_var(fxn.args[0]);
        auto z = SymBitVector::tmp_var(fxn.args[0]);
        auto lhs = fxn(fxn(x,y), z);
        auto rhs = fxn(x, fxn(y,z));
        auto axiom = (lhs == rhs).forall({x,y,z}, {lhs, rhs});
        axioms_.push_back(axiom);
      }
    }
  }

  /** Visit a bit-vector if-then-else */
  void visit(const SymBitVectorIte * const bv) override {
    (*this)(bv->cond_);
    (*this)(bv->a_);
    (*this)(bv->b_);
  }

  /** Visit a bit-vector sign-extend */
  void visit(const SymBitVectorSignExtend * const bv) override {
    (*this)(bv->bv_);
  }

  /** Visit a bit-vector variable */
  void visit(const SymBitVectorVar * const bv) override {
    return;
  }

  /** Visit a boolean ARRAY_EQ */
  void visit(const SymBoolArrayEq * const b) override {
    (*this)(b->a_);
    (*this)(b->b_);
  }

  /** Visit a boolean FALSE */
  void visit(const SymBoolFalse * const b) override {
    return;
  }

  /** Visit a boolean FOR_ALL */
  void visit(const SymBoolForAll * const b) override {
    (*this)(b->a_);
  }

  /** Visit a boolean NOT */
  void visit(const SymBoolNot * const b) override {
    (*this)(b->b_);
  }



  /** Visit a boolean TRUE */
  void visit(const SymBoolTrue * const b) override {
    return;
  }

  /** Visit a boolean VAR */
  void visit(const SymBoolVar * const b) override {
    return;
  }

  /** Visit an array STORE */
  void visit(const SymArrayStore * const a) override {
    (*this)(a->a_);
    (*this)(a->key_);
    (*this)(a->value_);
  }

  /** Visit an array VAR */
  void visit(const SymArrayVar * const a) override {
    return;
  }

private:

  std::vector<SymBool> axioms_;
  std::set<std::string> functions_seen_;

  static const std::set<std::string> commutative_functions_;
  static const std::set<std::string> associative_functions_;

};

} //namespace

#endif
