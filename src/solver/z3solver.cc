
#include <iostream>

#include "src/ext/z3/include/z3++.h"
#include "src/solver/z3solver.h"
#include "src/symstate/bitvector.h"

using namespace stoke;
using namespace z3;
using namespace std;


bool Z3Solver::is_sat(const vector<SymBool*>& constraints) {

  /* Reset state. */
  error_ = "";

  /* Context for Z3 solver */
  context c;
  solver s(c);

  /* Convert constraints and query to z3 object */
  ExprConverter ec(c);
  SymTypecheckVisitor tc;
  for(auto it : constraints) {
    if (tc(*it) != 1) {
      stringstream ss;
      ss << "Typechecking failed for constraint: " << *it << endl;
      error_ = ss.str();
      return false;
    }

    s.add(to_expr(c, ec(*it)));
  }

  /* Run the solver and see */
  switch (s.check()) {
    case unsat:
      return false;
    case sat:
      return true;
    case unknown:
      return false;
  }
}

bool Z3Solver::has_model() const {
  return false;
}

SymBitVector& Z3Solver::get_model(const std::string& var) const {
  return *(new SymBitVectorConstant(1, 0));
}


/** Visit a bit-vector AND */
z3::expr Z3Solver::ExprConverter::visit(const SymBitVectorAnd& bv) {
  return to_expr(context_, Z3_mk_bvand(context_, (*this)(bv.a_), (*this)(bv.b_)));
}

/** Visit a bit-vector concatenation */
z3::expr Z3Solver::ExprConverter::visit(const SymBitVectorConcat& bv) {
  return to_expr(context_, Z3_mk_concat(context_, (*this)(bv.a_), (*this)(bv.b_)));
}

/** Visit a bit-vector constant */
z3::expr Z3Solver::ExprConverter::visit(const SymBitVectorConstant& bv) {
  return to_expr(context_, context_.bv_val((long long unsigned int)bv.constant_, bv.size_));
}

/** Visit a bit-vector extract */
z3::expr Z3Solver::ExprConverter::visit(const SymBitVectorExtract& bv) {
  return to_expr(context_, Z3_mk_extract(context_, bv.high_bit_, bv.low_bit_, (*this)(bv.bv_)));
}

/** Visit a bit-vector if-then-else */
z3::expr Z3Solver::ExprConverter::visit(const SymBitVectorIte& bv) {
  return to_expr(context_, Z3_mk_ite(context_, (*this)(bv.cond_), (*this)(bv.a_), (*this)(bv.b_)));
}

/** Visit a bit-vector NOT */
z3::expr Z3Solver::ExprConverter::visit(const SymBitVectorNot& bv) {
  return to_expr(context_, Z3_mk_bvnot(context_, (*this)(bv.bv_)));
}

/** Visit a bit-vector OR */
z3::expr Z3Solver::ExprConverter::visit(const SymBitVectorOr& bv) {
  return to_expr(context_, Z3_mk_bvor(context_, (*this)(bv.a_), (*this)(bv.b_)));
}

/** Visit a bit-vector plus */
z3::expr Z3Solver::ExprConverter::visit(const SymBitVectorPlus& bv) {
  return to_expr(context_, Z3_mk_bvadd(context_, (*this)(bv.a_), (*this)(bv.b_)));
}

/** Visit a bit-vector shift-left */
z3::expr Z3Solver::ExprConverter::visit(const SymBitVectorShiftLeft& bv) {
  // Get the constant and the width
  SymTypecheckVisitor tc;
  uint16_t width = tc(bv);
  auto c = SymBitVectorConstant(width, bv.shift_);
  
  // Build the expression
  return to_expr(context_, Z3_mk_bvshl(context_, (*this)(bv.bv_), (*this)(c)));
}

/** Visit a bit-vector shift-right */
z3::expr Z3Solver::ExprConverter::visit(const SymBitVectorShiftRight& bv) {
  // Get the constant and the width
  SymTypecheckVisitor tc;
  uint16_t width = tc(bv);
  auto c = SymBitVectorConstant(width, bv.shift_);
  
  // Build the expression
  return to_expr(context_, Z3_mk_bvshl(context_, (*this)(bv.bv_), (*this)(c)));
}

/** Visit a bit-vector variable */
z3::expr Z3Solver::ExprConverter::visit(const SymBitVectorVar& bv) {
  auto type = context_.bv_sort(bv.size_);
  return to_expr(context_, Z3_mk_const(context_, get_symbol(bv.name_), type));
}

/** Visit a bit-vector XOR */
z3::expr Z3Solver::ExprConverter::visit(const SymBitVectorXor& bv) {
  return to_expr(context_, Z3_mk_bvxor(context_, (*this)(bv.a_), (*this)(bv.b_)));
}


/** Visit a bit-vector EQ */
z3::expr Z3Solver::ExprConverter::visit(const SymBoolEq& b) {
  return to_expr(context_, Z3_mk_eq(context_, (*this)(b.a_), (*this)(b.b_)));
}


/** Visit a boolean AND */
z3::expr Z3Solver::ExprConverter::visit(const SymBoolAnd& b) {
  const Z3_ast args[2] = {(*this)(b.a_), (*this)(b.b_)};
  return to_expr(context_, Z3_mk_and(context_, 2, args));
}

/** Visit a boolean FALSE */
z3::expr Z3Solver::ExprConverter::visit(const SymBoolFalse& b) {
  return to_expr(context_, Z3_mk_false(context_));
}

/** Visit a boolean IFF */
z3::expr Z3Solver::ExprConverter::visit(const SymBoolIff& b) {
  return to_expr(context_, Z3_mk_eq(context_, (*this)(b.a_), (*this)(b.b_)));
}

/** Visit a boolean NOT */
z3::expr Z3Solver::ExprConverter::visit(const SymBoolNot& b) {
  return to_expr(context_, Z3_mk_not(context_, (*this)(b.b_)));
}

/** Visit a boolean OR */
z3::expr Z3Solver::ExprConverter::visit(const SymBoolOr& b) {
  const Z3_ast args[2] = {(*this)(b.a_), (*this)(b.b_)};
  return to_expr(context_, Z3_mk_or(context_, 2, args));
}

/** Visit a boolean TRUE */
z3::expr Z3Solver::ExprConverter::visit(const SymBoolTrue& b) {
  return to_expr(context_, Z3_mk_true(context_));
}

/** Visit a boolean VAR */
z3::expr Z3Solver::ExprConverter::visit(const SymBoolVar& b) {
  auto type = Z3_mk_bool_sort(context_);
  return to_expr(context_, Z3_mk_const(context_, get_symbol(b.name_), type));
}

/** Visit a boolean XOR */
z3::expr Z3Solver::ExprConverter::visit(const SymBoolXor& b) {
  return to_expr(context_, Z3_mk_xor(context_, (*this)(b.a_), (*this)(b.b_)));
}




