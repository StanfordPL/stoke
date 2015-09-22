// Copyright 2013-2015 Stanford University
//
// Licensed under the Apache License, Version 2.0 (the "License");
// you may not use this file except in compliance with the License.
// You may obtain a copy of the License at
//
//     http://www.apache.org/licenses/LICENSE-2.0
//
// Unless required by applicable law or agreed to in writing, software
// distributed under the License is distributed on an "AS IS" BASIS,
// WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
// See the License for the specific language governing permissions and
// limitations under the License.

#ifndef STOKE_SRC_EXPR_EXPR_H
#define STOKE_SRC_EXPR_EXPR_H

#include <functional>


namespace stoke {

/**
A class for expressions over some number type T.  Expressions can be
constants, variables or binary expressions.
*/
template <class T>
class Expr {

public:

  enum Operator {
    NONE, //represents error condition in parser
    EXP,
    PLUS,
    MINUS,
    TIMES,
    DIV,
    MOD,
    AND,
    OR,
    SHL,
    SHR,
    LT,
    GT,
    LTE,
    GTE,
    EQ,
    NEQ
  };

  /** Constructs a binary operation on two other expressions */
  Expr(Expr* a1, Expr* a2, Operator op) :
    a1_(a1), a2_(a2), op_(op), arity_(2) {}
  /** Constructs a variable */
  Expr(std::string var) : var_(var), arity_(1) {}
  /** Constructs a constant operation */
  Expr(T constant) : constant_(constant), arity_(0) {}

  /** Compute the value of this expression. */
  T operator()(const std::function<T (const std::string&)>& environment) const {
    if (arity_ == 0) {
      return constant_;
    } else if (arity_ == 1) {
      return environment(var_);
    } else if (arity_ == 2) {
      assert(a1_);
      assert(a2_);
      auto c1 = (*a1_)(environment);
      auto c2 = (*a2_)(environment);

      switch (op_) {
      case NONE:
        assert(false);
      case EXP:
        return (size_t)pow((double)c1, (double)c2);
      case PLUS:
        return c1+c2;
      case MINUS:
        return c1-c2;
      case TIMES:
        return c1*c2;
      case DIV:
        return c1/c2;
      case MOD:
        return c1%c2;
      case AND:
        return c1&c2;
      case OR:
        return c1|c2;
      case SHL:
        return c1 << c2;
      case SHR:
        return c1 >> c2;
      case LT:
        return c1 < c2;
      case LTE:
        return c1 <= c2;
      case GT:
        return c1 > c2;
      case GTE:
        return c1 >= c2;
      case EQ:
        return c1 == c2;
      case NEQ:
        return c1 != c2;
      default:
        assert(false);
      }
    }
    assert(false);
    return 0;
  }

private:
  /** How many operands does this expression take? */
  size_t arity_;
  /** Set the correctness term */
  Expr* correctness_;
  /** The variable (for arity 1) */
  std::string var_;

  /** A constant (for arity 0) */
  T constant_;
  /** The LHS expression */
  Expr* a1_;
  /** The RHS expression */
  Expr* a2_;
  /** The chosen operator */
  Operator op_;

};

} // namespace stoke

#endif
