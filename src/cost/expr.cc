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

#include "src/cost/expr.h"

using namespace stoke;
using namespace std;

set<CostFunction*> ExprCost::leaf_functions() const {

  if(arity_ == 0) {
    return set<CostFunction*>();
  }

  if(arity_ == 1) {
    auto s = set<CostFunction*>();
    s.insert(a1_);
    return s;
  }

  if(arity_ == 2) {
    auto lhs = (static_cast<ExprCost*>(a1_))->leaf_functions();
    auto rhs = (static_cast<ExprCost*>(a2_))->leaf_functions();
    lhs.insert(rhs.begin(), rhs.end());
    return lhs;
  }

  assert(false);

}

ExprCost::result_type ExprCost::operator()(const Cfg& cfg, Cost max) {

  if(arity_ == 0) {
    return result_type(true, constant_);
  } else if (arity_ == 1) {
    return (*a1_)(cfg, max);
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
    case EQ:
      return result_type(correct, c1.second == c2.second);
    default:
      assert(false);
    }
  }
  assert(false);
}

