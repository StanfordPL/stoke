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

#include "src/symstate/bitvector.h"
#include "src/validator/error.h"



typedef int Type;
typedef stoke::SymBitVector Expr;



// Basic types
Type vc_boolType();

Type vc_bvType(int no_bits);


/////////////////////////////////////////////////////////////////////////////
// Expr manipulation methods                                               //
/////////////////////////////////////////////////////////////////////////////

//! Create a variable with a given name and type
/*! The type cannot be a function type. The var name can contain
  only variables, numerals and underscore. If you use any other
  symbol, you will get a segfault. */
//! Create an equality expression.  The two children must have the same type.
stoke::SymBool vc_eqExpr(Expr child0, Expr child1);

// Boolean expressions

// The following functions create Boolean expressions.  The children
// provided as arguments must be of type Boolean (except for the
// function vc_iteExpr(). In the case of vc_iteExpr() the
// conditional must always be Boolean, but the ifthenpart
// (resp. elsepart) can be bit-vector or Boolean type. But, the
// ifthenpart and elsepart must be both of the same type)
Expr vc_andExpr(Expr left, Expr right);
Expr vc_orExpr(Expr left, Expr right);
Expr vc_xorExpr(Expr left, Expr right);
stoke::SymBool vc_impliesExpr(stoke::SymBool hyp, stoke::SymBool conc);
stoke::SymBool vc_iffExpr(Expr left, Expr right);
//The output type of vc_iteExpr can be Boolean (formula-level ite)
//or bit-vector (word-level ite)
Expr vc_iteExpr(stoke::SymBool conditional, Expr ifthenpart, Expr elsepart);
stoke::SymBool vc_iteExpr(stoke::SymBool cond, stoke::SymBool true_branch, stoke::SymBool false_branch);

//Boolean to single bit BV Expression
Expr vc_boolToBVExpr(stoke::SymBool from);

/**************************/
/* BIT VECTOR OPERATIONS  */
/**************************/

Expr vc_bvConstExprFromInt(int n_bits, unsigned int value);
Expr vc_bv32ConstExprFromInt(unsigned int value);

Expr vc_bvPlusExpr(int n_bits, Expr left, Expr right);
Expr vc_bvMinusExpr(int n_bits, Expr left, Expr right);
Expr vc_bvMultExpr(int n_bits, Expr left, Expr right);
Expr vc_bvDivExpr(int n_bits, Expr left, Expr right);
Expr vc_bvModExpr(int n_bits, Expr left, Expr right);
Expr vc_sbvDivExpr(int n_bits, Expr left, Expr right);
Expr vc_sbvModExpr(int n_bits, Expr left, Expr right);

stoke::SymBool vc_bvLtExpr(Expr left, Expr right);
stoke::SymBool vc_bvLeExpr(Expr left, Expr right);
stoke::SymBool vc_bvGtExpr(Expr left, Expr right);
stoke::SymBool vc_bvGeExpr(Expr left, Expr right);

Expr vc_bvUMinusExpr(Expr child);

// bitwise operations: these are terms not formulas
Expr vc_bvAndExpr(Expr left, Expr right);
Expr vc_bvOrExpr(Expr left, Expr right);
Expr vc_bvXorExpr(Expr left, Expr right);
Expr vc_bvNotExpr(Expr child);

// Shift an expression by another expression. This is newstyle.
Expr vc_bvLeftShiftExprExpr(int n_bits, Expr left, Expr right);
Expr vc_bvRightShiftExprExpr(int n_bits,  Expr left, Expr right);
Expr vc_bvSignedRightShiftExprExpr(int n_bits, Expr left, Expr right);

Expr vc_bvExtract(Expr child, int high_bit_no, int low_bit_no);

stoke::SymBool vc_bvBoolExtract(Expr x, int bit_no);
stoke::SymBool vc_bvBoolExtract_Zero(Expr x, int bit_no);
stoke::SymBool vc_bvBoolExtract_One(Expr x, int bit_no);
Expr vc_bvSignExtend(Expr child, int nbits);



#endif


