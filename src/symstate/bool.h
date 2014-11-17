
#ifndef _STOKE_SRC_SYMSTATE_BOOL_H
#define _STOKE_SRC_SYMSTATE_BOOL_H

#include "src/ext/z3/include/z3++.h"

#include <string>

namespace stoke {


class SymBitVector;
class SymBitVectorAbstract;
class SymBoolAbstract;


class SymBoolAnd;
class SymBoolEq;
class SymBoolFalse;
class SymBoolGe;
class SymBoolGt;
class SymBoolIff;
class SymBoolImplies;
class SymBoolLe;
class SymBoolLt;
class SymBoolNot;
class SymBoolOr;
class SymBoolTrue;
class SymBoolVar;
class SymBoolXor;
class SymBoolZ3;

class SymBool {
  friend class SymBitVector;

public:

  enum Type {
    NONE,
    AND,
    EQ,
    FALSE,
    GE,
    GT,
    IFF,
    IMPLIES,
    LE,
    LT,
    NOT,
    OR,
    TRUE,
    VAR,
    XOR,
    Z3
  };

  /** Get the type of this bool expression; helps for recursive algorithms on the tree. */
  virtual Type type() const;

  /** Builds a false value */
  static SymBool _false();
  /** Builds a true value */
  static SymBool _true();
  /** Builds a boolean variable */
  static SymBool var(std::string name);
  /** Builds a z3 compatibility bool */
  static SymBool z3(const z3::expr& b);

  /** Constructs the logical AND of two bools */
  SymBool operator&(const SymBool& other) const;
  /** Constructs the logical 'if-and-only-if' for two bools */
  SymBool operator==(const SymBool& other) const;
  /** Constructs the logical implication of two bools */
  SymBool implies(const SymBool& other) const;
  /** Constructs the logical negation of this bool */
  SymBool operator!() const;
  /** Constructs the logical OR of two bools */
  SymBool operator|(const SymBool& other) const;
  /** Constructs the logical XOR of two bools */
  SymBool operator^(const SymBool& other) const;
  /** Returns the negation of the logical 'if-and-only-if' */
  SymBool operator!=(const SymBool& other) const;


  /** The pointer to the underlying object */
  const SymBoolAbstract * ptr;

  /** Construct a SymBool pointing to nothing */
  SymBool() : ptr(NULL) {}

private:
  /** Construct a SymBool from a pointer to an underlying object */
  SymBool(const SymBoolAbstract * const ptr_) : ptr(ptr_) {}

};

class SymBoolAbstract {

public:
  virtual SymBool::Type type() const = 0;

};

class SymBoolCompare : public SymBoolAbstract {

protected:
  SymBoolCompare(const SymBitVectorAbstract * const a, const SymBitVectorAbstract * const b) : a_(a), b_(b) {}

public:
  const SymBitVectorAbstract * const a_;
  const SymBitVectorAbstract * const b_;

};

class SymBoolAnd : public SymBoolAbstract {
  friend class SymBool;

private:
  SymBoolAnd(const SymBoolAbstract * const a, const SymBoolAbstract * const b) : a_(a), b_(b) {}

public:
  SymBool::Type type() const {
    return SymBool::Type::AND;
  }

  const SymBoolAbstract * const a_;
  const SymBoolAbstract * const b_;
};

class SymBoolEq : public SymBoolCompare {
  friend class SymBool;
  friend class SymBitVector;
  using SymBoolCompare::SymBoolCompare;

public:
  SymBool::Type type() const {
    return SymBool::Type::EQ;
  }
};

class SymBoolFalse : public SymBoolAbstract {
  friend class SymBool;

public:
  SymBool::Type type() const {
    return SymBool::Type::FALSE;
  }
};

class SymBoolGe : public SymBoolCompare {
  friend class SymBool;
  friend class SymBitVector;
  using SymBoolCompare::SymBoolCompare;

public:
  SymBool::Type type() const {
    return SymBool::Type::GE;
  }
};

class SymBoolGt : public SymBoolCompare {
  friend class SymBool;
  friend class SymBitVector;
  using SymBoolCompare::SymBoolCompare;

public:
  SymBool::Type type() const {
    return SymBool::Type::GT;
  }
};

class SymBoolIff : public SymBoolAbstract {
  friend class SymBool;

private:
  SymBoolIff(const SymBoolAbstract * const a, const SymBoolAbstract * const b) : a_(a), b_(b) {}

public:
  SymBool::Type type() const {
    return SymBool::Type::IFF;
  }

  const SymBoolAbstract * const a_;
  const SymBoolAbstract * const b_;
};

class SymBoolImplies : public SymBoolAbstract {
  friend class SymBool;

private:
  SymBoolImplies(const SymBoolAbstract * const a, const SymBoolAbstract * const b) : a_(a), b_(b) {}

public:
  SymBool::Type type() const {
    return SymBool::Type::IMPLIES;
  }

  const SymBoolAbstract * const a_;
  const SymBoolAbstract * const b_;
};

class SymBoolLe : public SymBoolCompare {
  friend class SymBool;
  friend class SymBitVector;
  using SymBoolCompare::SymBoolCompare;

public:
  SymBool::Type type() const {
    return SymBool::Type::LE;
  }
};

class SymBoolLt : public SymBoolCompare {
  friend class SymBool;
  friend class SymBitVector;
  using SymBoolCompare::SymBoolCompare;

public:
  SymBool::Type type() const {
    return SymBool::Type::LT;
  }
};

class SymBoolNot : public SymBoolAbstract {
  friend class SymBool;

private:
  SymBoolNot(const SymBoolAbstract * const b) : b_(b) {}

public:
  SymBool::Type type() const {
    return SymBool::Type::NOT;
  }

  const SymBoolAbstract * const b_;
};

class SymBoolOr : public SymBoolAbstract {
  friend class SymBool;

private:
  SymBoolOr(const SymBoolAbstract * const a, const SymBoolAbstract * const b) : a_(a), b_(b) {}

public:
  SymBool::Type type() const {
    return SymBool::Type::OR;
  }

  const SymBoolAbstract * const a_;
  const SymBoolAbstract * const b_;
};

class SymBoolTrue : public SymBoolAbstract {
  friend class SymBool;

public:
  SymBool::Type type() const {
    return SymBool::Type::TRUE;
  }
};

class SymBoolVar : public SymBoolAbstract {
  friend class SymBool;

private:
  SymBoolVar(const std::string name) : name_(name) {}

public:
  SymBool::Type type() const {
    return SymBool::Type::VAR;
  }

  const std::string name_;
};


class SymBoolXor : public SymBoolAbstract {
  friend class SymBool;

private:
  SymBoolXor(const SymBoolAbstract * const a, const SymBoolAbstract * const b) : a_(a), b_(b) {}

public:
  SymBool::Type type() const {
    return SymBool::Type::XOR;
  }

  const SymBoolAbstract * const a_;
  const SymBoolAbstract * const b_;
};

class SymBoolZ3 : public SymBoolAbstract {
  friend class SymBool;

private:
  SymBoolZ3(const z3::expr& e) : e_(e) {}

public:
  SymBool::Type type() const {
    return SymBool::Type::Z3;
  }

  const z3::expr& e_;
};




} //namespace stoke

std::ostream& operator<< (std::ostream& out, stoke::SymBool& bv);


#endif
