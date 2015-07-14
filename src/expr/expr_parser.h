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

#include "src/expr/expr.h"

namespace stoke {

class ExprParser {

public:

  /** Constructs a parser to parse a string to an expression.  The
      parameter 's' is the string to parse, followed by a function that
      determines if a variable is valid. */
  ExprParser(std::string s, std::function<bool (const std::string&)>& is_var_valid) :
    s_(s), is_var_valid_(is_var_valid), index_(0), error_() {}

  /** Takes the string and parses it into an expression.  Returns a pointer which
      the caller must delete. */
  Expr* run() {
    return parse_S();
  }

  /** Gets any error message. */
  std::string get_error() {
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
   *    ==           BINOP5
   *    + -          BINOP6
   *    * / %        BINOP7
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

#define EXPR_PARSER_N 7

  /** Helper used by peek and next() */
  void strip_spaces();
  /** Look at a future character */
  char peek(size_t n = 0);
  /** Move forward in the string */
  char next();
  /** Remove some characters from the string */
  void eat(size_t n);

  /** Report an error */
  void error(std::string m);

  /** Parse a S nonterminal */
  Expr* parse_S();
  /** Parse an L nonterminal */
  Expr* parse_L(size_t);
  /** Parse an L' nonterminal */
  std::pair<Expr::Operator, Expr*> parse_LP(size_t);
  /** Parse a T nonterminal */
  Expr* parse_T();
  /** Parse a VAR nonterminal */
  Expr* parse_VAR();
  /** Parse a NUM nonterminal */
  Expr* parse_NUM();

  /** Parse a BINOP */
  Expr::Operator parse_BINOP(size_t);

  /** Used for maintaining parsing state */
  std::string s_;
  size_t index_;
  std::string error_;

  /** To determine if a variable is valid */
  std::function<bool (const std::string&)>& is_var_valid_;

};

}

#endif
