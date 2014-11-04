
#ifndef _STOKE_SRC_SYMSTATE_SYM_BITVECTOR_H
#define _STOKE_SRC_SYMSTATE_SYM_BITVECTOR_H

#include <iostream>

#include "src/symstate/bool.h"

namespace stoke {


class SymBitVectorAnd;
class SymBitVectorConcat;
class SymBitVectorConstant;
class SymBitVectorExtract;
class SymBitVectorIte;
class SymBitVectorMinus;
class SymBitVectorMod;
class SymBitVectorMult;
class SymBitVectorNot;
class SymBitVectorOr;
class SymBitVectorPlus;
class SymBitVectorShiftRight;
class SymBitVectorShiftLeft;
class SymBitVectorVar;
class SymBitVectorXor;



class SymBitVector {
  public:

    enum Type {
      AND,
      CONCAT,
      CONSTANT,
      EXTRACT,
      ITE,
      MINUS,
      MOD,
      MULT,
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

    /** Creates a constant bitvector of specified size and value */
    static SymBitVectorConstant& constant(uint16_t size, uint64_t constant);
    /** Creates a bitvector variables of specified size and name */
    static SymBitVectorVar& var(uint16_t size, std::string name);

    /** Conclasss the bitwise AND of two bitvectors */
    SymBitVectorAnd& operator&(const SymBitVector& other) const;
    /** Conclasss the concatenation of two bitvectors */
    SymBitVectorConcat& operator||(const SymBitVector& other) const;
    /** Conclasss the substraction of two bitvectors */
    SymBitVectorMinus& operator-(const SymBitVector& other) const;
    /** Conclasss the multiplication of two bitvectors */
    SymBitVectorMult& operator*(const SymBitVector& other) const;
    /** Conclasss the modulus of two bitvectors */
    SymBitVectorMod& operator%(const SymBitVector& other) const;
    /** Conclasss the logical negation of this bitvector */
    SymBitVectorNot& operator!() const;
    /** Conclasss the bitwise OR of two bitvectors */
    SymBitVectorOr& operator|(const SymBitVector& other) const;
    /** Conclasss the sum of two bitvectors */
    SymBitVectorPlus& operator+(const SymBitVector& other) const;
    /** Conclasss a bitvector (of same size) shifted to the left by 'shift' */
    SymBitVectorShiftLeft& operator<<(uint64_t shift) const;
    /** Conclasss a bitveector shifted to the left by another bitvector. */
    SymBitVectorShiftLeft& operator<<(const SymBitVector& other) const;
    /** Conclasss a bitvector (of same size) shifted to the right by 'shift' */
    SymBitVectorShiftRight& operator>>(uint64_t shift) const;
    /** Conclasss a bitveector shifted to the right by another bitvector. */
    SymBitVectorShiftRight& operator>>(const SymBitVector& other) const;
    /** Conclasss the bitwise XOR of two bitvectors */
    SymBitVectorXor& operator^(const SymBitVector& other) const;


    /** Returns a bitvector of length 1 indicating if the arguments are equal */
    SymBoolEq& operator==(const SymBitVector& other) const;
    /** Returns a bitvector of length 1 indicating if the arguments are not equal */
    SymBoolNot& operator!=(const SymBitVector& other) const;

    class IndexHelper {
      friend class SymBitVector;

      public:
        SymBitVectorExtract& operator[](uint16_t index) const;

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

/* Abstract class that has contains a left and right argument to a binary operator. */
class SymBitVectorBinop : public SymBitVector {
  friend class SymBitVector;

  public:
    const SymBitVector& a_;
    const SymBitVector& b_;

  protected:
    SymBitVectorBinop(const SymBitVector& a, const SymBitVector &b) : a_(a), b_(b) {}
};


class SymBitVectorAnd : public SymBitVectorBinop {
  friend class SymBitVector;
  using SymBitVectorBinop::SymBitVectorBinop;

  public:
    SymBitVector::Type type() const { return AND; }
};

class SymBitVectorConcat : public SymBitVectorBinop {
  friend class SymBitVector;
  using SymBitVectorBinop::SymBitVectorBinop;

  public:
    SymBitVector::Type type() const { return CONCAT; }
};

class SymBitVectorConstant : public SymBitVector {
  friend class SymBitVector;

  private:
    SymBitVectorConstant(uint16_t size, uint64_t constant) 
      : constant_(constant), size_(size) {
    }

  public:
    SymBitVector::Type type() const { return CONSTANT; }

    const uint64_t constant_;
    const uint16_t size_;
};

class SymBitVectorExtract : public SymBitVector {
  friend class SymBitVector;

  private:
    /* Extracts bits low_bit,low_bit+1,...,low_bit+n-1 from a 
       bitvector of length m */
    SymBitVectorExtract(const SymBitVector& bv, uint16_t high_bit, uint16_t low_bit) :
      bv_(bv), low_bit_(low_bit), high_bit_(high_bit) { }

  public:
    SymBitVector::Type type() const { return EXTRACT; }

    const SymBitVector& bv_;
    const uint16_t low_bit_;
    const uint16_t high_bit_;
};

class SymBitVectorIte : public SymBitVector {
  friend class SymBitVector;

  private:
    SymBitVectorIte(const SymBool& cond, const SymBitVector& a, 
                    const SymBitVector& b) : cond_(cond), a_(a), b_(b) {}

  public:

    SymBitVector::Type type() const { return ITE; }

    const SymBool& cond_;
    const SymBitVector& a_;
    const SymBitVector& b_;
};

class SymBitVectorMinus : public SymBitVectorBinop {
  friend class SymBitVector;
  using SymBitVectorBinop::SymBitVectorBinop;

  public:
    SymBitVector::Type type() const { return MINUS; }
};

class SymBitVectorMod : public SymBitVectorBinop {
  friend class SymBitVector;
  using SymBitVectorBinop::SymBitVectorBinop;

  public:
    SymBitVector::Type type() const { return MOD; }
};

class SymBitVectorMult : public SymBitVectorBinop {
  friend class SymBitVector;
  using SymBitVectorBinop::SymBitVectorBinop;

  public:
    SymBitVector::Type type() const { return MULT; }
};

class SymBitVectorNot : public SymBitVector {
  friend class SymBitVector;

  private:
    SymBitVectorNot(const SymBitVector& bv) : bv_(bv) {}

  public:
    SymBitVector::Type type() const { return NOT; }

    const SymBitVector& bv_;
};

class SymBitVectorOr : public SymBitVectorBinop {
  friend class SymBitVector;
  using SymBitVectorBinop::SymBitVectorBinop;

  public:
    SymBitVector::Type type() const { return OR; }
};

class SymBitVectorPlus : public SymBitVectorBinop {
  friend class SymBitVector;
  using SymBitVectorBinop::SymBitVectorBinop;

  public:
    SymBitVector::Type type() const { return PLUS; }
};

class SymBitVectorShiftLeft : public SymBitVectorBinop {
  friend class SymBitVector;
  using SymBitVectorBinop::SymBitVectorBinop;

  public:
    SymBitVector::Type type() const { return SHIFT_LEFT; }
};

class SymBitVectorShiftRight : public SymBitVectorBinop {
  friend class SymBitVector;
  using SymBitVectorBinop::SymBitVectorBinop;

  public:
    SymBitVector::Type type() const { return SHIFT_RIGHT; }
};


class SymBitVectorVar : public SymBitVector {
  friend class SymBitVector;

  private:
    SymBitVectorVar(uint16_t size, const std::string name) : name_(name), size_(size) {}

  public:
    SymBitVector::Type type() const { return VAR; }

    const std::string name_;
    const uint16_t size_;
};



class SymBitVectorXor : public SymBitVectorBinop {
  friend class SymBitVector;
  using SymBitVectorBinop::SymBitVectorBinop;

  public:
    SymBitVector::Type type() const { return XOR; }
};


} //namespace stoke

std::ostream& operator<< (std::ostream& out, stoke::SymBitVector& bv);


/* We need to include these to make sure templates instantiate, but not
   before SymBitVector is declared! */
#include "src/symstate/print_visitor.h"
#include "src/symstate/typecheck_visitor.h"

#endif
