
#ifndef _STOKE_SRC_SYMSTATE_SYM_BITVECTOR_H
#define _STOKE_SRC_SYMSTATE_SYM_BITVECTOR_H

#include <iostream>

namespace stoke {

template <uint16_t n>
struct SymBitVectorAnd;

template <uint16_t n, uint16_t x, uint16_t y>
struct SymBitVectorConcat;

template <uint16_t n>
struct SymBitVectorConstant;

template <uint16_t n, uint16_t m>
struct SymBitVectorExtract;

template <uint16_t n>
struct SymBitVectorIff;

template <uint16_t n>
struct SymBitVectorIte;

template <uint16_t n>
struct SymBitVectorNot;

template <uint16_t n>
struct SymBitVectorOr;

template <uint16_t n>
struct SymBitVectorPlus;

template <uint16_t n>
struct SymBitVectorShiftRight;

template <uint16_t n>
struct SymBitVectorShiftLeft;

template <uint16_t n>
struct SymBitVectorVar;

template <uint16_t n>
struct SymBitVectorXor;


enum SymBitVectorTypes {
  AND,
  CONCAT,
  CONSTANT,
  EXTRACT,
  IFF,
  ITE,
  NOT,
  OR,
  PLUS,
  SHIFT_RIGHT,
  SHIFT_LEFT,
  VAR,
  XOR
};



template <uint16_t n>
class SymBitVector {
  public:

    /** Get the type of this bitvector expression; helps for recursive algorithms on the tree. */
    virtual SymBitVectorTypes type() const = 0;

    /** Get the bitwidth of the arguments of this expression.  
        Helps where the output size differs from input. */
    virtual uint16_t size() const { return n; }

    /** Constructs the sum of two bitvectors */
    SymBitVectorPlus<n>& operator+(const SymBitVector<n>& other) const {
      return *(new SymBitVectorPlus<n>(*this, other)); 
    }

    /** Constructs the bitwise AND of two bitvectors */
    SymBitVectorAnd<n>& operator&(const SymBitVector<n>& other) const {
      return *(new SymBitVectorAnd<n>(*this, other));
    }

    /** Constructs the bitwise OR of two bitvectors */
    SymBitVectorOr<n>& operator|(const SymBitVector<n>& other) const {
      return *(new SymBitVectorOr<n>(*this, other));
    }

    /** Constructs the bitwise XOR of two bitvectors */
    SymBitVectorXor<n>& operator^(const SymBitVector<n>& other) const {
      return *(new SymBitVectorXor<n>(*this, other));
    }

    /** Constructs the logical negation of this bitvector */
    SymBitVectorNot<n>& operator!() const {
      return *(new SymBitVectorNot<n>(*this));
    }

    /** Constructs the concatenation of two bitvectors */
    template <uint16_t m>
    SymBitVectorConcat<n+m, n, m>& operator||(const SymBitVector<m>& other) const {
      return *(new SymBitVectorConcat<n+m, n, m>(*this, other));
    }

    /** Constructs a bitvector (of same size) shifted to the right by 'shift' */
    SymBitVectorShiftRight<n>& operator>>(uint16_t shift) const {
      return *(new SymBitVectorShiftRight<n>(*this, shift));
    }

    /** Constructs a bitvector (of same size) shifted to the left by 'shift' */
    SymBitVectorShiftLeft<n>& operator<<(uint16_t shift) const {
      return *(new SymBitVectorShiftLeft<n>(*this, shift));
    }

    /** Returns a bitvector of length 1 indicating if the arguments are equal */
    SymBitVectorIff<n> operator==(const SymBitVector<n>& other) const {
      return *(new SymBitVectorIff<n>(*this, other));
    }

    /** Returns a bitvector of length 1 indicating if the arguments are not equal */
    SymBitVectorNot<1>& operator!=(const SymBitVector<n>& other) const {
      return !(*this == other);
    }

    /** Extracts a single bit from the bitvector */
    SymBitVectorExtract<1, n>& operator[](uint16_t index) {
      return extract<1>(index);
    }

    /** Extracts a sequence of m bits from 'low_bit' to 'low_bit + m - 1' from the
        bitvector. */
    template <uint16_t m>
    SymBitVectorExtract<m, n>& extract(uint16_t low_bit) {
      return *(new SymBitVectorExtract<m,n>(*this, low_bit));
    }

    /** A bitvector representation of if-then-else; i.e. saying ( cond ? a : b ). */
    static SymBitVectorIte<n> ite(const SymBitVector<1>& cond, 
                                  const SymBitVector<n>& a, const SymBitVector<n>& b) {
      return *(new SymBitVectorIte<n>(cond, a, b));
    }

    virtual void write_text(std::ostream& out) const = 0;

};


template <uint16_t n>
struct SymBitVectorAnd : public SymBitVector<n> {

  public:
    SymBitVectorAnd(const SymBitVector<n>& a, const SymBitVector<n>& b) : a_(a), b_(b) {}

    void write_text(std::ostream& os) const {
      os << "(and ";
      a_.write_text(os);
      os << " ";
      b_.write_text(os);
      os << ")";
    }

    SymBitVectorTypes type() const { return AND; }

    const SymBitVector<n>& a_;
    const SymBitVector<n>& b_;
};

template <uint16_t n, uint16_t x, uint16_t y>
struct SymBitVectorConcat : public SymBitVector<n> {

  public:
    SymBitVectorConcat(const SymBitVector<x>& a, const SymBitVector<y>& b) :
       a_(a), b_(b) {
      assert(x + y == n);
    }

    void write_text(std::ostream& os) const {
      os << "(concat ";
      a_.write_text(os);
      os << " ";
      b_.write_text(os);
      os << ")";
    }

    SymBitVectorTypes type() const { return CONCAT; }

    const SymBitVector<x>& a_;
    const SymBitVector<y>& b_;
};

template <uint16_t n>
struct SymBitVectorConstant : public SymBitVector<n> {

  public:
    SymBitVectorConstant(uint64_t constant) : constant_(constant) {
      assert(constant < (1 << n));
    }

    void write_text(std::ostream& os) const {
      os << "[ ";
      for(size_t i = n; n >= 64; --i)
        os << "0, ";
      for(uint64_t mask = (0x8000000000000000 >> (64 - n)); mask; mask >>= 1) {
        os << (constant_ & mask ? 1 : 0); 
        if(mask > 1)
          os << ", ";
      }
      os << " ]";
    }

    SymBitVectorTypes type() const { return CONSTANT; }

    const uint64_t constant_;
};

template <uint16_t n, uint16_t m>
struct SymBitVectorExtract : public SymBitVector<n> {

  public:
    /* Extracts bits low_bit,low_bit+1,...,low_bit+n-1 from a 
       bitvector of length m */
    SymBitVectorExtract(const SymBitVector<m>& bv, uint16_t low_bit) :
      bv_(bv), low_bit_(low_bit), high_bit_(low_bit + n - 1) {
      assert(high_bit_ < m);
    }

    void write_text(std::ostream& os) const {
      os << bv_ << "[" << high_bit_ << ":" << low_bit_ << "]";
    }


    SymBitVectorTypes type() const { return EXTRACT; }

    const SymBitVector<m>& bv_;
    const uint16_t low_bit_;
    const uint16_t high_bit_;
};

template <uint16_t n>
struct SymBitVectorIff : public SymBitVector<1> {

  public:
    SymBitVectorIff(const SymBitVector<n>& a, const SymBitVector<n>& b) : a_(a), b_(b) {}

    void write_text(std::ostream& os) const {
      os << "(iff ";
      a_.write_text(os);
      os << " ";
      b_.write_text(os);
      os << ")";
    }

    SymBitVectorTypes type() const { return IFF; }

    const SymBitVector<n>& a_;
    const SymBitVector<n>& b_;
};

template <uint16_t n>
struct SymBitVectorIte : public SymBitVector<n> {

  public:
    SymBitVectorIte(const SymBitVector<1>& cond, const SymBitVector<n>& a, 
                    const SymBitVector<n>& b) : cond_(cond), a_(a), b_(b) {}

    void write_text(std::ostream& os) const {
      os << "(if ";
      cond_.write_text(os);
      os << " then ";
      a_.write_text(os);
      os << " else ";
      b_.write_text(os);
      os << ")";
    }

    SymBitVectorTypes type() const { return ITE; }

    const SymBitVector<1>& cond_;
    const SymBitVector<n>& a_;
    const SymBitVector<n>& b_;
};

template <uint16_t n>
struct SymBitVectorNot : public SymBitVector<n> {

  public:
    SymBitVectorNot(const SymBitVector<n>& bv) : bv_(bv) {}

    void write_text(std::ostream& os) const {
      os << "(neg " ;
      bv_.write_text(os);
      os << ")";
    }

    SymBitVectorTypes type() const { return NOT; }

    const SymBitVector<n>& bv_;
};

template <uint16_t n>
struct SymBitVectorOr : public SymBitVector<n> {

  public:
    SymBitVectorOr(const SymBitVector<n>& a, const SymBitVector<n>& b) : a_(a), b_(b) {}

    void write_text(std::ostream& os) const {
      os << "(or ";
      a_.write_text(os);
      os << " ";
      b_.write_text(os);
      os << ")";
    }

    SymBitVectorTypes type() const { return OR; }

    const SymBitVector<n>& a_;
    const SymBitVector<n>& b_;
};

template <uint16_t n>
struct SymBitVectorPlus : public SymBitVector<n> {

  public:
    SymBitVectorPlus(const SymBitVector<n>& a, const SymBitVector<n>& b) : a_(a), b_(b) {}

    void write_text(std::ostream& os) const {
      os << "(+ ";
      a_.write_text(os);
      os << " ";
      b_.write_text(os);
      os << ")";
    }

    SymBitVectorTypes type() const { return PLUS; }

    const SymBitVector<n>& a_;
    const SymBitVector<n>& b_;
};

template <uint16_t n>
struct SymBitVectorShiftLeft : public SymBitVector<n> {

  public:
    SymBitVectorShiftLeft(const SymBitVector<n>& bv, uint16_t shift) : 
      bv_(bv), shift_(shift) {}

    void write_text(std::ostream& os) const {
      os << "(";
      bv_.write_text(os);
      os << " << " << shift_ << ")";
    }

    SymBitVectorTypes type() const { return SHIFT_LEFT; }

    const SymBitVector<n>& bv_;
    const uint16_t shift_;
};

template <uint16_t n>
struct SymBitVectorShiftRight : public SymBitVector<n> {

  public:
    SymBitVectorShiftRight(const SymBitVector<n>& bv, uint16_t shift) : 
      bv_(bv), shift_(shift) {}

    void write_text(std::ostream& os) const {
      os << "(";
      bv_.write_text(os);
      os << " >> " << shift_ << ")";
    }

    SymBitVectorTypes type() const { return SHIFT_RIGHT; }

    const SymBitVector<n>& bv_;
    const uint16_t shift_;
};

template <uint16_t n>
struct SymBitVectorVar : public SymBitVector<n> {

  public:
    SymBitVectorVar(const std::string name) : name_(name) {}

    void write_text(std::ostream& os) const {
      os << "<" << name_ << "#" << n << ">";
    }

    SymBitVectorTypes type() const { return VAR; }

    const std::string name_;
};



template <uint16_t n>
struct SymBitVectorXor : public SymBitVector<n> {

  public:
    SymBitVectorXor(const SymBitVector<n>& a, const SymBitVector<n>& b) : a_(a), b_(b) {}

    void write_text(std::ostream& os) const {
      os << "(xor ";
      a_.write_text(os);
      os << " ";
      b_.write_text(os);
      os << ")";
    }

    SymBitVectorTypes type() const { return XOR; }

    const SymBitVector<n>& a_;
    const SymBitVector<n>& b_;
};


} //namespace stoke

template <uint16_t n>
std::ostream& operator<< (std::ostream& out, stoke::SymBitVector<n>& bv) {
  bv.write_text(out);
  return out;
}

#endif
