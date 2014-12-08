// Copyright 2013-2015 Eric Schkufza, Rahul Sharma, Berkeley Churchill, Stefan Heule
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

#include "src/validator/legacy/c_interface.h"
#include "src/validator/error.h"
#include <iostream>

using namespace std;
using namespace stoke;


// Basic types
Type vc_boolType() {
  return 0;
}

Type vc_bvType(int no_bits) {
  if(no_bits == 0)
    throw VALIDATOR_ERROR("vc_bvType called with no_bits = 0");
  return no_bits;
}



/////////////////////////////////////////////////////////////////////////////
// Expr manipulation methods                                               //
/////////////////////////////////////////////////////////////////////////////


//! Create an equality expression.  The two children must have the same type.
SymBool vc_eqExpr(Expr child0, Expr child1) {
  return child0==child1;
}

// Boolean expressions

// The following functions create Boolean expressions.  The children
// provided as arguments must be of type Boolean (except for the
// function vc_iteExpr(). In the case of vc_iteExpr() the
// conditional must always be Boolean, but the ifthenpart
// (resp. elsepart) can be bit-vector or Boolean type. But, the
// ifthenpart and elsepart must be both of the same type)
Expr vc_andExpr(Expr left, Expr right) {
  return left & right;
}
Expr vc_orExpr(Expr left, Expr right) {
  return left | right;
}
Expr vc_xorExpr(Expr left, Expr right) {
  return left ^ right;
}
SymBool vc_impliesExpr(SymBool hyp, SymBool conc) {
  return hyp.implies(conc);
}
SymBool vc_iffExpr(Expr left, Expr right) {
  return left==right;
}
//The output type of vc_iteExpr can be Boolean (formula-level ite)
//or bit-vector (word-level ite)
Expr vc_iteExpr(SymBool conditional, Expr ifthenpart, Expr elsepart) {
  return SymBitVector::ite(conditional, ifthenpart, elsepart);
}
SymBool vc_iteExpr(SymBool cond, SymBool a, SymBool b) {
  return (cond & a) | (!cond & b);
}

//Boolean to single bit BV Expression
Expr vc_boolToBVExpr(SymBool from) {
  return SymBitVector::from_bool(from);
}


/**************************/
/* BIT VECTOR OPERATIONS  */
/**************************/
Expr vc_bvConstExprFromInt(int n_bits, unsigned int value) {
  if(n_bits == 0)
    throw VALIDATOR_ERROR("vc_bcConstExprFromInt called with n_bits = 0");
  return SymBitVector::constant(n_bits, value);
}

Expr vc_bvConstExprFromLL(int n_bits, unsigned long long value) {
  if(n_bits == 0)
    throw VALIDATOR_ERROR("vc_bcConstExprFromLL called with n_bits = 0");
  return SymBitVector::constant(n_bits, value);
}

Expr vc_bv32ConstExprFromInt(unsigned int value) {
  return SymBitVector::constant(32, value);
}

Expr vc_bvConcatExpr(Expr left, Expr right) {
  return left || right;
}
Expr vc_bvPlusExpr(int n_bits, Expr left, Expr right) {
  return left+right;
}
Expr vc_bvMinusExpr(int n_bits, Expr left, Expr right) {
  return left-right;
}
Expr vc_bvMultExpr(int n_bits, Expr left, Expr right) {
  return left*right;
}
Expr vc_bvDivExpr(int n_bits, Expr left, Expr right) {
  return left / right;
}
// left modulo right i.e. left%right
Expr vc_bvModExpr(int n_bits, Expr left, Expr right) {
  return left % right;
}
// signed left divided by right i.e. left/right
Expr vc_sbvDivExpr(int n_bits, Expr left, Expr right) {
  return left.s_div(right);
}
// signed left modulo right i.e. left%right
Expr vc_sbvModExpr(int n_bits, Expr left, Expr right) {
  return left.s_mod(right);
}

SymBool vc_bvLtExpr(Expr left, Expr right) {
  return left < right;
}
SymBool vc_bvLeExpr(Expr left, Expr right) {
  return left <= right;
}
SymBool vc_bvGtExpr(Expr left, Expr right) {
  return left > right;
}
SymBool vc_bvGeExpr(Expr left, Expr right) {
  return left >= right;
}

Expr vc_bvUMinusExpr(Expr child) {
  return -child;
}

// bitwise operations: these are terms not formulas
Expr vc_bvAndExpr(Expr left, Expr right) {
  return left & right;
}
Expr vc_bvOrExpr(Expr left, Expr right) {
  return left | right;
}
Expr vc_bvXorExpr(Expr left, Expr right) {
  return left^right;
}
Expr vc_bvNotExpr(Expr child) {
  return !child;
}

// Shift an expression by another expression. This is newstyle.
Expr vc_bvLeftShiftExprExpr(int n_bits, Expr left, Expr right) {
  return left << right;
}

Expr vc_bvRightShiftExprExpr(int n_bits,  Expr left, Expr right) {
  return left >> right;
}
Expr vc_bvSignedRightShiftExprExpr(int n_bits, Expr left, Expr right) {
  return left.s_shr(right);
}

Expr vc_bvExtract(Expr child, int high_bit_no, int low_bit_no) {
  return child[high_bit_no][low_bit_no];
}

//accepts a bitvector and position, and returns a boolean
//corresponding to that position. More precisely, it return the
//equation (x[bit_no:bit_no] == 0)
SymBool vc_bvBoolExtract(Expr x, int bit_no) {
  return !(SymBool)x[bit_no];
}
SymBool vc_bvBoolExtract_Zero(Expr x, int bit_no) {
  return !(SymBool)x[bit_no];
}

//accepts a bitvector and position, and returns a boolean
//corresponding to that position. More precisely, it return the
//equation (x[bit_no:bit_no] == 1)
SymBool vc_bvBoolExtract_One(Expr x, int bit_no) {
  return x[bit_no];
}
Expr vc_bvSignExtend(Expr child, int nbits) {
  return child.extend(nbits);
}
