
#ifndef _STOKE_SRC_SYMSTATE_TYPECHECK_VISITOR
#define _STOKE_SRC_SYMSTATE_TYPECHECK_VISITOR

#include "src/symstate/bitvector.h"

namespace stoke {

/* This visitor returns the size of a bitvector, and also checks
   that it's well-formed.  If it's not well-formed, it returns
   size 0. */
class SymTypecheckVisitor : public SymVisitor<uint16_t> {

  public:

    /* Visit a generic binary operator */
    uint16_t visit_binop(const SymBitVectorBinop * const bv) {

      auto lhs = (*this)(bv->a_);
      auto rhs = (*this)(bv->b_);

      if (lhs == rhs)
        return lhs;
      else
        return 0;
    }

    /** Visit a bit-vector EQ */
    uint16_t visit_compare(const SymBoolCompare * const b) {
      auto lhs = (*this)(b->a_);
      auto rhs = (*this)(b->b_);

      if (lhs == rhs)
        return 1;
      else
        return 0;
    }
 
    /** Visit a bit-vector concatenation.  Note, different than other
        binary operators because the lengths change. */
    uint16_t visit(const SymBitVectorConcat * const bv) {

      auto rhs = (*this)(bv->b_);
      auto lhs = (*this)(bv->a_);

      if(lhs && rhs)
        return lhs + rhs;
      else
        return 0;
    }
    
    /** Visit a bit-vector constant */
    uint16_t visit(const SymBitVectorConstant * const bv) {
      if(bv->constant_ >> bv->size_)
        return 0;
      else
        return bv->size_;
    }

    /** Visit a bit-vector extract */
    uint16_t visit(const SymBitVectorExtract * const bv) {
      auto parent = (*this)(bv->bv_);
      if(bv->low_bit_ > bv->high_bit_)
        return 0;
      if(bv->high_bit_ >= parent)
        return 0;
      return (bv->high_bit_ - bv->low_bit_ + 1);
    }

    /** Visit a bit-vector if-then-else */
    uint16_t visit(const SymBitVectorIte * const bv) {
      auto lhs = (*this)(bv->a_);
      auto rhs = (*this)(bv->b_);

      if (lhs == rhs)
        return lhs;
      else
        return 0;
    }

    /** Visit a bit-vector NOT */
    uint16_t visit(const SymBitVectorNot * const bv) {
      return (*this)(bv->bv_);
    }

    /** Visit a bit-vector unary minus */
    uint16_t visit(const SymBitVectorSignExtend * const bv) {
      auto child = (*this)(bv->bv_);

      if (child < bv->size_ && child > 0)
        return bv->size_;
      else
        return 0;
    }

    /** Visit a bit-vector unary minus */
    uint16_t visit(const SymBitVectorUMinus * const bv) {
      return (*this)(bv->bv_);
    }

    /** Visit a bit-vector variable */
    uint16_t visit(const SymBitVectorVar * const bv) {
      return bv->size_;
    }

    /** Visit a Z3 bitvector */
    uint16_t visit(const SymBitVectorZ3 * const bv) {
      return bv->e_.get_sort().bv_size();
    }

    /** Visit a boolean AND */
    uint16_t visit(const SymBoolAnd * const b) {
      return (*this)(b->a_) && (*this)(b->b_);
    }

    /** Visit a boolean FALSE */
    uint16_t visit(const SymBoolFalse * const b) {
      return 1;
    }

    /** Visit a boolean IFF */
    uint16_t visit(const SymBoolIff * const b) {
      return (*this)(b->a_) && (*this)(b->b_);
    }

    /** Visit a boolean Implies */
    uint16_t visit(const SymBoolImplies * const b) {
      return (*this)(b->a_) && (*this)(b->b_);
    }

    /** Visit a boolean NOT */
    uint16_t visit(const SymBoolNot * const b) {
      return (*this)(b->b_);
    }

    /** Visit a boolean OR */
    uint16_t visit(const SymBoolOr * const b) {
      return (*this)(b->a_) && (*this)(b->b_);
    }

    /** Visit a boolean TRUE */
    uint16_t visit(const SymBoolTrue * const b) {
      return 1;
    }

    /** Visit a boolean VAR */
    uint16_t visit(const SymBoolVar * const b) {
      return 1;
    }

    /** Visit a boolean XOR */
    uint16_t visit(const SymBoolXor * const b) {
      return (*this)(b->a_) && (*this)(b->b_);
    }

    /** Visit a Z3 bool.  Trusting it's typechecked right. */
    uint16_t visit(const SymBoolZ3 * const b) {
      return 1;
    }

};

} //namespace

#endif
