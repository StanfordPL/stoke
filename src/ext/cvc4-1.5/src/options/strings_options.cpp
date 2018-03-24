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


#line 8 "../../../src/options/strings_options"
template <> void Options::set(options::stringExp__option_t, const options::stringExp__option_t::type& x) { d_holder->stringExp = x; }
#line 8 "../../../src/options/strings_options"
template <> const options::stringExp__option_t::type& Options::operator[](options::stringExp__option_t) const { return d_holder->stringExp; }
#line 8 "../../../src/options/strings_options"
template <> bool Options::wasSetByUser(options::stringExp__option_t) const { return d_holder->stringExp__setByUser__; }
#line 12 "../../../src/options/strings_options"
template <> const options::stringLB__option_t::type& Options::operator[](options::stringLB__option_t) const { return d_holder->stringLB; }
#line 12 "../../../src/options/strings_options"
template <> bool Options::wasSetByUser(options::stringLB__option_t) const { return d_holder->stringLB__setByUser__; }
#line 16 "../../../src/options/strings_options"
template <> const options::stdASCII__option_t::type& Options::operator[](options::stdASCII__option_t) const { return d_holder->stdASCII; }
#line 16 "../../../src/options/strings_options"
template <> bool Options::wasSetByUser(options::stdASCII__option_t) const { return d_holder->stdASCII__setByUser__; }
#line 19 "../../../src/options/strings_options"
template <> void Options::set(options::stringFMF__option_t, const options::stringFMF__option_t::type& x) { d_holder->stringFMF = x; }
#line 19 "../../../src/options/strings_options"
template <> const options::stringFMF__option_t::type& Options::operator[](options::stringFMF__option_t) const { return d_holder->stringFMF; }
#line 19 "../../../src/options/strings_options"
template <> bool Options::wasSetByUser(options::stringFMF__option_t) const { return d_holder->stringFMF__setByUser__; }
#line 22 "../../../src/options/strings_options"
template <> const options::stringEager__option_t::type& Options::operator[](options::stringEager__option_t) const { return d_holder->stringEager; }
#line 22 "../../../src/options/strings_options"
template <> bool Options::wasSetByUser(options::stringEager__option_t) const { return d_holder->stringEager__setByUser__; }
#line 25 "../../../src/options/strings_options"
template <> const options::stringEIT__option_t::type& Options::operator[](options::stringEIT__option_t) const { return d_holder->stringEIT; }
#line 25 "../../../src/options/strings_options"
template <> bool Options::wasSetByUser(options::stringEIT__option_t) const { return d_holder->stringEIT__setByUser__; }
#line 28 "../../../src/options/strings_options"
template <> const options::stringOpt1__option_t::type& Options::operator[](options::stringOpt1__option_t) const { return d_holder->stringOpt1; }
#line 28 "../../../src/options/strings_options"
template <> bool Options::wasSetByUser(options::stringOpt1__option_t) const { return d_holder->stringOpt1__setByUser__; }
#line 31 "../../../src/options/strings_options"
template <> const options::stringOpt2__option_t::type& Options::operator[](options::stringOpt2__option_t) const { return d_holder->stringOpt2; }
#line 31 "../../../src/options/strings_options"
template <> bool Options::wasSetByUser(options::stringOpt2__option_t) const { return d_holder->stringOpt2__setByUser__; }
#line 34 "../../../src/options/strings_options"
template <> const options::stringIgnNegMembership__option_t::type& Options::operator[](options::stringIgnNegMembership__option_t) const { return d_holder->stringIgnNegMembership; }
#line 34 "../../../src/options/strings_options"
template <> bool Options::wasSetByUser(options::stringIgnNegMembership__option_t) const { return d_holder->stringIgnNegMembership__setByUser__; }
#line 40 "../../../src/options/strings_options"
template <> const options::stringLazyPreproc__option_t::type& Options::operator[](options::stringLazyPreproc__option_t) const { return d_holder->stringLazyPreproc; }
#line 40 "../../../src/options/strings_options"
template <> bool Options::wasSetByUser(options::stringLazyPreproc__option_t) const { return d_holder->stringLazyPreproc__setByUser__; }
#line 43 "../../../src/options/strings_options"
template <> const options::stringLenGeqZ__option_t::type& Options::operator[](options::stringLenGeqZ__option_t) const { return d_holder->stringLenGeqZ; }
#line 43 "../../../src/options/strings_options"
template <> bool Options::wasSetByUser(options::stringLenGeqZ__option_t) const { return d_holder->stringLenGeqZ__setByUser__; }
#line 46 "../../../src/options/strings_options"
template <> const options::stringLenNorm__option_t::type& Options::operator[](options::stringLenNorm__option_t) const { return d_holder->stringLenNorm; }
#line 46 "../../../src/options/strings_options"
template <> bool Options::wasSetByUser(options::stringLenNorm__option_t) const { return d_holder->stringLenNorm__setByUser__; }
#line 48 "../../../src/options/strings_options"
template <> const options::stringSplitEmp__option_t::type& Options::operator[](options::stringSplitEmp__option_t) const { return d_holder->stringSplitEmp; }
#line 48 "../../../src/options/strings_options"
template <> bool Options::wasSetByUser(options::stringSplitEmp__option_t) const { return d_holder->stringSplitEmp__setByUser__; }
#line 50 "../../../src/options/strings_options"
template <> const options::stringInferSym__option_t::type& Options::operator[](options::stringInferSym__option_t) const { return d_holder->stringInferSym; }
#line 50 "../../../src/options/strings_options"
template <> bool Options::wasSetByUser(options::stringInferSym__option_t) const { return d_holder->stringInferSym__setByUser__; }
#line 52 "../../../src/options/strings_options"
template <> const options::stringEagerLen__option_t::type& Options::operator[](options::stringEagerLen__option_t) const { return d_holder->stringEagerLen; }
#line 52 "../../../src/options/strings_options"
template <> bool Options::wasSetByUser(options::stringEagerLen__option_t) const { return d_holder->stringEagerLen__setByUser__; }
#line 54 "../../../src/options/strings_options"
template <> const options::stringCheckEntailLen__option_t::type& Options::operator[](options::stringCheckEntailLen__option_t) const { return d_holder->stringCheckEntailLen; }
#line 54 "../../../src/options/strings_options"
template <> bool Options::wasSetByUser(options::stringCheckEntailLen__option_t) const { return d_holder->stringCheckEntailLen__setByUser__; }
#line 56 "../../../src/options/strings_options"
template <> const options::stringProcessLoop__option_t::type& Options::operator[](options::stringProcessLoop__option_t) const { return d_holder->stringProcessLoop; }
#line 56 "../../../src/options/strings_options"
template <> bool Options::wasSetByUser(options::stringProcessLoop__option_t) const { return d_holder->stringProcessLoop__setByUser__; }
#line 58 "../../../src/options/strings_options"
template <> const options::stringAbortLoop__option_t::type& Options::operator[](options::stringAbortLoop__option_t) const { return d_holder->stringAbortLoop; }
#line 58 "../../../src/options/strings_options"
template <> bool Options::wasSetByUser(options::stringAbortLoop__option_t) const { return d_holder->stringAbortLoop__setByUser__; }
#line 60 "../../../src/options/strings_options"
template <> const options::stringInferAsLemmas__option_t::type& Options::operator[](options::stringInferAsLemmas__option_t) const { return d_holder->stringInferAsLemmas; }
#line 60 "../../../src/options/strings_options"
template <> bool Options::wasSetByUser(options::stringInferAsLemmas__option_t) const { return d_holder->stringInferAsLemmas__setByUser__; }
#line 62 "../../../src/options/strings_options"
template <> const options::stringRExplainLemmas__option_t::type& Options::operator[](options::stringRExplainLemmas__option_t) const { return d_holder->stringRExplainLemmas; }
#line 62 "../../../src/options/strings_options"
template <> bool Options::wasSetByUser(options::stringRExplainLemmas__option_t) const { return d_holder->stringRExplainLemmas__setByUser__; }
#line 64 "../../../src/options/strings_options"
template <> const options::stringMinPrefixExplain__option_t::type& Options::operator[](options::stringMinPrefixExplain__option_t) const { return d_holder->stringMinPrefixExplain; }
#line 64 "../../../src/options/strings_options"
template <> bool Options::wasSetByUser(options::stringMinPrefixExplain__option_t) const { return d_holder->stringMinPrefixExplain__setByUser__; }
#line 66 "../../../src/options/strings_options"
template <> const options::stringGuessModel__option_t::type& Options::operator[](options::stringGuessModel__option_t) const { return d_holder->stringGuessModel; }
#line 66 "../../../src/options/strings_options"
template <> bool Options::wasSetByUser(options::stringGuessModel__option_t) const { return d_holder->stringGuessModel__setByUser__; }
#line 68 "../../../src/options/strings_options"
template <> const options::stringUfReduct__option_t::type& Options::operator[](options::stringUfReduct__option_t) const { return d_holder->stringUfReduct; }
#line 68 "../../../src/options/strings_options"
template <> bool Options::wasSetByUser(options::stringUfReduct__option_t) const { return d_holder->stringUfReduct__setByUser__; }
#line 70 "../../../src/options/strings_options"
template <> const options::stringBinaryCsp__option_t::type& Options::operator[](options::stringBinaryCsp__option_t) const { return d_holder->stringBinaryCsp; }
#line 70 "../../../src/options/strings_options"
template <> bool Options::wasSetByUser(options::stringBinaryCsp__option_t) const { return d_holder->stringBinaryCsp__setByUser__; }
#line 72 "../../../src/options/strings_options"
template <> const options::stringLenPropCsp__option_t::type& Options::operator[](options::stringLenPropCsp__option_t) const { return d_holder->stringLenPropCsp; }
#line 72 "../../../src/options/strings_options"
template <> bool Options::wasSetByUser(options::stringLenPropCsp__option_t) const { return d_holder->stringLenPropCsp__setByUser__; }

#line 24 "../../../src/options/base_options_template.cpp"

namespace options {


#line 8 "../../../src/options/strings_options"
struct stringExp__option_t stringExp;
#line 12 "../../../src/options/strings_options"
struct stringLB__option_t stringLB;
#line 16 "../../../src/options/strings_options"
struct stdASCII__option_t stdASCII;
#line 19 "../../../src/options/strings_options"
struct stringFMF__option_t stringFMF;
#line 22 "../../../src/options/strings_options"
struct stringEager__option_t stringEager;
#line 25 "../../../src/options/strings_options"
struct stringEIT__option_t stringEIT;
#line 28 "../../../src/options/strings_options"
struct stringOpt1__option_t stringOpt1;
#line 31 "../../../src/options/strings_options"
struct stringOpt2__option_t stringOpt2;
#line 34 "../../../src/options/strings_options"
struct stringIgnNegMembership__option_t stringIgnNegMembership;
#line 40 "../../../src/options/strings_options"
struct stringLazyPreproc__option_t stringLazyPreproc;
#line 43 "../../../src/options/strings_options"
struct stringLenGeqZ__option_t stringLenGeqZ;
#line 46 "../../../src/options/strings_options"
struct stringLenNorm__option_t stringLenNorm;
#line 48 "../../../src/options/strings_options"
struct stringSplitEmp__option_t stringSplitEmp;
#line 50 "../../../src/options/strings_options"
struct stringInferSym__option_t stringInferSym;
#line 52 "../../../src/options/strings_options"
struct stringEagerLen__option_t stringEagerLen;
#line 54 "../../../src/options/strings_options"
struct stringCheckEntailLen__option_t stringCheckEntailLen;
#line 56 "../../../src/options/strings_options"
struct stringProcessLoop__option_t stringProcessLoop;
#line 58 "../../../src/options/strings_options"
struct stringAbortLoop__option_t stringAbortLoop;
#line 60 "../../../src/options/strings_options"
struct stringInferAsLemmas__option_t stringInferAsLemmas;
#line 62 "../../../src/options/strings_options"
struct stringRExplainLemmas__option_t stringRExplainLemmas;
#line 64 "../../../src/options/strings_options"
struct stringMinPrefixExplain__option_t stringMinPrefixExplain;
#line 66 "../../../src/options/strings_options"
struct stringGuessModel__option_t stringGuessModel;
#line 68 "../../../src/options/strings_options"
struct stringUfReduct__option_t stringUfReduct;
#line 70 "../../../src/options/strings_options"
struct stringBinaryCsp__option_t stringBinaryCsp;
#line 72 "../../../src/options/strings_options"
struct stringLenPropCsp__option_t stringLenPropCsp;

#line 30 "../../../src/options/base_options_template.cpp"

}/* CVC4::options namespace */

}/* CVC4 namespace */
