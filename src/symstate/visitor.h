
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
        case SymBitVector::DIV:
          return visit(dynamic_cast<const SymBitVectorDiv&>(bv));
        case SymBitVector::CONSTANT:
          return visit(dynamic_cast<const SymBitVectorConstant&>(bv));
        case SymBitVector::EXTRACT:
          return visit(dynamic_cast<const SymBitVectorExtract&>(bv));
        case SymBitVector::ITE:
          return visit(dynamic_cast<const SymBitVectorIte&>(bv));
        case SymBitVector::MINUS:
          return visit(dynamic_cast<const SymBitVectorMinus&>(bv));
        case SymBitVector::MOD:
          return visit(dynamic_cast<const SymBitVectorMod&>(bv));
        case SymBitVector::MULT:
          return visit(dynamic_cast<const SymBitVectorMult&>(bv));
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
        case SymBitVector::SIGN_DIV:
          return visit(dynamic_cast<const SymBitVectorSignDiv&>(bv));
        case SymBitVector::SIGN_EXTEND:
          return visit(dynamic_cast<const SymBitVectorSignExtend&>(bv));
        case SymBitVector::SIGN_MOD:
          return visit(dynamic_cast<const SymBitVectorSignMod&>(bv));
        case SymBitVector::SIGN_SHIFT_RIGHT:
          return visit(dynamic_cast<const SymBitVectorSignShiftRight&>(bv));
        case SymBitVector::U_MINUS:
          return visit(dynamic_cast<const SymBitVectorUMinus&>(bv));
        case SymBitVector::VAR:
          return visit(dynamic_cast<const SymBitVectorVar&>(bv));
        case SymBitVector::XOR:
          return visit(dynamic_cast<const SymBitVectorXor&>(bv));
        case SymBitVector::Z3:
          return visit(dynamic_cast<const SymBitVectorZ3&>(bv));
        default:
          std::cerr << "Unexpected bitvector type " << bv.type()
                    << " in " << __FILE__ << ":" << __LINE__ << std::endl;
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
        case SymBool::GE:
          return visit(dynamic_cast<const SymBoolGe&>(b));
        case SymBool::GT:
          return visit(dynamic_cast<const SymBoolGt&>(b));
        case SymBool::IFF:
          return visit(dynamic_cast<const SymBoolIff&>(b));
        case SymBool::IMPLIES:
          return visit(dynamic_cast<const SymBoolImplies&>(b));
        case SymBool::LE:
          return visit(dynamic_cast<const SymBoolLe&>(b));
        case SymBool::LT:
          return visit(dynamic_cast<const SymBoolLt&>(b));
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
          std::cerr << "Unexpected bool type " << b.type()
                    << " in " << __FILE__ << ":" << __LINE__ << std::endl;
          assert(false);
      }
    }

    /** Visit a generic bin-op.  Used to make implementing visitors more
     * concise.  Can be deleted if need be. */
    virtual T visit_binop(const SymBitVectorBinop& bv) = 0;

    /** Visit a generic comparison operator. */
    virtual T visit_compare(const SymBoolCompare& b) = 0;

    /** Visit a bit-vector AND */
    virtual T visit(const SymBitVectorAnd& bv) {
      return visit_binop(bv);
    }
    /** Visit a bit-vector concatenation */
    virtual T visit(const SymBitVectorConcat& bv) {
      return visit_binop(bv);
    }
    /** Visit a bit-vector concatenation */
    virtual T visit(const SymBitVectorDiv& bv) {
      return visit_binop(bv);
    }
    /** Visit a bit-vector minus */
    virtual T visit(const SymBitVectorMinus& bv) {
      return visit_binop(bv);
    }
    /** Visit a bit-vector mod */
    virtual T visit(const SymBitVectorMod& bv) {
      return visit_binop(bv);
    }
    /** Visit a bit-vector mult */
    virtual T visit(const SymBitVectorMult& bv) {
      return visit_binop(bv);
    }
    /** Visit a bit-vector OR */
    virtual T visit(const SymBitVectorOr& bv) {
      return visit_binop(bv);
    }
    /** Visit a bit-vector plus */
    virtual T visit(const SymBitVectorPlus& bv) {
      return visit_binop(bv);
    }
    /** Visit a bit-vector shift-left */
    virtual T visit(const SymBitVectorShiftLeft& bv) {
      return visit_binop(bv);
    }
    /** Visit a bit-vector shift-right */
    virtual T visit(const SymBitVectorShiftRight& bv) {
      return visit_binop(bv);
    }
    /** Visit a bit-vector signed division */
    virtual T visit(const SymBitVectorSignDiv& bv) {
      return visit_binop(bv);
    }
    /** Visit a bit-vector signed mod */
    virtual T visit(const SymBitVectorSignMod& bv) {
      return visit_binop(bv);
    }
    /** Visit a bit-vector signed shift-right */
    virtual T visit(const SymBitVectorSignShiftRight& bv) {
      return visit_binop(bv);
    }
    /** Visit a bit-vector XOR */
    virtual T visit(const SymBitVectorXor& bv) {
      return visit_binop(bv);
    }


    /** Visit a bit-vector constant */
    virtual T visit(const SymBitVectorConstant& bv) = 0;
    /** Visit a bit-vector extract */
    virtual T visit(const SymBitVectorExtract& bv) = 0;
    /** Visit a bit-vector if-then-else */
    virtual T visit(const SymBitVectorIte& bv) = 0;
    /** Visit a bit-vector NOT */
    virtual T visit(const SymBitVectorNot& bv) = 0;
    /** Visit a bit-vector extract */
    virtual T visit(const SymBitVectorSignExtend& bv) = 0;
    /** Visit a bit-vector extract */
    virtual T visit(const SymBitVectorUMinus& bv) = 0;
    /** Visit a bit-vector variable */
    virtual T visit(const SymBitVectorVar& bv) = 0;
    /** Visit a Z3 bitvector */
    virtual T visit(const SymBitVectorZ3& bv) = 0;

    /** Visit a bit-vector EQ */
    virtual T visit(const SymBoolEq& b) {
      return visit_compare(b);
    }
    /** Visit a bit-vector GE */
    virtual T visit(const SymBoolGe& b) {
      return visit_compare(b);
    }
    /** Visit a bit-vector GT */
    virtual T visit(const SymBoolGt& b) {
      return visit_compare(b);
    }
    /** Visit a bit-vector LE */
    virtual T visit(const SymBoolLe& b) {
      return visit_compare(b);
    }
    /** Visit a bit-vector LT */
    virtual T visit(const SymBoolLt& b) {
      return visit_compare(b);
    }
 
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
    /** Visit a Z3 compatibility bool */
    virtual T visit(const SymBoolZ3& b) = 0;


};


} //namespace

#endif
