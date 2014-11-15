#include "c_interface.h"
#include "error.h"
#include <iostream>
using namespace std;
using namespace z3;

// Basic types
Type vc_boolType(VC vc) {
  return vc->bool_sort();
}


/////////////////////////////////////////////////////////////////////////////
// Expr manipulation methods                                               //
/////////////////////////////////////////////////////////////////////////////

//! Create a variable with a given name and type
/*! The type cannot be a function type. The var name can contain
  only variables, numerals and underscore. If you use any other
  symbol, you will get a segfault. */
Expr vc_varExpr(VC vc, const char * name, Type type) {
  return vc->constant(name,type);
}

//! Create an equality expression.  The two children must have the same type.
Expr vc_eqExpr(VC vc, Expr child0, Expr child1) {
  return child0==child1;
}

// Boolean expressions

// The following functions create Boolean expressions.  The children
// provided as arguments must be of type Boolean (except for the
// function vc_iteExpr(). In the case of vc_iteExpr() the
// conditional must always be Boolean, but the ifthenpart
// (resp. elsepart) can be bit-vector or Boolean type. But, the
// ifthenpart and elsepart must be both of the same type)
Expr vc_trueExpr(VC vc) {
  return vc->bool_val(true);
}
Expr vc_falseExpr(VC vc) {
  return vc->bool_val(false);
}
Expr vc_notExpr(VC vc, Expr child) {
  return !child;
}
Expr vc_andExpr(VC vc, Expr left, Expr right) {
  return left && right;
}
Expr vc_orExpr(VC vc, Expr left, Expr right) {
  return left||right;
}
Expr vc_xorExpr(VC vc, Expr left, Expr right) {
  return left!=right;
}
Expr vc_impliesExpr(VC vc, Expr hyp, Expr conc) {
  return implies(hyp,conc);
}
Expr vc_iffExpr(VC vc, Expr left, Expr right) {
  return left==right;
}
//The output type of vc_iteExpr can be Boolean (formula-level ite)
//or bit-vector (word-level ite)
Expr vc_iteExpr(VC vc, Expr conditional, Expr ifthenpart, Expr elsepart) {
  return to_expr(*vc, Z3_mk_ite(*vc, conditional, ifthenpart,elsepart)) ;
}

//Boolean to single bit BV Expression
Expr vc_boolToBVExpr(VC vc, Expr form) {
  return vc_iteExpr(vc, vc_iffExpr(vc, form, vc_trueExpr(vc)), vc->bv_val(1,1), vc->bv_val(1,0) );
}


/**************************/
/* BIT VECTOR OPERATIONS  */
/**************************/
Type vc_bvType(VC vc, int no_bits) {
  if(no_bits == 0)
    throw VALIDATOR_ERROR("vc_bvType called with no_bits = 0");
  return vc->bv_sort(no_bits);
}
Expr vc_bvConstExprFromInt(VC vc, int n_bits, unsigned int value) {
  if(n_bits == 0)
    throw VALIDATOR_ERROR("vc_bcConstExprFromInt called with n_bits = 0");
  return vc->bv_val(value,n_bits);
}

Expr vc_bvConstExprFromLL(VC vc, int n_bits, unsigned long long value) {
  if(n_bits == 0)
    throw VALIDATOR_ERROR("vc_bcConstExprFromLL called with n_bits = 0");
  return vc->bv_val(((long long unsigned int)value),n_bits);
}

Expr vc_bv32ConstExprFromInt(VC vc, unsigned int value) {
  return vc->bv_val(value,32);
}

Expr vc_bvConcatExpr(VC vc, Expr left, Expr right) {
  return to_expr(*vc, Z3_mk_concat(*vc, left, right));
}
Expr vc_bvPlusExpr(VC vc, int n_bits, Expr left, Expr right) {
  return left+right;
}
Expr vc_bvMinusExpr(VC vc, int n_bits, Expr left, Expr right) {
  return left-right;
}
Expr vc_bvMultExpr(VC vc, int n_bits, Expr left, Expr right) {
  return left*right;
}
Expr vc_bvDivExpr(VC vc, int n_bits, Expr left, Expr right) {
  return udiv(left,right);
}
// left modulo right i.e. left%right
Expr vc_bvModExpr(VC vc, int n_bits, Expr left, Expr right) {
  return to_expr(*vc, Z3_mk_bvurem(*vc, left, right));
}
// signed left divided by right i.e. left/right
Expr vc_sbvDivExpr(VC vc, int n_bits, Expr left, Expr right) {
  return left/right;
}
// signed left modulo right i.e. left%right
Expr vc_sbvModExpr(VC vc, int n_bits, Expr left, Expr right) {
  return to_expr(*vc, Z3_mk_bvsrem(*vc, left, right));
}

Expr vc_bvLtExpr(VC vc, Expr left, Expr right) {
  return ult(left,right);
}
Expr vc_bvLeExpr(VC vc, Expr left, Expr right) {
  return ule(left,right);
}
Expr vc_bvGtExpr(VC vc, Expr left, Expr right) {
  return ugt(left,right);
}
Expr vc_bvGeExpr(VC vc, Expr left, Expr right) {
  return uge(left,right);
}

Expr vc_sbvLtExpr(VC vc, Expr left, Expr right) {
  return left<right;
}
Expr vc_sbvLeExpr(VC vc, Expr left, Expr right) {
  return left<=right;
}
Expr vc_sbvGtExpr(VC vc, Expr left, Expr right) {
  return left>right;
}
Expr vc_sbvGeExpr(VC vc, Expr left, Expr right) {
  return left>=right;
}

Expr vc_bvUMinusExpr(VC vc, Expr child) {
  return -child;
}

// bitwise operations: these are terms not formulas
Expr vc_bvAndExpr(VC vc, Expr left, Expr right) {
  return left & right;
}
Expr vc_bvOrExpr(VC vc, Expr left, Expr right) {
  return left | right;
}
Expr vc_bvXorExpr(VC vc, Expr left, Expr right) {
  return left^right;
}
Expr vc_bvNotExpr(VC vc, Expr child) {
  return ~child;
}

// Shift an expression by another expression. This is newstyle.
Expr vc_bvLeftShiftExprExpr(VC vc, int n_bits, Expr left, Expr right) {
  return to_expr(*vc, Z3_mk_bvshl(*vc, left, right));
}

Expr vc_bvRightShiftExprExpr(VC vc, int n_bits,  Expr left, Expr right) {
  return to_expr(*vc, Z3_mk_bvlshr(*vc, left, right));
}
Expr vc_bvSignedRightShiftExprExpr(VC vc, int n_bits, Expr left, Expr right) {
  return to_expr(*vc, Z3_mk_bvashr(*vc, left, right));
}

Expr vc_bvExtract(VC vc, Expr child, int high_bit_no, int low_bit_no) {
  return to_expr(*vc, Z3_mk_extract(*vc, high_bit_no, low_bit_no, child));
}

//accepts a bitvector and position, and returns a boolean
//corresponding to that position. More precisely, it return the
//equation (x[bit_no:bit_no] == 0)
Expr vc_bvBoolExtract(VC vc, Expr x, int bit_no) {
  return vc_bvExtract(vc, x, bit_no, bit_no)==vc->bv_val(0,1);
}
Expr vc_bvBoolExtract_Zero(VC vc, Expr x, int bit_no) {
  return vc_bvExtract(vc, x, bit_no, bit_no)==vc->bv_val(0,1);
}

//accepts a bitvector and position, and returns a boolean
//corresponding to that position. More precisely, it return the
//equation (x[bit_no:bit_no] == 1)
Expr vc_bvBoolExtract_One(VC vc, Expr x, int bit_no) {
  return vc_bvExtract(vc, x, bit_no, bit_no)==vc->bv_val(1,1);
}
Expr vc_bvSignExtend(VC vc, Expr child, int nbits) {
  return to_expr(*vc, Z3_mk_sign_ext(*vc, nbits-child.get_sort().bv_size(), child));
}
