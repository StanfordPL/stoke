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

#include "src/expr/expr_parser.h"

using namespace std;
using namespace stoke;

void ExprParser::strip_spaces() {
  while(index_ < s_.size() && s_[index_] == ' ') {
    index_++;
  }
}

char ExprParser::peek(size_t n) {
  strip_spaces();
  if (index_ + n >= s_.size())
    return 0;
  return s_[index_ + n];
}

char ExprParser::next() {
  strip_spaces();
  if (index_ >= s_.size())
    return 0;
  char c = s_[index_];
  index_++;
  return c;
}

void ExprParser::eat(size_t n) {
  index_ += n;
}

void ExprParser::error(std::string m) {
  if(error_ == "") {
    std::stringstream ss;
    ss << "at or before character at index " << index_ << ": " << m;
    error_ = ss.str();
  }
}

Expr* ExprParser::parse_S() {
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

Expr* ExprParser::parse_L(size_t n) {
  assert(n <= EXPR_PARSER_N - 1);

  // Parse an L(n+1) or T for the LHS
  Expr* lhs = 0;
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
  if(rhs.first == Expr::Operator::NONE) {
    return lhs;
  } else {
    auto op = rhs.first;
    auto arg = rhs.second;

    if (arg == NULL) {
      error("could not parse; reason unknown.");
    }
    return new Expr(lhs, arg, op);
  }
}

pair<Expr::Operator, Expr*> ExprParser::parse_LP(size_t n) {
  assert(n <= EXPR_PARSER_N - 1);

  auto binop = parse_BINOP(n+1);
  if(binop == Expr::Operator::NONE)
    return pair<Expr::Operator, Expr*>(binop, NULL);

  auto rhs = parse_L(n);
  return pair<Expr::Operator, Expr*>(binop, rhs);
}

Expr* ExprParser::parse_T() {

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

Expr* ExprParser::parse_VAR() {
  std::string var = "";

  while(peek() >= 'a' && peek() <= 'z') {
    var = var.append(1, next());
  }

  if(!is_var_valid_(var)) {
    error("undefined variable: \"" + var + "\"");
    return NULL;
  }

  return new Expr(var);
}

Expr* ExprParser::parse_NUM() {

  std::string num = "0";

  while(peek() >= '0' && peek() <= '9') {
    num = num.append(1, next());
  }

  uint64_t value = stol(num);
  return new Expr(value);
}

Expr::Operator ExprParser::parse_BINOP(size_t n) {
  assert(1ul <= n && n <= EXPR_PARSER_N);

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

  Expr::Operator op;

  if (var == "|") {
    op = Expr::Operator::OR;
  } else if (var == "&") {
    op = Expr::Operator::AND;
  } else if (var == "+") {
    op = Expr::Operator::PLUS;
  } else if (var == "-") {
    op = Expr::Operator::MINUS;
  } else if (var == "*") {
    op = Expr::Operator::TIMES;
  } else if (var == "/") {
    op = Expr::Operator::DIV;
  } else if (var == "%") {
    op = Expr::Operator::MOD;
  } else if (var == "<") {
    op = Expr::Operator::LT;
  } else if (var == "<=" || var == "=<") {
    op = Expr::Operator::LTE;
  } else if (var == ">") {
    op = Expr::Operator::GT;
  } else if (var == ">=" || var == "=>") {
    op = Expr::Operator::GTE;
  } else if (var == ">>") {
    op = Expr::Operator::SHR;
  } else if (var == "<<") {
    op = Expr::Operator::SHL;
  } else if (var == "==" || var == "=") {
    op = Expr::Operator::EQ;
  } else if (var == "") {
    // there's no binary operator here
    return Expr::Operator::NONE;
  } else {
    // there's a symbol here, but not one we know!
    error("Operator " + var + " is not supported.");
    return Expr::Operator::NONE;
  }

  // STEP 2: FIGURE OUT ORDER OF OPERATION BUSINESS

  switch(n) {
  case 1:
    if(op == Expr::Operator::OR) {
      eat(var.size());
      return op;
    } else {
      return Expr::Operator::NONE;
    }

  case 2:
    if(op == Expr::Operator::AND) {
      eat(var.size());
      return op;
    } else {
      return Expr::Operator::NONE;
    }

  case 3:
    if(op == Expr::Operator::EQ) {
      eat(var.size());
      return op;
    } else {
      return Expr::Operator::NONE;
    }

  case 4:
    if(op == Expr::Operator::LT || op == Expr::Operator::LTE ||
        op == Expr::Operator::GT || op == Expr::Operator::GTE) {
      eat(var.size());
      return op;
    } else {
      return Expr::Operator::NONE;
    }

  case 5:
    if(op == Expr::Operator::SHL || op == Expr::Operator::SHR) {
      eat(var.size());
      return op;
    } else {
      return Expr::Operator::NONE;
    }

  case 6:
    if(op == Expr::Operator::PLUS || op == Expr::Operator::MINUS) {
      eat(var.size());
      return op;
    } else {
      return Expr::Operator::NONE;
    }

  case 7:
    if(op == Expr::Operator::TIMES || op == Expr::Operator::DIV ||
        op == Expr::Operator::MOD) {
      eat(var.size());
      return op;
    } else {
      return Expr::Operator::NONE;
    }

  default:
    error("parse_BINOP() internal error.");
    return Expr::Operator::NONE;

  }

}
