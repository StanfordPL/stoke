
#ifndef STOKE_SRC_COST_COST_PARSER_H
#define STOKE_SRC_COST_COST_PARSER_H

#include <cassert>
#include <stdint.h>
#include <string>

#include "src/cost/cost_function.h"
#include "src/cost/distance.h"
#include "src/cost/correctness.h"
#include "src/cost/expr.h"

namespace stoke {

class CostParser {

  public:
    /** Constructs a parser to parse a string to a cost function */
    CostParser(std::string s) : s_(s), index_(0), error_() {}

    /** Takes the string and parses it into a cost function.  Returns a pointer which
        the caller must delete. */
    CostFunction* run() {
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
     *    ()
     *    * / %        BINOP1
     *    + -          BINOP2
     *    >> <<        BINOP3
     *    < <= > >=    BINOP4
     *    &            BINOP5
     *    |            BINOP6
     *
     * Let "N" denote the number of binop classes there are
     * (six, as of this documentation)
     *
     * Here's a left-recursion free version:
     *
     * S      -> L1 BINOP1 S | L1
     * L1     -> L2 BINOP2 L1 | L2
     * L2     -> L3 BINOP3 L2 | L3
     *          ...
     * L(N-2) -> L(N-1) BINOP(N-1) L(N-2) | L(N-1)
     * L(N-1) -> T  BINOP(N) L(N-1) | T 
     * T      -> NUM | VAR | (S)
     * 
     * Here's the left-factored version:
     *
     * S       -> L1 S'
     * S'      -> BINOP1 S | e
     * L1      -> L2 L1'
     * L1'     -> BINOP2 L1 | e
     *         ...
     * L(N-1)  -> T L(N-1)'
     * L(N-1)' -> BINOP(N) L(N-1) | e
     * T       -> NUM | VAR | ( S )
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
     * parse_BINOP(n)
     * parse_VAR()
     * parse_NUM()
     *
     */

    CostFunction* parse_S();

    std::string s_;
    size_t index_;
    std::string error_;
};

}

#endif
