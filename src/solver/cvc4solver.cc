// Copyright 2013-2016 Stanford University
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


#include <iostream>

#include "src/solver/cvc4solver.h"
#include "src/symstate/bitvector.h"
#include "src/symstate/typecheck_visitor.h"

using namespace stoke;
using namespace std;
using namespace CVC4;

#define DEBUG_CVC4(X) { }


bool Cvc4Solver::is_sat(const vector<SymBool>& constraints) {

  reset();
  smt_->pop();
  smt_->push();

  error_ = "";

  SymTypecheckVisitor tc;
  ExprConverter ec(this);

  for (auto it : constraints) {

    if (tc(it) != 1) {
      stringstream ss;
      ss << "Typechecking failed for constraint: " << it << endl;
      if (tc.has_error())
        ss << "error: " << tc.error() << endl;
      else
        ss << "(no typechecking error message given)" << endl;
      error_ = ss.str();
      return false;
    }

    auto converted = ec(it);
    if (ec.has_error()) {
      error_ = ec.error();
      return false;
    }

    smt_->assertFormula(converted);
  }

  auto result = smt_->checkSat(em_.mkConst(true));

  if (result.isUnknown()) { // || result.isSat() == Result::SAT_UNKNOWN) {
    error_ = "CVC4 returned unknown: " + result.toString();
    return false;
  }
  return result.isSat() == Result::SAT;

}

/** Get the satisfying assignment for a bit-vector from the model.
    NOTE: This function is very brittle right now.  If you pass in the wrong
    variable/size, there's no way to know and the result you get back is
    undefined. */
cpputil::BitVector Cvc4Solver::get_model_bv(const std::string& var, uint16_t bits) {
  cpputil::BitVector bv(bits);

  if (!variables_.count(var))
    return bv;

  auto val = variables_[var];
  auto expr = smt_->getValue(val);
  auto ret = expr.getConst<CVC4::BitVector>();

  for (size_t i = 0; i < bits; ++i) {
    bv[i] = ret.isBitSet(i);
  }

  assert(bv.num_bits() == bits);
  return bv;
}

/** Get the satisfying assignment for a bit from the model.
    NOTE: This function is very brittle right now.  If you pass in the wrong
    variable/size, there's no way to know and the result you get back is
    undefined. */
bool Cvc4Solver::get_model_bool(const std::string& var) {

  if (!variables_.count(var))
    return false;

  auto val = variables_[var];
  auto expr = smt_->getValue(val);
  return expr.getConst<bool>();
}


std::pair<std::map<uint64_t, cpputil::BitVector>, uint8_t> Cvc4Solver::get_model_array(const std::string& var, uint16_t key_bits, uint16_t value_bits) {

  // Much thanks to the CVC4 folks!
  // https://github.com/CVC4/CVC4/issues/1067

  map<uint64_t, cpputil::BitVector> output_map;;
  uint8_t default_value = 0;

  if (variables_.count(var)) {

    auto val = variables_[var];
    auto expr = smt_->getValue(val);

    DEBUG_CVC4(cout << "[cvc4][model] Expr: " << expr << endl;)
    DEBUG_CVC4(cout << "[cvc4][model] expr.getKind() = " << expr.getKind() << endl;)

    while (expr.getKind() == kind::STORE) {
      auto index_integer = expr[1].getConst<CVC4::BitVector>().toInteger();
      uint64_t index = (uint64_t)(index_integer.extractBitRange(32, 32).toUnsignedInt()) << 32 |
                       (uint64_t)(index_integer.extractBitRange(32, 0).toUnsignedInt());
      uint64_t value = expr[2].getConst<CVC4::BitVector>().toInteger().toUnsignedInt();
      expr = expr[0];

      cpputil::BitVector bv(8);
      bv.get_fixed_byte(0) = value & 0xff;
      output_map[index] = bv;
      DEBUG_CVC4(cout << "[cvc4][model] adding " << index << " -> " << value << endl;)
    }

    if (expr.getKind() == kind::STORE_ALL) {
      default_value = expr.getConst<ArrayStoreAll>()
                      .getExpr()
                      .getConst<CVC4::BitVector>()
                      .toInteger()
                      .toUnsignedInt();
      DEBUG_CVC4(cout << "[cvc4][model] default value " << default_value << endl;)
    }
  } else {
    cout << "[cvc4][model] WARNING! BUG! Could not find variable " << var << endl;
  }

  return pair<map<uint64_t, cpputil::BitVector>, uint8_t>(output_map, default_value);
}

///////  The following is for converting bit-vectors.  Very tedious.  //////////////////////////////

Expr Cvc4Solver::ExprConverter::generic_rot(bool left,
    const SymBitVectorAbstract * const x, Expr a, Expr b) {

  // Get the size of the argument
  uint16_t size = x->width_;

  // Number of bits to rotate, simplified
  Expr amt = em_.mkExpr(kind::BITVECTOR_UREM, b, em_.mkConst(BitVector(size, (uint64_t)size)));
  // Number of bits to rotate, extended
  Expr amt_ext = em_.mkExpr(kind::BITVECTOR_ZERO_EXTEND,
                            em_.mkConst(BitVectorZeroExtend(size)), amt);

  // Repeat the source one time
  Expr rept = em_.mkExpr(kind::BITVECTOR_CONCAT, a, a);

  if (left) {
    Expr tmp = em_.mkExpr(kind::BITVECTOR_SHL, rept, amt_ext);
    return em_.mkExpr(kind::BITVECTOR_EXTRACT, em_.mkConst(BitVectorExtract(2*size-1, size)), tmp);
  } else {
    Expr tmp = em_.mkExpr(kind::BITVECTOR_LSHR, rept, amt_ext);
    return em_.mkExpr(kind::BITVECTOR_EXTRACT, em_.mkConst(BitVectorExtract(size-1, 0)), tmp);
  }
}

/** Visit a bit-vector binop */
Expr Cvc4Solver::ExprConverter::visit_binop(const SymBitVectorBinop * const binop) {
  auto left = (*this)(binop->a_);
  auto right = (*this)(binop->b_);

  switch (binop->type()) {
  case SymBitVector::AND:
    return em_.mkExpr(kind::BITVECTOR_AND, left, right);
  case SymBitVector::CONCAT:
    return em_.mkExpr(kind::BITVECTOR_CONCAT, left, right);
  case SymBitVector::MINUS:
    return em_.mkExpr(kind::BITVECTOR_SUB, left, right);
  case SymBitVector::DIV:
    return em_.mkExpr(kind::BITVECTOR_UDIV, left, right);
  case SymBitVector::MOD:
    return em_.mkExpr(kind::BITVECTOR_UREM, left, right);
  case SymBitVector::MULT:
    return em_.mkExpr(kind::BITVECTOR_MULT, left, right);
  case SymBitVector::OR:
    return em_.mkExpr(kind::BITVECTOR_OR, left, right);
  case SymBitVector::PLUS:
    return em_.mkExpr(kind::BITVECTOR_PLUS, left, right);
  case SymBitVector::ROTATE_LEFT:
    return generic_rot(true, binop->a_, left, right);
  case SymBitVector::ROTATE_RIGHT:
    return generic_rot(false, binop->a_, left, right);
  case SymBitVector::SHIFT_LEFT:
    return em_.mkExpr(kind::BITVECTOR_SHL, left, right);
  case SymBitVector::SHIFT_RIGHT:
    return em_.mkExpr(kind::BITVECTOR_LSHR, left, right);
  case SymBitVector::SIGN_DIV:
    return em_.mkExpr(kind::BITVECTOR_SDIV, left, right);
  case SymBitVector::SIGN_MOD:
    return em_.mkExpr(kind::BITVECTOR_SREM, left, right);
  case SymBitVector::SIGN_SHIFT_RIGHT:
    return em_.mkExpr(kind::BITVECTOR_ASHR, left, right);
  case SymBitVector::XOR:
    return em_.mkExpr(kind::BITVECTOR_XOR, left, right);
  default:
    error_ = "Unexpected BV type: " + to_string(binop->type());
    assert(false);
  }
  assert(false);
  return em_.mkExpr(kind::BITVECTOR_AND, left, right); // keep the compiler happy
}

/** Visit a bit-vector binop */
Expr Cvc4Solver::ExprConverter::visit_unop(const SymBitVectorUnop * const unop) {
  auto left = (*this)(unop->bv_);

  switch (unop->type()) {
  case SymBitVector::U_MINUS:
    return em_.mkExpr(kind::BITVECTOR_NEG, left);
  case SymBitVector::NOT:
    return em_.mkExpr(kind::BITVECTOR_NOT, left);
  default:
    error_ = "Unexpected BV type: " + to_string(unop->type());
    assert(false);
  }
  assert(false);
  return em_.mkExpr(kind::BITVECTOR_NEG, left); //keep the compiler happy
}

/** Visit a boolean binop */
Expr Cvc4Solver::ExprConverter::visit_binop(const SymBoolBinop * const binop) {
  auto left = (*this)(binop->a_);
  auto right = (*this)(binop->b_);

  switch (binop->type()) {
  case SymBool::AND:
    return em_.mkExpr(kind::AND, left, right);
  case SymBool::IFF:
    return em_.mkExpr(kind::EQUAL, left, right);
  case SymBool::IMPLIES:
    return em_.mkExpr(kind::IMPLIES, left, right);
  case SymBool::OR:
    return em_.mkExpr(kind::OR, left, right);
  case SymBool::XOR:
    return em_.mkExpr(kind::XOR, left, right);
  default:
    error_ = "Unexpected bool type: " + to_string(binop->type());
    assert(false);
  }
  assert(false);
  return em_.mkExpr(kind::AND, left, right); //keep the compiler happy
}

/** Visit a binop compare  */
Expr Cvc4Solver::ExprConverter::visit_compare(const SymBoolCompare * const compare) {
  auto left = (*this)(compare->a_);
  auto right = (*this)(compare->b_);

  switch (compare->type()) {
  case SymBool::EQ:
    return em_.mkExpr(kind::EQUAL, left, right);
  case SymBool::GE:
    return em_.mkExpr(kind::BITVECTOR_UGE, left, right);
  case SymBool::GT:
    return em_.mkExpr(kind::BITVECTOR_UGT, left, right);
  case SymBool::LE:
    return em_.mkExpr(kind::BITVECTOR_ULE, left, right);
  case SymBool::LT:
    return em_.mkExpr(kind::BITVECTOR_ULT, left, right);
  case SymBool::SIGN_GE:
    return em_.mkExpr(kind::BITVECTOR_SGE, left, right);
  case SymBool::SIGN_GT:
    return em_.mkExpr(kind::BITVECTOR_SGT, left, right);
  case SymBool::SIGN_LE:
    return em_.mkExpr(kind::BITVECTOR_SLE, left, right);
  case SymBool::SIGN_LT:
    return em_.mkExpr(kind::BITVECTOR_SLT, left, right);
  default:
    error_ = "Unexpected compare type: " + to_string(compare->type());
    assert(false);
  }
  assert(false);
  return em_.mkExpr(kind::EQUAL, left, right);
}

/** Visit a bit-vector array lookup */
Expr Cvc4Solver::ExprConverter::visit(const SymBitVectorArrayLookup * const bv) {
  return em_.mkExpr(kind::SELECT, (*this)(bv->a_), (*this)(bv->key_));
}

/** Visit a bit-vector constant */
Expr Cvc4Solver::ExprConverter::visit(const SymBitVectorConstant * const bv) {
  return em_.mkConst(BitVector(bv->size_, bv->constant_));
}

/** Visit a bit-vector extract */
Expr Cvc4Solver::ExprConverter::visit(const SymBitVectorExtract * const bv) {
  return em_.mkExpr(kind::BITVECTOR_EXTRACT,
                    em_.mkConst(BitVectorExtract(bv->high_bit_, bv->low_bit_)), (*this)(bv->bv_));
}

Expr Cvc4Solver::ExprConverter::build_function(const SymBitVectorFunction * const bv) {

  *uninterpreted_ = true;

  auto f = bv->f_;
  auto args = f.args;
  auto ret = f.return_type;

  // get CVC4 representation of the argument/return types
  vector<CVC4::Type> sorts;
  for (uint16_t it : args) {
    sorts.push_back(em_.mkBitVectorType(it));
  }
  auto ret_sort = em_.mkBitVectorType(ret);

  if (sorts.size() == 0) {
    error_ = "Function " + f.name + " has no arguments: " + to_string(sorts.size());
    assert(false);
  }

  if (sorts.size() > 3) {
    error_ = "Function " + f.name + " has too many arguments: " + to_string(sorts.size());
    assert(false);
  }

  auto type = em_.mkFunctionType(sorts, ret_sort);
  return em_.mkVar(f.name, type);

}

/** Visit an uninterpreted function */
Expr Cvc4Solver::ExprConverter::visit(const SymBitVectorFunction * const bv) {

  if (!variables_.count(bv->f_.name)) {
    auto g = build_function(bv);
    variables_[bv->f_.name] = g;
  }
  auto f = variables_[bv->f_.name];

  std::vector<Expr> args;
  for (auto it : bv->args_) {
    args.push_back((*this)(it));
  }

  return em_.mkExpr(kind::APPLY_UF, f, args);
}

/** Visit a bit-vector if-then-else */
Expr Cvc4Solver::ExprConverter::visit(const SymBitVectorIte * const bv) {
  return em_.mkExpr(kind::ITE, (*this)(bv->cond_), (*this)(bv->a_), (*this)(bv->b_));
}

/** Visit a bit-vector sign extension */
Expr Cvc4Solver::ExprConverter::visit(const SymBitVectorSignExtend * const bv) {
  uint16_t size = bv->bv_->width_;
  uint16_t amt = bv->size_ - size;
  return em_.mkExpr(kind::BITVECTOR_SIGN_EXTEND,
                    em_.mkConst(BitVectorSignExtend(amt)), (*this)(bv->bv_));
}

/** Visit a bit-vector variable */
Expr Cvc4Solver::ExprConverter::visit(const SymBitVectorVar * const bv) {
  if (!variables_.count(bv->name_)) {
    auto type = em_.mkBitVectorType(bv->size_);
    auto var = em_.mkVar(bv->name_, type);
    variables_[bv->name_] = var;
    return var;
  } else {
    return variables_[bv->name_];
  }
}

/** Visit a boolean ARRAY EQ */
Expr Cvc4Solver::ExprConverter::visit(const SymBoolArrayEq * const b) {
  auto left = (*this)(b->a_);
  auto right = (*this)(b->b_);

  return em_.mkExpr(kind::EQUAL, left, right);
}

/** Visit a boolean FALSE */
Expr Cvc4Solver::ExprConverter::visit(const SymBoolFalse * const b) {
  return em_.mkConst(false);
}

/** Visit a boolean NOT */
Expr Cvc4Solver::ExprConverter::visit(const SymBoolNot * const b) {
  return em_.mkExpr(kind::NOT, (*this)(b->b_));
}

/** Visit a boolean TRUE */
Expr Cvc4Solver::ExprConverter::visit(const SymBoolTrue * const b) {
  return em_.mkConst(true);
}

/** Visit a boolean VAR */
Expr Cvc4Solver::ExprConverter::visit(const SymBoolVar * const b) {
  if (!variables_.count(b->name_)) {
    auto var = em_.mkVar(b->name_, em_.booleanType());
    variables_[b->name_] = var;
    return var;
  } else {
    return variables_[b->name_];
  }
}

Expr Cvc4Solver::ExprConverter::visit(const SymArrayStore * const bv) {
  return em_.mkExpr(kind::STORE, (*this)(bv->a_), (*this)(bv->key_), (*this)(bv->value_));
}

Expr Cvc4Solver::ExprConverter::visit(const SymArrayVar * const bv) {
  if (!variables_.count(bv->name_)) {
    DEBUG_CVC4(cout << "[cvc4] generating array variable " << bv->name_ << endl;)
    auto type = em_.mkArrayType(em_.mkBitVectorType(bv->key_size_), em_.mkBitVectorType(bv->value_size_));
    auto var = em_.mkVar(bv->name_, type);
    variables_[bv->name_] = var;
    return var;
  } else {
    DEBUG_CVC4(cout << "[cvc4] using array variable " << bv->name_ << endl;)
    return variables_[bv->name_];
  }
}


