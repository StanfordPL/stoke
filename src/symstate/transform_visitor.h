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


#ifndef _STOKE_SRC_SYMSTATE_TRANSFORM_VISITOR
#define _STOKE_SRC_SYMSTATE_TRANSFORM_VISITOR

#include <map>
#include <sstream>

#include "src/symstate/visitor.h"

namespace stoke {

/* Allows transformations on SymBitVector/SymBool ASTs, such as renaming
 * variables or simplification.
 * By default, this visitor visits the whole AST, but does not transform any
 * nodes.  The class also provides make_* methods to create bit vectors and bools
 * of all types (and takes care of memory management by adding them to the
 * current memory manager).
 */
class SymTransformVisitor : public SymVisitor<SymBoolAbstract*, SymBitVectorAbstract*> {

protected:

  void add_to_memory_manager(const SymBitVectorAbstract* ptr) {
    if (SymBitVector::get_memory_manager())
      SymBitVector::get_memory_manager()->add(ptr);
  }

  void add_to_memory_manager(const SymBoolAbstract* ptr) {
    if (SymBool::get_memory_manager())
      SymBool::get_memory_manager()->add(ptr);
  }

public:

  // The make_* functions allow the creation of new bit vectors and bools, and takes
  // care of memory management (by using the memory manager seen last).

  SymBitVectorBinop* make_binop(SymBitVector::Type type, SymBitVectorAbstract* lhs, SymBitVectorAbstract* rhs) {
    SymBitVectorBinop* res = NULL;
    switch (type) {
    case SymBitVector::AND:
      res = new SymBitVectorAnd(lhs, rhs);
      break;
    case SymBitVector::CONCAT:
      res = new SymBitVectorConcat(lhs, rhs);
      break;
    case SymBitVector::DIV:
      res = new SymBitVectorDiv(lhs, rhs);
      break;
    case SymBitVector::MINUS:
      res = new SymBitVectorMinus(lhs, rhs);
      break;
    case SymBitVector::MOD:
      res = new SymBitVectorMod(lhs, rhs);
      break;
    case SymBitVector::MULT:
      res = new SymBitVectorMult(lhs, rhs);
      break;
    case SymBitVector::OR:
      res = new SymBitVectorOr(lhs, rhs);
      break;
    case SymBitVector::PLUS:
      res = new SymBitVectorPlus(lhs, rhs);
      break;
    case SymBitVector::ROTATE_LEFT:
      res = new SymBitVectorRotateLeft(lhs, rhs);
      break;
    case SymBitVector::ROTATE_RIGHT:
      res = new SymBitVectorRotateRight(lhs, rhs);
      break;
    case SymBitVector::SHIFT_RIGHT:
      res = new SymBitVectorShiftRight(lhs, rhs);
      break;
    case SymBitVector::SHIFT_LEFT:
      res = new SymBitVectorShiftLeft(lhs, rhs);
      break;
    case SymBitVector::SIGN_DIV:
      res = new SymBitVectorSignDiv(lhs, rhs);
      break;
    case SymBitVector::SIGN_MOD:
      res = new SymBitVectorSignMod(lhs, rhs);
      break;
    case SymBitVector::SIGN_SHIFT_RIGHT:
      res = new SymBitVectorSignShiftRight(lhs, rhs);
      break;
    case SymBitVector::XOR:
      res = new SymBitVectorXor(lhs, rhs);
      break;
    default:
      std::cerr << "Unexpected bitvector type " << type
                << " in " << __FILE__ << ":" << __LINE__ << std::endl;
      assert(false);
    }
    add_to_memory_manager(res);
    return res;
  }

  SymBoolBinop* make_binop(SymBool::Type type, SymBoolAbstract* lhs, SymBoolAbstract* rhs) {
    SymBoolBinop* res = NULL;
    switch (type) {
    case SymBool::AND:
      res = new SymBoolAnd(lhs, rhs);
      break;
    case SymBool::IFF:
      res = new SymBoolIff(lhs, rhs);
      break;
    case SymBool::IMPLIES:
      res = new SymBoolImplies(lhs, rhs);
      break;
    case SymBool::OR:
      res = new SymBoolOr(lhs, rhs);
      break;
    case SymBool::XOR:
      res = new SymBoolXor(lhs, rhs);
      break;
    default:
      std::cerr << "Unexpected bool type " << type
                << " in " << __FILE__ << ":" << __LINE__ << std::endl;
      assert(false);
    }
    add_to_memory_manager(res);
    return res;
  }

  SymBitVectorUnop* make_unop(SymBitVector::Type type, SymBitVectorAbstract* lhs) {
    SymBitVectorUnop* res = NULL;
    switch (type) {
    case SymBitVector::NOT:
      res = new SymBitVectorNot(lhs);
      break;
    case SymBitVector::U_MINUS:
      res = new SymBitVectorUMinus(lhs);
      break;
    default:
      std::cerr << "Unexpected bitvector type " << type
                << " in " << __FILE__ << ":" << __LINE__ << std::endl;
      assert(false);
    }
    add_to_memory_manager(res);
    return res;
  }

  SymBoolCompare* make_compare(SymBool::Type type, SymBitVectorAbstract* lhs, SymBitVectorAbstract* rhs) {
    SymBoolCompare* res = NULL;
    switch (type) {
    case SymBool::EQ:
      res = new SymBoolEq(lhs, rhs);
      break;
    case SymBool::GE:
      res = new SymBoolGe(lhs, rhs);
      break;
    case SymBool::GT:
      res = new SymBoolGt(lhs, rhs);
      break;
    case SymBool::LE:
      res = new SymBoolLe(lhs, rhs);
      break;
    case SymBool::LT:
      res = new SymBoolLt(lhs, rhs);
      break;
    case SymBool::SIGN_GE:
      res = new SymBoolSignGe(lhs, rhs);
      break;
    case SymBool::SIGN_GT:
      res = new SymBoolSignGt(lhs, rhs);
      break;
    case SymBool::SIGN_LE:
      res = new SymBoolSignLe(lhs, rhs);
      break;
    case SymBool::SIGN_LT:
      res = new SymBoolSignLt(lhs, rhs);
      break;
    default:
      std::cerr << "Unexpected bool type " << type
                << " in " << __FILE__ << ":" << __LINE__ << std::endl;
      assert(false);
    }
    add_to_memory_manager(res);
    return res;
  }

  SymBitVectorConstant* make_bitvector_constant(uint16_t size, uint64_t constant) {
    auto res = new SymBitVectorConstant(size, constant);
    add_to_memory_manager(res);
    return res;
  }
  SymBitVectorExtract* make_bitvector_extract(const SymBitVectorAbstract * const bv, uint16_t high_bit, uint16_t low_bit) {
    auto res = new SymBitVectorExtract(bv, high_bit, low_bit);
    add_to_memory_manager(res);
    return res;
  }
  SymBitVectorFunction* make_bitvector_function(const SymFunction& f, const std::vector<SymBitVectorAbstract *>& args) {
    SymBitVectorFunction* res = NULL;
    if (args.size() == 1) {
      res = new SymBitVectorFunction(f, args[0]);
    } else if (args.size() == 2) {
      res = new SymBitVectorFunction(f, args[0], args[1]);
    } else if (args.size() == 3) {
      res = new SymBitVectorFunction(f, args[0], args[1], args[2]);
    } else if (args.size() == 4) {
      res = new SymBitVectorFunction(f, args[0], args[1], args[2], args[3]);
    } else {
      assert(false);
    }
    add_to_memory_manager(res);
    return res;
  }
  SymBitVectorIte* make_bitvector_ite(const SymBoolAbstract * const cond, const SymBitVectorAbstract * const a, const SymBitVectorAbstract * const b) {
    auto res = new SymBitVectorIte(cond, a, b);
    add_to_memory_manager(res);
    return res;
  }
  SymBitVectorSignExtend* make_bitvector_sign_extend(const SymBitVectorAbstract * const bv, uint16_t size) {
    auto res = new SymBitVectorSignExtend(bv, size);
    add_to_memory_manager(res);
    return res;
  }
  SymBitVectorVar* make_bitvector_var(uint16_t size, const std::string name) {
    auto res = new SymBitVectorVar(size, name);
    add_to_memory_manager(res);
    return res;
  }

  SymBoolFalse* make_bool_false() {
    auto res = new SymBoolFalse();
    add_to_memory_manager(res);
    return res;
  }
  SymBoolNot* make_bool_not(const SymBoolAbstract* b) {
    auto res = new SymBoolNot(b);
    add_to_memory_manager(res);
    return res;
  }
  SymBoolTrue* make_bool_true() {
    auto res = new SymBoolTrue();
    add_to_memory_manager(res);
    return res;
  }
  SymBoolVar* make_bool_var(const std::string name) {
    auto res = new SymBoolVar(name);
    add_to_memory_manager(res);
    return res;
  }


  SymBitVectorAbstract* visit_binop(const SymBitVectorBinop * const bv) {
    auto lhs = (*this)(bv->a_);
    auto rhs = (*this)(bv->b_);
    if (lhs == bv->a_ && rhs == bv->b_) {
      return (SymBitVectorBinop*)bv;
    }
    return make_binop(bv->type(), lhs, rhs);
  }

  SymBoolAbstract* visit_binop(const SymBoolBinop * const bv) {
    auto lhs = (*this)(bv->a_);
    auto rhs = (*this)(bv->b_);
    if (lhs == bv->a_ && rhs == bv->b_) {
      return (SymBoolBinop*)bv;
    }
    return make_binop(bv->type(), lhs, rhs);
  }

  SymBitVectorAbstract* visit_unop(const SymBitVectorUnop * const bv) {
    auto lhs = (*this)(bv->bv_);
    if (lhs == bv->bv_) {
      return (SymBitVectorAbstract*)bv;
    }
    return make_unop(bv->type(), lhs);
  }

  SymBoolAbstract* visit_compare(const SymBoolCompare * const bv) {
    auto lhs = (*this)(bv->a_);
    auto rhs = (*this)(bv->b_);
    if (lhs == bv->a_ && rhs == bv->b_) {
      return (SymBoolCompare*)bv;
    }
    return make_compare(bv->type(), lhs, rhs);
  }

  SymBitVectorAbstract* visit(const SymBitVectorConstant * const bv) {
    return (SymBitVectorAbstract*)bv;
  }

  SymBitVectorAbstract* visit(const SymBitVectorExtract * const bv) {
    auto lhs = (*this)(bv->bv_);
    if (lhs == bv->bv_) {
      return (SymBitVectorExtract*)bv;
    }
    return make_bitvector_extract(lhs, bv->high_bit_, bv->low_bit_);
  }

  SymBitVectorAbstract* visit(const SymBitVectorFunction * const bv) {
    std::vector<SymBitVectorAbstract*> args;
    bool same = true;
    for (size_t i = 0; i < bv->args_.size(); ++i) {
      auto arg = (*this)(bv->args_[i]);
      args.push_back(arg);
      if (arg != bv->args_[i]) same = false;
    }

    if (same) return (SymBitVectorFunction*) bv;

    return make_bitvector_function(bv->f_, args);
  }

  SymBitVectorAbstract* visit(const SymBitVectorIte * const bv) {
    auto c = (*this)(bv->cond_);
    auto lhs = (*this)(bv->a_);
    auto rhs = (*this)(bv->b_);
    if (lhs == bv->a_ && rhs == bv->b_ && c == bv->cond_) {
      return (SymBitVectorIte*)bv;
    }
    SymBitVectorIte* res = NULL;
    return make_bitvector_ite(c, lhs, rhs);
  }

  SymBitVectorAbstract* visit(const SymBitVectorSignExtend * const bv) {
    auto lhs = (*this)(bv->bv_);
    if (lhs == bv->bv_) {
      return (SymBitVectorSignExtend*)bv;
    }
    return make_bitvector_sign_extend(lhs, bv->size_);
  }

  SymBitVectorAbstract* visit(const SymBitVectorVar * const bv) {
    return (SymBitVectorAbstract*) bv;
  }

  SymBoolAbstract* visit(const SymBoolFalse * const b) {
    return (SymBoolAbstract*) b;
  }

  SymBoolAbstract* visit(const SymBoolNot * const b) {
    auto lhs = (*this)(b->b_);
    if (lhs == b->b_) {
      return (SymBoolNot*)b;
    }
    return make_bool_not(lhs);
  }

  SymBoolAbstract* visit(const SymBoolTrue * const b) {
    return (SymBoolAbstract*) b;
  }

  SymBoolAbstract* visit(const SymBoolVar * const b) {
    return (SymBoolAbstract*) b;
  }

};

} //namespace

#endif
