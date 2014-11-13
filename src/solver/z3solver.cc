
#include <iostream>

#include "src/ext/z3/include/z3++.h"
#include "src/solver/z3solver.h"
#include "src/symstate/bitvector.h"

using namespace stoke;
using namespace z3;
using namespace std;


bool Z3Solver::is_sat(const vector<SymBool>& constraints) {

  /* Reset state. */
  error_ = "";
  model_ = 0;

  /* Context for Z3 solver */
  solver s(context_);
  context_.set("timeout", (int)timeout_);

  /* Convert constraints and query to z3 object */
  ExprConverter ec(context_);
  SymTypecheckVisitor tc;
  for(auto it : constraints) {
    if (tc(it) != 1) {
      stringstream ss;
      ss << "Typechecking failed for constraint: " << it << endl;
      error_ = ss.str();
      return false;
    }

    auto constraint = ec(it);
    s.add(constraint);
  }

  /* Run the solver and see */
  switch (s.check()) {
  case unsat: {
    return false;
  }

  case sat: {
    model_ = new z3::model(s.get_model());
    return true;
  }

  case unknown: {
    error_ = "z3 gave up.";
    return false;
  }
  }
}

/** Get the satisfying assignment for a bit-vector from the model.
    NOTE: This function is very brittle right now.  If you pass in the wrong
    variable/size, there's no way to know and the result you get back is
    undefined. */
cpputil::BitVector Z3Solver::get_model_bv(const std::string& var, uint16_t octs) {
  auto bits = octs*64;

  auto type = context_.bv_sort(bits);
  auto v = z3::expr(context_, Z3_mk_const(context_, get_symbol(var), type));

  cpputil::BitVector result(bits);

  for(int i = 0; i < octs; ++i) {
    uint64_t oct;

    expr extract = to_expr(context_, Z3_mk_extract(context_, i*64+63, i*64, v));
    expr number = to_expr(context_, Z3_mk_bv2int(context_, extract, true));
    expr eval = model_->eval(number, true);
    Z3_get_numeral_int64(context_, eval, (long long int*)&oct);

    result.get_fixed_quad(i) = oct;
  }

  return result;
}

/** Get the satisfying assignment for a bit from the model.
    NOTE: This function is very brittle right now.  If you pass in the wrong
    variable/size, there's no way to know and the result you get back is
    undefined. */
bool Z3Solver::get_model_bool(const std::string& var) {
  auto type = Z3_mk_bool_sort(context_);
  auto v = z3::expr(context_, Z3_mk_const(context_, get_symbol(var), type));

  expr e = model_->eval(v, true);
  int n = Z3_get_bool_value(context_, e);

  if (n == 1)
    return true;
  else if (n == -1)
    return false;
  else {
    //Error!  (We need a better way of handling this)
    error_ = "Z3 returned invalid value " + to_string(n) + " for boolean " + var + ".";
    return false;
  }
}

///////  The following is for converting bit-vectors.  Very tedious.  //////////////////////////////

/** Visit a bit-vector AND */
z3::expr Z3Solver::ExprConverter::visit(const SymBitVectorAnd * const bv) {
  return z3::expr(context_, Z3_mk_bvand(context_, (*this)(bv->a_), (*this)(bv->b_)));
}

/** Visit a bit-vector concatenation */
z3::expr Z3Solver::ExprConverter::visit(const SymBitVectorConcat * const bv) {
  return z3::expr(context_, Z3_mk_concat(context_, (*this)(bv->a_), (*this)(bv->b_)));
}

/** Visit a bit-vector constant */
z3::expr Z3Solver::ExprConverter::visit(const SymBitVectorConstant * const bv) {
  return z3::expr(context_, context_.bv_val((long long unsigned int)bv->constant_, bv->size_));
}

/** Visit a bit-vector extract */
z3::expr Z3Solver::ExprConverter::visit(const SymBitVectorExtract * const bv) {
  return z3::expr(context_, Z3_mk_extract(context_, bv->high_bit_, bv->low_bit_, (*this)(bv->bv_)));
}

/** Visit a bit-vector if-then-else */
z3::expr Z3Solver::ExprConverter::visit(const SymBitVectorIte * const bv) {
  return z3::expr(context_, Z3_mk_ite(context_, (*this)(bv->cond_), (*this)(bv->a_), (*this)(bv->b_)));
}

/** Visit a bit-vector minus */
z3::expr Z3Solver::ExprConverter::visit(const SymBitVectorMinus * const bv) {
  return z3::expr(context_, Z3_mk_bvsub(context_, (*this)(bv->a_), (*this)(bv->b_)));
}

/** Visit a bit-vector mod */
z3::expr Z3Solver::ExprConverter::visit(const SymBitVectorMod * const bv) {
  return z3::expr(context_, Z3_mk_bvurem(context_, (*this)(bv->a_), (*this)(bv->b_)));
}

/** Visit a bit-vector mult */
z3::expr Z3Solver::ExprConverter::visit(const SymBitVectorMult * const bv) {
  return z3::expr(context_, Z3_mk_bvmul(context_, (*this)(bv->a_), (*this)(bv->b_)));
}

/** Visit a bit-vector NOT */
z3::expr Z3Solver::ExprConverter::visit(const SymBitVectorNot * const bv) {
  return z3::expr(context_, Z3_mk_bvnot(context_, (*this)(bv->bv_)));
}

/** Visit a bit-vector OR */
z3::expr Z3Solver::ExprConverter::visit(const SymBitVectorOr * const bv) {
  return z3::expr(context_, Z3_mk_bvor(context_, (*this)(bv->a_), (*this)(bv->b_)));
}

/** Visit a bit-vector plus */
z3::expr Z3Solver::ExprConverter::visit(const SymBitVectorPlus * const bv) {
  return z3::expr(context_, Z3_mk_bvadd(context_, (*this)(bv->a_), (*this)(bv->b_)));
}

/** Visit a bit-vector shift-left */
z3::expr Z3Solver::ExprConverter::visit(const SymBitVectorShiftLeft * const bv) {
  return z3::expr(context_, Z3_mk_bvshl(context_, (*this)(bv->a_), (*this)(bv->b_)));
}

/** Visit a bit-vector shift-right */
z3::expr Z3Solver::ExprConverter::visit(const SymBitVectorShiftRight * const bv) {
  return z3::expr(context_, Z3_mk_bvlshr(context_, (*this)(bv->a_), (*this)(bv->b_)));
}

/** Visit a bit-vector signed divide */
z3::expr Z3Solver::ExprConverter::visit(const SymBitVectorSignDiv * const bv) {
  return z3::expr(context_, Z3_mk_bvsdiv(context_, (*this)(bv->a_), (*this)(bv->b_)));
}

/** Visit a bit-vector sign extension */
z3::expr Z3Solver::ExprConverter::visit(const SymBitVectorSignExtend * const bv) {

  SymTypecheckVisitor tc;
  auto child = tc(bv->bv_);

  return z3::expr(context_, Z3_mk_sign_ext(context_, bv->size_ - child, (*this)(bv->bv_)));
}

/** Visit a bit-vector signed mod */
z3::expr Z3Solver::ExprConverter::visit(const SymBitVectorSignMod * const bv) {
  return z3::expr(context_, Z3_mk_bvsrem(context_, (*this)(bv->a_), (*this)(bv->b_)));
}

/** Visit a bit-vector signed shift-right */
z3::expr Z3Solver::ExprConverter::visit(const SymBitVectorSignShiftRight * const bv) {
  return z3::expr(context_, Z3_mk_bvashr(context_, (*this)(bv->a_), (*this)(bv->b_)));
}

/** Visit a bit-vector unary minus */
z3::expr Z3Solver::ExprConverter::visit(const SymBitVectorUMinus * const bv) {
  return z3::expr(context_, Z3_mk_bvneg(context_, (*this)(bv->bv_)));
}

/** Visit a bit-vector variable */
z3::expr Z3Solver::ExprConverter::visit(const SymBitVectorVar * const bv) {
  auto type = context_.bv_sort(bv->size_);
  return z3::expr(context_, Z3_mk_const(context_, get_symbol(bv->name_), type));
}

/** Visit a bit-vector XOR */
z3::expr Z3Solver::ExprConverter::visit(const SymBitVectorXor * const bv) {
  return z3::expr(context_, Z3_mk_bvxor(context_, (*this)(bv->a_), (*this)(bv->b_)));
}

/** Visit a Z3-compatability bitvector */
z3::expr Z3Solver::ExprConverter::visit(const SymBitVectorZ3 * const bv) {
  return bv->e_;
}

/** Visit a bit-vector EQ */
z3::expr Z3Solver::ExprConverter::visit(const SymBoolEq * const b) {
  return z3::expr(context_, Z3_mk_eq(context_, (*this)(b->a_), (*this)(b->b_)));
}

/** Visit a bit-vector GE */
z3::expr Z3Solver::ExprConverter::visit(const SymBoolGe * const b) {
  return z3::expr(context_, Z3_mk_bvuge(context_, (*this)(b->a_), (*this)(b->b_)));
}

/** Visit a bit-vector GT */
z3::expr Z3Solver::ExprConverter::visit(const SymBoolGt * const b) {
  return z3::expr(context_, Z3_mk_bvugt(context_, (*this)(b->a_), (*this)(b->b_)));
}

/** Visit a bit-vector LE */
z3::expr Z3Solver::ExprConverter::visit(const SymBoolLe * const b) {
  return z3::expr(context_, Z3_mk_bvule(context_, (*this)(b->a_), (*this)(b->b_)));
}

/** Visit a bit-vector LT */
z3::expr Z3Solver::ExprConverter::visit(const SymBoolLt * const b) {
  return z3::expr(context_, Z3_mk_bvult(context_, (*this)(b->a_), (*this)(b->b_)));
}



/** Visit a boolean AND */
z3::expr Z3Solver::ExprConverter::visit(const SymBoolAnd * const b) {
  return (*this)(b->a_) && (*this)(b->b_);
}

/** Visit a boolean FALSE */
z3::expr Z3Solver::ExprConverter::visit(const SymBoolFalse * const b) {
  return z3::expr(context_, Z3_mk_false(context_));
}

/** Visit a boolean IFF */
z3::expr Z3Solver::ExprConverter::visit(const SymBoolIff * const b) {
  return z3::expr(context_, Z3_mk_eq(context_, (*this)(b->a_), (*this)(b->b_)));
}

/** Visit a boolean implies */
z3::expr Z3Solver::ExprConverter::visit(const SymBoolImplies * const b) {
  return z3::expr(context_, Z3_mk_implies(context_, (*this)(b->a_), (*this)(b->b_)));
}

/** Visit a boolean NOT */
z3::expr Z3Solver::ExprConverter::visit(const SymBoolNot * const b) {
  return z3::expr(context_, Z3_mk_not(context_, (*this)(b->b_)));
}

/** Visit a boolean OR */
z3::expr Z3Solver::ExprConverter::visit(const SymBoolOr * const b) {
  return (*this)(b->a_) || (*this)(b->b_);
}

/** Visit a boolean TRUE */
z3::expr Z3Solver::ExprConverter::visit(const SymBoolTrue * const b) {
  return z3::expr(context_, Z3_mk_true(context_));
}

/** Visit a boolean VAR */
z3::expr Z3Solver::ExprConverter::visit(const SymBoolVar * const b) {
  auto type = Z3_mk_bool_sort(context_);
  return z3::expr(context_, Z3_mk_const(context_, get_symbol(b->name_), type));
}

/** Visit a boolean XOR */
z3::expr Z3Solver::ExprConverter::visit(const SymBoolXor * const b) {
  return z3::expr(context_, Z3_mk_xor(context_, (*this)(b->a_), (*this)(b->b_)));
}

/** Visit a Z3-compatability bool */
z3::expr Z3Solver::ExprConverter::visit(const SymBoolZ3 * const b) {
  return b->e_;
}




