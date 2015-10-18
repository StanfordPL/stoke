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

/** Merges two consecutive extracts.  E.g., b[12:10][1:0] becomes b[11:10]. */
class SymMergeExtracts : public SymTransformVisitor {

public:

  SymBitVectorAbstract* visit(const SymBitVectorExtract * const bv) {
    auto lhs = (*this)(bv->bv_);
    if (lhs->type() == SymBitVector::EXTRACT) {
      auto inner = static_cast<const SymBitVectorExtract * const>(lhs);
      auto low = bv->low_bit_ + inner->low_bit_;
      auto high = low + (bv->high_bit_ - bv->low_bit_);
      auto res = make_bitvector_extract(inner->bv_, high, low);
      return res;
    }
    return (SymBitVectorExtract*) bv;
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
      auto a = make_bitvector_extract(lhs, bv->high_bit_, rhs->width_);
      auto b = make_bitvector_extract(rhs, rhs->width_ - 1, bv->low_bit_);
      return make_binop(SymBitVector::CONCAT, a, b);
    }
    // case SymBitVector::ITE:
    //   return visit(static_cast<const SymBitVectorIte * const>(bv));
    // case SymBitVector::NOT:
    //   return visit(static_cast<const SymBitVectorNot * const>(bv));
    default:
      return (SymBitVectorExtract*) bv;
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
  ptr = merger(ptr);

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
  ptr = merger(ptr);

  return SymBool(ptr);
}

} // namespace stoke