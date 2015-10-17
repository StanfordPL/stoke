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

#include "src/symstate/simplify.h"

using namespace std;

namespace stoke {

namespace {

/**
 * Merges two consecutive extracts.
 * Handles bit extracts of constants.
 * Handles "full" bit extracts, where all bits are used.
 *
 * E.g., b[12:10][1:0] becomes b[11:10].
 * E.g., 0x0[1:0] becomes 0x0
 * E.g., f_returns_32_bits(0x0)[31:0] becomes f_returns_32_bits(0x0)
 */
class SymMergeExtracts : public SymTransformVisitor {

public:

  SymBitVectorAbstract* visit(const SymBitVectorExtract * const bv) {
    auto lhs = (*this)(bv->bv_);
    if (lhs->width_ == bv->width_) return lhs;
    if (lhs->type() == SymBitVector::EXTRACT) {
      auto inner = static_cast<const SymBitVectorExtract * const>(lhs);
      auto low = bv->low_bit_ + inner->low_bit_;
      auto high = low + (bv->high_bit_ - bv->low_bit_);
      return make_bitvector_extract(inner->bv_, high, low);
    }
    if (lhs->type() == SymBitVector::CONSTANT) {
      auto inner = static_cast<const SymBitVectorConstant * const>(lhs);
      auto size = inner->size_;
      auto constant = inner->constant_;
      auto newsize = bv->high_bit_ - bv->low_bit_ + 1;
      auto newconstant = constant >> bv->low_bit_;
      return make_bitvector_constant(newsize, newconstant);
    }
    return SymTransformVisitor::visit(bv);
  }

};

/**
 * Moves bit extracts over other operators (where save).
 * E.g. (a | b)[5:2] becomes (a[5:2] | [5:2])
 */
class SymMoveExtractsInside : public SymTransformVisitor {

public:

  SymBitVectorAbstract* visit(const SymBitVectorExtract * const bv) {
    auto inner = (*this)(bv->bv_);
    switch (inner->type()) {
    case SymBitVector::AND:
    case SymBitVector::OR:
    case SymBitVector::XOR: {
      SymBitVectorBinop* binop = (SymBitVectorBinop*)inner;
      auto a = make_bitvector_extract(binop->a_, bv->high_bit_, bv->low_bit_);
      auto b = make_bitvector_extract(binop->b_, bv->high_bit_, bv->low_bit_);
      return make_binop(binop->type(), a, b);
    }
    case SymBitVector::CONCAT: {
      SymBitVectorBinop* binop = (SymBitVectorBinop*)inner;
      auto lhs = binop->a_;
      auto rhs = binop->b_;
      // bit extract is fully in the lhs of the concat
      if (bv->low_bit_ >= rhs->width_) {
        return make_bitvector_extract(lhs, bv->high_bit_ - rhs->width_, bv->low_bit_ - rhs->width_);
      }
      // bit extract is fully in the rhs of the concat
      if (bv->high_bit_ < rhs->width_) {
        return make_bitvector_extract(rhs, bv->high_bit_, bv->low_bit_);
      }
      // there is overlap
      auto a = make_bitvector_extract(lhs, bv->high_bit_ - rhs->width_, 0);
      auto b = make_bitvector_extract(rhs, rhs->width_ - 1, bv->low_bit_);
      return make_binop(SymBitVector::CONCAT, a, b);
    }
    case SymBitVector::ITE: {
      SymBitVectorIte* ite = (SymBitVectorIte*)inner;
      auto a = make_bitvector_extract(ite->a_, bv->high_bit_, bv->low_bit_);
      auto b = make_bitvector_extract(ite->b_, bv->high_bit_, bv->low_bit_);
      return make_bitvector_ite(ite->cond_, a, b);
    }
    case SymBitVector::NOT: {
      SymBitVectorNot* n = (SymBitVectorNot*)inner;
      auto a = make_bitvector_extract(n->bv_, bv->high_bit_, bv->low_bit_);
      return make_unop(n->type(), a);
    }
    default:
      return SymTransformVisitor::visit(bv);
    }
  }

};

} // namespace


SymBitVector SymSimplify::simplify(const SymBitVector& b) {
  auto ptr = b.ptr;

  // first move all bit extracts inside
  SymMoveExtractsInside mover;
  while (true) {
    auto old = ptr;
    ptr = mover(ptr);
    if (old == ptr) break;
  }

  // then attempt to remove bit extracts
  SymMergeExtracts merger;
  while (true) {
    auto old = ptr;
    ptr = merger(ptr);
    if (old == ptr) break;
  }

  return SymBitVector(ptr);
}

SymBool SymSimplify::simplify(const SymBool& b) {
  auto ptr = b.ptr;

  // first move all bit extracts inside
  SymMoveExtractsInside mover;
  while (true) {
    auto old = ptr;
    ptr = mover(ptr);
    if (old == ptr) break;
  }

  // then attempt to remove bit extracts
  SymMergeExtracts merger;
  while (true) {
    auto old = ptr;
    ptr = merger(ptr);
    if (old == ptr) break;
  }

  return SymBool(ptr);
}

} // namespace stoke