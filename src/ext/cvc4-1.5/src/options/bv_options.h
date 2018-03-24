/*********************                                                        */
/*! \file base_options_template.h
 ** \verbatim
 ** Top contributors (to current version):
 **   Morgan Deters, Paul Meng, Tim King
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

#include "cvc4_private.h"

#ifndef __CVC4__OPTIONS__BV_H
#define __CVC4__OPTIONS__BV_H

#include "options/options.h"

#line 10 "../../../src/options/bv_options"
#include "options/bv_bitblast_mode.h"
#line 13 "../../../src/options/bv_options"
#include "options/bv_bitblast_mode.h"
#line 30 "../../../src/options/bv_options"
#include "options/bv_bitblast_mode.h"

#line 26 "../../../src/options/base_options_template.h"

#define CVC4_OPTIONS__BV__FOR_OPTION_HOLDER \
  bvSatSolver__option_t::type bvSatSolver; \
  bool bvSatSolver__setByUser__; \
  bitblastMode__option_t::type bitblastMode; \
  bool bitblastMode__setByUser__; \
  bitvectorAig__option_t::type bitvectorAig; \
  bool bitvectorAig__setByUser__; \
  bitvectorAigSimplifications__option_t::type bitvectorAigSimplifications; \
  bool bitvectorAigSimplifications__setByUser__; \
  bitvectorPropagate__option_t::type bitvectorPropagate; \
  bool bitvectorPropagate__setByUser__; \
  bitvectorEqualitySolver__option_t::type bitvectorEqualitySolver; \
  bool bitvectorEqualitySolver__setByUser__; \
  bitvectorEqualitySlicer__option_t::type bitvectorEqualitySlicer; \
  bool bitvectorEqualitySlicer__setByUser__; \
  bitvectorInequalitySolver__option_t::type bitvectorInequalitySolver; \
  bool bitvectorInequalitySolver__setByUser__; \
  bitvectorAlgebraicSolver__option_t::type bitvectorAlgebraicSolver; \
  bool bitvectorAlgebraicSolver__setByUser__; \
  bitvectorAlgebraicBudget__option_t::type bitvectorAlgebraicBudget; \
  bool bitvectorAlgebraicBudget__setByUser__; \
  bitvectorToBool__option_t::type bitvectorToBool; \
  bool bitvectorToBool__setByUser__; \
  boolToBitvector__option_t::type boolToBitvector; \
  bool boolToBitvector__setByUser__; \
  bitvectorDivByZeroConst__option_t::type bitvectorDivByZeroConst; \
  bool bitvectorDivByZeroConst__setByUser__; \
  bvExtractArithRewrite__option_t::type bvExtractArithRewrite; \
  bool bvExtractArithRewrite__setByUser__; \
  bvAbstraction__option_t::type bvAbstraction; \
  bool bvAbstraction__setByUser__; \
  skolemizeArguments__option_t::type skolemizeArguments; \
  bool skolemizeArguments__setByUser__; \
  bvNumFunc__option_t::type bvNumFunc; \
  bool bvNumFunc__setByUser__; \
  bvEagerExplanations__option_t::type bvEagerExplanations; \
  bool bvEagerExplanations__setByUser__; \
  bitvectorQuickXplain__option_t::type bitvectorQuickXplain; \
  bool bitvectorQuickXplain__setByUser__; \
  bvIntroducePow2__option_t::type bvIntroducePow2; \
  bool bvIntroducePow2__setByUser__; \
  bvLazyRewriteExtf__option_t::type bvLazyRewriteExtf; \
  bool bvLazyRewriteExtf__setByUser__; \
  bvLazyReduceExtf__option_t::type bvLazyReduceExtf; \
  bool bvLazyReduceExtf__setByUser__; \
  bvAlgExtf__option_t::type bvAlgExtf; \
  bool bvAlgExtf__setByUser__;

#line 30 "../../../src/options/base_options_template.h"

namespace CVC4 {

namespace options {


#line 10 "../../../src/options/bv_options"
extern struct CVC4_PUBLIC bvSatSolver__option_t { typedef CVC4::theory::bv::SatSolverMode type; type operator()() const; bool wasSetByUser() const; void set(const type& v); } bvSatSolver CVC4_PUBLIC;
#line 13 "../../../src/options/bv_options"
extern struct CVC4_PUBLIC bitblastMode__option_t { typedef CVC4::theory::bv::BitblastMode type; type operator()() const; bool wasSetByUser() const; void set(const type& v); } bitblastMode CVC4_PUBLIC;
#line 18 "../../../src/options/bv_options"
extern struct CVC4_PUBLIC bitvectorAig__option_t { typedef bool type; type operator()() const; bool wasSetByUser() const; void set(const type& v); } bitvectorAig CVC4_PUBLIC;
#line 20 "../../../src/options/bv_options"
extern struct CVC4_PUBLIC bitvectorAigSimplifications__option_t { typedef std::string type; type operator()() const; bool wasSetByUser() const; void set(const type& v); } bitvectorAigSimplifications CVC4_PUBLIC;
#line 24 "../../../src/options/bv_options"
extern struct CVC4_PUBLIC bitvectorPropagate__option_t { typedef bool type; type operator()() const; bool wasSetByUser() const; void set(const type& v); } bitvectorPropagate CVC4_PUBLIC;
#line 27 "../../../src/options/bv_options"
extern struct CVC4_PUBLIC bitvectorEqualitySolver__option_t { typedef bool type; type operator()() const; bool wasSetByUser() const; void set(const type& v); } bitvectorEqualitySolver CVC4_PUBLIC;
#line 30 "../../../src/options/bv_options"
extern struct CVC4_PUBLIC bitvectorEqualitySlicer__option_t { typedef CVC4::theory::bv::BvSlicerMode type; type operator()() const; bool wasSetByUser() const; void set(const type& v); } bitvectorEqualitySlicer CVC4_PUBLIC;
#line 34 "../../../src/options/bv_options"
extern struct CVC4_PUBLIC bitvectorInequalitySolver__option_t { typedef bool type; type operator()() const; bool wasSetByUser() const; void set(const type& v); } bitvectorInequalitySolver CVC4_PUBLIC;
#line 37 "../../../src/options/bv_options"
extern struct CVC4_PUBLIC bitvectorAlgebraicSolver__option_t { typedef bool type; type operator()() const; bool wasSetByUser() const; void set(const type& v); } bitvectorAlgebraicSolver CVC4_PUBLIC;
#line 40 "../../../src/options/bv_options"
extern struct CVC4_PUBLIC bitvectorAlgebraicBudget__option_t { typedef unsigned type; type operator()() const; bool wasSetByUser() const; void set(const type& v); } bitvectorAlgebraicBudget CVC4_PUBLIC;
#line 45 "../../../src/options/bv_options"
extern struct CVC4_PUBLIC bitvectorToBool__option_t { typedef bool type; type operator()() const; bool wasSetByUser() const; void set(const type& v); } bitvectorToBool CVC4_PUBLIC;
#line 48 "../../../src/options/bv_options"
extern struct CVC4_PUBLIC boolToBitvector__option_t { typedef bool type; type operator()() const; bool wasSetByUser() const; void set(const type& v); } boolToBitvector CVC4_PUBLIC;
#line 51 "../../../src/options/bv_options"
extern struct CVC4_PUBLIC bitvectorDivByZeroConst__option_t { typedef bool type; type operator()() const; bool wasSetByUser() const; void set(const type& v); } bitvectorDivByZeroConst CVC4_PUBLIC;
#line 54 "../../../src/options/bv_options"
extern struct CVC4_PUBLIC bvExtractArithRewrite__option_t { typedef bool type; type operator()() const; bool wasSetByUser() const; void set(const type& v); } bvExtractArithRewrite CVC4_PUBLIC;
#line 57 "../../../src/options/bv_options"
extern struct CVC4_PUBLIC bvAbstraction__option_t { typedef bool type; type operator()() const; bool wasSetByUser() const; void set(const type& v); } bvAbstraction CVC4_PUBLIC;
#line 60 "../../../src/options/bv_options"
extern struct CVC4_PUBLIC skolemizeArguments__option_t { typedef bool type; type operator()() const; bool wasSetByUser() const; void set(const type& v); } skolemizeArguments CVC4_PUBLIC;
#line 63 "../../../src/options/bv_options"
extern struct CVC4_PUBLIC bvNumFunc__option_t { typedef unsigned type; type operator()() const; bool wasSetByUser() const; } bvNumFunc CVC4_PUBLIC;
#line 66 "../../../src/options/bv_options"
extern struct CVC4_PUBLIC bvEagerExplanations__option_t { typedef bool type; type operator()() const; bool wasSetByUser() const; void set(const type& v); } bvEagerExplanations CVC4_PUBLIC;
#line 69 "../../../src/options/bv_options"
extern struct CVC4_PUBLIC bitvectorQuickXplain__option_t { typedef bool type; type operator()() const; bool wasSetByUser() const; } bitvectorQuickXplain CVC4_PUBLIC;
#line 72 "../../../src/options/bv_options"
extern struct CVC4_PUBLIC bvIntroducePow2__option_t { typedef bool type; type operator()() const; bool wasSetByUser() const; } bvIntroducePow2 CVC4_PUBLIC;
#line 75 "../../../src/options/bv_options"
extern struct CVC4_PUBLIC bvLazyRewriteExtf__option_t { typedef bool type; type operator()() const; bool wasSetByUser() const; void set(const type& v); } bvLazyRewriteExtf CVC4_PUBLIC;
#line 78 "../../../src/options/bv_options"
extern struct CVC4_PUBLIC bvLazyReduceExtf__option_t { typedef bool type; type operator()() const; bool wasSetByUser() const; void set(const type& v); } bvLazyReduceExtf CVC4_PUBLIC;
#line 81 "../../../src/options/bv_options"
extern struct CVC4_PUBLIC bvAlgExtf__option_t { typedef bool type; type operator()() const; bool wasSetByUser() const; void set(const type& v); } bvAlgExtf CVC4_PUBLIC;

#line 38 "../../../src/options/base_options_template.h"

}/* CVC4::options namespace */


#line 10 "../../../src/options/bv_options"
template <> void Options::set(options::bvSatSolver__option_t, const options::bvSatSolver__option_t::type& x);
#line 10 "../../../src/options/bv_options"
template <> const options::bvSatSolver__option_t::type& Options::operator[](options::bvSatSolver__option_t) const;
#line 10 "../../../src/options/bv_options"
template <> bool Options::wasSetByUser(options::bvSatSolver__option_t) const;
#line 10 "../../../src/options/bv_options"
template <> void Options::assign(options::bvSatSolver__option_t, std::string option, std::string value);
#line 13 "../../../src/options/bv_options"
template <> void Options::set(options::bitblastMode__option_t, const options::bitblastMode__option_t::type& x);
#line 13 "../../../src/options/bv_options"
template <> const options::bitblastMode__option_t::type& Options::operator[](options::bitblastMode__option_t) const;
#line 13 "../../../src/options/bv_options"
template <> bool Options::wasSetByUser(options::bitblastMode__option_t) const;
#line 13 "../../../src/options/bv_options"
template <> void Options::assign(options::bitblastMode__option_t, std::string option, std::string value);
#line 18 "../../../src/options/bv_options"
template <> void Options::set(options::bitvectorAig__option_t, const options::bitvectorAig__option_t::type& x);
#line 18 "../../../src/options/bv_options"
template <> const options::bitvectorAig__option_t::type& Options::operator[](options::bitvectorAig__option_t) const;
#line 18 "../../../src/options/bv_options"
template <> bool Options::wasSetByUser(options::bitvectorAig__option_t) const;
#line 18 "../../../src/options/bv_options"
template <> void Options::assignBool(options::bitvectorAig__option_t, std::string option, bool value);
#line 20 "../../../src/options/bv_options"
template <> void Options::set(options::bitvectorAigSimplifications__option_t, const options::bitvectorAigSimplifications__option_t::type& x);
#line 20 "../../../src/options/bv_options"
template <> const options::bitvectorAigSimplifications__option_t::type& Options::operator[](options::bitvectorAigSimplifications__option_t) const;
#line 20 "../../../src/options/bv_options"
template <> bool Options::wasSetByUser(options::bitvectorAigSimplifications__option_t) const;
#line 20 "../../../src/options/bv_options"
template <> void Options::assign(options::bitvectorAigSimplifications__option_t, std::string option, std::string value);
#line 24 "../../../src/options/bv_options"
template <> void Options::set(options::bitvectorPropagate__option_t, const options::bitvectorPropagate__option_t::type& x);
#line 24 "../../../src/options/bv_options"
template <> const options::bitvectorPropagate__option_t::type& Options::operator[](options::bitvectorPropagate__option_t) const;
#line 24 "../../../src/options/bv_options"
template <> bool Options::wasSetByUser(options::bitvectorPropagate__option_t) const;
#line 24 "../../../src/options/bv_options"
template <> void Options::assignBool(options::bitvectorPropagate__option_t, std::string option, bool value);
#line 27 "../../../src/options/bv_options"
template <> void Options::set(options::bitvectorEqualitySolver__option_t, const options::bitvectorEqualitySolver__option_t::type& x);
#line 27 "../../../src/options/bv_options"
template <> const options::bitvectorEqualitySolver__option_t::type& Options::operator[](options::bitvectorEqualitySolver__option_t) const;
#line 27 "../../../src/options/bv_options"
template <> bool Options::wasSetByUser(options::bitvectorEqualitySolver__option_t) const;
#line 27 "../../../src/options/bv_options"
template <> void Options::assignBool(options::bitvectorEqualitySolver__option_t, std::string option, bool value);
#line 30 "../../../src/options/bv_options"
template <> void Options::set(options::bitvectorEqualitySlicer__option_t, const options::bitvectorEqualitySlicer__option_t::type& x);
#line 30 "../../../src/options/bv_options"
template <> const options::bitvectorEqualitySlicer__option_t::type& Options::operator[](options::bitvectorEqualitySlicer__option_t) const;
#line 30 "../../../src/options/bv_options"
template <> bool Options::wasSetByUser(options::bitvectorEqualitySlicer__option_t) const;
#line 30 "../../../src/options/bv_options"
template <> void Options::assign(options::bitvectorEqualitySlicer__option_t, std::string option, std::string value);
#line 34 "../../../src/options/bv_options"
template <> void Options::set(options::bitvectorInequalitySolver__option_t, const options::bitvectorInequalitySolver__option_t::type& x);
#line 34 "../../../src/options/bv_options"
template <> const options::bitvectorInequalitySolver__option_t::type& Options::operator[](options::bitvectorInequalitySolver__option_t) const;
#line 34 "../../../src/options/bv_options"
template <> bool Options::wasSetByUser(options::bitvectorInequalitySolver__option_t) const;
#line 34 "../../../src/options/bv_options"
template <> void Options::assignBool(options::bitvectorInequalitySolver__option_t, std::string option, bool value);
#line 37 "../../../src/options/bv_options"
template <> void Options::set(options::bitvectorAlgebraicSolver__option_t, const options::bitvectorAlgebraicSolver__option_t::type& x);
#line 37 "../../../src/options/bv_options"
template <> const options::bitvectorAlgebraicSolver__option_t::type& Options::operator[](options::bitvectorAlgebraicSolver__option_t) const;
#line 37 "../../../src/options/bv_options"
template <> bool Options::wasSetByUser(options::bitvectorAlgebraicSolver__option_t) const;
#line 37 "../../../src/options/bv_options"
template <> void Options::assignBool(options::bitvectorAlgebraicSolver__option_t, std::string option, bool value);
#line 40 "../../../src/options/bv_options"
template <> void Options::set(options::bitvectorAlgebraicBudget__option_t, const options::bitvectorAlgebraicBudget__option_t::type& x);
#line 40 "../../../src/options/bv_options"
template <> const options::bitvectorAlgebraicBudget__option_t::type& Options::operator[](options::bitvectorAlgebraicBudget__option_t) const;
#line 40 "../../../src/options/bv_options"
template <> bool Options::wasSetByUser(options::bitvectorAlgebraicBudget__option_t) const;
#line 40 "../../../src/options/bv_options"
template <> void Options::assign(options::bitvectorAlgebraicBudget__option_t, std::string option, std::string value);
#line 45 "../../../src/options/bv_options"
template <> void Options::set(options::bitvectorToBool__option_t, const options::bitvectorToBool__option_t::type& x);
#line 45 "../../../src/options/bv_options"
template <> const options::bitvectorToBool__option_t::type& Options::operator[](options::bitvectorToBool__option_t) const;
#line 45 "../../../src/options/bv_options"
template <> bool Options::wasSetByUser(options::bitvectorToBool__option_t) const;
#line 45 "../../../src/options/bv_options"
template <> void Options::assignBool(options::bitvectorToBool__option_t, std::string option, bool value);
#line 48 "../../../src/options/bv_options"
template <> void Options::set(options::boolToBitvector__option_t, const options::boolToBitvector__option_t::type& x);
#line 48 "../../../src/options/bv_options"
template <> const options::boolToBitvector__option_t::type& Options::operator[](options::boolToBitvector__option_t) const;
#line 48 "../../../src/options/bv_options"
template <> bool Options::wasSetByUser(options::boolToBitvector__option_t) const;
#line 48 "../../../src/options/bv_options"
template <> void Options::assignBool(options::boolToBitvector__option_t, std::string option, bool value);
#line 51 "../../../src/options/bv_options"
template <> void Options::set(options::bitvectorDivByZeroConst__option_t, const options::bitvectorDivByZeroConst__option_t::type& x);
#line 51 "../../../src/options/bv_options"
template <> const options::bitvectorDivByZeroConst__option_t::type& Options::operator[](options::bitvectorDivByZeroConst__option_t) const;
#line 51 "../../../src/options/bv_options"
template <> bool Options::wasSetByUser(options::bitvectorDivByZeroConst__option_t) const;
#line 51 "../../../src/options/bv_options"
template <> void Options::assignBool(options::bitvectorDivByZeroConst__option_t, std::string option, bool value);
#line 54 "../../../src/options/bv_options"
template <> void Options::set(options::bvExtractArithRewrite__option_t, const options::bvExtractArithRewrite__option_t::type& x);
#line 54 "../../../src/options/bv_options"
template <> const options::bvExtractArithRewrite__option_t::type& Options::operator[](options::bvExtractArithRewrite__option_t) const;
#line 54 "../../../src/options/bv_options"
template <> bool Options::wasSetByUser(options::bvExtractArithRewrite__option_t) const;
#line 54 "../../../src/options/bv_options"
template <> void Options::assignBool(options::bvExtractArithRewrite__option_t, std::string option, bool value);
#line 57 "../../../src/options/bv_options"
template <> void Options::set(options::bvAbstraction__option_t, const options::bvAbstraction__option_t::type& x);
#line 57 "../../../src/options/bv_options"
template <> const options::bvAbstraction__option_t::type& Options::operator[](options::bvAbstraction__option_t) const;
#line 57 "../../../src/options/bv_options"
template <> bool Options::wasSetByUser(options::bvAbstraction__option_t) const;
#line 57 "../../../src/options/bv_options"
template <> void Options::assignBool(options::bvAbstraction__option_t, std::string option, bool value);
#line 60 "../../../src/options/bv_options"
template <> void Options::set(options::skolemizeArguments__option_t, const options::skolemizeArguments__option_t::type& x);
#line 60 "../../../src/options/bv_options"
template <> const options::skolemizeArguments__option_t::type& Options::operator[](options::skolemizeArguments__option_t) const;
#line 60 "../../../src/options/bv_options"
template <> bool Options::wasSetByUser(options::skolemizeArguments__option_t) const;
#line 60 "../../../src/options/bv_options"
template <> void Options::assignBool(options::skolemizeArguments__option_t, std::string option, bool value);
#line 63 "../../../src/options/bv_options"
template <> const options::bvNumFunc__option_t::type& Options::operator[](options::bvNumFunc__option_t) const;
#line 63 "../../../src/options/bv_options"
template <> bool Options::wasSetByUser(options::bvNumFunc__option_t) const;
#line 63 "../../../src/options/bv_options"
template <> void Options::assign(options::bvNumFunc__option_t, std::string option, std::string value);
#line 66 "../../../src/options/bv_options"
template <> void Options::set(options::bvEagerExplanations__option_t, const options::bvEagerExplanations__option_t::type& x);
#line 66 "../../../src/options/bv_options"
template <> const options::bvEagerExplanations__option_t::type& Options::operator[](options::bvEagerExplanations__option_t) const;
#line 66 "../../../src/options/bv_options"
template <> bool Options::wasSetByUser(options::bvEagerExplanations__option_t) const;
#line 66 "../../../src/options/bv_options"
template <> void Options::assignBool(options::bvEagerExplanations__option_t, std::string option, bool value);
#line 69 "../../../src/options/bv_options"
template <> const options::bitvectorQuickXplain__option_t::type& Options::operator[](options::bitvectorQuickXplain__option_t) const;
#line 69 "../../../src/options/bv_options"
template <> bool Options::wasSetByUser(options::bitvectorQuickXplain__option_t) const;
#line 69 "../../../src/options/bv_options"
template <> void Options::assignBool(options::bitvectorQuickXplain__option_t, std::string option, bool value);
#line 72 "../../../src/options/bv_options"
template <> const options::bvIntroducePow2__option_t::type& Options::operator[](options::bvIntroducePow2__option_t) const;
#line 72 "../../../src/options/bv_options"
template <> bool Options::wasSetByUser(options::bvIntroducePow2__option_t) const;
#line 72 "../../../src/options/bv_options"
template <> void Options::assignBool(options::bvIntroducePow2__option_t, std::string option, bool value);
#line 75 "../../../src/options/bv_options"
template <> void Options::set(options::bvLazyRewriteExtf__option_t, const options::bvLazyRewriteExtf__option_t::type& x);
#line 75 "../../../src/options/bv_options"
template <> const options::bvLazyRewriteExtf__option_t::type& Options::operator[](options::bvLazyRewriteExtf__option_t) const;
#line 75 "../../../src/options/bv_options"
template <> bool Options::wasSetByUser(options::bvLazyRewriteExtf__option_t) const;
#line 75 "../../../src/options/bv_options"
template <> void Options::assignBool(options::bvLazyRewriteExtf__option_t, std::string option, bool value);
#line 78 "../../../src/options/bv_options"
template <> void Options::set(options::bvLazyReduceExtf__option_t, const options::bvLazyReduceExtf__option_t::type& x);
#line 78 "../../../src/options/bv_options"
template <> const options::bvLazyReduceExtf__option_t::type& Options::operator[](options::bvLazyReduceExtf__option_t) const;
#line 78 "../../../src/options/bv_options"
template <> bool Options::wasSetByUser(options::bvLazyReduceExtf__option_t) const;
#line 78 "../../../src/options/bv_options"
template <> void Options::assignBool(options::bvLazyReduceExtf__option_t, std::string option, bool value);
#line 81 "../../../src/options/bv_options"
template <> void Options::set(options::bvAlgExtf__option_t, const options::bvAlgExtf__option_t::type& x);
#line 81 "../../../src/options/bv_options"
template <> const options::bvAlgExtf__option_t::type& Options::operator[](options::bvAlgExtf__option_t) const;
#line 81 "../../../src/options/bv_options"
template <> bool Options::wasSetByUser(options::bvAlgExtf__option_t) const;
#line 81 "../../../src/options/bv_options"
template <> void Options::assignBool(options::bvAlgExtf__option_t, std::string option, bool value);

#line 44 "../../../src/options/base_options_template.h"

namespace options {


#line 10 "../../../src/options/bv_options"
inline bvSatSolver__option_t::type bvSatSolver__option_t::operator()() const { return (*Options::current())[*this]; }
#line 10 "../../../src/options/bv_options"
inline bool bvSatSolver__option_t::wasSetByUser() const { return Options::current()->wasSetByUser(*this); }
#line 10 "../../../src/options/bv_options"
inline void bvSatSolver__option_t::set(const bvSatSolver__option_t::type& v) { Options::current()->set(*this, v); }

#line 13 "../../../src/options/bv_options"
inline bitblastMode__option_t::type bitblastMode__option_t::operator()() const { return (*Options::current())[*this]; }
#line 13 "../../../src/options/bv_options"
inline bool bitblastMode__option_t::wasSetByUser() const { return Options::current()->wasSetByUser(*this); }
#line 13 "../../../src/options/bv_options"
inline void bitblastMode__option_t::set(const bitblastMode__option_t::type& v) { Options::current()->set(*this, v); }

#line 18 "../../../src/options/bv_options"
inline bitvectorAig__option_t::type bitvectorAig__option_t::operator()() const { return (*Options::current())[*this]; }
#line 18 "../../../src/options/bv_options"
inline bool bitvectorAig__option_t::wasSetByUser() const { return Options::current()->wasSetByUser(*this); }
#line 18 "../../../src/options/bv_options"
inline void bitvectorAig__option_t::set(const bitvectorAig__option_t::type& v) { Options::current()->set(*this, v); }

#line 20 "../../../src/options/bv_options"
inline bitvectorAigSimplifications__option_t::type bitvectorAigSimplifications__option_t::operator()() const { return (*Options::current())[*this]; }
#line 20 "../../../src/options/bv_options"
inline bool bitvectorAigSimplifications__option_t::wasSetByUser() const { return Options::current()->wasSetByUser(*this); }
#line 20 "../../../src/options/bv_options"
inline void bitvectorAigSimplifications__option_t::set(const bitvectorAigSimplifications__option_t::type& v) { Options::current()->set(*this, v); }

#line 24 "../../../src/options/bv_options"
inline bitvectorPropagate__option_t::type bitvectorPropagate__option_t::operator()() const { return (*Options::current())[*this]; }
#line 24 "../../../src/options/bv_options"
inline bool bitvectorPropagate__option_t::wasSetByUser() const { return Options::current()->wasSetByUser(*this); }
#line 24 "../../../src/options/bv_options"
inline void bitvectorPropagate__option_t::set(const bitvectorPropagate__option_t::type& v) { Options::current()->set(*this, v); }

#line 27 "../../../src/options/bv_options"
inline bitvectorEqualitySolver__option_t::type bitvectorEqualitySolver__option_t::operator()() const { return (*Options::current())[*this]; }
#line 27 "../../../src/options/bv_options"
inline bool bitvectorEqualitySolver__option_t::wasSetByUser() const { return Options::current()->wasSetByUser(*this); }
#line 27 "../../../src/options/bv_options"
inline void bitvectorEqualitySolver__option_t::set(const bitvectorEqualitySolver__option_t::type& v) { Options::current()->set(*this, v); }

#line 30 "../../../src/options/bv_options"
inline bitvectorEqualitySlicer__option_t::type bitvectorEqualitySlicer__option_t::operator()() const { return (*Options::current())[*this]; }
#line 30 "../../../src/options/bv_options"
inline bool bitvectorEqualitySlicer__option_t::wasSetByUser() const { return Options::current()->wasSetByUser(*this); }
#line 30 "../../../src/options/bv_options"
inline void bitvectorEqualitySlicer__option_t::set(const bitvectorEqualitySlicer__option_t::type& v) { Options::current()->set(*this, v); }

#line 34 "../../../src/options/bv_options"
inline bitvectorInequalitySolver__option_t::type bitvectorInequalitySolver__option_t::operator()() const { return (*Options::current())[*this]; }
#line 34 "../../../src/options/bv_options"
inline bool bitvectorInequalitySolver__option_t::wasSetByUser() const { return Options::current()->wasSetByUser(*this); }
#line 34 "../../../src/options/bv_options"
inline void bitvectorInequalitySolver__option_t::set(const bitvectorInequalitySolver__option_t::type& v) { Options::current()->set(*this, v); }

#line 37 "../../../src/options/bv_options"
inline bitvectorAlgebraicSolver__option_t::type bitvectorAlgebraicSolver__option_t::operator()() const { return (*Options::current())[*this]; }
#line 37 "../../../src/options/bv_options"
inline bool bitvectorAlgebraicSolver__option_t::wasSetByUser() const { return Options::current()->wasSetByUser(*this); }
#line 37 "../../../src/options/bv_options"
inline void bitvectorAlgebraicSolver__option_t::set(const bitvectorAlgebraicSolver__option_t::type& v) { Options::current()->set(*this, v); }

#line 40 "../../../src/options/bv_options"
inline bitvectorAlgebraicBudget__option_t::type bitvectorAlgebraicBudget__option_t::operator()() const { return (*Options::current())[*this]; }
#line 40 "../../../src/options/bv_options"
inline bool bitvectorAlgebraicBudget__option_t::wasSetByUser() const { return Options::current()->wasSetByUser(*this); }
#line 40 "../../../src/options/bv_options"
inline void bitvectorAlgebraicBudget__option_t::set(const bitvectorAlgebraicBudget__option_t::type& v) { Options::current()->set(*this, v); }

#line 45 "../../../src/options/bv_options"
inline bitvectorToBool__option_t::type bitvectorToBool__option_t::operator()() const { return (*Options::current())[*this]; }
#line 45 "../../../src/options/bv_options"
inline bool bitvectorToBool__option_t::wasSetByUser() const { return Options::current()->wasSetByUser(*this); }
#line 45 "../../../src/options/bv_options"
inline void bitvectorToBool__option_t::set(const bitvectorToBool__option_t::type& v) { Options::current()->set(*this, v); }

#line 48 "../../../src/options/bv_options"
inline boolToBitvector__option_t::type boolToBitvector__option_t::operator()() const { return (*Options::current())[*this]; }
#line 48 "../../../src/options/bv_options"
inline bool boolToBitvector__option_t::wasSetByUser() const { return Options::current()->wasSetByUser(*this); }
#line 48 "../../../src/options/bv_options"
inline void boolToBitvector__option_t::set(const boolToBitvector__option_t::type& v) { Options::current()->set(*this, v); }

#line 51 "../../../src/options/bv_options"
inline bitvectorDivByZeroConst__option_t::type bitvectorDivByZeroConst__option_t::operator()() const { return (*Options::current())[*this]; }
#line 51 "../../../src/options/bv_options"
inline bool bitvectorDivByZeroConst__option_t::wasSetByUser() const { return Options::current()->wasSetByUser(*this); }
#line 51 "../../../src/options/bv_options"
inline void bitvectorDivByZeroConst__option_t::set(const bitvectorDivByZeroConst__option_t::type& v) { Options::current()->set(*this, v); }

#line 54 "../../../src/options/bv_options"
inline bvExtractArithRewrite__option_t::type bvExtractArithRewrite__option_t::operator()() const { return (*Options::current())[*this]; }
#line 54 "../../../src/options/bv_options"
inline bool bvExtractArithRewrite__option_t::wasSetByUser() const { return Options::current()->wasSetByUser(*this); }
#line 54 "../../../src/options/bv_options"
inline void bvExtractArithRewrite__option_t::set(const bvExtractArithRewrite__option_t::type& v) { Options::current()->set(*this, v); }

#line 57 "../../../src/options/bv_options"
inline bvAbstraction__option_t::type bvAbstraction__option_t::operator()() const { return (*Options::current())[*this]; }
#line 57 "../../../src/options/bv_options"
inline bool bvAbstraction__option_t::wasSetByUser() const { return Options::current()->wasSetByUser(*this); }
#line 57 "../../../src/options/bv_options"
inline void bvAbstraction__option_t::set(const bvAbstraction__option_t::type& v) { Options::current()->set(*this, v); }

#line 60 "../../../src/options/bv_options"
inline skolemizeArguments__option_t::type skolemizeArguments__option_t::operator()() const { return (*Options::current())[*this]; }
#line 60 "../../../src/options/bv_options"
inline bool skolemizeArguments__option_t::wasSetByUser() const { return Options::current()->wasSetByUser(*this); }
#line 60 "../../../src/options/bv_options"
inline void skolemizeArguments__option_t::set(const skolemizeArguments__option_t::type& v) { Options::current()->set(*this, v); }

#line 63 "../../../src/options/bv_options"
inline bvNumFunc__option_t::type bvNumFunc__option_t::operator()() const { return (*Options::current())[*this]; }
#line 63 "../../../src/options/bv_options"
inline bool bvNumFunc__option_t::wasSetByUser() const { return Options::current()->wasSetByUser(*this); }

#line 66 "../../../src/options/bv_options"
inline bvEagerExplanations__option_t::type bvEagerExplanations__option_t::operator()() const { return (*Options::current())[*this]; }
#line 66 "../../../src/options/bv_options"
inline bool bvEagerExplanations__option_t::wasSetByUser() const { return Options::current()->wasSetByUser(*this); }
#line 66 "../../../src/options/bv_options"
inline void bvEagerExplanations__option_t::set(const bvEagerExplanations__option_t::type& v) { Options::current()->set(*this, v); }

#line 69 "../../../src/options/bv_options"
inline bitvectorQuickXplain__option_t::type bitvectorQuickXplain__option_t::operator()() const { return (*Options::current())[*this]; }
#line 69 "../../../src/options/bv_options"
inline bool bitvectorQuickXplain__option_t::wasSetByUser() const { return Options::current()->wasSetByUser(*this); }

#line 72 "../../../src/options/bv_options"
inline bvIntroducePow2__option_t::type bvIntroducePow2__option_t::operator()() const { return (*Options::current())[*this]; }
#line 72 "../../../src/options/bv_options"
inline bool bvIntroducePow2__option_t::wasSetByUser() const { return Options::current()->wasSetByUser(*this); }

#line 75 "../../../src/options/bv_options"
inline bvLazyRewriteExtf__option_t::type bvLazyRewriteExtf__option_t::operator()() const { return (*Options::current())[*this]; }
#line 75 "../../../src/options/bv_options"
inline bool bvLazyRewriteExtf__option_t::wasSetByUser() const { return Options::current()->wasSetByUser(*this); }
#line 75 "../../../src/options/bv_options"
inline void bvLazyRewriteExtf__option_t::set(const bvLazyRewriteExtf__option_t::type& v) { Options::current()->set(*this, v); }

#line 78 "../../../src/options/bv_options"
inline bvLazyReduceExtf__option_t::type bvLazyReduceExtf__option_t::operator()() const { return (*Options::current())[*this]; }
#line 78 "../../../src/options/bv_options"
inline bool bvLazyReduceExtf__option_t::wasSetByUser() const { return Options::current()->wasSetByUser(*this); }
#line 78 "../../../src/options/bv_options"
inline void bvLazyReduceExtf__option_t::set(const bvLazyReduceExtf__option_t::type& v) { Options::current()->set(*this, v); }

#line 81 "../../../src/options/bv_options"
inline bvAlgExtf__option_t::type bvAlgExtf__option_t::operator()() const { return (*Options::current())[*this]; }
#line 81 "../../../src/options/bv_options"
inline bool bvAlgExtf__option_t::wasSetByUser() const { return Options::current()->wasSetByUser(*this); }
#line 81 "../../../src/options/bv_options"
inline void bvAlgExtf__option_t::set(const bvAlgExtf__option_t::type& v) { Options::current()->set(*this, v); }

#line 50 "../../../src/options/base_options_template.h"

}/* CVC4::options namespace */

}/* CVC4 namespace */

#endif /* __CVC4__OPTIONS__BV_H */
