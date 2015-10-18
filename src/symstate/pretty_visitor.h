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


#ifndef _STOKE_SRC_SYMSTATE_PRETTY_VISITOR
#define _STOKE_SRC_SYMSTATE_PRETTY_VISITOR

#include <sstream>

#include "src/symstate/visitor.h"

namespace stoke {

/** A class to print symbolic formulas in a nicely readable way. */
class SymPrettyVisitor : public SymVisitor<void, void> {

// the implementation loosely follows https://gist.github.com/kputnam/5625856

#define SYMSTATE_PRETTY_MAX_LEVEL 1000

public:
  SymPrettyVisitor(std::ostream& os) : os_(os), level_(SYMSTATE_PRETTY_MAX_LEVEL) {}

  void visit_binop(const SymBitVectorBinop * const e) {
    auto a = e->a_;
    auto b = e->b_;

    switch (e->type()) {
    case SymBitVector::AND:
      left_assoc(level_, e, "&", a, b);
      break;
    case SymBitVector::CONCAT:
      left_assoc(level_, e, "∘", a, b);
      break;
    case SymBitVector::DIV:
      left_assoc(level_, e, "/", a, b);
      break;
    case SymBitVector::MINUS:
      left_assoc(level_, e, "-", a, b);
      break;
    case SymBitVector::MOD:
      left_assoc(level_, e, "%", a, b);
      break;
    case SymBitVector::MULT:
      left_assoc(level_, e, "*", a, b);
      break;
    case SymBitVector::OR:
      left_assoc(level_, e, "|", a, b);
      break;
    case SymBitVector::PLUS:
      left_assoc(level_, e, "+", a, b);
      break;
    case SymBitVector::ROTATE_LEFT:
      left_assoc(level_, e, "rot_left", a, b);
      break;
    case SymBitVector::ROTATE_RIGHT:
      left_assoc(level_, e, "rot_right", a, b);
      break;
    case SymBitVector::SHIFT_LEFT:
      left_assoc(level_, e, "<<", a, b);
      break;
    case SymBitVector::SHIFT_RIGHT:
      left_assoc(level_, e, ">>", a, b);
      break;
    case SymBitVector::SIGN_DIV:
      left_assoc(level_, e, "signed_div", a, b);
      break;
    case SymBitVector::SIGN_MOD:
      left_assoc(level_, e, "signed_mod", a, b);
      break;
    case SymBitVector::SIGN_SHIFT_RIGHT:
      left_assoc(level_, e, "sign_shift_right", a, b);
      break;
    case SymBitVector::XOR:
      left_assoc(level_, e, "⊕", a, b);
      break;
    default:
      os_ << "(UNHANDLED_BINOP" << e->type() << " ";
      assert(false);
    }

    reset();
  }

  /* Visit a binop on a bool */
  void visit_binop(const SymBoolBinop * const e) {

    auto a = e->a_;
    auto b = e->b_;

    switch (e->type()) {
    case SymBool::AND:
      left_assoc(level_, e, "∧", a, b);
      break;
    case SymBool::IFF:
      left_assoc(level_, e, "↔", a, b);
      break;
    case SymBool::IMPLIES:
      left_assoc(level_, e, "→", a, b);
      break;
    case SymBool::OR:
      left_assoc(level_, e, "∨", a, b);
      break;
    case SymBool::XOR:
      left_assoc(level_, e, "⊕", a, b);
      break;
    default:
      os_ << "(UNHANDLED_BINOP" << e->type() << " ";
      assert(false);
    }

    reset();
  }


  void visit_unop(const SymBitVectorUnop * const bv) {

    switch (bv->type()) {
    case SymBitVector::NOT:
      prefix(level_, bv, "!", bv->bv_);
      break;
    case SymBitVector::U_MINUS:
      prefix(level_, bv, "-", bv->bv_);
      break;
    default:
      os_ << "UNHANDLED_UNOP" << bv->type() << " ";
      assert(false);
    }

    reset();
  }


  void visit_compare(const SymBoolCompare * const e) {

    auto a = e->a_;
    auto b = e->b_;

    switch (e->type()) {
    case SymBool::EQ:
      left_assoc(level_, e, "=", a, b);
      break;
    case SymBool::GE:
    case SymBool::SIGN_GE:
      left_assoc(level_, e, "≥", a, b);
      break;
    case SymBool::GT:
    case SymBool::SIGN_GT:
      left_assoc(level_, e, ">", a, b);
      break;
    case SymBool::LE:
    case SymBool::SIGN_LE:
      left_assoc(level_, e, "≤", a, b);
      break;
    case SymBool::LT:
    case SymBool::SIGN_LT:
      left_assoc(level_, e, "<", a, b);
      break;
    default:
      os_ << "(UNHANDLED_COMPARE" << e->type() << " ";
      assert(false);
    }
    reset();
  }

  /** Visit a bit-vector constant */
  void visit(const SymBitVectorConstant * const bv) {
    os_ << "0x" << std::hex << bv->constant_ << small_num(bv->size_);
    reset();
  }

  /** Visit a bit-vector extract */
  void visit(const SymBitVectorExtract * const bv) {
    postfix_brackets(level_, (const SymBitVectorAbstract * const) bv, bv->bv_, bv->high_bit_, bv->low_bit_);
    reset();
  }

  /** Visit a bit-vector function */
  void visit(const SymBitVectorFunction * const bv) {
    function(level_, bv, bv->f_.name, bv->args_);
    reset();
  }

  /** Visit a bit-vector if-then-else */
  void visit(const SymBitVectorIte * const bv) {

    int l = get_level(bv);
    if (level_ <= l) {
      parens(l, bv);
    } else {
      pretty(l, bv->cond_);
      os_ << " ? ";
      pretty(l, bv->a_);
      os_ << " : ";
      pretty(l, bv->b_);
    }
    reset();
  }

  /** Visit a bit-vector sign-extend */
  void visit(const SymBitVectorSignExtend * const bv) {
    int l = get_level(bv);
    if (level_ < l) {
      parens(l, bv);
    } else {
      os_ << "sign-extend-" << bv->size_ << "(";
      pretty(SYMSTATE_PRETTY_MAX_LEVEL, bv->bv_);
      os_ << ")";
    }
    reset();
  }

  /** Visit a bit-vector variable */
  void visit(const SymBitVectorVar * const bv) {
    os_ << bv->name_ << small_num(bv->size_);
    reset();
  }

  /** Visit a boolean FALSE */
  void visit(const SymBoolFalse * const b) {
    os_ << "false";
    reset();
  }

  /** Visit a boolean NOT */
  void visit(const SymBoolNot * const b) {
    prefix(level_, (const SymBoolAbstract * const)b, "!", b->b_);
    reset();
  }

  /** Visit a boolean TRUE */
  void visit(const SymBoolTrue * const b) {
    os_ << "true";
    reset();
  }

  /** Visit a boolean VAR */
  void visit(const SymBoolVar * const b) {
    os_ << b->name_;
    reset();
  }

private:
  std::ostream& os_;
  int level_;

  void reset() {
    level_ = SYMSTATE_PRETTY_MAX_LEVEL;
  }

  std::string small_num(uint num) {
    auto s = std::to_string(num);
    std::stringstream ss;
    for (auto c : s) {
      if (c == '0') ss << "₀";
      else if (c == '1') ss << "₁";
      else if (c == '2') ss << "₂";
      else if (c == '3') ss << "₃";
      else if (c == '4') ss << "₄";
      else if (c == '5') ss << "₅";
      else if (c == '6') ss << "₆";
      else if (c == '7') ss << "₇";
      else if (c == '8') ss << "₈";
      else if (c == '9') ss << "₉";
      else ss << c;
    }
    return ss.str();
  }

  template <typename T>
  void pretty(int level, T e) {
    level_ = level;
    (*this)(e);
  }

  template <typename T>
  void parens(int level, T e) {
    os_ << "(";
    pretty(level, e);
    os_ << ")";
  }

  template <typename T, typename S>
  void function(int level, T e, std::string name, const std::vector<S>& args) {
    int l = get_level(e);
    if (level < l) {
      parens(l, e);
    } else {
      os_ << name << "(";
      for (size_t i = 0; i < args.size(); ++i) {
        pretty(SYMSTATE_PRETTY_MAX_LEVEL, args[i]);
        if (i != args.size() - 1)
          os_ << ", ";
      }
      os_ << ")";
    }
  }

  template <typename T, typename S>
  void prefix(int level, T e, std::string op, S sube) {
    int l = get_level(e);
    if (level < l) {
      parens(l, e);
    } else {
      os_ << op;
      special(l, sube);
    }
  }

  template <typename T, typename S>
  void postfix_brackets(int level, T e, S sube, uint16_t from, uint16_t to) {
    int l = get_level(e);
    if (level < l) {
      parens(l, e);
    } else {
      pretty(l, sube);
      os_ << "[" << std::dec << from << ":" << to << "]";
    }
  }

  template <typename T, typename S>
  void left_assoc(int level, T e, std::string op, S a, S b) {
    int l = get_level(e);
    if (level < l) {
      parens(l, e);
    } else {
      pretty(l, a);
      os_ << " " << op << " ";
      special(l, b);
    }
  }

  template <typename T, typename S>
  void right_assoc(int level, T e, std::string op, S a, S b) {
    int l = get_level(e);
    if (level < l) {
      parens(l, e);
    } else {
      special(l, a);
      os_ << " " << op << " ";
      pretty(l, b);
    }
  }

  template <typename T>
  void special(int level, T e) {
    int l = get_level(e);
    if (level <= l) {
      parens(l, e);
    } else {
      pretty(l, e);
    }
  }

  // precedence

  int get_level(const SymBitVector& bv) {
    return get_level(bv.ptr);
  }
  int get_level(const SymBitVectorAbstract * const bv) {
    switch (bv->type()) {
    case SymBitVector::CONSTANT:
      return 0;
    case SymBitVector::VAR:
      return 0;
    case SymBitVector::FUNCTION:
      return 10;
    case SymBitVector::SIGN_EXTEND:
      return 10;
    case SymBitVector::EXTRACT:
      return 20;
    case SymBitVector::NOT:
      return 30;
    case SymBitVector::U_MINUS:
      return 30;
    case SymBitVector::DIV:
      return 40;
    case SymBitVector::MOD:
      return 40;
    case SymBitVector::MULT:
      return 40;
    case SymBitVector::SIGN_DIV:
      return 40;
    case SymBitVector::SIGN_MOD:
      return 40;
    case SymBitVector::MINUS:
      return 50;
    case SymBitVector::PLUS:
      return 50;
    case SymBitVector::ROTATE_LEFT:
      return 60;
    case SymBitVector::ROTATE_RIGHT:
      return 60;
    case SymBitVector::SHIFT_RIGHT:
      return 60;
    case SymBitVector::SHIFT_LEFT:
      return 60;
    case SymBitVector::SIGN_SHIFT_RIGHT:
      return 60;
    case SymBitVector::AND:
      return 90;
    case SymBitVector::XOR:
      return 100;
    case SymBitVector::OR:
      return 110;
    case SymBitVector::CONCAT:
      return 35; // 140
    case SymBitVector::ITE:
      return 150;
    default:
      std::cerr << "Unexpected bitvector type " << bv->type()
                << " in " << __FILE__ << ":" << __LINE__ << std::endl;
      assert(false);
    }
    assert(false);
    return 0;
  }
  int get_level(const SymBool& b) {
    return get_level(b.ptr);
  }
  int get_level(const SymBoolAbstract * const b) {
    switch (b->type()) {
    case SymBool::FALSE:
      return 0;
    case SymBool::TRUE:
      return 0;
    case SymBool::VAR:
      return 0;
    case SymBool::NOT:
      return 30;
    case SymBool::GE:
      return 70;
    case SymBool::GT:
      return 70;
    case SymBool::LE:
      return 70;
    case SymBool::LT:
      return 70;
    case SymBool::SIGN_GE:
      return 70;
    case SymBool::SIGN_GT:
      return 70;
    case SymBool::SIGN_LE:
      return 70;
    case SymBool::SIGN_LT:
      return 70;
    case SymBool::EQ:
      return 80;
    case SymBool::AND:
      return 90;
    case SymBool::XOR:
      return 100;
    case SymBool::OR:
      return 110;
    case SymBool::IMPLIES:
      return 120;
    case SymBool::IFF:
      return 130;
    default:
      std::cerr << "Unexpected bool type " << b->type()
                << " in " << __FILE__ << ":" << __LINE__ << std::endl;
      assert(false);
    }
    assert(false);
    return 0;
  }

};

} //namespace

#endif
