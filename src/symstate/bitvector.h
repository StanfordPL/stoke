
#ifndef _STOKE_SRC_SYMSTATE_SYM_BITVECTOR_H
#define _STOKE_SRC_SYMSTATE_SYM_BITVECTOR_H

#include <iostream>

#include "src/symstate/bool.h"

namespace stoke {


struct SymBitVectorAnd;
struct SymBitVectorConcat;
struct SymBitVectorConstant;
struct SymBitVectorExtract;
struct SymBitVectorIff;
struct SymBitVectorIte;
struct SymBitVectorNot;
struct SymBitVectorOr;
struct SymBitVectorPlus;
struct SymBitVectorShiftRight;
struct SymBitVectorShiftLeft;
struct SymBitVectorVar;
struct SymBitVectorXor;



class SymBitVector {
  public:

    enum Type {
      AND,
      CONCAT,
      CONSTANT,
      EXTRACT,
      ITE,
      NOT,
      OR,
      PLUS,
      SHIFT_RIGHT,
      SHIFT_LEFT,
      VAR,
      XOR
    };


    /** Get the type of this bitvector expression; helps for recursive algorithms on the tree. */
    virtual Type type() const = 0;

    /** Get the bitwidth of the arguments of this expression.  
        Helps where the output size differs from input. */
    //virtual uint16_t size() const = 0;

    /** Constructs the sum of two bitvectors */
    SymBitVectorPlus& operator+(const SymBitVector& other) const;

    /** Constructs the bitwise AND of two bitvectors */
    SymBitVectorAnd& operator&(const SymBitVector& other) const;

    /** Constructs the bitwise OR of two bitvectors */
    SymBitVectorOr& operator|(const SymBitVector& other) const;

    /** Constructs the bitwise XOR of two bitvectors */
    SymBitVectorXor& operator^(const SymBitVector& other) const;

    /** Constructs the logical negation of this bitvector */
    SymBitVectorNot& operator!() const;

    /** Constructs the concatenation of two bitvectors */
    SymBitVectorConcat& operator||(const SymBitVector& other) const;

    /** Constructs a bitvector (of same size) shifted to the right by 'shift' */
    SymBitVectorShiftRight& operator>>(uint64_t shift) const;

    /** Constructs a bitvector (of same size) shifted to the left by 'shift' */
    SymBitVectorShiftLeft& operator<<(uint64_t shift) const;

    /** Returns a bitvector of length 1 indicating if the arguments are equal */
    SymBoolEq& operator==(const SymBitVector& other) const;

    /** Returns a bitvector of length 1 indicating if the arguments are not equal */
    SymBoolNot& operator!=(const SymBitVector& other) const;

    virtual void write_text(std::ostream& out) const = 0;

    class IndexHelper {
      friend class SymBitVector;

      public:
        SymBitVectorExtract& operator[](uint16_t index);

      private:
        IndexHelper(const SymBitVector& bv, uint16_t index) : bv_(bv), index_(index) {}

        uint16_t index_;
        const SymBitVector& bv_;
    };

    /** Extracts a single bit from the bitvector */
    SymBitVector::IndexHelper& operator[](uint16_t index) {
      return *(new IndexHelper(*this, index));
    }
};


struct SymBitVectorAnd : public SymBitVector {

  public:
    SymBitVectorAnd(const SymBitVector& a, const SymBitVector& b) : a_(a), b_(b) {}

    void write_text(std::ostream& os) const {
      os << "(and ";
      a_.write_text(os);
      os << " ";
      b_.write_text(os);
      os << ")";
    }

    SymBitVector::Type type() const { return AND; }

    const SymBitVector& a_;
    const SymBitVector& b_;
};

struct SymBitVectorConcat : public SymBitVector {

  public:
    SymBitVectorConcat(const SymBitVector& a, const SymBitVector& b) :
       a_(a), b_(b) {
    }

    void write_text(std::ostream& os) const {
      os << "(concat ";
      a_.write_text(os);
      os << " ";
      b_.write_text(os);
      os << ")";
    }

    SymBitVector::Type type() const { return CONCAT; }

    const SymBitVector& a_;
    const SymBitVector& b_;
};

struct SymBitVectorConstant : public SymBitVector {

  public:
    SymBitVectorConstant(uint16_t size, uint64_t constant) 
      : constant_(constant), size_(size) {
    }

    void write_text(std::ostream& os) const {
      os << "[ ";
      for(size_t i = size_; size_ >= 64; --i)
        os << "0, ";
      for(uint64_t mask = (0x8000000000000000 >> (64 - size_)); mask; mask >>= 1) {
        os << (constant_ & mask ? 1 : 0); 
        if(mask > 1)
          os << ", ";
      }
      os << " ]";
    }

    SymBitVector::Type type() const { return CONSTANT; }

    const uint64_t constant_;
    const uint16_t size_;
};

struct SymBitVectorExtract : public SymBitVector {

  public:
    /* Extracts bits low_bit,low_bit+1,...,low_bit+n-1 from a 
       bitvector of length m */
    SymBitVectorExtract(const SymBitVector& bv, uint16_t high_bit, uint16_t low_bit) :
      bv_(bv), low_bit_(low_bit), high_bit_(high_bit_) {
    }

    void write_text(std::ostream& os) const {
      //os << bv_ << "[" << high_bit_ << ":" << low_bit_ << "]";
    }

    SymBitVector::Type type() const { return EXTRACT; }

    const SymBitVector& bv_;
    const uint16_t low_bit_;
    const uint16_t high_bit_;
};

struct SymBitVectorIte : public SymBitVector {

  public:
    SymBitVectorIte(const SymBool& cond, const SymBitVector& a, 
                    const SymBitVector& b) : cond_(cond), a_(a), b_(b) {}

    void write_text(std::ostream& os) const {
      os << "(if ";
      os << " then ";
      a_.write_text(os);
      os << " else ";
      b_.write_text(os);
      os << ")";
    }

    SymBitVector::Type type() const { return ITE; }

    const SymBool& cond_;
    const SymBitVector& a_;
    const SymBitVector& b_;
};

struct SymBitVectorNot : public SymBitVector {

  public:
    SymBitVectorNot(const SymBitVector& bv) : bv_(bv) {}

    void write_text(std::ostream& os) const {
      os << "(neg " ;
      bv_.write_text(os);
      os << ")";
    }

    SymBitVector::Type type() const { return NOT; }

    const SymBitVector& bv_;
};

struct SymBitVectorOr : public SymBitVector {

  public:
    SymBitVectorOr(const SymBitVector& a, const SymBitVector& b) : a_(a), b_(b) {}

    void write_text(std::ostream& os) const {
      os << "(or ";
      a_.write_text(os);
      os << " ";
      b_.write_text(os);
      os << ")";
    }

    SymBitVector::Type type() const { return OR; }

    const SymBitVector& a_;
    const SymBitVector& b_;
};

struct SymBitVectorPlus : public SymBitVector {

  public:
    SymBitVectorPlus(const SymBitVector& a, const SymBitVector& b) : a_(a), b_(b) {}

    void write_text(std::ostream& os) const {
      os << "(+ ";
      a_.write_text(os);
      os << " ";
      b_.write_text(os);
      os << ")";
    }

    SymBitVector::Type type() const { return PLUS; }

    const SymBitVector& a_;
    const SymBitVector& b_;
};

struct SymBitVectorShiftLeft : public SymBitVector {

  public:
    SymBitVectorShiftLeft(const SymBitVector& bv, uint64_t shift) : 
      bv_(bv), shift_(shift) {}

    void write_text(std::ostream& os) const {
      os << "(";
      bv_.write_text(os);
      os << " << " << shift_ << ")";
    }

    SymBitVector::Type type() const { return SHIFT_LEFT; }

    const SymBitVector& bv_;
    const uint64_t shift_;
};

struct SymBitVectorShiftRight : public SymBitVector {

  public:
    SymBitVectorShiftRight(const SymBitVector& bv, uint64_t shift) : 
      bv_(bv), shift_(shift) {}

    void write_text(std::ostream& os) const {
      os << "(";
      bv_.write_text(os);
      os << " >> " << shift_ << ")";
    }

    SymBitVector::Type type() const { return SHIFT_RIGHT; }

    const SymBitVector& bv_;
    const uint64_t shift_;
};

struct SymBitVectorVar : public SymBitVector {

  public:
    SymBitVectorVar(uint16_t size, const std::string name) : name_(name), size_(size) {}

    void write_text(std::ostream& os) const {
      os << "<" << name_ << "#" << size_ << ">";
    }

    SymBitVector::Type type() const { return VAR; }

    const std::string name_;
    const uint16_t size_;
};



struct SymBitVectorXor : public SymBitVector {

  public:
    SymBitVectorXor(const SymBitVector& a, const SymBitVector& b) : a_(a), b_(b) {}

    void write_text(std::ostream& os) const {
      os << "(xor ";
      a_.write_text(os);
      os << " ";
      b_.write_text(os);
      os << ")";
    }

    SymBitVector::Type type() const { return XOR; }

    const SymBitVector& a_;
    const SymBitVector& b_;
};


} //namespace stoke

std::ostream& operator<< (std::ostream& out, stoke::SymBitVector& bv);

#endif
