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


#ifndef STOKE_SRC_SYMSTATE_VISITOR_H
#define STOKE_SRC_SYMSTATE_VISITOR_H

#include <cassert>

#include "src/symstate/bool.h"
#include "src/symstate/bitvector.h"

namespace stoke {

/** This abstract class is used to visit SymBitVector and SymBool classes to
 * perform operations on the AST.  To use, implement a subclass. */
template <typename TBool, typename TBits>
class SymVisitor {

public:

  /** Visit a symbolic bit vector (encapsulated) */
  virtual TBits operator()(const SymBitVector& bv) {
    return (*this)(bv.ptr);
  }

  /* Visit a symbolic bit vector */
  virtual TBits operator()(const SymBitVectorAbstract * const bv) {
    switch (bv->type()) {
    case SymBitVector::AND:
      return visit(static_cast<const SymBitVectorAnd * const>(bv));
    case SymBitVector::CONCAT:
      return visit(static_cast<const SymBitVectorConcat * const>(bv));
    case SymBitVector::DIV:
      return visit(static_cast<const SymBitVectorDiv * const>(bv));
    case SymBitVector::CONSTANT:
      return visit(static_cast<const SymBitVectorConstant * const>(bv));
    case SymBitVector::EXTRACT:
      return visit(static_cast<const SymBitVectorExtract * const>(bv));
    case SymBitVector::FUNCTION:
      return visit(static_cast<const SymBitVectorFunction * const>(bv));
    case SymBitVector::ITE:
      return visit(static_cast<const SymBitVectorIte * const>(bv));
    case SymBitVector::MINUS:
      return visit(static_cast<const SymBitVectorMinus * const>(bv));
    case SymBitVector::MOD:
      return visit(static_cast<const SymBitVectorMod * const>(bv));
    case SymBitVector::MULT:
      return visit(static_cast<const SymBitVectorMult * const>(bv));
    case SymBitVector::NOT:
      return visit(static_cast<const SymBitVectorNot * const>(bv));
    case SymBitVector::OR:
      return visit(static_cast<const SymBitVectorOr * const>(bv));
    case SymBitVector::PLUS:
      return visit(static_cast<const SymBitVectorPlus * const>(bv));
    case SymBitVector::ROTATE_LEFT:
      return visit(static_cast<const SymBitVectorRotateLeft * const>(bv));
    case SymBitVector::ROTATE_RIGHT:
      return visit(static_cast<const SymBitVectorRotateRight * const>(bv));
    case SymBitVector::SHIFT_RIGHT:
      return visit(static_cast<const SymBitVectorShiftRight * const>(bv));
    case SymBitVector::SHIFT_LEFT:
      return visit(static_cast<const SymBitVectorShiftLeft * const>(bv));
    case SymBitVector::SIGN_DIV:
      return visit(static_cast<const SymBitVectorSignDiv * const>(bv));
    case SymBitVector::SIGN_EXTEND:
      return visit(static_cast<const SymBitVectorSignExtend * const>(bv));
    case SymBitVector::SIGN_MOD:
      return visit(static_cast<const SymBitVectorSignMod * const>(bv));
    case SymBitVector::SIGN_SHIFT_RIGHT:
      return visit(static_cast<const SymBitVectorSignShiftRight * const>(bv));
    case SymBitVector::U_MINUS:
      return visit(static_cast<const SymBitVectorUMinus * const>(bv));
    case SymBitVector::VAR:
      return visit(static_cast<const SymBitVectorVar * const>(bv));
    case SymBitVector::XOR:
      return visit(static_cast<const SymBitVectorXor * const>(bv));
    default:
      std::cerr << "Unexpected bitvector type " << bv->type()
                << " in " << __FILE__ << ":" << __LINE__ << std::endl;
      assert(false);
    }
    assert(false);
    return visit(static_cast<const SymBitVectorAnd * const>(bv)); //keep compiler happy
  }

  /** Visit a symbolic bool (encapsulated) */
  virtual TBool operator()(const SymBool& b) {
    return (*this)(b.ptr);
  }

  /** Visit a symbolic bool */
  virtual TBool operator()(const SymBoolAbstract * const b) {
    switch (b->type()) {
    case SymBool::AND:
      return visit(static_cast<const SymBoolAnd * const>(b));
    case SymBool::EQ:
      return visit(static_cast<const SymBoolEq * const>(b));
    case SymBool::FALSE:
      return visit(static_cast<const SymBoolFalse * const>(b));
    case SymBool::GE:
      return visit(static_cast<const SymBoolGe * const>(b));
    case SymBool::GT:
      return visit(static_cast<const SymBoolGt * const>(b));
    case SymBool::IFF:
      return visit(static_cast<const SymBoolIff * const>(b));
    case SymBool::IMPLIES:
      return visit(static_cast<const SymBoolImplies * const>(b));
    case SymBool::LE:
      return visit(static_cast<const SymBoolLe * const>(b));
    case SymBool::LT:
      return visit(static_cast<const SymBoolLt * const>(b));
    case SymBool::NOT:
      return visit(static_cast<const SymBoolNot * const>(b));
    case SymBool::OR:
      return visit(static_cast<const SymBoolOr * const>(b));
    case SymBool::SIGN_GE:
      return visit(static_cast<const SymBoolSignGe * const>(b));
    case SymBool::SIGN_GT:
      return visit(static_cast<const SymBoolSignGt * const>(b));
    case SymBool::SIGN_LE:
      return visit(static_cast<const SymBoolSignLe * const>(b));
    case SymBool::SIGN_LT:
      return visit(static_cast<const SymBoolSignLt * const>(b));
    case SymBool::TRUE:
      return visit(static_cast<const SymBoolTrue * const>(b));
    case SymBool::VAR:
      return visit(static_cast<const SymBoolVar * const>(b));
    case SymBool::XOR:
      return visit(static_cast<const SymBoolXor * const>(b));
    default:
      std::cerr << "Unexpected bool type " << b->type()
                << " in " << __FILE__ << ":" << __LINE__ << std::endl;
      assert(false);
    }
    assert(false);
    return visit(static_cast<const SymBoolAnd * const>(b)); //keep compiler happy
  }

  /** Visit a generic bin-op.  Used to make implementing visitors more
   * concise.  Can be deleted if need be. */
  virtual TBits visit_binop(const SymBitVectorBinop * const bv) = 0;
  /** Visit a boolean binop */
  virtual TBool visit_binop(const SymBoolBinop * const bv) = 0;
  /** Visit a generic unary operator */
  virtual TBits visit_unop(const SymBitVectorUnop * const bv) = 0;
  /** Visit a generic comparison operator. */
  virtual TBool visit_compare(const SymBoolCompare * const b) = 0;


  /** Visit a bit-vector AND */
  virtual TBits visit(const SymBitVectorAnd * const bv) {
    return visit_binop(bv);
  }
  /** Visit a bit-vector concatenation */
  virtual TBits visit(const SymBitVectorConcat * const bv) {
    return visit_binop(bv);
  }
  /** Visit a bit-vector concatenation */
  virtual TBits visit(const SymBitVectorDiv * const bv) {
    return visit_binop(bv);
  }
  /** Visit a bit-vector minus */
  virtual TBits visit(const SymBitVectorMinus * const bv) {
    return visit_binop(bv);
  }
  /** Visit a bit-vector mod */
  virtual TBits visit(const SymBitVectorMod * const bv) {
    return visit_binop(bv);
  }
  /** Visit a bit-vector mult */
  virtual TBits visit(const SymBitVectorMult * const bv) {
    return visit_binop(bv);
  }
  /** Visit a bit-vector not */
  virtual TBits visit(const SymBitVectorNot * const bv) {
    return visit_unop(bv);
  }
  /** Visit a bit-vector OR */
  virtual TBits visit(const SymBitVectorOr * const bv) {
    return visit_binop(bv);
  }
  /** Visit a bit-vector plus */
  virtual TBits visit(const SymBitVectorPlus * const bv) {
    return visit_binop(bv);
  }
  /** Visit a bit-vector plus */
  virtual TBits visit(const SymBitVectorRotateLeft * const bv) {
    return visit_binop(bv);
  }
  /** Visit a bit-vector plus */
  virtual TBits visit(const SymBitVectorRotateRight * const bv) {
    return visit_binop(bv);
  }
  /** Visit a bit-vector shift-left */
  virtual TBits visit(const SymBitVectorShiftLeft * const bv) {
    return visit_binop(bv);
  }
  /** Visit a bit-vector shift-right */
  virtual TBits visit(const SymBitVectorShiftRight * const bv) {
    return visit_binop(bv);
  }
  /** Visit a bit-vector signed division */
  virtual TBits visit(const SymBitVectorSignDiv * const bv) {
    return visit_binop(bv);
  }
  /** Visit a bit-vector signed mod */
  virtual TBits visit(const SymBitVectorSignMod * const bv) {
    return visit_binop(bv);
  }
  /** Visit a bit-vector signed shift-right */
  virtual TBits visit(const SymBitVectorSignShiftRight * const bv) {
    return visit_binop(bv);
  }
  /** Visit a bit-vector unary minus */
  virtual TBits visit(const SymBitVectorUMinus * const bv) {
    return visit_unop(bv);
  }
  /** Visit a bit-vector XOR */
  virtual TBits visit(const SymBitVectorXor * const bv) {
    return visit_binop(bv);
  }


  /** Visit a bit-vector constant */
  virtual TBits visit(const SymBitVectorConstant * const bv) = 0;
  /** Visit a bit-vector extract */
  virtual TBits visit(const SymBitVectorExtract * const bv) = 0;
  /** Visit a bit-vector extract */
  virtual TBits visit(const SymBitVectorFunction * const bv) = 0;
  /** Visit a bit-vector if-then-else */
  virtual TBits visit(const SymBitVectorIte * const bv) = 0;
  /** Visit a bit-vector extract */
  virtual TBits visit(const SymBitVectorSignExtend * const bv) = 0;
  /** Visit a bit-vector variable */
  virtual TBits visit(const SymBitVectorVar * const bv) = 0;

  /** Visit a boolean AND */
  virtual TBool visit(const SymBoolAnd * const b) {
    return visit_binop(b);
  }
  /** Visit a bit-vector EQ */
  virtual TBool visit(const SymBoolEq * const b) {
    return visit_compare(b);
  }
  /** Visit a boolean Iff */
  virtual TBool visit(const SymBoolIff * const b) {
    return visit_binop(b);
  }
  /** Visit a bit-vector GE */
  virtual TBool visit(const SymBoolGe * const b) {
    return visit_compare(b);
  }
  /** Visit a bit-vector GT */
  virtual TBool visit(const SymBoolGt * const b) {
    return visit_compare(b);
  }
  /** Visit a boolean implies */
  virtual TBool visit(const SymBoolImplies * const b) {
    return visit_binop(b);
  }
  /** Visit a bit-vector LE */
  virtual TBool visit(const SymBoolLe * const b) {
    return visit_compare(b);
  }
  /** Visit a bit-vector LT */
  virtual TBool visit(const SymBoolLt * const b) {
    return visit_compare(b);
  }
  /** Visit a boolean implies */
  virtual TBool visit(const SymBoolOr * const b) {
    return visit_binop(b);
  }
  /** Visit a bit-vector signed GE */
  virtual TBool visit(const SymBoolSignGe * const b) {
    return visit_compare(b);
  }
  /** Visit a bit-vector signed GT */
  virtual TBool visit(const SymBoolSignGt * const b) {
    return visit_compare(b);
  }
  /** Visit a bit-vector signed LE */
  virtual TBool visit(const SymBoolSignLe * const b) {
    return visit_compare(b);
  }
  /** Visit a bit-vector signed LT */
  virtual TBool visit(const SymBoolSignLt * const b) {
    return visit_compare(b);
  }
  /** Visit a boolean implies */
  virtual TBool visit(const SymBoolXor * const b) {
    return visit_binop(b);
  }

  /** Visit a boolean FALSE */
  virtual TBool visit(const SymBoolFalse * const b) = 0;
  /** Visit a boolean NOT */
  virtual TBool visit(const SymBoolNot * const b) = 0;
  /** Visit a boolean TRUE */
  virtual TBool visit(const SymBoolTrue * const b) = 0;
  /** Visit a boolean VAR */
  virtual TBool visit(const SymBoolVar * const b) = 0;

};


} //namespace

#endif
