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

#ifndef STOKE_SRC_COST_EXPR_H
#define STOKE_SRC_COST_EXPR_H

#include "src/cost/cost_function.h"

#include <set>

namespace stoke {

class ExprCost : public CostFunction {

public:

  enum Operator {
    NONE, //represents error condition in parser
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
    EQ
  };

  /** Constructs a binary operation on two other expressions*/
  ExprCost(ExprCost* a1, ExprCost* a2, Operator op) :
    a1_(a1), a2_(a2), op_(op), arity_(2) {}

  /** Constructs a reference to a "leaf" cost function.
      (i.e. one that does real work) */
  ExprCost(CostFunction* a1) : a1_(a1), arity_(1) {}

  /** Constructs a constant operation */
  ExprCost(Cost constant) : constant_(constant), arity_(0) {}

  /** Compute the cost of this expression. */
  result_type operator()(const Cfg& cfg, Cost max = max_cost);

  /** Returns the pointers to leaf cost functions used in this expression. */
  std::set<CostFunction*> leaf_functions() const;

private:

  /** How many operands does this cost expression take? */
  size_t arity_;

  /** A constant (for arity 0) */
  Cost constant_;
  /** The LHS cost function */
  CostFunction* a1_;
  /** The RHS cost function */
  CostFunction* a2_;
  /** The chosen operator */
  Operator op_;

};

} // namespace stoke

#endif
