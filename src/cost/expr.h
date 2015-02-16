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
    GTE
  };

  ExprCost(CostFunction* a1, CostFunction* a2, Operator op) :
    a1_(a1), a2_(a2), op_(op), arity_(2) {}

  ExprCost(Cost constant) : constant_(constant), arity_(0) {}


  result_type operator()(const Cfg& cfg, Cost max) {

    if(arity_ == 0) {
      return result_type(true, constant_);
    } else if (arity_ == 2) {
      auto c1 = (*a1_)(cfg, max);
      auto c2 = (*a2_)(cfg, max);

      bool correct = c1.first && c2.first;

      switch(op_) {
      case NONE:
        assert(false);
      case PLUS:
        return result_type(correct, c1.second + c2.second);
      case MINUS:
        return result_type(correct, c1.second - c2.second);
      case TIMES:
        return result_type(correct, c1.second * c2.second);
      case DIV:
        return result_type(correct, c1.second / c2.second);
      case MOD:
        return result_type(correct, c1.second % c2.second);
      case AND:
        return result_type(correct, c1.second & c2.second);
      case OR:
        return result_type(correct, c1.second | c2.second);
      case SHL:
        return result_type(correct, c1.second << c2.second);
      case SHR:
        return result_type(correct, c1.second >> c2.second);
      case LT:
        return result_type(correct, c1.second < c2.second);
      case LTE:
        return result_type(correct, c1.second <= c2.second);
      case GT:
        return result_type(correct, c1.second > c2.second);
      case GTE:
        return result_type(correct, c1.second >= c2.second);
      default:
        assert(false);
      }
    }
    assert(false);
  }

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
