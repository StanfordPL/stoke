
#ifndef _STOKE_SRC_SYMSTATE_TYPECHECK_VISITOR
#define _STOKE_SRC_SYMSTATE_TYPECHECK_VISITOR

#include "src/symstate/visitor.h"

std::ostream& operator<< (std::ostream& out, stoke::SymBitVector& bv);

namespace stoke {

/* This visitor returns the size of a bitvector, and also checks
   that it's well-formed.  If it's not well-formed, it returns
   size 0. */
class SymTypecheckVisitor : public SymVisitor<uint16_t> {

public:

  /** Typecheck this abstract symbolic bit vector */
  uint16_t operator()(const SymBitVector& bv) {
    error_ = "";
    return SymVisitor<uint16_t>::operator()(bv);
  }
  /** Typecheck this abstract symbolic bool */
  uint16_t operator()(const SymBool& b) {
    error_ = "";
    return SymVisitor<uint16_t>::operator()(b);
  }

  /* Visit a generic binary operator */
  uint16_t visit_binop(const SymBitVectorBinop * const bv) {

    auto lhs = (*this)(bv->a_);
    auto rhs = (*this)(bv->b_);

    if (lhs == rhs)
      return lhs;
    else {
      std::stringstream e;
      SymPrintVisitor pv(e);
      e << "In binop: "; pv(bv); e << " the LHS has width " << lhs
        << " but RHS has width " << rhs;
      set_error(e);
      return 0;
    }
  }

  /** Visit a bit-vector EQ */
  uint16_t visit_compare(const SymBoolCompare * const b) {
    auto lhs = (*this)(b->a_);
    auto rhs = (*this)(b->b_);

    if (lhs == rhs)
      return 1;
    else {
      std::stringstream e;
      SymPrintVisitor pv(e);
      e << "In compare: "; pv(b); e << " the LHS has width " << lhs
        << " but RHS has width " << rhs;
      set_error(e);
      return 0;
    }
  }

  /** Visit a bit-vector concatenation.  Note, different than other
      binary operators because the lengths change. */
  uint16_t visit(const SymBitVectorConcat * const bv) {

    auto lhs = (*this)(bv->a_);
    auto rhs = (*this)(bv->b_);

    if(lhs && rhs)
      return lhs + rhs;
    else {
      std::stringstream e;
      SymPrintVisitor pv(e);
      e << "In concatenation: "; pv(bv);
      if(!lhs)
        e << " the left hand side didn't typecheck";
      else if (!rhs)
        e << " the right hand side didn't typecheck";
      else
        e << " neither argument typechecked";
      set_error(e);
      return 0;
    }
  }

  /** Visit a bit-vector constant */
  uint16_t visit(const SymBitVectorConstant * const bv) {

    if (bv->size_ == 0) {
      std::stringstream e;
      e << "Bitvector constant " << bv->constant_ << " has size 0.";
      set_error(e);
      return 0;
    } else {
      return bv->size_;
    }
  }

  /** Visit a bit-vector extract */
  uint16_t visit(const SymBitVectorExtract * const bv) {
    auto parent = (*this)(bv->bv_);
    if(bv->low_bit_ > bv->high_bit_) {
      std::stringstream e;
      SymPrintVisitor pv(e);
      e << "In bitvector extract "; pv(bv); e << " the low index " << bv->low_bit_ 
        << " is greater than high index " << bv->high_bit_;
      set_error(e);
      return 0;
    }
    if(bv->high_bit_ >= parent) {
      std::stringstream e;
      SymPrintVisitor pv(e);
      e << "In bitvector extract "; pv(bv); e << " the high index " << bv->high_bit_
        << " is greater than width of parent, namely " << parent;
      set_error(e);
      return 0;
    }
    return (bv->high_bit_ - bv->low_bit_ + 1);
  }

  /** Visit a bit-vector if-then-else */
  uint16_t visit(const SymBitVectorIte * const bv) {
    auto cond = (*this)(bv->cond_);
    auto lhs = (*this)(bv->a_);
    auto rhs = (*this)(bv->b_);

    if (lhs == rhs && cond)
      return lhs;
    else {
      std::stringstream e;
      SymPrintVisitor pv(e);
      e << "In ite: "; pv(bv); e << " the true branch has width " << lhs
        << " but the false branch has width " << rhs;
      set_error(e);
      return 0;
    }
  }

  /** Visit a bit-vector NOT */
  uint16_t visit(const SymBitVectorNot * const bv) {
    return (*this)(bv->bv_);
  }

  /** Visit a bit-vector unary minus */
  uint16_t visit(const SymBitVectorSignExtend * const bv) {
    auto child = (*this)(bv->bv_);

    if (child < bv->size_ && child > 0 && bv->size_ > 0)
      return bv->size_;
    else if (bv->size_ == 0) {
      std::stringstream e;
      SymPrintVisitor pv(e);
      e << "In sign-extend: "; pv(bv); e << " the extension is to length 0";
      return 0;
    } else if (child >= bv->size_) {
      std::stringstream e;
      SymPrintVisitor pv(e);
      e << "In sign-extend: "; pv(bv); e << " the vector has width " << child
        << " and cannot be extended to " << bv->size_;
      return 0;
    } else {
      std::stringstream e;
      SymPrintVisitor pv(e);
      e << "In sign-extend: "; pv(bv); e << " the vector could not be typechecked.";
      return 0;
    }
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

  /** Check if an error message was recorded on the last typecheck */
  bool has_error() const {
    return error_.size() > 0;
  }
  /** Get the last recorded error message */
  std::string error() const {
    return error_;
  }

private:
  /** Tracks the first error that occurred in typechecking */
  std::string error_;

  /** Sets the error message, *unless* it was already set. */
  void set_error(const std::string& e) {
    if(error_.size() == 0)
      error_ = e;
  }
  /** Sets the error message, *unless* it was already set. */
  void set_error(const std::stringstream& e) {
    if(error_.size() == 0)
      error_ = e.str();
  }

};

} //namespace

#endif
