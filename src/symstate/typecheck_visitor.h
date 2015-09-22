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


#ifndef _STOKE_SRC_SYMSTATE_TYPECHECK_VISITOR
#define _STOKE_SRC_SYMSTATE_TYPECHECK_VISITOR

#include <map>
#include <sstream>

#include "src/symstate/visitor.h"

namespace stoke {

/* This visitor returns the size of a bitvector, and also checks
   that it's well-formed.  If it's not well-formed, it returns
   size 0. */
class SymTypecheckVisitor : public SymVisitor<uint16_t> {

public:

  /** Typecheck this abstract symbolic bit vector */
  // (don't use this inside the class because it clears error message)
  uint16_t operator()(const SymBitVector& bv) {
    error_ = "";
    return SymVisitor<uint16_t>::operator()(bv);
  }
  /** Typecheck this abstract symbolic bool */
  // (don't use this inside the class because it clears error message)
  uint16_t operator()(const SymBool& b) {
    error_ = "";
    return SymVisitor<uint16_t>::operator()(b);
  }

  /* Visit a generic binary operator */
  uint16_t visit_binop(const SymBitVectorBinop * const bv) {

    auto lhs = apply(bv->a_);
    auto rhs = apply(bv->b_);

    if (lhs == rhs)
      return lhs;
    else {
      std::stringstream e;
      SymPrintVisitor pv(e);
      e << "In binop: ";
      pv(bv);
      e << " the LHS has width " << lhs
        << " but RHS has width " << rhs;
      set_error(e);
      return 0;
    }
  }

  /* Visit a generic binary operator on bool*/
  uint16_t visit_binop(const SymBoolBinop * const b) {

    auto lhs = apply(b->a_);
    auto rhs = apply(b->b_);

    if (lhs && rhs)
      return 1;
    else
      return 0;
  }

  /** Visit a bit-vector EQ */
  uint16_t visit_compare(const SymBoolCompare * const b) {
    auto lhs = apply(b->a_);
    auto rhs = apply(b->b_);

    if (lhs == rhs && lhs)
      return 1;
    else if (lhs != rhs) {
      std::stringstream e;
      SymPrintVisitor pv(e);
      e << "In compare: ";
      pv(b);
      e << " the LHS has width " << lhs
        << " but RHS has width " << rhs;
      set_error(e);
      return 0;
    } else if (!lhs) {
      std::stringstream e;
      SymPrintVisitor pv(e);
      e << "In compare: ";
      pv(b);
      e << " the LHS does not typecheck.";
      set_error(e);
      return 0;
    }
    return 0;
  }

  /** Visit a bit-vector unary operator */
  uint16_t visit_unop(const SymBitVectorUnop * const bv) {
    return apply(bv->bv_);
  }

  /** Visit a bit-vector concatenation.  Note, different than other
      binary operators because the lengths change. */
  uint16_t visit(const SymBitVectorConcat * const bv) {

    auto lhs = apply(bv->a_);
    auto rhs = apply(bv->b_);

    if (lhs && rhs)
      return lhs + rhs;
    else {
      std::stringstream e;
      SymPrintVisitor pv(e);
      e << "In concatenation: ";
      pv(bv);
      if (!lhs)
        e << " the left hand side didn't typecheck";
      else if (!rhs)
        e << " the right hand side didn't typecheck";
      else
        e << " neither argument typechecked";
      set_error(e);
      return 0;
    }
  }

  /** Visit a bit-vector constant */
  uint16_t visit(const SymBitVectorConstant * const bv) {

    if (bv->size_ == 0) {
      std::stringstream e;
      e << "Bitvector constant " << bv->constant_ << " has size 0.";
      set_error(e);
      return 0;
    } else {
      return bv->size_;
    }
  }

  /** Visit a bit-vector extract */
  uint16_t visit(const SymBitVectorExtract * const bv) {
    auto parent = apply(bv->bv_);
    if (bv->low_bit_ > bv->high_bit_) {
      std::stringstream e;
      SymPrintVisitor pv(e);
      e << "In bitvector extract ";
      pv(bv);
      e << " the low index " << bv->low_bit_
        << " is greater than high index " << bv->high_bit_;
      set_error(e);
      return 0;
    }
    if (bv->high_bit_ >= parent) {
      std::stringstream e;
      SymPrintVisitor pv(e);
      e << "In bitvector extract ";
      pv(bv);
      e << " the high index " << bv->high_bit_
        << " is greater than width of parent, namely " << parent;
      set_error(e);
      return 0;
    }
    return (bv->high_bit_ - bv->low_bit_ + 1);
  }

  /** Visit a function application */
  uint16_t visit(const SymBitVectorFunction * const bv) {
    SymFunction f = bv->f_;
    std::string name = f.name;

    auto type = function_type(f.return_type, f.args);

    // Check if we've seen this function before
    auto p = functions_[name];
    if (p.first) {
      // Verify the same type as before
      if (type != p) {
        std::stringstream e;
        SymPrintVisitor pv(e);
        e << "The function " << name << " declared with two different types.  "
          << "The first time it had type (";
        for (size_t i = 0; i < p.second.size(); ++i) {
          e << p.second[i];
          if (i != p.second.size() - 1)
            e << ", ";
        }
        e << ") -> " << p.first << std::endl;
        e << "while in ";
        pv(bv);
        e << " it has type (";
        for (size_t i = 0; i < type.second.size(); ++i) {
          e << type.second[i];
          if (i != type.second.size() - 1)
            e << ", ";
        }
        e << ") => " << type.first;
        set_error(e);
        return 0;
      }
    } else {
      // Insert this function into our table
      functions_[name] = type;
    }

    // Check there are the right number of arguments.
    if (bv->args_.size() != type.second.size()) {
      std::stringstream e;
      SymPrintVisitor pv(e);
      e << "In ";
      pv(bv);
      e << " the type of " << name << " has " << type.second.size()
        << " arguments but there are actually " << bv->args_.size();
      set_error(e);
      return 0;
    }

    // Check the arguments are of the right type
    for (size_t i = 0; i < type.second.size(); ++i) {
      auto t = apply(bv->args_[i]);
      if (t != type.second[i]) {
        std::stringstream e;
        SymPrintVisitor pv(e);
        e << "In ";
        pv(bv);
        e << " the width of argument " << i << " was declared " << type.second[i]
          << " but is actually " << t;
        set_error(e);
        return 0;
      }
    }

    return type.first;
  }

  /** Visit a bit-vector if-then-else */
  uint16_t visit(const SymBitVectorIte * const bv) {
    auto cond = apply(bv->cond_);
    auto lhs = apply(bv->a_);
    auto rhs = apply(bv->b_);

    if (lhs == rhs && cond)
      return lhs;
    else {
      std::stringstream e;
      SymPrintVisitor pv(e);
      e << "In ite: ";
      pv(bv);
      e << " the true branch has width " << lhs
        << " but the false branch has width " << rhs;
      set_error(e);
      return 0;
    }
  }

  /** Visit a bit-vector unary minus */
  uint16_t visit(const SymBitVectorSignExtend * const bv) {
    auto child = apply(bv->bv_);

    if (child <= bv->size_ && child > 0 && bv->size_ > 0)
      return bv->size_;
    else if (bv->size_ == 0) {
      std::stringstream e;
      SymPrintVisitor pv(e);
      e << "In sign-extend: ";
      pv(bv);
      e << " the extension is to length 0";
      set_error(e);
      return 0;
    } else if (child > bv->size_) {
      std::stringstream e;
      SymPrintVisitor pv(e);
      e << "In sign-extend: ";
      pv(bv);
      e << " the vector has width " << child
        << " and cannot be extended to " << bv->size_;
      set_error(e);
      return 0;
    } else {
      std::stringstream e;
      SymPrintVisitor pv(e);
      e << "In sign-extend: ";
      pv(bv);
      e << " the vector could not be typechecked.";
      set_error(e);
      return 0;
    }
  }

  /** Visit a bit-vector variable */
  uint16_t visit(const SymBitVectorVar * const bv) {
    return bv->size_;
  }
  /** Visit a boolean FALSE */
  uint16_t visit(const SymBoolFalse * const b) {
    return 1;
  }
  /** Visit a boolean NOT */
  uint16_t visit(const SymBoolNot * const b) {
    return apply(b->b_);
  }
  /** Visit a boolean TRUE */
  uint16_t visit(const SymBoolTrue * const b) {
    return 1;
  }
  /** Visit a boolean VAR */
  uint16_t visit(const SymBoolVar * const b) {
    return 1;
  }


  /** Check if an error message was recorded on the last typecheck */
  bool has_error() const {
    return error_.size() > 0;
  }
  /** Get the last recorded error message */
  std::string error() const {
    return error_;
  }

private:

  /** Recurse without clearing error message */
  uint16_t apply(const SymBitVector& bv) {
    return SymVisitor<uint16_t>::operator()(bv);
  }
  uint16_t apply(const SymBool& b) {
    return SymVisitor<uint16_t>::operator()(b);
  }
  uint16_t apply(const SymBitVectorAbstract * const bv) {
    return SymVisitor<uint16_t>::operator()(bv);
  }
  uint16_t apply(const SymBoolAbstract * const b) {
    return SymVisitor<uint16_t>::operator()(b);
  }

  /** Tracks the first error that occurred in typechecking */
  std::string error_;

  /** Sets the error message, *unless* it was already set. */
  void set_error(const std::string& e) {
    if (error_.size() == 0)
      error_ = e;
  }
  /** Sets the error message, *unless* it was already set. */
  void set_error(const std::stringstream& e) {
    if (error_.size() == 0)
      error_ = e.str();
  }

  /** Keeps track of the arities of different functions
      (and where we get this info from) */
  typedef std::pair<uint16_t, std::vector<uint16_t>> function_type;
  std::map<std::string, function_type> functions_;

};

} //namespace

#endif
