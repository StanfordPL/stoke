// Copyright 2013-2015 Stanford University
//
// Licensed under the Apache License, Version 2.0 (the "License");
// you may not use this file except in compliance with the License.
// You may obtain a copy of the License at
//
//     http://www.apache.org/licenses/LICENSE-2.0
//
// Unless required by applicable law or agreed to in writing, software
// distributed under the License is distributed on an "AS IS" BASIS,
// WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
// See the License for the specific language governing permissions and
// limitations under the License.

#ifndef STOKE_TOOLS_APPS_SPECGEN_VISITORS_H
#define STOKE_TOOLS_APPS_SPECGEN_VISITORS_H

#include <chrono>
#include <fstream>
#include <iostream>
#include <random>
#include <string>
#include <vector>

using namespace cpputil;
using namespace std;
using namespace stoke;
using namespace x64asm;

namespace stoke {

class Counter : public SymVisitor<size_t, size_t> {
public:
  Counter(size_t c) : constant_(c) {}
  Counter() : constant_(0) {}
  virtual size_t operator()(const SymBitVector& bv) {
    return SymVisitor<size_t, size_t>::operator()(bv.ptr);
  }
  virtual size_t operator()(const SymBool& bv) {
    return SymVisitor<size_t, size_t>::operator()(bv.ptr);
  }
  virtual size_t operator()(const SymBitVectorAbstract * const bv) {
    // return 0 if we have already seen this one
    if (seen_bits_.find((SymBitVectorAbstract*)bv) != seen_bits_.end()) return 0;
    seen_bits_.insert((SymBitVectorAbstract*)bv);
    return SymVisitor<size_t, size_t>::operator()(bv);
  }
  virtual size_t operator()(const SymBoolAbstract * const bv) {
    // return 0 if we have already seen this one
    if (seen_bool_.find((SymBoolAbstract*)bv) != seen_bool_.end()) return 0;
    seen_bool_.insert((SymBoolAbstract*)bv);
    return SymVisitor<size_t, size_t>::operator()(bv);
  }
  size_t visit_binop(const SymBitVectorBinop * const bv) {
    auto lhs = (*this)(bv->a_);
    auto rhs = (*this)(bv->b_);
    return lhs + rhs + constant_;
  }
  size_t visit_binop(const SymBoolBinop * const bv) {
    auto lhs = (*this)(bv->a_);
    auto rhs = (*this)(bv->b_);
    return lhs + rhs + constant_;
  }
  size_t visit_unop(const SymBitVectorUnop * const bv) {
    auto lhs = (*this)(bv->bv_);
    return lhs + constant_;
  }
  size_t visit_compare(const SymBoolCompare * const bv) {
    auto lhs = (*this)(bv->a_);
    auto rhs = (*this)(bv->b_);
    return lhs + rhs + constant_;
  }
  size_t visit(const SymBitVectorConstant * const bv) {
    return constant_;
  }
  size_t visit(const SymBitVectorExtract * const bv) {
    auto lhs = (*this)(bv->bv_);
    return lhs + constant_;
  }
  size_t visit(const SymBitVectorFunction * const bv) {
    size_t res = 0;
    for (size_t i = 0; i < bv->args_.size(); ++i) {
      auto arg = (*this)(bv->args_[i]);
      res += arg;
    }
    return res + constant_;
  }
  size_t visit(const SymBitVectorIte * const bv) {
    auto c = (*this)(bv->cond_);
    auto lhs = (*this)(bv->a_);
    auto rhs = (*this)(bv->b_);
    return c + lhs + rhs + constant_;
  }
  size_t visit(const SymBitVectorSignExtend * const bv) {
    auto lhs = (*this)(bv->bv_);
    return lhs + constant_;
  }
  size_t visit(const SymBitVectorVar * const bv) {
    return constant_;
  }
  size_t visit(const SymBoolFalse * const b) {
    return constant_;
  }
  size_t visit(const SymBoolNot * const b) {
    auto lhs = (*this)(b->b_);
    return lhs;
  }
  size_t visit(const SymBoolTrue * const b) {
    return constant_;
  }
  size_t visit(const SymBoolVar * const b) {
    return constant_;
  }

private:
  size_t constant_;
  std::set<SymBoolAbstract*> seen_bool_;
  std::set<SymBitVectorAbstract*> seen_bits_;
};

class NodeCounter : public Counter {
public:
  NodeCounter() : Counter(1) {}
};

class UninterpretedFunctionCounter : public Counter {
public:
  size_t visit(const SymBitVectorFunction * const bv) {
    size_t res = 0;
    for (size_t i = 0; i < bv->args_.size(); ++i) {
      auto arg = (*this)(bv->args_[i]);
      res += arg;
    }
    return res + 1;
  }
};

class MulDivCounter : public Counter {
public:
  size_t visit_binop(const SymBitVectorBinop * const bv) {
    auto lhs = (*this)(bv->a_);
    auto rhs = (*this)(bv->b_);
    if (bv->type() == SymBitVector::DIV ||
        bv->type() == SymBitVector::MOD ||
        bv->type() == SymBitVector::MULT ||
        bv->type() == SymBitVector::SIGN_DIV ||
        bv->type() == SymBitVector::SIGN_MOD) {
      return lhs + rhs + 1;
    }
    return lhs + rhs;
  }
};

}

#endif
