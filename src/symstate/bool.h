
#ifndef _STOKE_SRC_SYMSTATE_BOOL_H
#define _STOKE_SRC_SYMSTATE_BOOL_H

#include "src/ext/z3/include/z3++.h"

#include <string>

namespace stoke {


class SymBitVector;


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
    virtual Type type() const { return NONE; }

    /** Builds a false value */
    static SymBoolFalse& _false();
    /** Builds a true value */
    static SymBoolTrue& _true();
    /** Builds a boolean variable */
    static SymBoolVar& var(std::string name);
    /** Builds a z3 compatibility bool */
    static SymBoolZ3& z3(const z3::expr& b);

    /** Constructs the logical AND of two bools */
    SymBoolAnd& operator&(const SymBool& other) const;
    /** Constructs the logical 'if-and-only-if' for two bools */
    SymBoolIff& operator==(const SymBool& other) const;
    /** Constructs the logical implication of two bools */
    SymBoolImplies& implies(const SymBool& other) const;
    /** Constructs the logical negation of this bool */
    SymBoolNot& operator!() const;
    /** Constructs the logical OR of two bools */
    SymBoolOr& operator|(const SymBool& other) const;
    /** Constructs the logical XOR of two bools */
    SymBoolXor& operator^(const SymBool& other) const;
    /** Returns the negation of the logical 'if-and-only-if' */
    SymBoolNot& operator!=(const SymBool& other) const;

  protected:
    SymBool() {}

};

class SymBoolCompare : public SymBool {

  protected:
    SymBoolCompare(const SymBitVector& a, const SymBitVector& b) : a_(a), b_(b) {}

  public:
    const SymBitVector& a_;
    const SymBitVector& b_;

};

class SymBoolAnd : public SymBool {
  friend class SymBool;

  private:
    SymBoolAnd(const SymBool& a, const SymBool& b) : a_(a), b_(b) {}

  public:
    SymBool::Type type() const { return AND; }

    const SymBool& a_;
    const SymBool& b_;
};

class SymBoolEq : public SymBoolCompare {
  friend class SymBool;
  friend class SymBitVector;
  using SymBoolCompare::SymBoolCompare;

  public:
    SymBool::Type type() const { return EQ; }
};

class SymBoolFalse : public SymBool {
  friend class SymBool;

  public:
    SymBool::Type type() const { return FALSE; }
};

class SymBoolGe : public SymBoolCompare {
  friend class SymBool;
  friend class SymBitVector;
  using SymBoolCompare::SymBoolCompare;

  public:
    SymBool::Type type() const { return GE; }
};

class SymBoolGt : public SymBoolCompare {
  friend class SymBool;
  friend class SymBitVector;
  using SymBoolCompare::SymBoolCompare;

  public:
    SymBool::Type type() const { return GT; }
};

class SymBoolIff : public SymBool {
  friend class SymBool;

  private:
    SymBoolIff(const SymBool& a, const SymBool& b) : a_(a), b_(b) {}

  public:
    SymBool::Type type() const { return IFF; }

    const SymBool& a_;
    const SymBool& b_;
};

class SymBoolImplies : public SymBool {
  friend class SymBool;

  private:
    SymBoolImplies(const SymBool& a, const SymBool& b) : a_(a), b_(b) {}

  public:
    SymBool::Type type() const { return IMPLIES; }

    const SymBool& a_;
    const SymBool& b_;
};

class SymBoolLe : public SymBoolCompare {
  friend class SymBool;
  friend class SymBitVector;
  using SymBoolCompare::SymBoolCompare;

  public:
    SymBool::Type type() const { return LE; }
};

class SymBoolLt : public SymBoolCompare {
  friend class SymBool;
  friend class SymBitVector;
  using SymBoolCompare::SymBoolCompare;

  public:
    SymBool::Type type() const { return LT; }
};

class SymBoolNot : public SymBool {
  friend class SymBool;

  private:
    SymBoolNot(const SymBool& b) : b_(b) {}

  public:
    SymBool::Type type() const { return NOT; }

    const SymBool& b_;
};

class SymBoolOr : public SymBool {
  friend class SymBool;

  private:
    SymBoolOr(const SymBool& a, const SymBool& b) : a_(a), b_(b) {}

  public:
    SymBool::Type type() const { return OR; }

    const SymBool& a_;
    const SymBool& b_;
};

class SymBoolTrue : public SymBool {
  friend class SymBool;

  public:
    SymBool::Type type() const { return TRUE; }
};

class SymBoolVar : public SymBool {
  friend class SymBool;

  private:
    SymBoolVar(const std::string name) : name_(name) {}

  public:
    SymBool::Type type() const { return VAR; }

    const std::string name_;
};


class SymBoolXor : public SymBool {
  friend class SymBool;

  private:
    SymBoolXor(const SymBool& a, const SymBool& b) : a_(a), b_(b) {}

  public:
    SymBool::Type type() const { return XOR; }

    const SymBool& a_;
    const SymBool& b_;
};

class SymBoolZ3 : public SymBool {
  friend class SymBool;

  private:
    SymBoolZ3(const z3::expr& e) : e_(e) {}

  public:
    SymBool::Type type() const { return Z3; }

    const z3::expr& e_;
};




} //namespace stoke

std::ostream& operator<< (std::ostream& out, stoke::SymBool& bv);


#endif
