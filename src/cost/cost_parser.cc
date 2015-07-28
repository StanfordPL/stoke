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

#include <sstream>

#include "src/cost/cost_parser.h"

using namespace std;
using namespace stoke;

void CostParser::strip_spaces() {
  while(index_ < s_.size() && s_[index_] == ' ') {
    index_++;
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

void CostParser::eat(size_t n) {
  index_ += n;
}

void CostParser::error(std::string m) {
  if(error_ == "") {
    std::stringstream ss;
    ss << "at or before character at index " << index_ << ": " << m;
    error_ = ss.str();
  }
}

ExprCost* CostParser::parse_S() {
  auto result = parse_L(0);

  if (peek()) {
    //There's more unconsumed stuff
    error("trailing characters after expression");
  }

  if(error_ != "")
    return NULL;
  else
    return result;
}

ExprCost* CostParser::parse_L(size_t n) {
  assert(n <= COST_PARSER_N - 1);

  // Parse an L(n+1) or T for the LHS
  ExprCost* lhs = 0;
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

pair<ExprCost::Operator, ExprCost*> CostParser::parse_LP(size_t n) {
  assert(n <= COST_PARSER_N - 1);

  auto binop = parse_BINOP(n+1);
  if(binop == ExprCost::Operator::NONE)
    return pair<ExprCost::Operator, ExprCost*>(binop, NULL);

  auto rhs = parse_L(n);
  return pair<ExprCost::Operator, ExprCost*>(binop, rhs);
}

ExprCost* CostParser::parse_T() {

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

ExprCost* CostParser::parse_VAR() {
  std::string var = "";

  while((peek() >= 'a' && peek() <= 'z') || (peek() >= '0' && peek() <= '9')) {
    var = var.append(1, next());
  }

  auto ptr = symbol_table_[var];

  if(ptr == NULL) {
    error("undefined cost function variable: \"" + var + "\"");
    return NULL;
  }

  return new ExprCost(ptr);
}

ExprCost* CostParser::parse_NUM() {

  std::string num = "0";

  while(peek() >= '0' && peek() <= '9') {
    num = num.append(1, next());
  }

  uint64_t value = stol(num);
  return new ExprCost(value);
}

ExprCost::Operator CostParser::parse_BINOP(size_t n) {
  assert(1ul <= n && n <= COST_PARSER_N);

  // STEP 1: TOKENIZATION
  std::string var = "";

  size_t i;
  char c;
  for(i = 0, c = peek();
      (c == '+' || c == '>' || c == '<' || c == '|' ||
       c == '^' || c == '=' || c == '*' || c == '-' ||
       c == '*' || c == '%' || c == '/' || c == '&');
      c = peek(++i)) {

    var = var.append(1, c);
  }

  ExprCost::Operator op;

  if (var == "|") {
    op = ExprCost::Operator::OR;
  } else if (var == "&") {
    op = ExprCost::Operator::AND;
  } else if (var == "+") {
    op = ExprCost::Operator::PLUS;
  } else if (var == "-") {
    op = ExprCost::Operator::MINUS;
  } else if (var == "*") {
    op = ExprCost::Operator::TIMES;
  } else if (var == "/") {
    op = ExprCost::Operator::DIV;
  } else if (var == "%") {
    op = ExprCost::Operator::MOD;
  } else if (var == "<") {
    op = ExprCost::Operator::LT;
  } else if (var == "<=" || var == "=<") {
    op = ExprCost::Operator::LTE;
  } else if (var == ">") {
    op = ExprCost::Operator::GT;
  } else if (var == ">=" || var == "=>") {
    op = ExprCost::Operator::GTE;
  } else if (var == ">>") {
    op = ExprCost::Operator::SHR;
  } else if (var == "<<") {
    op = ExprCost::Operator::SHL;
  } else if (var == "==" || var == "=") {
    op = ExprCost::Operator::EQ;
  } else if (var == "") {
    // there's no binary operator here
    return ExprCost::Operator::NONE;
  } else {
    // there's a symbol here, but not one we know!
    error("Operator " + var + " is not supported.");
    return ExprCost::Operator::NONE;
  }

  // STEP 2: FIGURE OUT ORDER OF OPERATION BUSINESS

  switch(n) {
  case 1:
    if(op == ExprCost::Operator::OR) {
      eat(var.size());
      return op;
    } else {
      return ExprCost::Operator::NONE;
    }

  case 2:
    if(op == ExprCost::Operator::AND) {
      eat(var.size());
      return op;
    } else {
      return ExprCost::Operator::NONE;
    }

  case 3:
    if(op == ExprCost::Operator::EQ) {
      eat(var.size());
      return op;
    } else {
      return ExprCost::Operator::NONE;
    }

  case 4:
    if(op == ExprCost::Operator::LT || op == ExprCost::Operator::LTE ||
        op == ExprCost::Operator::GT || op == ExprCost::Operator::GTE) {
      eat(var.size());
      return op;
    } else {
      return ExprCost::Operator::NONE;
    }

  case 5:
    if(op == ExprCost::Operator::SHL || op == ExprCost::Operator::SHR) {
      eat(var.size());
      return op;
    } else {
      return ExprCost::Operator::NONE;
    }

  case 6:
    if(op == ExprCost::Operator::PLUS || op == ExprCost::Operator::MINUS) {
      eat(var.size());
      return op;
    } else {
      return ExprCost::Operator::NONE;
    }

  case 7:
    if(op == ExprCost::Operator::TIMES || op == ExprCost::Operator::DIV ||
        op == ExprCost::Operator::MOD) {
      eat(var.size());
      return op;
    } else {
      return ExprCost::Operator::NONE;
    }

  default:
    error("parse_BINOP() internal error.");
    return ExprCost::Operator::NONE;

  }

}
