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


#ifndef _STOKE_SRC_SOLVER_Z3SOLVER_H
#define _STOKE_SRC_SOLVER_Z3SOLVER_H

#include <map>

#include "src/ext/z3/src/api/c++/z3++.h"
#include "src/solver/smtsolver.h"
#include "src/symstate/bitvector.h"

namespace stoke {

class Z3Solver : public SMTSolver {


public:
  /** Instantiate a new Z3 solver */
  Z3Solver() : SMTSolver() {
    model_ = NULL;
  }

  ~Z3Solver() {
    if(model_ != NULL)
      delete model_;
  }

  /** Check if a query is satisfiable given constraints */
  bool is_sat(const std::vector<SymBool>& constraints);

  /** Check if a satisfying assignment is available. */
  bool has_model() const {
    return model_ && (model_->num_funcs() == 0);
  }
  /** Get the satisfying assignment for a bit-vector from the model. */
  cpputil::BitVector get_model_bv(const std::string& var, uint16_t octs);
  /** Get the satisfying assignment for a bit from the model. */
  bool get_model_bool(const std::string& var);

private:

  /** The Z3 context we're working with */
  z3::context context_;

  /** Stores the most recent satisfying assignment */
  z3::model* model_;

  /** Helper function to build a string symbol */
  z3::symbol get_symbol(std::string s) {
    return context_.str_symbol(s.c_str());
  }


  /** This class converts symbolic bit-vectors into Z3's format. */
  class ExprConverter : public SymVisitor<z3::expr> {

  public:
    ExprConverter(z3::context& cntx, std::vector<SymBool>& constraints)
      : context_(cntx), constraints_(constraints) {}

    z3::expr visit_binop(const SymBitVectorBinop * const bv) {
      // We can't support anything generically.  Error!
      // This will almost definitely segfault.  We need better error handling here.
      error_ = "Unsupported binop: " + std::to_string(bv->type());
      assert(false);
      return context_.bv_val(0,0);
    }
    z3::expr visit_binop(const SymBoolBinop * const b) {
      // We can't support anything generically.  Error!
      // This will almost definitely segfault.  We need better error handling here.
      error_ = "Unsupported binop: " + std::to_string(b->type());
      assert(false);
      return context_.bv_val(0,0);
    }
    z3::expr visit_unop(const SymBitVectorUnop * const bv) {
      error_ = "Unsupported unop: " + std::to_string(bv->type());
      assert(false);
      return (*this)(bv->bv_);
    }
    z3::expr visit_compare(const SymBoolCompare * const b) {
      error_ = "Unsupported compare: " + std::to_string(b->type());
      assert(false);
      return context_.bv_val(0,0);
    }

    /** Visit some bit vector */
    z3::expr operator()(const SymBitVector& bv) {
      error_ = "";
      return SymVisitor<z3::expr>::operator()(bv.ptr);
    }
    /** Visit some bit bool */
    z3::expr operator()(const SymBool& b) {
      error_ = "";
      return SymVisitor<z3::expr>::operator()(b.ptr);
    }

    /** Visit a bit-vector AND */
    z3::expr visit(const SymBitVectorAnd * const bv);
    /** Visit a bit-vector concatenation */
    z3::expr visit(const SymBitVectorConcat * const bv);
    /** Visit a bit-vector constant */
    z3::expr visit(const SymBitVectorConstant * const bv);
    /** Visit a bit-vector div */
    z3::expr visit(const SymBitVectorDiv * const bv);
    /** Visit a bit-vector extract */
    z3::expr visit(const SymBitVectorExtract * const bv);
    /** Visit a bit-vector function */
    z3::expr visit(const SymBitVectorFunction * const bv);
    /** Visit a bit-vector if-then-else */
    z3::expr visit(const SymBitVectorIte * const bv);
    /** Visit a bit-vector minus */
    z3::expr visit(const SymBitVectorMinus * const bv);
    /** Visit a bit-vector mod */
    z3::expr visit(const SymBitVectorMod * const bv);
    /** Visit a bit-vector mult */
    z3::expr visit(const SymBitVectorMult * const bv);
    /** Visit a bit-vector NOT */
    z3::expr visit(const SymBitVectorNot * const bv);
    /** Visit a bit-vector OR */
    z3::expr visit(const SymBitVectorOr * const bv);
    /** Visit a bit-vector plus */
    z3::expr visit(const SymBitVectorPlus * const bv);
    /** Visit a bit-vector shift-left */
    z3::expr visit(const SymBitVectorRotateLeft * const bv);
    /** Visit a bit-vector shift-right */
    z3::expr visit(const SymBitVectorRotateRight * const bv);
    /** Visit a bit-vector shift-left */
    z3::expr visit(const SymBitVectorShiftLeft * const bv);
    /** Visit a bit-vector shift-right */
    z3::expr visit(const SymBitVectorShiftRight * const bv);
    /** Visit a bit-vector signed divide */
    z3::expr visit(const SymBitVectorSignDiv * const bv);
    /** Visit a bit-vector sign-extend */
    z3::expr visit(const SymBitVectorSignExtend * const bv);
    /** Visit a bit-vector signed mod */
    z3::expr visit(const SymBitVectorSignMod * const bv);
    /** Visit a bit-vector signed shift-right */
    z3::expr visit(const SymBitVectorSignShiftRight * const bv);
    /** Visit a bit-vector unary minus */
    z3::expr visit(const SymBitVectorUMinus * const bv);
    /** Visit a bit-vector variable */
    z3::expr visit(const SymBitVectorVar * const bv);
    /** Visit a bit-vector XOR */
    z3::expr visit(const SymBitVectorXor * const bv);

    /** Visit a bit-vector EQ */
    z3::expr visit(const SymBoolEq * const b);
    /** Visit a bit-vector Ge */
    z3::expr visit(const SymBoolGe * const b);
    /** Visit a bit-vector Gt */
    z3::expr visit(const SymBoolGt * const b);
    /** Visit a bit-vector LE */
    z3::expr visit(const SymBoolLe * const b);
    /** Visit a bit-vector LT */
    z3::expr visit(const SymBoolLt * const b);
    /** Visit a bit-vector Ge */
    z3::expr visit(const SymBoolSignGe * const b);
    /** Visit a bit-vector Gt */
    z3::expr visit(const SymBoolSignGt * const b);
    /** Visit a bit-vector LE */
    z3::expr visit(const SymBoolSignLe * const b);
    /** Visit a bit-vector LT */
    z3::expr visit(const SymBoolSignLt * const b);


    /** Visit a boolean AND */
    z3::expr visit(const SymBoolAnd * const b);
    /** Visit a boolean FALSE */
    z3::expr visit(const SymBoolFalse * const b);
    /** Visit a boolean IFF */
    z3::expr visit(const SymBoolIff * const b);
    /** Visit a boolean implies */
    z3::expr visit(const SymBoolImplies * const b);
    /** Visit a boolean NOT */
    z3::expr visit(const SymBoolNot * const b);
    /** Visit a boolean OR */
    z3::expr visit(const SymBoolOr * const b);
    /** Visit a boolean TRUE */
    z3::expr visit(const SymBoolTrue * const b);
    /** Visit a boolean VAR */
    z3::expr visit(const SymBoolVar * const b);
    /** Visit a boolean XOR */
    z3::expr visit(const SymBoolXor * const b);

    /** See if there's an error */
    bool has_error() {
      return error_.size() > 0;
    }
    /** Get the error */
    std::string error() {
      return error_;
    }

  private:

    /** Helper function to build a string symbol */
    z3::symbol get_symbol(std::string s) {
      return context_.str_symbol(s.c_str());
    }

    /** Constraints that we can add to */
    std::vector<SymBool>& constraints_;

    z3::context& context_;

    std::string error_;
  };
};

} //namespace stoke

#endif
