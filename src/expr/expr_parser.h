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

#ifndef STOKE_SRC_EXPR_EXPR_PARSER_H
#define STOKE_SRC_EXPR_EXPR_PARSER_H

#include <cassert>
#include <stdint.h>
#include <string>
#include <iostream>

#include "src/expr/expr.h"

namespace stoke {

/**
A parser for Expr.  Note that T should be some form of non-negative integer,
as parsing is not implemented for negative numbers or floats/etc.
*/
template <class T>
class ExprParser {

public:

  /** Constructs a parser to parse a string to an expression.  The
      parameter 's' is the string to parse, followed by a function that
      determines if a variable is valid. */
  ExprParser(std::string s, const std::function<bool (const std::string&)>& is_var_valid) :
    s_(s), is_var_valid_(is_var_valid), index_(0), error_(), has_error_(false) {
    result_ =parse_S();
  }

  /** Takes the string and parses it into an expression.  Returns a pointer which
      the caller must delete. */
  Expr<T>* get() {
    assert(!has_error());
    return result_;
  }

  /** Was there an error during parsing? */
  bool has_error() {
    return has_error_;
  }

  /** Gets the error message. */
  std::string get_error() {
    assert(has_error());
    return error_;
  }

private:

  /* This is an LL(0) recursive-decent parser.
   *
   * The grammer we're parsing is:
   *
   * S -> ( S )
   *   -> S BINOP S
   *   -> VAR
   *   -> NUM
   *
   * BINOP = { + - * / % == << >> < > >= <= & | }
   * Operator precedence:
   *    |            BINOP1
   *    &            BINOP2
   *    < <= > >=    BINOP3
   *    >> <<        BINOP4
   *    == !=        BINOP5
   *    + -          BINOP6
   *    * / %        BINOP7
   *    **           BINOP8 (exponentiation)
   *    ()
   *
   * Let "N" denote the number of binop classes there are
   * (seven, as of this documentation)
   *
   * Here's a left-recursion free version:
   *
   * S      -> L0 $
   * L0     -> L1 BINOP1 L0 | L1
   * L1     -> L2 BINOP2 L1 | L2
   * L2     -> L3 BINOP3 L2 | L3
   *          ...
   * L(N-2) -> L(N-1) BINOP(N-1) L(N-2) | L(N-1)
   * L(N-1) -> T  BINOP(N) L(N-1) | T
   * T      -> NUM | VAR | (L0)
   *
   * Here's the left-factored version:
   *
   * S       -> L0 $
   * L0      -> L1 L0'
   * L0'     -> BINOP1 L0 | e
   * L1      -> L2 L1'
   * L1'     -> BINOP2 L1 | e
   *         ...
   * L(N-1)  -> T L(N-1)'
   * L(N-1)' -> BINOP(N) L(N-1) | e
   * T       -> NUM | VAR | ( L0 )
   *
   * Here are the first/follow sets.
   *
   * FIRST(S) = FIRST(L(*)) = FIRST(T) = NUM (0-9), VAR (a-z), "("
   * FIRST(S') = BINOP1
   * FIRST(L'(N)) = BINOP(N+1) FOLLOW(L'(N))
   *
   * FOLLOW(S) = ")" "$"
   * FOLLOW(S') = FOLLOW(S)
   * FOLLOW(L'(N)) = FOLLOW(L(N))
   *
   *
   * So, we're going to implement this with functions
   *
   * peek(size_t)  - look at a future character
   * pop()         - pop a character off the stack
   * error(string) - report a parse error
   *
   * parse_S()
   * parse_L(n)
   * parse_LP(n)
   * parse_T()
   * parse_VAR()
   * parse_NUM()
   * parse_BINOP(n)
   *
   * Note that the parse_BINOP, parse_NUM, parse_VAR functions are a little
   * wonky compared to a normal LL(0) parser because they also act as the
   * tokenizer.  Because of this, functions trying to decide between two
   * productions (i.e. the LP() ones) will attempt calls to these functions to
   * choose the right production to use.  The tradeoff here is gaining
   * the simplicity of not having a separate lexer in exchange for some
   * awkwardness.  TODO: if anyone wants to write a very simple lexer and do
   * some cleanup, feel free!
   */

#define EXPR_PARSER_N 8

  /** Helper used by peek and next() */
  void strip_spaces() {
    while(index_ < s_.size() && s_[index_] == ' ') {
      index_++;
    }
  }
  /** Look at a future character */
  char peek(size_t n = 0) {
    strip_spaces();
    if (index_ + n >= s_.size())
      return 0;
    return s_[index_ + n];
  }
  /** Move forward in the string */
  char next() {
    strip_spaces();
    if (index_ >= s_.size())
      return 0;
    char c = s_[index_];
    index_++;
    return c;
  }
  /** Remove some characters from the string */
  void eat(size_t n) {
    index_ += n;
  }

  /** Report an error */
  void error(std::string m) {
    if (!has_error_) {
      std::stringstream ss;
      ss << "at or before character at index " << index_ << ": " << m;
      error_ = ss.str();
      has_error_ = true;
    }
  }

  /** Parse a S nonterminal */
  Expr<T>* parse_S() {
    auto result = parse_L(0);

    if (peek()) {
      //There's more unconsumed stuff
      error("trailing characters after expression");
    }

    if (has_error_)
      return NULL;
    else
      return result;
  }
  /** Parse an L nonterminal */
  Expr<T>* parse_L(size_t n) {
    assert(n <= EXPR_PARSER_N - 1);

    // Parse an L(n+1) or T for the LHS
    Expr<T>* lhs = 0;
    if (n == EXPR_PARSER_N - 1) {
      lhs = parse_T();
    } else {
      lhs = parse_L(n+1);
    }

    if(lhs == NULL) {
      error("could not parse; reason unknown");
      return 0;
    }

    // Parse the LP(n), i.e. a binop and the RHS, if possible.
    auto rhs = parse_LP(n);

    // If there's no binop, return LHS
    if(rhs.first == Expr<T>::Operator::NONE) {
      return lhs;
    } else {
      auto op = rhs.first;
      auto arg = rhs.second;

      if (arg == NULL) {
        error("could not parse; reason unknown.");
      }
      return new Expr<T>(lhs, arg, op);
    }
  }
  /** Parse an L' nonterminal */
  std::pair< typename Expr<T>::Operator, Expr<T>* > parse_LP(size_t n) {
    assert(n <= EXPR_PARSER_N - 1);

    auto binop = parse_BINOP(n+1);
    if(binop == Expr<T>::Operator::NONE)
      return std::pair<typename Expr<T>::Operator, Expr<T>*>(binop, NULL);

    auto rhs = parse_L(n);
    return std::pair<typename Expr<T>::Operator, Expr<T>*>(binop, rhs);
  }
  /** Parse a T nonterminal */
  Expr<T>* parse_T() {
    char c = peek();
    if('a' <= c && c <= 'z') {
      return parse_VAR();
    }
    if('0' <= c && c <= '9') {
      return parse_NUM();
    }
    if(c == '(') {
      next();
      auto f = parse_L(0);
      char d = next();
      if (d != ')') {
        error("expected a close-paren");
      }
      return f;
    }
    error("expected a variable, number, or parenthesized expression");
    return 0;
  }
  /** Parse a VAR nonterminal */
  Expr<T>* parse_VAR() {
    std::string var = "";

    while(peek() >= 'a' && peek() <= 'z') {
      var = var.append(1, next());
    }

    if(!is_var_valid_(var)) {
      error("undefined variable: \"" + var + "\"");
      return NULL;
    }

    return new Expr<T>(var);
  }
  /** Parse a NUM nonterminal */
  Expr<T>* parse_NUM() {
    std::string num = "0";

    while(peek() >= '0' && peek() <= '9') {
      num = num.append(1, next());
    }

    T value = stol(num);
    return new Expr<T>(value);
  }
  /** Parse a BINOP */
  typename Expr<T>::Operator parse_BINOP(size_t n) {
    assert(1ul <= n && n <= EXPR_PARSER_N);

    // STEP 1: TOKENIZATION
    std::string var = "";

    size_t i;
    char c;
    for(i = 0, c = peek();
        (c == '+' || c == '>' || c == '<' || c == '|' ||
         c == '^' || c == '=' || c == '*' || c == '-' ||
         c == '*' || c == '%' || c == '/' || c == '&' || c == '!');
        c = peek(++i)) {

      var = var.append(1, c);
    }

    typename Expr<T>::Operator op;

    if (var == "**") {
      op = Expr<T>::Operator::EXP;
    } else if (var == "|") {
      op = Expr<T>::Operator::OR;
    } else if (var == "&") {
      op = Expr<T>::Operator::AND;
    } else if (var == "+") {
      op = Expr<T>::Operator::PLUS;
    } else if (var == "-") {
      op = Expr<T>::Operator::MINUS;
    } else if (var == "*") {
      op = Expr<T>::Operator::TIMES;
    } else if (var == "/") {
      op = Expr<T>::Operator::DIV;
    } else if (var == "%") {
      op = Expr<T>::Operator::MOD;
    } else if (var == "<") {
      op = Expr<T>::Operator::LT;
    } else if (var == "<=" || var == "=<") {
      op = Expr<T>::Operator::LTE;
    } else if (var == ">") {
      op = Expr<T>::Operator::GT;
    } else if (var == ">=" || var == "=>") {
      op = Expr<T>::Operator::GTE;
    } else if (var == ">>") {
      op = Expr<T>::Operator::SHR;
    } else if (var == "<<") {
      op = Expr<T>::Operator::SHL;
    } else if (var == "==" || var == "=") {
      op = Expr<T>::Operator::EQ;
    } else if (var == "!=") {
      op = Expr<T>::Operator::NEQ;
    } else if (var == "") {
      // there's no binary operator here
      return Expr<T>::Operator::NONE;
    } else {
      // there's a symbol here, but not one we know!
      error("Operator " + var + " is not supported.");
      return Expr<T>::Operator::NONE;
    }

    // STEP 2: FIGURE OUT ORDER OF OPERATION BUSINESS

    switch(n) {

    case 1:
      if(op == Expr<T>::Operator::OR) {
        eat(var.size());
        return op;
      } else {
        return Expr<T>::Operator::NONE;
      }

    case 2:
      if(op == Expr<T>::Operator::AND) {
        eat(var.size());
        return op;
      } else {
        return Expr<T>::Operator::NONE;
      }

    case 3:
      if(op == Expr<T>::Operator::EQ || op == Expr<T>::Operator::NEQ) {
        eat(var.size());
        return op;
      } else {
        return Expr<T>::Operator::NONE;
      }

    case 4:
      if(op == Expr<T>::Operator::LT || op == Expr<T>::Operator::LTE ||
          op == Expr<T>::Operator::GT || op == Expr<T>::Operator::GTE) {
        eat(var.size());
        return op;
      } else {
        return Expr<T>::Operator::NONE;
      }

    case 5:
      if(op == Expr<T>::Operator::SHL || op == Expr<T>::Operator::SHR) {
        eat(var.size());
        return op;
      } else {
        return Expr<T>::Operator::NONE;
      }

    case 6:
      if(op == Expr<T>::Operator::PLUS || op == Expr<T>::Operator::MINUS) {
        eat(var.size());
        return op;
      } else {
        return Expr<T>::Operator::NONE;
      }

    case 7:
      if(op == Expr<T>::Operator::TIMES || op == Expr<T>::Operator::DIV ||
          op == Expr<T>::Operator::MOD) {
        eat(var.size());
        return op;
      } else {
        return Expr<T>::Operator::NONE;
      }

    case 8:
      if(op == Expr<T>::Operator::EXP) {
        eat(var.size());
        return op;
      } else {
        return Expr<T>::Operator::NONE;
      }

    default:
      error("parse_BINOP() internal error.");
      return Expr<T>::Operator::NONE;

    }
  }

  /** Used for maintaining parsing state */
  std::string s_;
  size_t index_;
  bool has_error_;
  std::string error_;
  Expr<T>* result_;

  /** To determine if a variable is valid */
  const std::function<bool (const std::string&)>& is_var_valid_;

};

}

#endif
