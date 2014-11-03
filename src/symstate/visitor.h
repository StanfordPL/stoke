
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
    /** Visit a symbolic bit vector */
    virtual T operator()(const SymBitVector& bv) {
      switch(bv.type()) {
        case SymBitVector::AND:
          return visit(dynamic_cast<const SymBitVectorAnd&>(bv));
        case SymBitVector::CONCAT:
          return visit(dynamic_cast<const SymBitVectorConcat&>(bv));
        case SymBitVector::CONSTANT:
          return visit(dynamic_cast<const SymBitVectorConstant&>(bv));
        case SymBitVector::EXTRACT:
          return visit(dynamic_cast<const SymBitVectorExtract&>(bv));
        case SymBitVector::ITE:
          return visit(dynamic_cast<const SymBitVectorIte&>(bv));
        case SymBitVector::NOT:
          return visit(dynamic_cast<const SymBitVectorNot&>(bv));
        case SymBitVector::OR:
          return visit(dynamic_cast<const SymBitVectorOr&>(bv));
        case SymBitVector::PLUS:
          return visit(dynamic_cast<const SymBitVectorPlus&>(bv));
        case SymBitVector::SHIFT_RIGHT:
          return visit(dynamic_cast<const SymBitVectorShiftRight&>(bv));
        case SymBitVector::SHIFT_LEFT:
          return visit(dynamic_cast<const SymBitVectorShiftLeft&>(bv));
        case SymBitVector::VAR:
          return visit(dynamic_cast<const SymBitVectorVar&>(bv));
        case SymBitVector::XOR:
          return visit(dynamic_cast<const SymBitVectorXor&>(bv));
        default:
          assert(false);
      }
    }

    /** Visit a symbolic bool */
    virtual T operator()(const SymBool& b) {
      switch(b.type()) {
        case SymBool::AND:
          return visit(dynamic_cast<const SymBoolAnd&>(b));
        case SymBool::EQ:
          return visit(dynamic_cast<const SymBoolEq&>(b));
        case SymBool::FALSE:
          return visit(dynamic_cast<const SymBoolFalse&>(b));
        case SymBool::IFF:
          return visit(dynamic_cast<const SymBoolIff&>(b));
        case SymBool::IMPLIES:
          return visit(dynamic_cast<const SymBoolImplies&>(b));
        case SymBool::NOT:
          return visit(dynamic_cast<const SymBoolNot&>(b));
        case SymBool::OR:
          return visit(dynamic_cast<const SymBoolOr&>(b));
        case SymBool::TRUE:
          return visit(dynamic_cast<const SymBoolTrue&>(b));
        case SymBool::VAR:
          return visit(dynamic_cast<const SymBoolVar&>(b));
        case SymBool::XOR:
          return visit(dynamic_cast<const SymBoolXor&>(b));
        default:
          assert(false);
      }
    }

    /** Visit a bit-vector AND */
    virtual T visit(const SymBitVectorAnd& bv) = 0;
    /** Visit a bit-vector concatenation */
    virtual T visit(const SymBitVectorConcat& bv) = 0;
    /** Visit a bit-vector constant */
    virtual T visit(const SymBitVectorConstant& bv) = 0;
    /** Visit a bit-vector extract */
    virtual T visit(const SymBitVectorExtract& bv) = 0;
    /** Visit a bit-vector if-then-else */
    virtual T visit(const SymBitVectorIte& bv) = 0;
    /** Visit a bit-vector NOT */
    virtual T visit(const SymBitVectorNot& bv) = 0;
    /** Visit a bit-vector OR */
    virtual T visit(const SymBitVectorOr& bv) = 0;
    /** Visit a bit-vector plus */
    virtual T visit(const SymBitVectorPlus& bv) = 0;
    /** Visit a bit-vector shift-left */
    virtual T visit(const SymBitVectorShiftLeft& bv) = 0;
    /** Visit a bit-vector shift-right */
    virtual T visit(const SymBitVectorShiftRight& bv) = 0;
    /** Visit a bit-vector variable */
    virtual T visit(const SymBitVectorVar& bv) = 0;
    /** Visit a bit-vector XOR */
    virtual T visit(const SymBitVectorXor& bv) = 0;

    /** Visit a bit-vector EQ */
    virtual T visit(const SymBoolEq& b) = 0;
    
    /** Visit a boolean AND */
    virtual T visit(const SymBoolAnd& b) = 0;
    /** Visit a boolean FALSE */
    virtual T visit(const SymBoolFalse& b) = 0;
    /** Visit a boolean IFF */
    virtual T visit(const SymBoolIff& b) = 0;
    /** Visit a boolean IMPLIES */
    virtual T visit(const SymBoolImplies& b) = 0;
    /** Visit a boolean NOT */
    virtual T visit(const SymBoolNot& b) = 0;
    /** Visit a boolean OR */
    virtual T visit(const SymBoolOr& b) = 0;
    /** Visit a boolean TRUE */
    virtual T visit(const SymBoolTrue& b) = 0;
    /** Visit a boolean VAR */
    virtual T visit(const SymBoolVar& b) = 0;
    /** Visit a boolean XOR */
    virtual T visit(const SymBoolXor& b) = 0;

};


} //namespace

#endif
