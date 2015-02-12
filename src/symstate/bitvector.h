// Copyright 2013-2015 Stanford University
//
// Licensed under the Apache License, Version 2.0 (the License);
// you may not use this file except in compliance with the License.
// You may obtain a copy of the License at
//
//     http://www.apache.org/licenses/LICENSE-2.0
//
// Unless required by applicable law or agreed to in writing, software
// distributed under the License is distributed on an AS IS BASIS,
// WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
// See the License for the specific language governing permissions and
// limitations under the License.


#ifndef _STOKE_SRC_SYMSTATE_SYM_BITVECTOR_H
#define _STOKE_SRC_SYMSTATE_SYM_BITVECTOR_H

#include <iostream>
#include <vector>

#include "src/symstate/bool.h"
#include "src/symstate/function.h"
#include "src/symstate/memory_manager.h"

namespace stoke {

class SymBitVectorAbstract;

class SymBitVectorAnd;
class SymBitVectorConcat;
class SymBitVectorConstant;
class SymBitVectorDiv;
class SymBitVectorExtract;
class SymBitVectorFunction;
class SymBitVectorIte;
class SymBitVectorMinus;
class SymBitVectorMod;
class SymBitVectorMult;
class SymBitVectorNot;
class SymBitVectorOr;
class SymBitVectorPlus;
class SymBitVectorRotateRight;
class SymBitVectorRotateLeft;
class SymBitVectorShiftRight;
class SymBitVectorShiftLeft;
class SymBitVectorSignDiv;
class SymBitVectorSignExtend;
class SymBitVectorSignMod;
class SymBitVectorSignShiftRight;
class SymBitVectorUMinus;
class SymBitVectorVar;
class SymBitVectorXor;

class SymFunction;


class SymBitVector {

public:

  enum Type {
    NONE,
    AND,
    CONCAT,
    CONSTANT,
    DIV,
    EXTRACT,
    FUNCTION,
    ITE,
    MINUS,
    MOD,
    MULT,
    NOT,
    OR,
    PLUS,
    ROTATE_RIGHT,
    ROTATE_LEFT,
    SHIFT_RIGHT,
    SHIFT_LEFT,
    SIGN_DIV,
    SIGN_EXTEND,
    SIGN_MOD,
    SIGN_SHIFT_RIGHT,
    U_MINUS,
    VAR,
    XOR,
  };


  /** Get the type of this bitvector expression; helps for recursive algorithms on the tree. */
  Type type() const;

  /** Creates a constant bitvector of specified size and value */
  static SymBitVector constant(uint16_t size, uint64_t constant);
  /** Creates a bitvector variables of specified size and name */
  static SymBitVector var(uint16_t size, std::string name);
  /** Creates a length-1 bitvector from a boolean */
  static SymBitVector from_bool(const SymBool& b);

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
  /** Construts a bitvector rotated to the left by another bitvector */
  SymBitVector rol(const SymBitVector& other) const;
  /** Construts a bitvector rotated to the right by another bitvector */
  SymBitVector ror(const SymBitVector& other) const;
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
  SymBool operator==(const SymBitVector& other) const;
  /** Returns a bool indicating if the first argument is at least the second */
  SymBool operator>=(const SymBitVector& other) const;
  /** Returns a bool indicating if the first argument is greater than the second */
  SymBool operator>(const SymBitVector& other) const;
  /** Returns a bool indicating if the first argument is at most the second */
  SymBool operator<=(const SymBitVector& other) const;
  /** Returns a bool indicating if the first argument is less than the second */
  SymBool operator<(const SymBitVector& other) const;
  /** Returns a bool indicating if the arguments are not equal */
  SymBool operator!=(const SymBitVector& other) const;
  /** Signed >= comparison */
  SymBool s_ge(const SymBitVector& other) const;
  /** Signed > comparison */
  SymBool s_gt(const SymBitVector& other) const;
  /** Signed <= comparison */
  SymBool s_le(const SymBitVector& other) const;
  /** Signed < comparison */
  SymBool s_lt(const SymBitVector& other) const;

  /** Computes the parity of the bitvector */
  SymBool parity() const;

  /** Returns true if the two ASTs are identical */
  bool equals(const SymBitVector& other) const;

  class IndexHelper {
    friend class SymBitVector;

  public:
    SymBitVector operator[](uint16_t index) const;

    operator SymBool() const;
    SymBool operator ==(const SymBool& other) const {
      return (SymBool)(*this) == other;
    }
    SymBool operator &(const SymBool& other) const {
      return (SymBool)(*this) & other;
    }
    SymBool operator |(const SymBool& other) const {
      return (SymBool)(*this) | other;
    }
    SymBool operator ^(const SymBool& other) const {
      return (SymBool)(*this) ^ other;
    }
    SymBool operator !() const {
      return !(SymBool)(*this);
    }
    SymBitVector ite(const SymBitVector t, const SymBitVector f) const {
      return ((SymBool)(*this)).ite(t, f);
    }

  private:
    IndexHelper(const SymBitVector& bv, uint16_t index) : bv_(bv), index_(index) {}

    uint16_t index_;
    const SymBitVector& bv_;
  };

  /** Extracts a single bit from the bitvector (or a range of bits, via IndexHelper). */
  SymBitVector::IndexHelper operator[](uint16_t index) const {
    return IndexHelper(*this, index);
  }

  /** Accesses the underlying object */
  const SymBitVectorAbstract * ptr;

  /** Constructs a SymBitVector that doesn't point to anything */
  SymBitVector() : ptr(NULL) {}
  /** Constructs a new SymBitVector from a pointer to the AST hierarchy */
  SymBitVector(const SymBitVectorAbstract * ptr_) : ptr(ptr_) {
    if(memory_manager_)
      memory_manager_->add(ptr_);
  }

  /** Set a memory manager */
  static void set_memory_manager(SymMemoryManager* mm) {
    memory_manager_ = mm;
  }

private:

  /** Memory Manager */
  static SymMemoryManager* memory_manager_;

};

class SymBitVectorAbstract {
  friend class SymBitVector;

public:
  virtual SymBitVector::Type type() const = 0;
  virtual bool equals(const SymBitVectorAbstract * const other) const = 0;

  virtual ~SymBitVectorAbstract() = 0;
};

inline SymBitVectorAbstract::~SymBitVectorAbstract() {}

/* Abstract class that has contains a left and right argument to a binary operator. */
class SymBitVectorBinop : public SymBitVectorAbstract {
  friend class SymBitVector;

public:
  const SymBitVectorAbstract * const a_;
  const SymBitVectorAbstract * const b_;

  bool equals(const SymBitVectorAbstract * other) const {
    if(other->type() != this->type()) return false;
    auto cast = static_cast<const SymBitVectorBinop * const>(other);
    return a_->equals(cast->a_) && b_->equals(cast->b_);
  }

protected:
  SymBitVectorBinop(const SymBitVectorAbstract * const a, const SymBitVectorAbstract * const b) : a_(a), b_(b) {}
};


/* Abstract class that has contains an argument to a unary operator. */
class SymBitVectorUnop : public SymBitVectorAbstract {
  friend class SymBitVector;

public:
  const SymBitVectorAbstract * const bv_;

  bool equals(const SymBitVectorAbstract * other) const {
    if(other->type() != this->type()) return false;
    auto cast = static_cast<const SymBitVectorUnop * const>(other);
    return bv_->equals(cast->bv_);
  }

protected:
  SymBitVectorUnop(const SymBitVectorAbstract * const bv) : bv_(bv) {}
};



class SymBitVectorAnd : public SymBitVectorBinop {
  friend class SymBitVector;
  using SymBitVectorBinop::SymBitVectorBinop;

public:
  SymBitVector::Type type() const {
    return SymBitVector::Type::AND;
  }
};

class SymBitVectorConcat : public SymBitVectorBinop {
  friend class SymBitVector;
  using SymBitVectorBinop::SymBitVectorBinop;

public:
  SymBitVector::Type type() const {
    return SymBitVector::Type::CONCAT;
  }
};

class SymBitVectorDiv : public SymBitVectorBinop {
  friend class SymBitVector;
  using SymBitVectorBinop::SymBitVectorBinop;

public:
  SymBitVector::Type type() const {
    return SymBitVector::Type::DIV;
  }
};

class SymBitVectorConstant : public SymBitVectorAbstract {
  friend class SymBitVector;

private:
  SymBitVectorConstant(uint16_t size, uint64_t constant)
    : constant_(constant), size_(size) {
  }

public:
  SymBitVector::Type type() const {
    return SymBitVector::Type::CONSTANT;
  }

  bool equals(const SymBitVectorAbstract * const other) const {
    if(other->type() != SymBitVector::Type::CONSTANT) return false;
    auto cast = static_cast<const SymBitVectorConstant * const>(other);
    return constant_ == cast->constant_ && size_ == cast->size_;
  }

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
  SymBitVector::Type type() const {
    return SymBitVector::Type::EXTRACT;
  }

  bool equals(const SymBitVectorAbstract * const other) const {
    if(other->type() != SymBitVector::Type::EXTRACT) return false;
    auto cast = static_cast<const SymBitVectorExtract * const>(other);
    return low_bit_ == cast->low_bit_ && high_bit_ == cast->high_bit_ && bv_->equals(cast->bv_);
  }

  const SymBitVectorAbstract * const bv_;
  const uint16_t low_bit_;
  const uint16_t high_bit_;
};

class SymBitVectorFunction : public SymBitVectorAbstract {
  friend class SymBitVector;
  friend class SymFunction;

public:
  SymBitVector::Type type() const {
    return SymBitVector::Type::FUNCTION;
  }

  const SymFunction f_;
  const std::vector<const SymBitVectorAbstract *> args_;

  bool equals(const SymBitVectorAbstract * const other) const {
    if(other->type() != SymBitVector::Type::FUNCTION) return false;

    auto cast = static_cast<const SymBitVectorFunction * const>(other);

    if (f_ != cast->f_) return false;
    if (args_.size() != cast->args_.size()) return false;

    for(size_t i = 0; i < args_.size(); ++i) {
      if (!args_[i]->equals(cast->args_[i]))
        return false;
    }

    return true;
  }

private:
  SymBitVectorFunction(const SymFunction& f,
                       const SymBitVectorAbstract * const a) : f_(f), args_( {
    a
  }) {}

  SymBitVectorFunction(const SymFunction& f,
                       const SymBitVectorAbstract * const a,
                       const SymBitVectorAbstract * const b) : f_(f), args_( {
    a, b
  }) {}

  SymBitVectorFunction(const SymFunction& f,
                       const SymBitVectorAbstract * const a,
                       const SymBitVectorAbstract * const b,
                       const SymBitVectorAbstract * const c) : f_(f), args_( {
    a, b, c
  } ) {}

  SymBitVectorFunction(const SymFunction& f,
                       const SymBitVectorAbstract * const a,
                       const SymBitVectorAbstract * const b,
                       const SymBitVectorAbstract * const c,
                       const SymBitVectorAbstract * const d) : f_(f), args_( {
    a, b, c, d
  }) {}

};

class SymBitVectorIte : public SymBitVectorAbstract {
  friend class SymBitVector;
  friend class SymBool;

private:
  SymBitVectorIte(const SymBoolAbstract * const cond, const SymBitVectorAbstract * const a,
                  const SymBitVectorAbstract * const b) : cond_(cond), a_(a), b_(b) {}

public:

  SymBitVector::Type type() const {
    return SymBitVector::Type::ITE;
  }

  bool equals(const SymBitVectorAbstract * const other) const {
    if(other->type() != SymBitVector::Type::ITE) return false;
    auto cast = static_cast<const SymBitVectorIte * const>(other);
    return cond_->equals(cast->cond_) && a_->equals(cast->a_) && b_->equals(cast->b_);
  }

  const SymBoolAbstract * const cond_;
  const SymBitVectorAbstract * const a_;
  const SymBitVectorAbstract * const b_;
};

class SymBitVectorMinus : public SymBitVectorBinop {
  friend class SymBitVector;
  using SymBitVectorBinop::SymBitVectorBinop;

public:
  SymBitVector::Type type() const {
    return SymBitVector::Type::MINUS;
  }
};

class SymBitVectorMod : public SymBitVectorBinop {
  friend class SymBitVector;
  using SymBitVectorBinop::SymBitVectorBinop;

public:
  SymBitVector::Type type() const {
    return SymBitVector::Type::MOD;
  }
};

class SymBitVectorMult : public SymBitVectorBinop {
  friend class SymBitVector;
  using SymBitVectorBinop::SymBitVectorBinop;

public:
  SymBitVector::Type type() const {
    return SymBitVector::Type::MULT;
  }
};

class SymBitVectorNot : public SymBitVectorUnop {
  friend class SymBitVector;
  using SymBitVectorUnop::SymBitVectorUnop;

public:
  SymBitVector::Type type() const {
    return SymBitVector::Type::NOT;
  }
};

class SymBitVectorOr : public SymBitVectorBinop {
  friend class SymBitVector;
  using SymBitVectorBinop::SymBitVectorBinop;

public:
  SymBitVector::Type type() const {
    return SymBitVector::Type::OR;
  }
};

class SymBitVectorPlus : public SymBitVectorBinop {
  friend class SymBitVector;
  using SymBitVectorBinop::SymBitVectorBinop;

public:
  SymBitVector::Type type() const {
    return SymBitVector::Type::PLUS;
  }
};

class SymBitVectorRotateLeft : public SymBitVectorBinop {
  friend class SymBitVector;
  using SymBitVectorBinop::SymBitVectorBinop;

public:
  SymBitVector::Type type() const {
    return SymBitVector::Type::ROTATE_LEFT;
  }
};

class SymBitVectorRotateRight : public SymBitVectorBinop {
  friend class SymBitVector;
  using SymBitVectorBinop::SymBitVectorBinop;

public:
  SymBitVector::Type type() const {
    return SymBitVector::Type::ROTATE_RIGHT;
  }
};

class SymBitVectorShiftLeft : public SymBitVectorBinop {
  friend class SymBitVector;
  using SymBitVectorBinop::SymBitVectorBinop;

public:
  SymBitVector::Type type() const {
    return SymBitVector::Type::SHIFT_LEFT;
  }
};

class SymBitVectorShiftRight : public SymBitVectorBinop {
  friend class SymBitVector;
  using SymBitVectorBinop::SymBitVectorBinop;

public:
  SymBitVector::Type type() const {
    return SymBitVector::Type::SHIFT_RIGHT;
  }
};

class SymBitVectorSignDiv : public SymBitVectorBinop {
  friend class SymBitVector;
  using SymBitVectorBinop::SymBitVectorBinop;

public:
  SymBitVector::Type type() const {
    return SymBitVector::Type::SIGN_DIV;
  }
};

class SymBitVectorSignExtend : public SymBitVectorAbstract {
  friend class SymBitVector;

private:
  SymBitVectorSignExtend(const SymBitVectorAbstract * const bv, uint16_t size) : bv_(bv), size_(size) {}

public:
  SymBitVector::Type type() const {
    return SymBitVector::Type::SIGN_EXTEND;
  }

  bool equals(const SymBitVectorAbstract * const other) const {
    if(other->type() != SymBitVector::Type::SIGN_EXTEND) return false;
    auto cast = static_cast<const SymBitVectorSignExtend * const>(other);
    return bv_->equals(cast->bv_) && size_ == cast->size_;
  }

  const SymBitVectorAbstract * const bv_;
  const uint16_t size_;
};

class SymBitVectorSignMod : public SymBitVectorBinop {
  friend class SymBitVector;
  using SymBitVectorBinop::SymBitVectorBinop;

public:
  SymBitVector::Type type() const {
    return SymBitVector::Type::SIGN_MOD;
  }
};

class SymBitVectorSignShiftRight : public SymBitVectorBinop {
  friend class SymBitVector;
  using SymBitVectorBinop::SymBitVectorBinop;

public:
  SymBitVector::Type type() const {
    return SymBitVector::Type::SIGN_SHIFT_RIGHT;
  }
};

class SymBitVectorUMinus : public SymBitVectorUnop {
  friend class SymBitVector;
  using SymBitVectorUnop::SymBitVectorUnop;

public:
  SymBitVector::Type type() const {
    return SymBitVector::Type::U_MINUS;
  }
};


class SymBitVectorVar : public SymBitVectorAbstract {
  friend class SymBitVector;

private:
  SymBitVectorVar(uint16_t size, const std::string name) : name_(name), size_(size) {}

public:
  SymBitVector::Type type() const {
    return SymBitVector::Type::VAR;
  }

  bool equals(const SymBitVectorAbstract * const other) const {
    if(other->type() != SymBitVector::Type::VAR) return false;
    auto cast = static_cast<const SymBitVectorVar * const>(other);
    return name_ == cast->name_ && size_ == cast->size_;
  }

  const std::string name_;
  const uint16_t size_;
};



class SymBitVectorXor : public SymBitVectorBinop {
  friend class SymBitVector;
  using SymBitVectorBinop::SymBitVectorBinop;

public:
  SymBitVector::Type type() const {
    return SymBitVector::Type::XOR;
  }
};



} //namespace stoke

std::ostream& operator<< (std::ostream& out, const stoke::SymBitVector& bv);

/* We need to include these to make sure templates instantiate, but not
   before SymBitVector is declared! */
#include "src/symstate/print_visitor.h"
#include "src/symstate/typecheck_visitor.h"

#endif
