
#ifndef _STOKE_SRC_SYMSTATE_PRINT_VISITOR
#define _STOKE_SRC_SYMSTATE_PRINT_VISITOR

#include "src/symstate/visitor.h"

namespace stoke {

class SymPrintVisitor : public SymVisitor<void> {

  public:
    SymPrintVisitor(std::ostream& os) : os_(os) {}

    /** Visit a bit-vector AND */
    void visit(const SymBitVectorAnd& bv) {
      os_ << "(and "; 
      (*this)(bv.a_);
      os_ << " ";
      (*this)(bv.b_);
      os_ << ")";
    }

    /** Visit a bit-vector concatenation */
    void visit(const SymBitVectorConcat& bv) {
      os_ << "(concat "; 
      (*this)(bv.a_);
      os_ << " ";
      (*this)(bv.b_);
      os_ << ")";
    }
    
    /** Visit a bit-vector constant */
    void visit(const SymBitVectorConstant& bv) {
      os_ << "[ ";
      for(size_t i = bv.size_; bv.size_ >= 64; --i)
        os_ << "0, ";
      for(uint64_t mask = (0x8000000000000000 >> (64 - bv.size_)); mask; mask >>= 1) {
        os_ << (bv.constant_ & mask ? 1 : 0); 
        if(mask > 1)
          os_ << ", ";
      }
      os_ << " ]";
    }

    /** Visit a bit-vector extract */
    void visit(const SymBitVectorExtract& bv) {
      (*this)(bv.bv_);    
      os_ << "[" << bv.high_bit_ << ":" << bv.low_bit_ << "]";
    }

    /** Visit a bit-vector if-then-else */
    void visit(const SymBitVectorIte& bv) {
      os_ << "(if ";
      (*this)(bv.cond_); 
      os_ << " then ";
      (*this)(bv.a_); 
      os_ << " else ";
      (*this)(bv.b_); 
      os_ << ")";
    }


    /** Visit a bit-vector NOT */
    void visit(const SymBitVectorNot& bv) {
      os_ << "(not ";
      (*this)(bv.bv_);
      os_ << ")";
    }

    /** Visit a bit-vector OR */
    void visit(const SymBitVectorOr& bv) {
      os_ << "(or "; 
      (*this)(bv.a_);
      os_ << " ";
      (*this)(bv.b_);
      os_ << ")";
    }

    /** Visit a bit-vector plus */
    void visit(const SymBitVectorPlus& bv) {
      os_ << "(plus "; 
      (*this)(bv.a_);
      os_ << " ";
      (*this)(bv.b_);
      os_ << ")";
    }

    /** Visit a bit-vector shift-left */
    void visit(const SymBitVectorShiftLeft& bv) {
      os_ << "("; 
      (*this)(bv.bv_);
      os_ << " << " << bv.shift_ << ")";
    }

    /** Visit a bit-vector shift-right */
    void visit(const SymBitVectorShiftRight& bv) {
      os_ << "("; 
      (*this)(bv.bv_);
      os_ << " >> " << bv.shift_ << ")";
    }

    /** Visit a bit-vector variable */
    void visit(const SymBitVectorVar& bv) {
      os_ << "<" << bv.name_ << "|" << bv.size_ << ">";
    }

    /** Visit a bit-vector XOR */
    void visit(const SymBitVectorXor& bv) {
      os_ << "(xor "; 
      (*this)(bv.a_);
      os_ << " ";
      (*this)(bv.b_);
      os_ << ")";
    }

    /** Visit a bit-vector EQ */
    void visit(const SymBoolEq& b) {
      os_ << "(=="; 
      (*this)(b.a_);
      os_ << " ";
      (*this)(b.b_);
      os_ << ")";
    }
    
    /** Visit a boolean AND */
    void visit(const SymBoolAnd& b) {
      os_ << "(and ";
      (*this)(b.a_);
      os_ << " ";
      (*this)(b.b_);
      os_ << ")";
    }

    /** Visit a boolean FALSE */
    void visit(const SymBoolFalse& b) {
      os_ << "FALSE";
    }

    /** Visit a boolean IFF */
    void visit(const SymBoolIff& b) {
      os_ << "(iff ";
      (*this)(b.a_);
      os_ << " ";
      (*this)(b.b_);
      os_ << ")";
    }

    /** Visit a boolean NOT */
    void visit(const SymBoolNot& b) {
      os_ << "(not ";
      (*this)(b.b_);
      os_ << ")";
    }

    /** Visit a boolean OR */
    void visit(const SymBoolOr& b) {
      os_ << "(or ";
      (*this)(b.a_);
      os_ << " ";
      (*this)(b.b_);
      os_ << ")";
    }

    /** Visit a boolean TRUE */
    void visit(const SymBoolTrue& b) {
      os_ << "TRUE";
    }

    /** Visit a boolean VAR */
    void visit(const SymBoolVar& b) {
      os_ << "<" << b.name_ << ">";
    }

    /** Visit a boolean XOR */
    void visit(const SymBoolXor& b) {
      os_ << "(xor ";
      (*this)(b.a_);
      os_ << " ";
      (*this)(b.b_);
      os_ << ")";
    }

  private:
    std::ostream& os_;

};

} //namespace

#endif
