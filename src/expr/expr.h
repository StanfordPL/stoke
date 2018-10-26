// Copyright 2013-2016 Stanford University
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

  int print_dot(int start = 0) {
    if(arity_ == 0) {
      std::cout << start << " [label='" << constant_ << "'];" << std::endl;
      return start+1;
    } 
    if(arity_ == 1) {
      std::cout << start << " [label='" << var_ << "'];" << std::endl;
      return start+1;
    }
    int next = start+1;
    std::cout << start << " [label='";
    switch(op_) {
      case NONE:
        std::cout << "NONE/ERR";
        break;
      case EXP:
        std::cout << "EXP";
        break;
      case PLUS:
        std::cout << "+";
        break;
      case MINUS:
        std::cout << "-";
        break;
      case TIMES:
        std::cout << "*";
        break;
      case DIV:
        std::cout << "/";
        break;
      case MOD:
        std::cout << "%";
        break;
      case AND:
        std::cout << "&";
        break;
      case OR:
        std::cout << "|";
        break;
      case SHL:
        std::cout << "<<";
        break;
      case SHR:
        std::cout << ">>";
        break;
      case LT:
        std::cout << "<";
        break;
      case GT:
        std::cout << ">";
        break;
      case LTE:
        std::cout << "<=";
        break;
      case GTE:
        std::cout << ">=";
        break;
      case EQ:
        std::cout << "==";
        break;
      case NEQ:
        std::cout << "!=";
        break;
    }
    std::cout << "'];" << std::endl;
    if(a1_) {
      std::cout << start << " -> " << next << ";" << std::endl;
      next = a1_->print_dot(next);
    }
    if(a2_) {
      std::cout << start << " -> " << next << ";" << std::endl;
      next = a2_->print_dot(next);
    }
    return next;
  }

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
      /*case EXP:
        return (size_t)pow((double)c1, (double)c2);*/
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
        return (T)(c1 < c2);
      case LTE:
        return (T)(c1 <= c2);
      case GT:
        return (T)(c1 > c2);
      case GTE:
        return (T)(c1 >= c2);
      case EQ:
        return (T)(c1 == c2);
      case NEQ:
        return (T)(c1 != c2);
      default:
        assert(false);
      }
    }
    assert(false);
    return (T)((uint64_t)0);
  }

  template <typename U>
  Expr<U>* map() const {
    if(arity_ == 0) {
      return new Expr<U>((U)(constant_));
    } else if (arity_ == 1) {
      return new Expr<U>(var_);
    } else {
      return new Expr<U>(a1_->map<U>(), a2_->map<U>(), (typename Expr<U>::Operator)op_);
    } 
  }

private:
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

  /** How many operands does this expression take? */
  size_t arity_;
};

} // namespace stoke

#endif
