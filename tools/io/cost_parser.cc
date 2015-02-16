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

#include "src/cost/size.h"

#include "tools/gadgets/correctness_cost.h"
#include "tools/gadgets/latency_cost.h"
#include "tools/io/cost_parser.h"



using namespace std;
using namespace stoke;

void CostParser::strip_spaces() {
  cout << "Calling strip_spaces()" << endl;
  cout << "index_=" << index_ << " s_.size()=" << s_.size() << " s_["<<index_<< "]=" << s_[index_] << endl;
  while(index_ < s_.size() && s_[index_] == ' ') {
    index_++; 
    cout << "Skipping space" << endl;
  }
}

char CostParser::peek(size_t n) {
  strip_spaces();
  if (index_ + n >= s_.size())
    return 0;
  return s_[index_ + n];
}

char CostParser::next() {
  strip_spaces();
  if (index_ >= s_.size())
    return 0;
  char c = s_[index_];
  index_++;
  return c;
}

void CostParser::error(std::string m) {
  if(error_ == "")
    error_ = m;
}

CostFunction* CostParser::parse_S() {
  return parse_L(0);
}

CostFunction* CostParser::parse_L(size_t n) {
  assert(0 <= n && n <= COST_PARSER_N - 1);
  cout << "Parsing L(" << n << ")" << endl;

  // Parse an L(n+1) or T for the LHS
  CostFunction* lhs = 0;
  if (n == COST_PARSER_N - 1) {
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
  if(rhs.first == ExprCost::Operator::NONE) {
    return lhs;
  } else {
    auto op = rhs.first;
    auto arg = rhs.second;

    if (arg == NULL) {
      error("could not parse; reason unknown.");
    }
    return new ExprCost(lhs, arg, op);
  }
}

pair<ExprCost::Operator, CostFunction*> CostParser::parse_LP(size_t n) {
  assert(0 <= n && n <= COST_PARSER_N - 1);
  cout << "Parsing LP(" << n << ")" << endl;

  auto binop = parse_BINOP(n+1);
  if(binop == ExprCost::Operator::NONE)
    return pair<ExprCost::Operator, CostFunction*>(binop, NULL);

  auto rhs = parse_L(n);
  return pair<ExprCost::Operator, CostFunction*>(binop, rhs);
}

CostFunction* CostParser::parse_T() {
  cout << "Parsing T()" << endl;

  char c = peek();
  if('a' <= c && c <= 'z') {
    cout << "Parsing variable" << endl;
    return parse_VAR();
  }
  if('0' <= c && c <= '9') {
    cout << "Parsing number" << endl;
    return parse_NUM();
  }
  if(c == '(') {
    next();
    auto f = parse_S();
    char d = next();
    if (d != ')') {
      error("expected a close-paren");
    }
    return f;
  }
  error("expected a variable, number, or parenthesized expression");
  return 0;
}

CostFunction* CostParser::parse_VAR() {
  std::string var = "";

  while(peek() >= 'a' && peek() <= 'z') {
    var = var.append(1, next());
  }

  if (var == "correctness") {
    return new CorrectnessCostGadget(target_, sb_);
  } 
  if (var == "latency") {
    return new LatencyCostGadget();
  }
  if (var == "size") {
    return new SizeCost();
  }

  error("undefined cost function variable: \"" + var + "\"");
  return NULL;
}

CostFunction* CostParser::parse_NUM() {

  std::string num = "0";

  while(peek() >= '0' && peek() <= '9') {
    num = num.append(1, next());
  }

  uint64_t value = stol(num);
  return new ExprCost(value);
}

ExprCost::Operator CostParser::parse_BINOP(size_t n) {
  assert(n <= 1 && n <= COST_PARSER_N);

  switch(n) {

    case 1: {
      switch(peek()) {
        case '|':
          next();
          return ExprCost::Operator::OR;
        default:
          return ExprCost::Operator::NONE;
    }}
    case 2: {
      switch(peek()) {
        case '&':
          next();
          return ExprCost::Operator::AND;
        default:
          return ExprCost::Operator::NONE;
    }}
    case 3: {
      switch(peek()) {
        case '+':
          next();
          return ExprCost::Operator::PLUS;
        case '-':
          next();
          return ExprCost::Operator::MINUS;
        default:
          return ExprCost::Operator::NONE;
    }}
    case 4: {
      switch(peek()) {
        case '*':
          next();
          return ExprCost::Operator::TIMES;
        case '/':
          next();
          return ExprCost::Operator::DIV;
        case '%':
          next();
          return ExprCost::Operator::MOD;
        default:
          return ExprCost::Operator::NONE;
    }}
    default: {
      error("internal parse error in parse_BINOP() default case.");
      assert(false);
      return ExprCost::Operator::NONE;
    }
  }
}
