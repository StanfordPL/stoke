
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

    auto constraint = ec(*it);
    s.add(constraint);
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
  return SymBitVector::constant(1, 0);
}


/** Visit a bit-vector AND */
z3::expr Z3Solver::ExprConverter::visit(const SymBitVectorAnd& bv) {
  return z3::expr(context_, Z3_mk_bvand(context_, (*this)(bv.a_), (*this)(bv.b_)));
}

/** Visit a bit-vector concatenation */
z3::expr Z3Solver::ExprConverter::visit(const SymBitVectorConcat& bv) {
  return z3::expr(context_, Z3_mk_concat(context_, (*this)(bv.a_), (*this)(bv.b_)));
}

/** Visit a bit-vector constant */
z3::expr Z3Solver::ExprConverter::visit(const SymBitVectorConstant& bv) {
  return z3::expr(context_, context_.bv_val((long long unsigned int)bv.constant_, bv.size_));
}

/** Visit a bit-vector extract */
z3::expr Z3Solver::ExprConverter::visit(const SymBitVectorExtract& bv) {
  return z3::expr(context_, Z3_mk_extract(context_, bv.high_bit_, bv.low_bit_, (*this)(bv.bv_)));
}

/** Visit a bit-vector if-then-else */
z3::expr Z3Solver::ExprConverter::visit(const SymBitVectorIte& bv) {
  return z3::expr(context_, Z3_mk_ite(context_, (*this)(bv.cond_), (*this)(bv.a_), (*this)(bv.b_)));
}

/** Visit a bit-vector minus */
z3::expr Z3Solver::ExprConverter::visit(const SymBitVectorMinus& bv) {
  return z3::expr(context_, Z3_mk_bvsub(context_, (*this)(bv.a_), (*this)(bv.b_)));
}

/** Visit a bit-vector mod */
z3::expr Z3Solver::ExprConverter::visit(const SymBitVectorMod& bv) {
  return z3::expr(context_, Z3_mk_bvurem(context_, (*this)(bv.a_), (*this)(bv.b_)));
}

/** Visit a bit-vector mult */
z3::expr Z3Solver::ExprConverter::visit(const SymBitVectorMult& bv) {
  return z3::expr(context_, Z3_mk_bvmul(context_, (*this)(bv.a_), (*this)(bv.b_)));
}

/** Visit a bit-vector NOT */
z3::expr Z3Solver::ExprConverter::visit(const SymBitVectorNot& bv) {
  return z3::expr(context_, Z3_mk_bvnot(context_, (*this)(bv.bv_)));
}

/** Visit a bit-vector OR */
z3::expr Z3Solver::ExprConverter::visit(const SymBitVectorOr& bv) {
  return z3::expr(context_, Z3_mk_bvor(context_, (*this)(bv.a_), (*this)(bv.b_)));
}

/** Visit a bit-vector plus */
z3::expr Z3Solver::ExprConverter::visit(const SymBitVectorPlus& bv) {
  return z3::expr(context_, Z3_mk_bvadd(context_, (*this)(bv.a_), (*this)(bv.b_)));
}

/** Visit a bit-vector shift-left */
z3::expr Z3Solver::ExprConverter::visit(const SymBitVectorShiftLeft& bv) {
  return z3::expr(context_, Z3_mk_bvshl(context_, (*this)(bv.a_), (*this)(bv.b_)));
}

/** Visit a bit-vector shift-right */
z3::expr Z3Solver::ExprConverter::visit(const SymBitVectorShiftRight& bv) {
  return z3::expr(context_, Z3_mk_bvlshr(context_, (*this)(bv.a_), (*this)(bv.b_)));
}

/** Visit a bit-vector signed divide */
z3::expr Z3Solver::ExprConverter::visit(const SymBitVectorSignDiv& bv) {
  return z3::expr(context_, Z3_mk_bvsdiv(context_, (*this)(bv.a_), (*this)(bv.b_)));
}

/** Visit a bit-vector sign extension */
z3::expr Z3Solver::ExprConverter::visit(const SymBitVectorSignExtend& bv) {

  SymTypecheckVisitor tc;
  auto child = tc(bv.bv_);

  return z3::expr(context_, Z3_mk_sign_ext(context_, bv.size_ - child, (*this)(bv.bv_)));
}

/** Visit a bit-vector signed mod */
z3::expr Z3Solver::ExprConverter::visit(const SymBitVectorSignMod& bv) {
  return z3::expr(context_, Z3_mk_bvsrem(context_, (*this)(bv.a_), (*this)(bv.b_)));
}

/** Visit a bit-vector signed shift-right */
z3::expr Z3Solver::ExprConverter::visit(const SymBitVectorSignShiftRight& bv) {
  return z3::expr(context_, Z3_mk_bvashr(context_, (*this)(bv.a_), (*this)(bv.b_)));
}

/** Visit a bit-vector unary minus */
z3::expr Z3Solver::ExprConverter::visit(const SymBitVectorUMinus& bv) {
  return z3::expr(context_, Z3_mk_bvneg(context_, (*this)(bv.bv_)));
}

/** Visit a bit-vector variable */
z3::expr Z3Solver::ExprConverter::visit(const SymBitVectorVar& bv) {
  auto type = context_.bv_sort(bv.size_);
  return z3::expr(context_, Z3_mk_const(context_, get_symbol(bv.name_), type));
}

/** Visit a bit-vector XOR */
z3::expr Z3Solver::ExprConverter::visit(const SymBitVectorXor& bv) {
  return z3::expr(context_, Z3_mk_bvxor(context_, (*this)(bv.a_), (*this)(bv.b_)));
}

/** Visit a Z3-compatability bitvector */
z3::expr Z3Solver::ExprConverter::visit(const SymBitVectorZ3& bv) {
  return bv.e_;
}

/** Visit a bit-vector EQ */
z3::expr Z3Solver::ExprConverter::visit(const SymBoolEq& b) {
  return z3::expr(context_, Z3_mk_eq(context_, (*this)(b.a_), (*this)(b.b_)));
}

/** Visit a bit-vector GE */
z3::expr Z3Solver::ExprConverter::visit(const SymBoolGe& b) {
  return z3::expr(context_, Z3_mk_bvuge(context_, (*this)(b.a_), (*this)(b.b_)));
}

/** Visit a bit-vector GT */
z3::expr Z3Solver::ExprConverter::visit(const SymBoolGt& b) {
  return z3::expr(context_, Z3_mk_bvugt(context_, (*this)(b.a_), (*this)(b.b_)));
}

/** Visit a bit-vector LE */
z3::expr Z3Solver::ExprConverter::visit(const SymBoolLe& b) {
  return z3::expr(context_, Z3_mk_bvule(context_, (*this)(b.a_), (*this)(b.b_)));
}

/** Visit a bit-vector LT */
z3::expr Z3Solver::ExprConverter::visit(const SymBoolLt& b) {
  return z3::expr(context_, Z3_mk_bvult(context_, (*this)(b.a_), (*this)(b.b_)));
}



/** Visit a boolean AND */
z3::expr Z3Solver::ExprConverter::visit(const SymBoolAnd& b) {
  return (*this)(b.a_) && (*this)(b.b_);
}

/** Visit a boolean FALSE */
z3::expr Z3Solver::ExprConverter::visit(const SymBoolFalse& b) {
  return z3::expr(context_, Z3_mk_false(context_));
}

/** Visit a boolean IFF */
z3::expr Z3Solver::ExprConverter::visit(const SymBoolIff& b) {
  return z3::expr(context_, Z3_mk_eq(context_, (*this)(b.a_), (*this)(b.b_)));
}

/** Visit a boolean implies */
z3::expr Z3Solver::ExprConverter::visit(const SymBoolImplies& b) {
  return z3::expr(context_, Z3_mk_implies(context_, (*this)(b.a_), (*this)(b.b_)));
}

/** Visit a boolean NOT */
z3::expr Z3Solver::ExprConverter::visit(const SymBoolNot& b) {
  return z3::expr(context_, Z3_mk_not(context_, (*this)(b.b_)));
}

/** Visit a boolean OR */
z3::expr Z3Solver::ExprConverter::visit(const SymBoolOr& b) {
  return (*this)(b.a_) || (*this)(b.b_);
}

/** Visit a boolean TRUE */
z3::expr Z3Solver::ExprConverter::visit(const SymBoolTrue& b) {
  return z3::expr(context_, Z3_mk_true(context_));
}

/** Visit a boolean VAR */
z3::expr Z3Solver::ExprConverter::visit(const SymBoolVar& b) {
  auto type = Z3_mk_bool_sort(context_);
  return z3::expr(context_, Z3_mk_const(context_, get_symbol(b.name_), type));
}

/** Visit a boolean XOR */
z3::expr Z3Solver::ExprConverter::visit(const SymBoolXor& b) {
  return z3::expr(context_, Z3_mk_xor(context_, (*this)(b.a_), (*this)(b.b_)));
}

/** Visit a Z3-compatability bool */
z3::expr Z3Solver::ExprConverter::visit(const SymBoolZ3& b) {
  return b.e_;
}




