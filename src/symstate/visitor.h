
#ifndef _STOKE_SRC_SYMSTATE_VISITOR_H
#define _STOKE_SRC_SYMSTATE_VISITOR_H

#include <cassert>

#include "src/symstate/bool.h"
#include "src/symstate/bitvector.h"

namespace stoke {

/** This abstract class is used to visit SymBitVector and SymBool classes to
 * perform operations on the AST.  To use, implement a subclass. */
template <typename T>
class SymVisitor {

public:
  /** Visit a symbolic bit vector (encapsulated) */
  T operator()(const SymBitVector& bv) {
    return (*this)(bv.ptr);
  }

  /* Visit a symbolic bit vector */
  virtual T operator()(const SymBitVectorAbstract * const bv) {
    switch(bv->type()) {
    case SymBitVector::AND:
      return visit(dynamic_cast<const SymBitVectorAnd * const>(bv));
    case SymBitVector::CONCAT:
      return visit(dynamic_cast<const SymBitVectorConcat * const>(bv));
    case SymBitVector::DIV:
      return visit(dynamic_cast<const SymBitVectorDiv * const>(bv));
    case SymBitVector::CONSTANT:
      return visit(dynamic_cast<const SymBitVectorConstant * const>(bv));
    case SymBitVector::EXTRACT:
      return visit(dynamic_cast<const SymBitVectorExtract * const>(bv));
    case SymBitVector::ITE:
      return visit(dynamic_cast<const SymBitVectorIte * const>(bv));
    case SymBitVector::MINUS:
      return visit(dynamic_cast<const SymBitVectorMinus * const>(bv));
    case SymBitVector::MOD:
      return visit(dynamic_cast<const SymBitVectorMod * const>(bv));
    case SymBitVector::MULT:
      return visit(dynamic_cast<const SymBitVectorMult * const>(bv));
    case SymBitVector::NOT:
      return visit(dynamic_cast<const SymBitVectorNot * const>(bv));
    case SymBitVector::OR:
      return visit(dynamic_cast<const SymBitVectorOr * const>(bv));
    case SymBitVector::PLUS:
      return visit(dynamic_cast<const SymBitVectorPlus * const>(bv));
    case SymBitVector::SHIFT_RIGHT:
      return visit(dynamic_cast<const SymBitVectorShiftRight * const>(bv));
    case SymBitVector::SHIFT_LEFT:
      return visit(dynamic_cast<const SymBitVectorShiftLeft * const>(bv));
    case SymBitVector::SIGN_DIV:
      return visit(dynamic_cast<const SymBitVectorSignDiv * const>(bv));
    case SymBitVector::SIGN_EXTEND:
      return visit(dynamic_cast<const SymBitVectorSignExtend * const>(bv));
    case SymBitVector::SIGN_MOD:
      return visit(dynamic_cast<const SymBitVectorSignMod * const>(bv));
    case SymBitVector::SIGN_SHIFT_RIGHT:
      return visit(dynamic_cast<const SymBitVectorSignShiftRight * const>(bv));
    case SymBitVector::U_MINUS:
      return visit(dynamic_cast<const SymBitVectorUMinus * const>(bv));
    case SymBitVector::VAR:
      return visit(dynamic_cast<const SymBitVectorVar * const>(bv));
    case SymBitVector::XOR:
      return visit(dynamic_cast<const SymBitVectorXor * const>(bv));
    case SymBitVector::Z3:
      return visit(dynamic_cast<const SymBitVectorZ3 * const>(bv));
    default:
      std::cerr << "Unexpected bitvector type " << bv->type()
                << " in " << __FILE__ << ":" << __LINE__ << std::endl;
      assert(false);
    }
  }

  /** Visit a symbolic bool (encapsulated) */
  T operator()(const SymBool& b) {
    return (*this)(b.ptr);
  }

  /** Visit a symbolic bool */
  virtual T operator()(const SymBoolAbstract * const b) {
    switch(b->type()) {
    case SymBool::AND:
      return visit(dynamic_cast<const SymBoolAnd * const>(b));
    case SymBool::EQ:
      return visit(dynamic_cast<const SymBoolEq * const>(b));
    case SymBool::FALSE:
      return visit(dynamic_cast<const SymBoolFalse * const>(b));
    case SymBool::GE:
      return visit(dynamic_cast<const SymBoolGe * const>(b));
    case SymBool::GT:
      return visit(dynamic_cast<const SymBoolGt * const>(b));
    case SymBool::IFF:
      return visit(dynamic_cast<const SymBoolIff * const>(b));
    case SymBool::IMPLIES:
      return visit(dynamic_cast<const SymBoolImplies * const>(b));
    case SymBool::LE:
      return visit(dynamic_cast<const SymBoolLe * const>(b));
    case SymBool::LT:
      return visit(dynamic_cast<const SymBoolLt * const>(b));
    case SymBool::NOT:
      return visit(dynamic_cast<const SymBoolNot * const>(b));
    case SymBool::OR:
      return visit(dynamic_cast<const SymBoolOr * const>(b));
    case SymBool::TRUE:
      return visit(dynamic_cast<const SymBoolTrue * const>(b));
    case SymBool::VAR:
      return visit(dynamic_cast<const SymBoolVar * const>(b));
    case SymBool::XOR:
      return visit(dynamic_cast<const SymBoolXor * const>(b));
    case SymBool::Z3:
      return visit(dynamic_cast<const SymBoolZ3 * const>(b));
    default:
      std::cerr << "Unexpected bool type " << b->type()
                << " in " << __FILE__ << ":" << __LINE__ << std::endl;
      assert(false);
    }
  }

  /** Visit a generic bin-op.  Used to make implementing visitors more
   * concise.  Can be deleted if need be. */
  virtual T visit_binop(const SymBitVectorBinop * const bv) = 0;

  /** Visit a generic comparison operator. */
  virtual T visit_compare(const SymBoolCompare * const b) = 0;

  /** Visit a bit-vector AND */
  virtual T visit(const SymBitVectorAnd * const bv) {
    return visit_binop(bv);
  }
  /** Visit a bit-vector concatenation */
  virtual T visit(const SymBitVectorConcat * const bv) {
    return visit_binop(bv);
  }
  /** Visit a bit-vector concatenation */
  virtual T visit(const SymBitVectorDiv * const bv) {
    return visit_binop(bv);
  }
  /** Visit a bit-vector minus */
  virtual T visit(const SymBitVectorMinus * const bv) {
    return visit_binop(bv);
  }
  /** Visit a bit-vector mod */
  virtual T visit(const SymBitVectorMod * const bv) {
    return visit_binop(bv);
  }
  /** Visit a bit-vector mult */
  virtual T visit(const SymBitVectorMult * const bv) {
    return visit_binop(bv);
  }
  /** Visit a bit-vector OR */
  virtual T visit(const SymBitVectorOr * const bv) {
    return visit_binop(bv);
  }
  /** Visit a bit-vector plus */
  virtual T visit(const SymBitVectorPlus * const bv) {
    return visit_binop(bv);
  }
  /** Visit a bit-vector shift-left */
  virtual T visit(const SymBitVectorShiftLeft * const bv) {
    return visit_binop(bv);
  }
  /** Visit a bit-vector shift-right */
  virtual T visit(const SymBitVectorShiftRight * const bv) {
    return visit_binop(bv);
  }
  /** Visit a bit-vector signed division */
  virtual T visit(const SymBitVectorSignDiv * const bv) {
    return visit_binop(bv);
  }
  /** Visit a bit-vector signed mod */
  virtual T visit(const SymBitVectorSignMod * const bv) {
    return visit_binop(bv);
  }
  /** Visit a bit-vector signed shift-right */
  virtual T visit(const SymBitVectorSignShiftRight * const bv) {
    return visit_binop(bv);
  }
  /** Visit a bit-vector XOR */
  virtual T visit(const SymBitVectorXor * const bv) {
    return visit_binop(bv);
  }


  /** Visit a bit-vector constant */
  virtual T visit(const SymBitVectorConstant * const bv) = 0;
  /** Visit a bit-vector extract */
  virtual T visit(const SymBitVectorExtract * const bv) = 0;
  /** Visit a bit-vector if-then-else */
  virtual T visit(const SymBitVectorIte * const bv) = 0;
  /** Visit a bit-vector NOT */
  virtual T visit(const SymBitVectorNot * const bv) = 0;
  /** Visit a bit-vector extract */
  virtual T visit(const SymBitVectorSignExtend * const bv) = 0;
  /** Visit a bit-vector extract */
  virtual T visit(const SymBitVectorUMinus * const bv) = 0;
  /** Visit a bit-vector variable */
  virtual T visit(const SymBitVectorVar * const bv) = 0;
  /** Visit a Z3 bitvector */
  virtual T visit(const SymBitVectorZ3 * const bv) = 0;

  /** Visit a bit-vector EQ */
  virtual T visit(const SymBoolEq * const b) {
    return visit_compare(b);
  }
  /** Visit a bit-vector GE */
  virtual T visit(const SymBoolGe * const b) {
    return visit_compare(b);
  }
  /** Visit a bit-vector GT */
  virtual T visit(const SymBoolGt * const b) {
    return visit_compare(b);
  }
  /** Visit a bit-vector LE */
  virtual T visit(const SymBoolLe * const b) {
    return visit_compare(b);
  }
  /** Visit a bit-vector LT */
  virtual T visit(const SymBoolLt * const b) {
    return visit_compare(b);
  }

  /** Visit a boolean AND */
  virtual T visit(const SymBoolAnd * const b) = 0;
  /** Visit a boolean FALSE */
  virtual T visit(const SymBoolFalse * const b) = 0;
  /** Visit a boolean IFF */
  virtual T visit(const SymBoolIff * const b) = 0;
  /** Visit a boolean IMPLIES */
  virtual T visit(const SymBoolImplies * const b) = 0;
  /** Visit a boolean NOT */
  virtual T visit(const SymBoolNot * const b) = 0;
  /** Visit a boolean OR */
  virtual T visit(const SymBoolOr * const b) = 0;
  /** Visit a boolean TRUE */
  virtual T visit(const SymBoolTrue * const b) = 0;
  /** Visit a boolean VAR */
  virtual T visit(const SymBoolVar * const b) = 0;
  /** Visit a boolean XOR */
  virtual T visit(const SymBoolXor * const b) = 0;
  /** Visit a Z3 compatibility bool */
  virtual T visit(const SymBoolZ3 * const b) = 0;


};


} //namespace

#endif
