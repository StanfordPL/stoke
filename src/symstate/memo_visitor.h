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

#include <cassert>
#include <map>

#ifndef STOKE_SRC_SYMSTATE_MEMO_VISITOR_H
#define STOKE_SRC_SYMSTATE_MEMO_VISITOR_H

#include "src/symstate/visitor.h"

namespace stoke {

/** This abstract class is used to visit SymBitVector and SymBool classes to
 * perform operations on the AST.  To use, implement a subclass. */
template <typename TBool, typename TBits, typename TArray>
class SymMemoVisitor : public SymVisitor<TBool,TBits,TArray> {

public:

  SymMemoVisitor() : bitvector_memo_(), bool_memo_(), array_memo_() { }

  /** Visit a symbolic bit vector w/ memoization */
  virtual TBits operator()(const SymBitVectorAbstract* const bv) {
    auto it = bitvector_memo_.find(bv);
    if (it != bitvector_memo_.end())
      return it->second;

    auto r = visit_nomemo(bv);
    bitvector_memo_.insert(std::make_pair(bv, r));
    return r;
  }

  /** Visit a symbolic bool w/ memoization */
  virtual TBool operator()(const SymBoolAbstract* const b) {
    auto it = bool_memo_.find(b);
    if (it != bool_memo_.end())
      return it->second;

    auto r = visit_nomemo(b);
    bool_memo_.insert(std::make_pair(b, r));
    return r;
  }

  /** Visit a symbolic bool w/ memoization */
  virtual TArray operator()(const SymArrayAbstract* const b) {
    auto it = array_memo_.find(b);
    if (it != array_memo_.end())
      return it->second;

    auto r = visit_nomemo(b);
    array_memo_.insert(std::make_pair(b, r));
    return r;
  }



private:

  std::map<const SymBitVectorAbstract* const, TBits> bitvector_memo_;
  std::map<const SymBoolAbstract* const, TBool> bool_memo_;
  std::map<const SymArrayAbstract* const, TArray> array_memo_;

  virtual TBool visit_nomemo(const SymBoolAbstract * const b) {
    switch (b->type()) {
    case SymBool::AND:
      return this->visit(static_cast<const SymBoolAnd * const>(b));
    case SymBool::ARRAY_EQ:
      return this->visit(static_cast<const SymBoolArrayEq * const>(b));
    case SymBool::EQ:
      return this->visit(static_cast<const SymBoolEq * const>(b));
    case SymBool::FALSE:
      return this->visit(static_cast<const SymBoolFalse * const>(b));
    case SymBool::GE:
      return this->visit(static_cast<const SymBoolGe * const>(b));
    case SymBool::GT:
      return this->visit(static_cast<const SymBoolGt * const>(b));
    case SymBool::IFF:
      return this->visit(static_cast<const SymBoolIff * const>(b));
    case SymBool::IMPLIES:
      return this->visit(static_cast<const SymBoolImplies * const>(b));
    case SymBool::LE:
      return this->visit(static_cast<const SymBoolLe * const>(b));
    case SymBool::LT:
      return this->visit(static_cast<const SymBoolLt * const>(b));
    case SymBool::NOT:
      return this->visit(static_cast<const SymBoolNot * const>(b));
    case SymBool::OR:
      return this->visit(static_cast<const SymBoolOr * const>(b));
    case SymBool::SIGN_GE:
      return this->visit(static_cast<const SymBoolSignGe * const>(b));
    case SymBool::SIGN_GT:
      return this->visit(static_cast<const SymBoolSignGt * const>(b));
    case SymBool::SIGN_LE:
      return this->visit(static_cast<const SymBoolSignLe * const>(b));
    case SymBool::SIGN_LT:
      return this->visit(static_cast<const SymBoolSignLt * const>(b));
    case SymBool::TRUE:
      return this->visit(static_cast<const SymBoolTrue * const>(b));
    case SymBool::VAR:
      return this->visit(static_cast<const SymBoolVar * const>(b));
    case SymBool::XOR:
      return this->visit(static_cast<const SymBoolXor * const>(b));
    default:
      std::cerr << "Unexpected bool type " << b->type()
                << " in " << __FILE__ << ":" << __LINE__ << std::endl;
      assert(false);
    }
    assert(false);
    return this->visit(static_cast<const SymBoolAnd * const>(b)); //keep compiler happy
  }


  virtual TBits visit_nomemo(const SymBitVectorAbstract * const bv) {
    switch (bv->type()) {
    case SymBitVector::AND:
      return this->visit(static_cast<const SymBitVectorAnd * const>(bv));
    case SymBitVector::ARRAY_LOOKUP:
      return this->visit(static_cast<const SymBitVectorArrayLookup * const>(bv));
    case SymBitVector::CONCAT:
      return this->visit(static_cast<const SymBitVectorConcat * const>(bv));
    case SymBitVector::DIV:
      return this->visit(static_cast<const SymBitVectorDiv * const>(bv));
    case SymBitVector::CONSTANT:
      return this->visit(static_cast<const SymBitVectorConstant * const>(bv));
    case SymBitVector::EXTRACT:
      return this->visit(static_cast<const SymBitVectorExtract * const>(bv));
    case SymBitVector::FUNCTION:
      return this->visit(static_cast<const SymBitVectorFunction * const>(bv));
    case SymBitVector::ITE:
      return this->visit(static_cast<const SymBitVectorIte * const>(bv));
    case SymBitVector::MINUS:
      return this->visit(static_cast<const SymBitVectorMinus * const>(bv));
    case SymBitVector::MOD:
      return this->visit(static_cast<const SymBitVectorMod * const>(bv));
    case SymBitVector::MULT:
      return this->visit(static_cast<const SymBitVectorMult * const>(bv));
    case SymBitVector::NOT:
      return this->visit(static_cast<const SymBitVectorNot * const>(bv));
    case SymBitVector::OR:
      return this->visit(static_cast<const SymBitVectorOr * const>(bv));
    case SymBitVector::PLUS:
      return this->visit(static_cast<const SymBitVectorPlus * const>(bv));
    case SymBitVector::ROTATE_LEFT:
      return this->visit(static_cast<const SymBitVectorRotateLeft * const>(bv));
    case SymBitVector::ROTATE_RIGHT:
      return this->visit(static_cast<const SymBitVectorRotateRight * const>(bv));
    case SymBitVector::SHIFT_RIGHT:
      return this->visit(static_cast<const SymBitVectorShiftRight * const>(bv));
    case SymBitVector::SHIFT_LEFT:
      return this->visit(static_cast<const SymBitVectorShiftLeft * const>(bv));
    case SymBitVector::SIGN_DIV:
      return this->visit(static_cast<const SymBitVectorSignDiv * const>(bv));
    case SymBitVector::SIGN_EXTEND:
      return this->visit(static_cast<const SymBitVectorSignExtend * const>(bv));
    case SymBitVector::SIGN_MOD:
      return this->visit(static_cast<const SymBitVectorSignMod * const>(bv));
    case SymBitVector::SIGN_SHIFT_RIGHT:
      return this->visit(static_cast<const SymBitVectorSignShiftRight * const>(bv));
    case SymBitVector::U_MINUS:
      return this->visit(static_cast<const SymBitVectorUMinus * const>(bv));
    case SymBitVector::VAR:
      return this->visit(static_cast<const SymBitVectorVar * const>(bv));
    case SymBitVector::XOR:
      return this->visit(static_cast<const SymBitVectorXor * const>(bv));
    default:
      std::cerr << "Unexpected bitvector type " << bv->type()
                << " in " << __FILE__ << ":" << __LINE__ << std::endl;
      assert(false);
    }
    assert(false);
    return this->visit(static_cast<const SymBitVectorAnd * const>(bv)); //keep compiler happy
  }

  virtual TArray visit_nomemo(const SymArrayAbstract * const b) {
    switch (b->type()) {
    case SymArray::STORE:
      return this->visit(static_cast<const SymArrayStore * const>(b));
    case SymArray::VAR:
      return this->visit(static_cast<const SymArrayVar * const>(b));
    default:
      std::cerr << "Unexpected array type " << b->type()
                << " in " << __FILE__ << ":" << __LINE__ << std::endl;
      assert(false);
    }
    assert(false);
    return this->visit(static_cast<const SymArrayStore * const>(b)); //keep compiler happy
  }
};


} //namespace

#endif
