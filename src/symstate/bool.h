
#ifndef _STOKE_SRC_SYMSTATE_BOOL_H
#define _STOKE_SRC_SYMSTATE_BOOL_H

#include <string>

namespace stoke {


class SymBitVector;


struct SymBoolAnd;
struct SymBoolEq;
struct SymBoolFalse;
struct SymBoolIff;
struct SymBoolNot;
struct SymBoolOr;
struct SymBoolTrue;
struct SymBoolVar;
struct SymBoolXor;

class SymBool {
  public:

    enum Type {
      AND,
      CONCAT,
      CONSTANT,
      EQ,
      EXTRACT,
      FALSE,
      IFF,
      ITE,
      NOT,
      OR,
      TRUE,
      VAR,
      XOR
    };

    /** Get the type of this bool expression; helps for recursive algorithms on the tree. */
    virtual Type type() const = 0;

    /** Constructs the logical AND of two bools */
    SymBoolAnd& operator&(const SymBool& other) const;

    /** Constructs the logical 'if-and-only-if' for two bools */
    SymBoolIff& operator==(const SymBool& other) const;

    /** Constructs the logical negation of this bool */
    SymBoolNot& operator!() const;

    /** Constructs the logical OR of two bools */
    SymBoolOr& operator|(const SymBool& other) const;

    /** Constructs the logical XOR of two bools */
    SymBoolXor& operator^(const SymBool& other) const;

    /** Returns the negation of the logical 'if-and-only-if' */
    SymBoolNot& operator!=(const SymBool& other) const;

};


struct SymBoolAnd : public SymBool {

  public:
    SymBoolAnd(const SymBool& a, const SymBool& b) : a_(a), b_(b) {}

    SymBool::Type type() const { return AND; }

    const SymBool& a_;
    const SymBool& b_;
};

struct SymBoolEq : public SymBool {

  public:
    SymBoolEq(const SymBitVector& a, const SymBitVector& b) : a_(a), b_(b) {}

    SymBool::Type type() const { return EQ; }

    const SymBitVector& a_;
    const SymBitVector& b_;
};

struct SymBoolFalse : public SymBool {

  public:
    SymBool::Type type() const { return FALSE; }
};

struct SymBoolIff : public SymBool {

  public:
    SymBoolIff(const SymBool& a, const SymBool& b) : a_(a), b_(b) {}

    SymBool::Type type() const { return IFF; }

    const SymBool& a_;
    const SymBool& b_;
};

struct SymBoolNot : public SymBool {

  public:
    SymBoolNot(const SymBool& bv) : bv_(bv) {}

    SymBool::Type type() const { return NOT; }

    const SymBool& bv_;
};

struct SymBoolOr : public SymBool {

  public:
    SymBoolOr(const SymBool& a, const SymBool& b) : a_(a), b_(b) {}

    SymBool::Type type() const { return OR; }

    const SymBool& a_;
    const SymBool& b_;
};

struct SymBoolTrue : public SymBool {

  public:
    SymBool::Type type() const { return TRUE; }
};

struct SymBoolVar : public SymBool {

  public:
    SymBoolVar(const std::string name) : name_(name) {}

    SymBool::Type type() const { return VAR; }

    const std::string name_;
};


struct SymBoolXor : public SymBool {

  public:
    SymBoolXor(const SymBool& a, const SymBool& b) : a_(a), b_(b) {}

    SymBool::Type type() const { return XOR; }

    const SymBool& a_;
    const SymBool& b_;
};


} //namespace stoke

std::ostream& operator<< (std::ostream& out, stoke::SymBool& bv);

#endif
