/*********************                                                        */
/*! \file base_options_template.cpp
 ** \verbatim
 ** Top contributors (to current version):
 **   Morgan Deters, Paul Meng
 ** This file is part of the CVC4 project.
 ** Copyright (c) 2009-2017 by the authors listed in the file AUTHORS
 ** in the top-level source directory) and their institutional affiliations.
 ** All rights reserved.  See the file COPYING in the top-level source
 ** directory for licensing information.\endverbatim
 **
 ** \brief Contains code for handling command-line options.
 **
 ** Contains code for handling command-line options
 **/

#include "options/options_holder.h"

namespace CVC4 {


#line 10 "../../../src/options/bv_options"
template <> void Options::set(options::bvSatSolver__option_t, const options::bvSatSolver__option_t::type& x) { d_holder->bvSatSolver = x; }
#line 10 "../../../src/options/bv_options"
template <> const options::bvSatSolver__option_t::type& Options::operator[](options::bvSatSolver__option_t) const { return d_holder->bvSatSolver; }
#line 10 "../../../src/options/bv_options"
template <> bool Options::wasSetByUser(options::bvSatSolver__option_t) const { return d_holder->bvSatSolver__setByUser__; }
#line 13 "../../../src/options/bv_options"
template <> void Options::set(options::bitblastMode__option_t, const options::bitblastMode__option_t::type& x) { d_holder->bitblastMode = x; }
#line 13 "../../../src/options/bv_options"
template <> const options::bitblastMode__option_t::type& Options::operator[](options::bitblastMode__option_t) const { return d_holder->bitblastMode; }
#line 13 "../../../src/options/bv_options"
template <> bool Options::wasSetByUser(options::bitblastMode__option_t) const { return d_holder->bitblastMode__setByUser__; }
#line 18 "../../../src/options/bv_options"
template <> void Options::set(options::bitvectorAig__option_t, const options::bitvectorAig__option_t::type& x) { d_holder->bitvectorAig = x; }
#line 18 "../../../src/options/bv_options"
template <> const options::bitvectorAig__option_t::type& Options::operator[](options::bitvectorAig__option_t) const { return d_holder->bitvectorAig; }
#line 18 "../../../src/options/bv_options"
template <> bool Options::wasSetByUser(options::bitvectorAig__option_t) const { return d_holder->bitvectorAig__setByUser__; }
#line 20 "../../../src/options/bv_options"
template <> void Options::set(options::bitvectorAigSimplifications__option_t, const options::bitvectorAigSimplifications__option_t::type& x) { d_holder->bitvectorAigSimplifications = x; }
#line 20 "../../../src/options/bv_options"
template <> const options::bitvectorAigSimplifications__option_t::type& Options::operator[](options::bitvectorAigSimplifications__option_t) const { return d_holder->bitvectorAigSimplifications; }
#line 20 "../../../src/options/bv_options"
template <> bool Options::wasSetByUser(options::bitvectorAigSimplifications__option_t) const { return d_holder->bitvectorAigSimplifications__setByUser__; }
#line 24 "../../../src/options/bv_options"
template <> void Options::set(options::bitvectorPropagate__option_t, const options::bitvectorPropagate__option_t::type& x) { d_holder->bitvectorPropagate = x; }
#line 24 "../../../src/options/bv_options"
template <> const options::bitvectorPropagate__option_t::type& Options::operator[](options::bitvectorPropagate__option_t) const { return d_holder->bitvectorPropagate; }
#line 24 "../../../src/options/bv_options"
template <> bool Options::wasSetByUser(options::bitvectorPropagate__option_t) const { return d_holder->bitvectorPropagate__setByUser__; }
#line 27 "../../../src/options/bv_options"
template <> void Options::set(options::bitvectorEqualitySolver__option_t, const options::bitvectorEqualitySolver__option_t::type& x) { d_holder->bitvectorEqualitySolver = x; }
#line 27 "../../../src/options/bv_options"
template <> const options::bitvectorEqualitySolver__option_t::type& Options::operator[](options::bitvectorEqualitySolver__option_t) const { return d_holder->bitvectorEqualitySolver; }
#line 27 "../../../src/options/bv_options"
template <> bool Options::wasSetByUser(options::bitvectorEqualitySolver__option_t) const { return d_holder->bitvectorEqualitySolver__setByUser__; }
#line 30 "../../../src/options/bv_options"
template <> void Options::set(options::bitvectorEqualitySlicer__option_t, const options::bitvectorEqualitySlicer__option_t::type& x) { d_holder->bitvectorEqualitySlicer = x; }
#line 30 "../../../src/options/bv_options"
template <> const options::bitvectorEqualitySlicer__option_t::type& Options::operator[](options::bitvectorEqualitySlicer__option_t) const { return d_holder->bitvectorEqualitySlicer; }
#line 30 "../../../src/options/bv_options"
template <> bool Options::wasSetByUser(options::bitvectorEqualitySlicer__option_t) const { return d_holder->bitvectorEqualitySlicer__setByUser__; }
#line 34 "../../../src/options/bv_options"
template <> void Options::set(options::bitvectorInequalitySolver__option_t, const options::bitvectorInequalitySolver__option_t::type& x) { d_holder->bitvectorInequalitySolver = x; }
#line 34 "../../../src/options/bv_options"
template <> const options::bitvectorInequalitySolver__option_t::type& Options::operator[](options::bitvectorInequalitySolver__option_t) const { return d_holder->bitvectorInequalitySolver; }
#line 34 "../../../src/options/bv_options"
template <> bool Options::wasSetByUser(options::bitvectorInequalitySolver__option_t) const { return d_holder->bitvectorInequalitySolver__setByUser__; }
#line 37 "../../../src/options/bv_options"
template <> void Options::set(options::bitvectorAlgebraicSolver__option_t, const options::bitvectorAlgebraicSolver__option_t::type& x) { d_holder->bitvectorAlgebraicSolver = x; }
#line 37 "../../../src/options/bv_options"
template <> const options::bitvectorAlgebraicSolver__option_t::type& Options::operator[](options::bitvectorAlgebraicSolver__option_t) const { return d_holder->bitvectorAlgebraicSolver; }
#line 37 "../../../src/options/bv_options"
template <> bool Options::wasSetByUser(options::bitvectorAlgebraicSolver__option_t) const { return d_holder->bitvectorAlgebraicSolver__setByUser__; }
#line 40 "../../../src/options/bv_options"
template <> void Options::set(options::bitvectorAlgebraicBudget__option_t, const options::bitvectorAlgebraicBudget__option_t::type& x) { d_holder->bitvectorAlgebraicBudget = x; }
#line 40 "../../../src/options/bv_options"
template <> const options::bitvectorAlgebraicBudget__option_t::type& Options::operator[](options::bitvectorAlgebraicBudget__option_t) const { return d_holder->bitvectorAlgebraicBudget; }
#line 40 "../../../src/options/bv_options"
template <> bool Options::wasSetByUser(options::bitvectorAlgebraicBudget__option_t) const { return d_holder->bitvectorAlgebraicBudget__setByUser__; }
#line 45 "../../../src/options/bv_options"
template <> void Options::set(options::bitvectorToBool__option_t, const options::bitvectorToBool__option_t::type& x) { d_holder->bitvectorToBool = x; }
#line 45 "../../../src/options/bv_options"
template <> const options::bitvectorToBool__option_t::type& Options::operator[](options::bitvectorToBool__option_t) const { return d_holder->bitvectorToBool; }
#line 45 "../../../src/options/bv_options"
template <> bool Options::wasSetByUser(options::bitvectorToBool__option_t) const { return d_holder->bitvectorToBool__setByUser__; }
#line 48 "../../../src/options/bv_options"
template <> void Options::set(options::boolToBitvector__option_t, const options::boolToBitvector__option_t::type& x) { d_holder->boolToBitvector = x; }
#line 48 "../../../src/options/bv_options"
template <> const options::boolToBitvector__option_t::type& Options::operator[](options::boolToBitvector__option_t) const { return d_holder->boolToBitvector; }
#line 48 "../../../src/options/bv_options"
template <> bool Options::wasSetByUser(options::boolToBitvector__option_t) const { return d_holder->boolToBitvector__setByUser__; }
#line 51 "../../../src/options/bv_options"
template <> void Options::set(options::bitvectorDivByZeroConst__option_t, const options::bitvectorDivByZeroConst__option_t::type& x) { d_holder->bitvectorDivByZeroConst = x; }
#line 51 "../../../src/options/bv_options"
template <> const options::bitvectorDivByZeroConst__option_t::type& Options::operator[](options::bitvectorDivByZeroConst__option_t) const { return d_holder->bitvectorDivByZeroConst; }
#line 51 "../../../src/options/bv_options"
template <> bool Options::wasSetByUser(options::bitvectorDivByZeroConst__option_t) const { return d_holder->bitvectorDivByZeroConst__setByUser__; }
#line 54 "../../../src/options/bv_options"
template <> void Options::set(options::bvExtractArithRewrite__option_t, const options::bvExtractArithRewrite__option_t::type& x) { d_holder->bvExtractArithRewrite = x; }
#line 54 "../../../src/options/bv_options"
template <> const options::bvExtractArithRewrite__option_t::type& Options::operator[](options::bvExtractArithRewrite__option_t) const { return d_holder->bvExtractArithRewrite; }
#line 54 "../../../src/options/bv_options"
template <> bool Options::wasSetByUser(options::bvExtractArithRewrite__option_t) const { return d_holder->bvExtractArithRewrite__setByUser__; }
#line 57 "../../../src/options/bv_options"
template <> void Options::set(options::bvAbstraction__option_t, const options::bvAbstraction__option_t::type& x) { d_holder->bvAbstraction = x; }
#line 57 "../../../src/options/bv_options"
template <> const options::bvAbstraction__option_t::type& Options::operator[](options::bvAbstraction__option_t) const { return d_holder->bvAbstraction; }
#line 57 "../../../src/options/bv_options"
template <> bool Options::wasSetByUser(options::bvAbstraction__option_t) const { return d_holder->bvAbstraction__setByUser__; }
#line 60 "../../../src/options/bv_options"
template <> void Options::set(options::skolemizeArguments__option_t, const options::skolemizeArguments__option_t::type& x) { d_holder->skolemizeArguments = x; }
#line 60 "../../../src/options/bv_options"
template <> const options::skolemizeArguments__option_t::type& Options::operator[](options::skolemizeArguments__option_t) const { return d_holder->skolemizeArguments; }
#line 60 "../../../src/options/bv_options"
template <> bool Options::wasSetByUser(options::skolemizeArguments__option_t) const { return d_holder->skolemizeArguments__setByUser__; }
#line 63 "../../../src/options/bv_options"
template <> const options::bvNumFunc__option_t::type& Options::operator[](options::bvNumFunc__option_t) const { return d_holder->bvNumFunc; }
#line 63 "../../../src/options/bv_options"
template <> bool Options::wasSetByUser(options::bvNumFunc__option_t) const { return d_holder->bvNumFunc__setByUser__; }
#line 66 "../../../src/options/bv_options"
template <> void Options::set(options::bvEagerExplanations__option_t, const options::bvEagerExplanations__option_t::type& x) { d_holder->bvEagerExplanations = x; }
#line 66 "../../../src/options/bv_options"
template <> const options::bvEagerExplanations__option_t::type& Options::operator[](options::bvEagerExplanations__option_t) const { return d_holder->bvEagerExplanations; }
#line 66 "../../../src/options/bv_options"
template <> bool Options::wasSetByUser(options::bvEagerExplanations__option_t) const { return d_holder->bvEagerExplanations__setByUser__; }
#line 69 "../../../src/options/bv_options"
template <> const options::bitvectorQuickXplain__option_t::type& Options::operator[](options::bitvectorQuickXplain__option_t) const { return d_holder->bitvectorQuickXplain; }
#line 69 "../../../src/options/bv_options"
template <> bool Options::wasSetByUser(options::bitvectorQuickXplain__option_t) const { return d_holder->bitvectorQuickXplain__setByUser__; }
#line 72 "../../../src/options/bv_options"
template <> const options::bvIntroducePow2__option_t::type& Options::operator[](options::bvIntroducePow2__option_t) const { return d_holder->bvIntroducePow2; }
#line 72 "../../../src/options/bv_options"
template <> bool Options::wasSetByUser(options::bvIntroducePow2__option_t) const { return d_holder->bvIntroducePow2__setByUser__; }
#line 75 "../../../src/options/bv_options"
template <> void Options::set(options::bvLazyRewriteExtf__option_t, const options::bvLazyRewriteExtf__option_t::type& x) { d_holder->bvLazyRewriteExtf = x; }
#line 75 "../../../src/options/bv_options"
template <> const options::bvLazyRewriteExtf__option_t::type& Options::operator[](options::bvLazyRewriteExtf__option_t) const { return d_holder->bvLazyRewriteExtf; }
#line 75 "../../../src/options/bv_options"
template <> bool Options::wasSetByUser(options::bvLazyRewriteExtf__option_t) const { return d_holder->bvLazyRewriteExtf__setByUser__; }
#line 78 "../../../src/options/bv_options"
template <> void Options::set(options::bvLazyReduceExtf__option_t, const options::bvLazyReduceExtf__option_t::type& x) { d_holder->bvLazyReduceExtf = x; }
#line 78 "../../../src/options/bv_options"
template <> const options::bvLazyReduceExtf__option_t::type& Options::operator[](options::bvLazyReduceExtf__option_t) const { return d_holder->bvLazyReduceExtf; }
#line 78 "../../../src/options/bv_options"
template <> bool Options::wasSetByUser(options::bvLazyReduceExtf__option_t) const { return d_holder->bvLazyReduceExtf__setByUser__; }
#line 81 "../../../src/options/bv_options"
template <> void Options::set(options::bvAlgExtf__option_t, const options::bvAlgExtf__option_t::type& x) { d_holder->bvAlgExtf = x; }
#line 81 "../../../src/options/bv_options"
template <> const options::bvAlgExtf__option_t::type& Options::operator[](options::bvAlgExtf__option_t) const { return d_holder->bvAlgExtf; }
#line 81 "../../../src/options/bv_options"
template <> bool Options::wasSetByUser(options::bvAlgExtf__option_t) const { return d_holder->bvAlgExtf__setByUser__; }

#line 24 "../../../src/options/base_options_template.cpp"

namespace options {


#line 10 "../../../src/options/bv_options"
struct bvSatSolver__option_t bvSatSolver;
#line 13 "../../../src/options/bv_options"
struct bitblastMode__option_t bitblastMode;
#line 18 "../../../src/options/bv_options"
struct bitvectorAig__option_t bitvectorAig;
#line 20 "../../../src/options/bv_options"
struct bitvectorAigSimplifications__option_t bitvectorAigSimplifications;
#line 24 "../../../src/options/bv_options"
struct bitvectorPropagate__option_t bitvectorPropagate;
#line 27 "../../../src/options/bv_options"
struct bitvectorEqualitySolver__option_t bitvectorEqualitySolver;
#line 30 "../../../src/options/bv_options"
struct bitvectorEqualitySlicer__option_t bitvectorEqualitySlicer;
#line 34 "../../../src/options/bv_options"
struct bitvectorInequalitySolver__option_t bitvectorInequalitySolver;
#line 37 "../../../src/options/bv_options"
struct bitvectorAlgebraicSolver__option_t bitvectorAlgebraicSolver;
#line 40 "../../../src/options/bv_options"
struct bitvectorAlgebraicBudget__option_t bitvectorAlgebraicBudget;
#line 45 "../../../src/options/bv_options"
struct bitvectorToBool__option_t bitvectorToBool;
#line 48 "../../../src/options/bv_options"
struct boolToBitvector__option_t boolToBitvector;
#line 51 "../../../src/options/bv_options"
struct bitvectorDivByZeroConst__option_t bitvectorDivByZeroConst;
#line 54 "../../../src/options/bv_options"
struct bvExtractArithRewrite__option_t bvExtractArithRewrite;
#line 57 "../../../src/options/bv_options"
struct bvAbstraction__option_t bvAbstraction;
#line 60 "../../../src/options/bv_options"
struct skolemizeArguments__option_t skolemizeArguments;
#line 63 "../../../src/options/bv_options"
struct bvNumFunc__option_t bvNumFunc;
#line 66 "../../../src/options/bv_options"
struct bvEagerExplanations__option_t bvEagerExplanations;
#line 69 "../../../src/options/bv_options"
struct bitvectorQuickXplain__option_t bitvectorQuickXplain;
#line 72 "../../../src/options/bv_options"
struct bvIntroducePow2__option_t bvIntroducePow2;
#line 75 "../../../src/options/bv_options"
struct bvLazyRewriteExtf__option_t bvLazyRewriteExtf;
#line 78 "../../../src/options/bv_options"
struct bvLazyReduceExtf__option_t bvLazyReduceExtf;
#line 81 "../../../src/options/bv_options"
struct bvAlgExtf__option_t bvAlgExtf;

#line 30 "../../../src/options/base_options_template.cpp"

}/* CVC4::options namespace */

}/* CVC4 namespace */
