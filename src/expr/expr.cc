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

#include <cassert>

#include "src/expr/expr.h"

using namespace stoke;
using namespace std;

size_t Expr::operator()(const function<size_t (const string&)>& environment) const {

  if(arity_ == 0) {
    return constant_;
  } else if (arity_ == 1) {
    return environment(var_);
  } else if (arity_ == 2) {
    assert(a1_);
    assert(a2_);
    auto c1 = (*a1_)(environment);
    auto c2 = (*a2_)(environment);

    switch(op_) {
    case NONE:
      assert(false);
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
    default:
      assert(false);
    }
  }
  assert(false);
  return 0;
}

