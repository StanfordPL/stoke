/********************************************************************
 * AUTHORS: Vijay Ganesh
 *
 * BEGIN DATE: November, 2005
 *
 * License to use, copy, modify, sell and/or distribute this software
 * and its documentation for any purpose is hereby granted without
 * royalty, subject to the terms and conditions defined in the \ref
 * LICENSE file provided with this distribution.  In particular:
 *
 * - The above copyright notice and this permission notice must appear
 * in all copies of the software and related documentation.
 *
 * - THE SOFTWARE IS PROVIDED "AS-IS", WITHOUT ANY WARRANTIES,
 * EXPRESSED OR IMPLIED.  USE IT AT YOUR OWN RISK.
 ********************************************************************/
// -*- c++ -*-

#ifndef _cvcl__include__c_interface_h_
#define _cvcl__include__c_interface_h_

#include "src/ext/z3/include/z3++.h"
#include "src/validator/error.h"

#define _CVCL_DEFAULT_ARG(v) =v

extern "C" {

#include <stdio.h>


typedef z3::context* VC;
typedef z3::expr Expr;
typedef int Type;



// Basic types
Type vc_boolType(VC vc);

Type vc_bvType(VC vc, int no_bits);


/////////////////////////////////////////////////////////////////////////////
// Expr manipulation methods                                               //
/////////////////////////////////////////////////////////////////////////////

//! Create a variable with a given name and type
  /*! The type cannot be a function type. The var name can contain
    only variables, numerals and underscore. If you use any other
    symbol, you will get a segfault. */
  Expr vc_varExpr(VC vc, const char * name, Type type);

//! Create an equality expression.  The two children must have the same type.
  Expr vc_eqExpr(VC vc, Expr child0, Expr child1);

// Boolean expressions

// The following functions create Boolean expressions.  The children
// provided as arguments must be of type Boolean (except for the
// function vc_iteExpr(). In the case of vc_iteExpr() the
// conditional must always be Boolean, but the ifthenpart
// (resp. elsepart) can be bit-vector or Boolean type. But, the
// ifthenpart and elsepart must be both of the same type)
  Expr vc_trueExpr(VC vc);
  Expr vc_falseExpr(VC vc);
  Expr vc_notExpr(VC vc, Expr child);
  Expr vc_andExpr(VC vc, Expr left, Expr right);
  Expr vc_orExpr(VC vc, Expr left, Expr right);
  Expr vc_xorExpr(VC vc, Expr left, Expr right);
  Expr vc_impliesExpr(VC vc, Expr hyp, Expr conc);
  Expr vc_iffExpr(VC vc, Expr left, Expr right);
//The output type of vc_iteExpr can be Boolean (formula-level ite)
//or bit-vector (word-level ite)
  Expr vc_iteExpr(VC vc, Expr conditional, Expr ifthenpart, Expr elsepart);

//Boolean to single bit BV Expression
  Expr vc_boolToBVExpr(VC vc, Expr form);

  /**************************/
  /* BIT VECTOR OPERATIONS  */
  /**************************/

  Expr vc_bvConstExprFromInt(VC vc, int n_bits, unsigned int value);
  Expr vc_bvConstExprFromLL(VC vc, int n_bits, unsigned long long value);
  Expr vc_bv32ConstExprFromInt(VC vc, unsigned int value);

  Expr vc_bvConcatExpr(VC vc, Expr left, Expr right);
  Expr vc_bvPlusExpr(VC vc, int n_bits, Expr left, Expr right);
  Expr vc_bvMinusExpr(VC vc, int n_bits, Expr left, Expr right);
  Expr vc_bvMultExpr(VC vc, int n_bits, Expr left, Expr right);
  Expr vc_bvDivExpr(VC vc, int n_bits, Expr left, Expr right);
  Expr vc_bvModExpr(VC vc, int n_bits, Expr left, Expr right);
  Expr vc_sbvDivExpr(VC vc, int n_bits, Expr left, Expr right);
  Expr vc_sbvModExpr(VC vc, int n_bits, Expr left, Expr right);

  Expr vc_bvLtExpr(VC vc, Expr left, Expr right);
  Expr vc_bvLeExpr(VC vc, Expr left, Expr right);
  Expr vc_bvGtExpr(VC vc, Expr left, Expr right);
  Expr vc_bvGeExpr(VC vc, Expr left, Expr right);

  Expr vc_sbvLtExpr(VC vc, Expr left, Expr right);
  Expr vc_sbvLeExpr(VC vc, Expr left, Expr right);
  Expr vc_sbvGtExpr(VC vc, Expr left, Expr right);
  Expr vc_sbvGeExpr(VC vc, Expr left, Expr right);

  Expr vc_bvUMinusExpr(VC vc, Expr child);

// bitwise operations: these are terms not formulas
  Expr vc_bvAndExpr(VC vc, Expr left, Expr right);
  Expr vc_bvOrExpr(VC vc, Expr left, Expr right);
  Expr vc_bvXorExpr(VC vc, Expr left, Expr right);
  Expr vc_bvNotExpr(VC vc, Expr child);

// Shift an expression by another expression. This is newstyle.
  Expr vc_bvLeftShiftExprExpr(VC vc, int n_bits, Expr left, Expr right);
  Expr vc_bvRightShiftExprExpr(VC vc, int n_bits,  Expr left, Expr right);
  Expr vc_bvSignedRightShiftExprExpr(VC vc, int n_bits, Expr left, Expr right);

  Expr vc_bvExtract(VC vc, Expr child, int high_bit_no, int low_bit_no);

  Expr vc_bvBoolExtract(VC vc, Expr x, int bit_no);
  Expr vc_bvBoolExtract_Zero(VC vc, Expr x, int bit_no);
  Expr vc_bvBoolExtract_One(VC vc, Expr x, int bit_no);
  Expr vc_bvSignExtend(VC vc, Expr child, int nbits);


}

#undef _CVCL_DEFAULT_ARG

#endif


