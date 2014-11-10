
#ifndef _STOKE_SRC_SYMSTATE_SYM_BITVECTOR_H
#define _STOKE_SRC_SYMSTATE_SYM_BITVECTOR_H

#include <iostream>

#include "src/symstate/bool.h"
#include "src/ext/z3/include/z3++.h"

namespace stoke {

class SymBitVectorAbstract;

class SymBitVectorAnd;
class SymBitVectorConcat;
class SymBitVectorConstant;
class SymBitVectorDiv;
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
class SymBitVectorSignDiv;
class SymBitVectorSignExtend;
class SymBitVectorSignMod;
class SymBitVectorSignShiftRight;
class SymBitVectorUMinus;
class SymBitVectorVar;
class SymBitVectorXor;
class SymBitVectorZ3;



class SymBitVector {
  public:

    enum Type {
      NONE,
      AND,
      CONCAT,
      CONSTANT,
      DIV,
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
      SIGN_DIV,
      SIGN_EXTEND,
      SIGN_MOD,
      SIGN_SHIFT_RIGHT,
      U_MINUS,
      VAR,
      XOR,
      Z3
    };


    /** Get the type of this bitvector expression; helps for recursive algorithms on the tree. */
    Type type() const; 

    /** Creates a constant bitvector of specified size and value */
    static SymBitVector constant(uint16_t size, uint64_t constant);
    /** Creates a bitvector variables of specified size and name */
    static SymBitVector var(uint16_t size, std::string name);
    /** Creates a length-1 bitvector from a boolean */
    static SymBitVector from_bool(const SymBool& b);
    /** Creates an if-then-else expression bitvector */
    static SymBitVector ite(const SymBool& cond, const SymBitVector& t, const SymBitVector& f);
    /** Creates a symbolic bitvector from a z3 expression (for compatibility) */
    static SymBitVector z3(z3::expr& e);

    /** Constructs the bitwise AND of two bitvectors */
    SymBitVector operator&(const SymBitVector& other) const;
    /** Constructs the concatenation of two bitvectors */
    SymBitVector operator||(const SymBitVector& other) const;
    /** Constructs the concatenation of two bitvectors */
    SymBitVector operator/(const SymBitVector& other) const;
    /** Constructs the substraction of two bitvectors */
    SymBitVector operator-(const SymBitVector& other) const;
    /** Constructs the multiplication of two bitvectors */
    SymBitVector operator*(const SymBitVector& other) const;
    /** Constructs the modulus of two bitvectors */
    SymBitVector operator%(const SymBitVector& other) const;
    /** Constructs the logical negation of this bitvector */
    SymBitVector operator!() const;
    /** Constructs the bitwise OR of two bitvectors */
    SymBitVector operator|(const SymBitVector& other) const;
    /** Constructs the sum of two bitvectors */
    SymBitVector operator+(const SymBitVector& other) const;
    /** Constructs a bitvector (of same size) shifted to the left by 'shift' */
    SymBitVector operator<<(uint64_t shift) const;
    /** Constructs a bitveector shifted to the left by another bitvector. */
    SymBitVector operator<<(const SymBitVector& other) const;
    /** Constructs a bitvector (of same size) shifted to the right by 'shift' */
    SymBitVector operator>>(uint64_t shift) const;
    /** Constructs a bitveector shifted to the right by another bitvector. */
    SymBitVector operator>>(const SymBitVector& other) const;
    /** Creates a bitvector representing signed division */
    SymBitVector s_div(const SymBitVector& other) const;
    /** Creates a sign-extended version of this bitvector */
    SymBitVector extend(uint16_t size) const;
    /** Creates a bitvector representing signed modulus */
    SymBitVector s_mod(const SymBitVector& other) const;
    /** Creates a bitvector representing signed shift right */
    SymBitVector s_shr(const SymBitVector& other) const;
    /** Creates a 2s-complement negation of this bitvector */
    SymBitVector operator-() const;
    /** Constructs the bitwise XOR of two bitvectors */
    SymBitVector operator^(const SymBitVector& other) const;


    /** Returns a bool indicating if the arguments are equal */
    SymBoolEq operator==(const SymBitVector& other) const;
    /** Returns a bool indicating if the first argument is at least the second */
    SymBoolGe operator>=(const SymBitVector& other) const;
    /** Returns a bool indicating if the first argument is greater than the second */
    SymBoolGt operator>(const SymBitVector& other) const;
    /** Returns a bool indicating if the first argument is at most the second */
    SymBoolLe operator<=(const SymBitVector& other) const;
    /** Returns a bool indicating if the first argument is less than the second */
    SymBoolLt operator<(const SymBitVector& other) const;
    /** Returns a bool indicating if the arguments are not equal */
    SymBoolNot operator!=(const SymBitVector& other) const;

    class IndexHelper {
      friend class SymBitVector;

      public:
        SymBitVector operator[](uint16_t index) const;
        operator SymBool() const;

      private:
        IndexHelper(const SymBitVector& bv, uint16_t index) : bv_(bv), index_(index) {}

        uint16_t index_;
        const SymBitVector& bv_;
    };

    /** Extracts a single bit from the bitvector */
    SymBitVector::IndexHelper operator[](uint16_t index) const {
      return IndexHelper(*this, index);
    }

    /* Accesses the underlying object */
    const SymBitVectorAbstract * ptr;

    /* Constructs a new SymBitVector from a pointer to the AST hierarchy */
    SymBitVector(const SymBitVectorAbstract * ptr_) : ptr(ptr_) {}



};

class SymBitVectorAbstract {
  friend class SymBitVector;

  public:
    virtual SymBitVector::Type type() const = 0;
};

/* Abstract class that has contains a left and right argument to a binary operator. */
class SymBitVectorBinop : public SymBitVectorAbstract {
  friend class SymBitVector;

  public:
    const SymBitVectorAbstract * const a_;
    const SymBitVectorAbstract * const b_;

  protected:
    SymBitVectorBinop(const SymBitVectorAbstract * const a, const SymBitVectorAbstract * const b) : a_(a), b_(b) {}
};


class SymBitVectorAnd : public SymBitVectorBinop {
  friend class SymBitVector;
  using SymBitVectorBinop::SymBitVectorBinop;

  public:
    SymBitVector::Type type() const { return SymBitVector::Type::AND; }
};

class SymBitVectorConcat : public SymBitVectorBinop {
  friend class SymBitVector;
  using SymBitVectorBinop::SymBitVectorBinop;

  public:
    SymBitVector::Type type() const { return SymBitVector::Type::CONCAT; }
};

class SymBitVectorDiv : public SymBitVectorBinop {
  friend class SymBitVector;
  using SymBitVectorBinop::SymBitVectorBinop;

  public:
    SymBitVector::Type type() const { return SymBitVector::Type::DIV; }
};

class SymBitVectorConstant : public SymBitVectorAbstract {
  friend class SymBitVector;

  private:
    SymBitVectorConstant(uint16_t size, uint64_t constant) 
      : constant_(constant), size_(size) {
    }

  public:
    SymBitVector::Type type() const { return SymBitVector::Type::CONSTANT; }

    const uint64_t constant_;
    const uint16_t size_;
};

class SymBitVectorExtract : public SymBitVectorAbstract {
  friend class SymBitVector;

  private:
    /* Extracts bits low_bit,low_bit+1,...,low_bit+n-1 from a 
       bitvector of length m */
    SymBitVectorExtract(const SymBitVectorAbstract * const bv, uint16_t high_bit, uint16_t low_bit) :
      bv_(bv), low_bit_(low_bit), high_bit_(high_bit) { }

  public:
    SymBitVector::Type type() const { return SymBitVector::Type::EXTRACT; }

    const SymBitVectorAbstract * const bv_;
    const uint16_t low_bit_;
    const uint16_t high_bit_;
};

class SymBitVectorIte : public SymBitVectorAbstract {
  friend class SymBitVector;

  private:
    SymBitVectorIte(const SymBool& cond, const SymBitVectorAbstract * const a, 
                    const SymBitVectorAbstract * const b) : cond_(cond), a_(a), b_(b) {}

  public:

    SymBitVector::Type type() const { return SymBitVector::Type::ITE; }

    const SymBool& cond_;
    const SymBitVectorAbstract * const a_;
    const SymBitVectorAbstract * const b_;
};

class SymBitVectorMinus : public SymBitVectorBinop {
  friend class SymBitVector;
  using SymBitVectorBinop::SymBitVectorBinop;

  public:
    SymBitVector::Type type() const { return SymBitVector::Type::MINUS; }
};

class SymBitVectorMod : public SymBitVectorBinop {
  friend class SymBitVector;
  using SymBitVectorBinop::SymBitVectorBinop;

  public:
    SymBitVector::Type type() const { return SymBitVector::Type::MOD; }
};

class SymBitVectorMult : public SymBitVectorBinop {
  friend class SymBitVector;
  using SymBitVectorBinop::SymBitVectorBinop;

  public:
    SymBitVector::Type type() const { return SymBitVector::Type::MULT; }
};

class SymBitVectorNot : public SymBitVectorAbstract {
  friend class SymBitVector;

  // It's a bug that SymVisitor is here; it's unclear to me why it should be
  // needed, but I have trouble compiling without it
  template <typename T>
  friend class SymVisitor;

  private:
    SymBitVectorNot(const SymBitVectorAbstract * const bv) : bv_(bv) {}

  public:
    SymBitVector::Type type() const { return SymBitVector::Type::NOT; }

    const SymBitVectorAbstract * const bv_;
};

class SymBitVectorOr : public SymBitVectorBinop {
  friend class SymBitVector;
  using SymBitVectorBinop::SymBitVectorBinop;

  public:
    SymBitVector::Type type() const { return SymBitVector::Type::OR; }
};

class SymBitVectorPlus : public SymBitVectorBinop {
  friend class SymBitVector;
  using SymBitVectorBinop::SymBitVectorBinop;

  public:
    SymBitVector::Type type() const { return SymBitVector::Type::PLUS; }
};

class SymBitVectorShiftLeft : public SymBitVectorBinop {
  friend class SymBitVector;
  using SymBitVectorBinop::SymBitVectorBinop;

  public:
    SymBitVector::Type type() const { return SymBitVector::Type::SHIFT_LEFT; }
};

class SymBitVectorShiftRight : public SymBitVectorBinop {
  friend class SymBitVector;
  using SymBitVectorBinop::SymBitVectorBinop;

  public:
    SymBitVector::Type type() const { return SymBitVector::Type::SHIFT_RIGHT; }
};

class SymBitVectorSignDiv : public SymBitVectorBinop {
  friend class SymBitVector;
  using SymBitVectorBinop::SymBitVectorBinop;

  public:
    SymBitVector::Type type() const { return SymBitVector::Type::SIGN_DIV; }
};

class SymBitVectorSignExtend : public SymBitVectorAbstract {
  friend class SymBitVector;

  private:
    SymBitVectorSignExtend(const SymBitVectorAbstract * const bv, uint16_t size) : bv_(bv), size_(size) {}

  public:
    SymBitVector::Type type() const { return SymBitVector::Type::SIGN_EXTEND; }

    const SymBitVectorAbstract * const bv_;
    const uint16_t size_;
};

class SymBitVectorSignMod : public SymBitVectorBinop {
  friend class SymBitVector;
  using SymBitVectorBinop::SymBitVectorBinop;

  public:
    SymBitVector::Type type() const { return SymBitVector::Type::SIGN_MOD; }
};

class SymBitVectorSignShiftRight : public SymBitVectorBinop {
  friend class SymBitVector;
  using SymBitVectorBinop::SymBitVectorBinop;

  public:
    SymBitVector::Type type() const { return SymBitVector::Type::SIGN_SHIFT_RIGHT; }
};

class SymBitVectorUMinus : public SymBitVectorAbstract {
  friend class SymBitVector;

  private:
    SymBitVectorUMinus(const SymBitVectorAbstract * const bv) : bv_(bv) {}

  public:
    SymBitVector::Type type() const { return SymBitVector::Type::U_MINUS; }

    const SymBitVectorAbstract * const bv_;
};


class SymBitVectorVar : public SymBitVectorAbstract {
  friend class SymBitVector;

  private:
    SymBitVectorVar(uint16_t size, const std::string name) : name_(name), size_(size) {}

  public:
    SymBitVector::Type type() const { return SymBitVector::Type::VAR; }

    const std::string name_;
    const uint16_t size_;
};



class SymBitVectorXor : public SymBitVectorBinop {
  friend class SymBitVector;
  using SymBitVectorBinop::SymBitVectorBinop;

  public:
    SymBitVector::Type type() const { return SymBitVector::Type::XOR; }
};

/** @Deprecated. This class provides compatibility with the legacy validator;
 * one can build Z3 expressions and then put them into the modern bitvector
 * representation.  Once the legacy handlers are all fixed, we can remove this
 * class. */
class SymBitVectorZ3 : public SymBitVectorAbstract {
  friend class SymBitVector;

  private:
    SymBitVectorZ3(z3::expr& e) : e_(e) {}

  public:
    SymBitVector::Type type() const { return SymBitVector::Type::Z3; }

    const z3::expr& e_;
};


} //namespace stoke

std::ostream& operator<< (std::ostream& out, stoke::SymBitVector& bv);


/* We need to include these to make sure templates instantiate, but not
   before SymBitVector is declared! */
#include "src/symstate/print_visitor.h"
#include "src/symstate/typecheck_visitor.h"

#endif
