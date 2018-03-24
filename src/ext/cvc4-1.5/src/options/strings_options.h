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

#ifndef __CVC4__OPTIONS__STRINGS_H
#define __CVC4__OPTIONS__STRINGS_H

#include "options/options.h"


#line 26 "../../../src/options/base_options_template.h"

#define CVC4_OPTIONS__STRINGS__FOR_OPTION_HOLDER \
  stringExp__option_t::type stringExp; \
  bool stringExp__setByUser__; \
  stringLB__option_t::type stringLB; \
  bool stringLB__setByUser__; \
  stdASCII__option_t::type stdASCII; \
  bool stdASCII__setByUser__; \
  stringFMF__option_t::type stringFMF; \
  bool stringFMF__setByUser__; \
  stringEager__option_t::type stringEager; \
  bool stringEager__setByUser__; \
  stringEIT__option_t::type stringEIT; \
  bool stringEIT__setByUser__; \
  stringOpt1__option_t::type stringOpt1; \
  bool stringOpt1__setByUser__; \
  stringOpt2__option_t::type stringOpt2; \
  bool stringOpt2__setByUser__; \
  stringIgnNegMembership__option_t::type stringIgnNegMembership; \
  bool stringIgnNegMembership__setByUser__; \
  stringLazyPreproc__option_t::type stringLazyPreproc; \
  bool stringLazyPreproc__setByUser__; \
  stringLenGeqZ__option_t::type stringLenGeqZ; \
  bool stringLenGeqZ__setByUser__; \
  stringLenNorm__option_t::type stringLenNorm; \
  bool stringLenNorm__setByUser__; \
  stringSplitEmp__option_t::type stringSplitEmp; \
  bool stringSplitEmp__setByUser__; \
  stringInferSym__option_t::type stringInferSym; \
  bool stringInferSym__setByUser__; \
  stringEagerLen__option_t::type stringEagerLen; \
  bool stringEagerLen__setByUser__; \
  stringCheckEntailLen__option_t::type stringCheckEntailLen; \
  bool stringCheckEntailLen__setByUser__; \
  stringProcessLoop__option_t::type stringProcessLoop; \
  bool stringProcessLoop__setByUser__; \
  stringAbortLoop__option_t::type stringAbortLoop; \
  bool stringAbortLoop__setByUser__; \
  stringInferAsLemmas__option_t::type stringInferAsLemmas; \
  bool stringInferAsLemmas__setByUser__; \
  stringRExplainLemmas__option_t::type stringRExplainLemmas; \
  bool stringRExplainLemmas__setByUser__; \
  stringMinPrefixExplain__option_t::type stringMinPrefixExplain; \
  bool stringMinPrefixExplain__setByUser__; \
  stringGuessModel__option_t::type stringGuessModel; \
  bool stringGuessModel__setByUser__; \
  stringUfReduct__option_t::type stringUfReduct; \
  bool stringUfReduct__setByUser__; \
  stringBinaryCsp__option_t::type stringBinaryCsp; \
  bool stringBinaryCsp__setByUser__; \
  stringLenPropCsp__option_t::type stringLenPropCsp; \
  bool stringLenPropCsp__setByUser__;

#line 30 "../../../src/options/base_options_template.h"

namespace CVC4 {

namespace options {


#line 8 "../../../src/options/strings_options"
extern struct CVC4_PUBLIC stringExp__option_t { typedef bool type; type operator()() const; bool wasSetByUser() const; void set(const type& v); } stringExp CVC4_PUBLIC;
#line 12 "../../../src/options/strings_options"
extern struct CVC4_PUBLIC stringLB__option_t { typedef unsigned type; type operator()() const; bool wasSetByUser() const; } stringLB CVC4_PUBLIC;
#line 16 "../../../src/options/strings_options"
extern struct CVC4_PUBLIC stdASCII__option_t { typedef bool type; type operator()() const; bool wasSetByUser() const; } stdASCII CVC4_PUBLIC;
#line 19 "../../../src/options/strings_options"
extern struct CVC4_PUBLIC stringFMF__option_t { typedef bool type; type operator()() const; bool wasSetByUser() const; void set(const type& v); } stringFMF CVC4_PUBLIC;
#line 22 "../../../src/options/strings_options"
extern struct CVC4_PUBLIC stringEager__option_t { typedef bool type; type operator()() const; bool wasSetByUser() const; } stringEager CVC4_PUBLIC;
#line 25 "../../../src/options/strings_options"
extern struct CVC4_PUBLIC stringEIT__option_t { typedef bool type; type operator()() const; bool wasSetByUser() const; } stringEIT CVC4_PUBLIC;
#line 28 "../../../src/options/strings_options"
extern struct CVC4_PUBLIC stringOpt1__option_t { typedef bool type; type operator()() const; bool wasSetByUser() const; } stringOpt1 CVC4_PUBLIC;
#line 31 "../../../src/options/strings_options"
extern struct CVC4_PUBLIC stringOpt2__option_t { typedef bool type; type operator()() const; bool wasSetByUser() const; } stringOpt2 CVC4_PUBLIC;
#line 34 "../../../src/options/strings_options"
extern struct CVC4_PUBLIC stringIgnNegMembership__option_t { typedef bool type; type operator()() const; bool wasSetByUser() const; } stringIgnNegMembership CVC4_PUBLIC;
#line 40 "../../../src/options/strings_options"
extern struct CVC4_PUBLIC stringLazyPreproc__option_t { typedef bool type; type operator()() const; bool wasSetByUser() const; } stringLazyPreproc CVC4_PUBLIC;
#line 43 "../../../src/options/strings_options"
extern struct CVC4_PUBLIC stringLenGeqZ__option_t { typedef bool type; type operator()() const; bool wasSetByUser() const; } stringLenGeqZ CVC4_PUBLIC;
#line 46 "../../../src/options/strings_options"
extern struct CVC4_PUBLIC stringLenNorm__option_t { typedef bool type; type operator()() const; bool wasSetByUser() const; } stringLenNorm CVC4_PUBLIC;
#line 48 "../../../src/options/strings_options"
extern struct CVC4_PUBLIC stringSplitEmp__option_t { typedef bool type; type operator()() const; bool wasSetByUser() const; } stringSplitEmp CVC4_PUBLIC;
#line 50 "../../../src/options/strings_options"
extern struct CVC4_PUBLIC stringInferSym__option_t { typedef bool type; type operator()() const; bool wasSetByUser() const; } stringInferSym CVC4_PUBLIC;
#line 52 "../../../src/options/strings_options"
extern struct CVC4_PUBLIC stringEagerLen__option_t { typedef bool type; type operator()() const; bool wasSetByUser() const; } stringEagerLen CVC4_PUBLIC;
#line 54 "../../../src/options/strings_options"
extern struct CVC4_PUBLIC stringCheckEntailLen__option_t { typedef bool type; type operator()() const; bool wasSetByUser() const; } stringCheckEntailLen CVC4_PUBLIC;
#line 56 "../../../src/options/strings_options"
extern struct CVC4_PUBLIC stringProcessLoop__option_t { typedef bool type; type operator()() const; bool wasSetByUser() const; } stringProcessLoop CVC4_PUBLIC;
#line 58 "../../../src/options/strings_options"
extern struct CVC4_PUBLIC stringAbortLoop__option_t { typedef bool type; type operator()() const; bool wasSetByUser() const; } stringAbortLoop CVC4_PUBLIC;
#line 60 "../../../src/options/strings_options"
extern struct CVC4_PUBLIC stringInferAsLemmas__option_t { typedef bool type; type operator()() const; bool wasSetByUser() const; } stringInferAsLemmas CVC4_PUBLIC;
#line 62 "../../../src/options/strings_options"
extern struct CVC4_PUBLIC stringRExplainLemmas__option_t { typedef bool type; type operator()() const; bool wasSetByUser() const; } stringRExplainLemmas CVC4_PUBLIC;
#line 64 "../../../src/options/strings_options"
extern struct CVC4_PUBLIC stringMinPrefixExplain__option_t { typedef bool type; type operator()() const; bool wasSetByUser() const; } stringMinPrefixExplain CVC4_PUBLIC;
#line 66 "../../../src/options/strings_options"
extern struct CVC4_PUBLIC stringGuessModel__option_t { typedef bool type; type operator()() const; bool wasSetByUser() const; } stringGuessModel CVC4_PUBLIC;
#line 68 "../../../src/options/strings_options"
extern struct CVC4_PUBLIC stringUfReduct__option_t { typedef bool type; type operator()() const; bool wasSetByUser() const; } stringUfReduct CVC4_PUBLIC;
#line 70 "../../../src/options/strings_options"
extern struct CVC4_PUBLIC stringBinaryCsp__option_t { typedef bool type; type operator()() const; bool wasSetByUser() const; } stringBinaryCsp CVC4_PUBLIC;
#line 72 "../../../src/options/strings_options"
extern struct CVC4_PUBLIC stringLenPropCsp__option_t { typedef bool type; type operator()() const; bool wasSetByUser() const; } stringLenPropCsp CVC4_PUBLIC;

#line 38 "../../../src/options/base_options_template.h"

}/* CVC4::options namespace */


#line 8 "../../../src/options/strings_options"
template <> void Options::set(options::stringExp__option_t, const options::stringExp__option_t::type& x);
#line 8 "../../../src/options/strings_options"
template <> const options::stringExp__option_t::type& Options::operator[](options::stringExp__option_t) const;
#line 8 "../../../src/options/strings_options"
template <> bool Options::wasSetByUser(options::stringExp__option_t) const;
#line 8 "../../../src/options/strings_options"
template <> void Options::assignBool(options::stringExp__option_t, std::string option, bool value);
#line 12 "../../../src/options/strings_options"
template <> const options::stringLB__option_t::type& Options::operator[](options::stringLB__option_t) const;
#line 12 "../../../src/options/strings_options"
template <> bool Options::wasSetByUser(options::stringLB__option_t) const;
#line 12 "../../../src/options/strings_options"
template <> void Options::assign(options::stringLB__option_t, std::string option, std::string value);
#line 16 "../../../src/options/strings_options"
template <> const options::stdASCII__option_t::type& Options::operator[](options::stdASCII__option_t) const;
#line 16 "../../../src/options/strings_options"
template <> bool Options::wasSetByUser(options::stdASCII__option_t) const;
#line 16 "../../../src/options/strings_options"
template <> void Options::assignBool(options::stdASCII__option_t, std::string option, bool value);
#line 19 "../../../src/options/strings_options"
template <> void Options::set(options::stringFMF__option_t, const options::stringFMF__option_t::type& x);
#line 19 "../../../src/options/strings_options"
template <> const options::stringFMF__option_t::type& Options::operator[](options::stringFMF__option_t) const;
#line 19 "../../../src/options/strings_options"
template <> bool Options::wasSetByUser(options::stringFMF__option_t) const;
#line 19 "../../../src/options/strings_options"
template <> void Options::assignBool(options::stringFMF__option_t, std::string option, bool value);
#line 22 "../../../src/options/strings_options"
template <> const options::stringEager__option_t::type& Options::operator[](options::stringEager__option_t) const;
#line 22 "../../../src/options/strings_options"
template <> bool Options::wasSetByUser(options::stringEager__option_t) const;
#line 22 "../../../src/options/strings_options"
template <> void Options::assignBool(options::stringEager__option_t, std::string option, bool value);
#line 25 "../../../src/options/strings_options"
template <> const options::stringEIT__option_t::type& Options::operator[](options::stringEIT__option_t) const;
#line 25 "../../../src/options/strings_options"
template <> bool Options::wasSetByUser(options::stringEIT__option_t) const;
#line 25 "../../../src/options/strings_options"
template <> void Options::assignBool(options::stringEIT__option_t, std::string option, bool value);
#line 28 "../../../src/options/strings_options"
template <> const options::stringOpt1__option_t::type& Options::operator[](options::stringOpt1__option_t) const;
#line 28 "../../../src/options/strings_options"
template <> bool Options::wasSetByUser(options::stringOpt1__option_t) const;
#line 28 "../../../src/options/strings_options"
template <> void Options::assignBool(options::stringOpt1__option_t, std::string option, bool value);
#line 31 "../../../src/options/strings_options"
template <> const options::stringOpt2__option_t::type& Options::operator[](options::stringOpt2__option_t) const;
#line 31 "../../../src/options/strings_options"
template <> bool Options::wasSetByUser(options::stringOpt2__option_t) const;
#line 31 "../../../src/options/strings_options"
template <> void Options::assignBool(options::stringOpt2__option_t, std::string option, bool value);
#line 34 "../../../src/options/strings_options"
template <> const options::stringIgnNegMembership__option_t::type& Options::operator[](options::stringIgnNegMembership__option_t) const;
#line 34 "../../../src/options/strings_options"
template <> bool Options::wasSetByUser(options::stringIgnNegMembership__option_t) const;
#line 34 "../../../src/options/strings_options"
template <> void Options::assignBool(options::stringIgnNegMembership__option_t, std::string option, bool value);
#line 40 "../../../src/options/strings_options"
template <> const options::stringLazyPreproc__option_t::type& Options::operator[](options::stringLazyPreproc__option_t) const;
#line 40 "../../../src/options/strings_options"
template <> bool Options::wasSetByUser(options::stringLazyPreproc__option_t) const;
#line 40 "../../../src/options/strings_options"
template <> void Options::assignBool(options::stringLazyPreproc__option_t, std::string option, bool value);
#line 43 "../../../src/options/strings_options"
template <> const options::stringLenGeqZ__option_t::type& Options::operator[](options::stringLenGeqZ__option_t) const;
#line 43 "../../../src/options/strings_options"
template <> bool Options::wasSetByUser(options::stringLenGeqZ__option_t) const;
#line 43 "../../../src/options/strings_options"
template <> void Options::assignBool(options::stringLenGeqZ__option_t, std::string option, bool value);
#line 46 "../../../src/options/strings_options"
template <> const options::stringLenNorm__option_t::type& Options::operator[](options::stringLenNorm__option_t) const;
#line 46 "../../../src/options/strings_options"
template <> bool Options::wasSetByUser(options::stringLenNorm__option_t) const;
#line 46 "../../../src/options/strings_options"
template <> void Options::assignBool(options::stringLenNorm__option_t, std::string option, bool value);
#line 48 "../../../src/options/strings_options"
template <> const options::stringSplitEmp__option_t::type& Options::operator[](options::stringSplitEmp__option_t) const;
#line 48 "../../../src/options/strings_options"
template <> bool Options::wasSetByUser(options::stringSplitEmp__option_t) const;
#line 48 "../../../src/options/strings_options"
template <> void Options::assignBool(options::stringSplitEmp__option_t, std::string option, bool value);
#line 50 "../../../src/options/strings_options"
template <> const options::stringInferSym__option_t::type& Options::operator[](options::stringInferSym__option_t) const;
#line 50 "../../../src/options/strings_options"
template <> bool Options::wasSetByUser(options::stringInferSym__option_t) const;
#line 50 "../../../src/options/strings_options"
template <> void Options::assignBool(options::stringInferSym__option_t, std::string option, bool value);
#line 52 "../../../src/options/strings_options"
template <> const options::stringEagerLen__option_t::type& Options::operator[](options::stringEagerLen__option_t) const;
#line 52 "../../../src/options/strings_options"
template <> bool Options::wasSetByUser(options::stringEagerLen__option_t) const;
#line 52 "../../../src/options/strings_options"
template <> void Options::assignBool(options::stringEagerLen__option_t, std::string option, bool value);
#line 54 "../../../src/options/strings_options"
template <> const options::stringCheckEntailLen__option_t::type& Options::operator[](options::stringCheckEntailLen__option_t) const;
#line 54 "../../../src/options/strings_options"
template <> bool Options::wasSetByUser(options::stringCheckEntailLen__option_t) const;
#line 54 "../../../src/options/strings_options"
template <> void Options::assignBool(options::stringCheckEntailLen__option_t, std::string option, bool value);
#line 56 "../../../src/options/strings_options"
template <> const options::stringProcessLoop__option_t::type& Options::operator[](options::stringProcessLoop__option_t) const;
#line 56 "../../../src/options/strings_options"
template <> bool Options::wasSetByUser(options::stringProcessLoop__option_t) const;
#line 56 "../../../src/options/strings_options"
template <> void Options::assignBool(options::stringProcessLoop__option_t, std::string option, bool value);
#line 58 "../../../src/options/strings_options"
template <> const options::stringAbortLoop__option_t::type& Options::operator[](options::stringAbortLoop__option_t) const;
#line 58 "../../../src/options/strings_options"
template <> bool Options::wasSetByUser(options::stringAbortLoop__option_t) const;
#line 58 "../../../src/options/strings_options"
template <> void Options::assignBool(options::stringAbortLoop__option_t, std::string option, bool value);
#line 60 "../../../src/options/strings_options"
template <> const options::stringInferAsLemmas__option_t::type& Options::operator[](options::stringInferAsLemmas__option_t) const;
#line 60 "../../../src/options/strings_options"
template <> bool Options::wasSetByUser(options::stringInferAsLemmas__option_t) const;
#line 60 "../../../src/options/strings_options"
template <> void Options::assignBool(options::stringInferAsLemmas__option_t, std::string option, bool value);
#line 62 "../../../src/options/strings_options"
template <> const options::stringRExplainLemmas__option_t::type& Options::operator[](options::stringRExplainLemmas__option_t) const;
#line 62 "../../../src/options/strings_options"
template <> bool Options::wasSetByUser(options::stringRExplainLemmas__option_t) const;
#line 62 "../../../src/options/strings_options"
template <> void Options::assignBool(options::stringRExplainLemmas__option_t, std::string option, bool value);
#line 64 "../../../src/options/strings_options"
template <> const options::stringMinPrefixExplain__option_t::type& Options::operator[](options::stringMinPrefixExplain__option_t) const;
#line 64 "../../../src/options/strings_options"
template <> bool Options::wasSetByUser(options::stringMinPrefixExplain__option_t) const;
#line 64 "../../../src/options/strings_options"
template <> void Options::assignBool(options::stringMinPrefixExplain__option_t, std::string option, bool value);
#line 66 "../../../src/options/strings_options"
template <> const options::stringGuessModel__option_t::type& Options::operator[](options::stringGuessModel__option_t) const;
#line 66 "../../../src/options/strings_options"
template <> bool Options::wasSetByUser(options::stringGuessModel__option_t) const;
#line 66 "../../../src/options/strings_options"
template <> void Options::assignBool(options::stringGuessModel__option_t, std::string option, bool value);
#line 68 "../../../src/options/strings_options"
template <> const options::stringUfReduct__option_t::type& Options::operator[](options::stringUfReduct__option_t) const;
#line 68 "../../../src/options/strings_options"
template <> bool Options::wasSetByUser(options::stringUfReduct__option_t) const;
#line 68 "../../../src/options/strings_options"
template <> void Options::assignBool(options::stringUfReduct__option_t, std::string option, bool value);
#line 70 "../../../src/options/strings_options"
template <> const options::stringBinaryCsp__option_t::type& Options::operator[](options::stringBinaryCsp__option_t) const;
#line 70 "../../../src/options/strings_options"
template <> bool Options::wasSetByUser(options::stringBinaryCsp__option_t) const;
#line 70 "../../../src/options/strings_options"
template <> void Options::assignBool(options::stringBinaryCsp__option_t, std::string option, bool value);
#line 72 "../../../src/options/strings_options"
template <> const options::stringLenPropCsp__option_t::type& Options::operator[](options::stringLenPropCsp__option_t) const;
#line 72 "../../../src/options/strings_options"
template <> bool Options::wasSetByUser(options::stringLenPropCsp__option_t) const;
#line 72 "../../../src/options/strings_options"
template <> void Options::assignBool(options::stringLenPropCsp__option_t, std::string option, bool value);

#line 44 "../../../src/options/base_options_template.h"

namespace options {


#line 8 "../../../src/options/strings_options"
inline stringExp__option_t::type stringExp__option_t::operator()() const { return (*Options::current())[*this]; }
#line 8 "../../../src/options/strings_options"
inline bool stringExp__option_t::wasSetByUser() const { return Options::current()->wasSetByUser(*this); }
#line 8 "../../../src/options/strings_options"
inline void stringExp__option_t::set(const stringExp__option_t::type& v) { Options::current()->set(*this, v); }

#line 12 "../../../src/options/strings_options"
inline stringLB__option_t::type stringLB__option_t::operator()() const { return (*Options::current())[*this]; }
#line 12 "../../../src/options/strings_options"
inline bool stringLB__option_t::wasSetByUser() const { return Options::current()->wasSetByUser(*this); }

#line 16 "../../../src/options/strings_options"
inline stdASCII__option_t::type stdASCII__option_t::operator()() const { return (*Options::current())[*this]; }
#line 16 "../../../src/options/strings_options"
inline bool stdASCII__option_t::wasSetByUser() const { return Options::current()->wasSetByUser(*this); }

#line 19 "../../../src/options/strings_options"
inline stringFMF__option_t::type stringFMF__option_t::operator()() const { return (*Options::current())[*this]; }
#line 19 "../../../src/options/strings_options"
inline bool stringFMF__option_t::wasSetByUser() const { return Options::current()->wasSetByUser(*this); }
#line 19 "../../../src/options/strings_options"
inline void stringFMF__option_t::set(const stringFMF__option_t::type& v) { Options::current()->set(*this, v); }

#line 22 "../../../src/options/strings_options"
inline stringEager__option_t::type stringEager__option_t::operator()() const { return (*Options::current())[*this]; }
#line 22 "../../../src/options/strings_options"
inline bool stringEager__option_t::wasSetByUser() const { return Options::current()->wasSetByUser(*this); }

#line 25 "../../../src/options/strings_options"
inline stringEIT__option_t::type stringEIT__option_t::operator()() const { return (*Options::current())[*this]; }
#line 25 "../../../src/options/strings_options"
inline bool stringEIT__option_t::wasSetByUser() const { return Options::current()->wasSetByUser(*this); }

#line 28 "../../../src/options/strings_options"
inline stringOpt1__option_t::type stringOpt1__option_t::operator()() const { return (*Options::current())[*this]; }
#line 28 "../../../src/options/strings_options"
inline bool stringOpt1__option_t::wasSetByUser() const { return Options::current()->wasSetByUser(*this); }

#line 31 "../../../src/options/strings_options"
inline stringOpt2__option_t::type stringOpt2__option_t::operator()() const { return (*Options::current())[*this]; }
#line 31 "../../../src/options/strings_options"
inline bool stringOpt2__option_t::wasSetByUser() const { return Options::current()->wasSetByUser(*this); }

#line 34 "../../../src/options/strings_options"
inline stringIgnNegMembership__option_t::type stringIgnNegMembership__option_t::operator()() const { return (*Options::current())[*this]; }
#line 34 "../../../src/options/strings_options"
inline bool stringIgnNegMembership__option_t::wasSetByUser() const { return Options::current()->wasSetByUser(*this); }

#line 40 "../../../src/options/strings_options"
inline stringLazyPreproc__option_t::type stringLazyPreproc__option_t::operator()() const { return (*Options::current())[*this]; }
#line 40 "../../../src/options/strings_options"
inline bool stringLazyPreproc__option_t::wasSetByUser() const { return Options::current()->wasSetByUser(*this); }

#line 43 "../../../src/options/strings_options"
inline stringLenGeqZ__option_t::type stringLenGeqZ__option_t::operator()() const { return (*Options::current())[*this]; }
#line 43 "../../../src/options/strings_options"
inline bool stringLenGeqZ__option_t::wasSetByUser() const { return Options::current()->wasSetByUser(*this); }

#line 46 "../../../src/options/strings_options"
inline stringLenNorm__option_t::type stringLenNorm__option_t::operator()() const { return (*Options::current())[*this]; }
#line 46 "../../../src/options/strings_options"
inline bool stringLenNorm__option_t::wasSetByUser() const { return Options::current()->wasSetByUser(*this); }

#line 48 "../../../src/options/strings_options"
inline stringSplitEmp__option_t::type stringSplitEmp__option_t::operator()() const { return (*Options::current())[*this]; }
#line 48 "../../../src/options/strings_options"
inline bool stringSplitEmp__option_t::wasSetByUser() const { return Options::current()->wasSetByUser(*this); }

#line 50 "../../../src/options/strings_options"
inline stringInferSym__option_t::type stringInferSym__option_t::operator()() const { return (*Options::current())[*this]; }
#line 50 "../../../src/options/strings_options"
inline bool stringInferSym__option_t::wasSetByUser() const { return Options::current()->wasSetByUser(*this); }

#line 52 "../../../src/options/strings_options"
inline stringEagerLen__option_t::type stringEagerLen__option_t::operator()() const { return (*Options::current())[*this]; }
#line 52 "../../../src/options/strings_options"
inline bool stringEagerLen__option_t::wasSetByUser() const { return Options::current()->wasSetByUser(*this); }

#line 54 "../../../src/options/strings_options"
inline stringCheckEntailLen__option_t::type stringCheckEntailLen__option_t::operator()() const { return (*Options::current())[*this]; }
#line 54 "../../../src/options/strings_options"
inline bool stringCheckEntailLen__option_t::wasSetByUser() const { return Options::current()->wasSetByUser(*this); }

#line 56 "../../../src/options/strings_options"
inline stringProcessLoop__option_t::type stringProcessLoop__option_t::operator()() const { return (*Options::current())[*this]; }
#line 56 "../../../src/options/strings_options"
inline bool stringProcessLoop__option_t::wasSetByUser() const { return Options::current()->wasSetByUser(*this); }

#line 58 "../../../src/options/strings_options"
inline stringAbortLoop__option_t::type stringAbortLoop__option_t::operator()() const { return (*Options::current())[*this]; }
#line 58 "../../../src/options/strings_options"
inline bool stringAbortLoop__option_t::wasSetByUser() const { return Options::current()->wasSetByUser(*this); }

#line 60 "../../../src/options/strings_options"
inline stringInferAsLemmas__option_t::type stringInferAsLemmas__option_t::operator()() const { return (*Options::current())[*this]; }
#line 60 "../../../src/options/strings_options"
inline bool stringInferAsLemmas__option_t::wasSetByUser() const { return Options::current()->wasSetByUser(*this); }

#line 62 "../../../src/options/strings_options"
inline stringRExplainLemmas__option_t::type stringRExplainLemmas__option_t::operator()() const { return (*Options::current())[*this]; }
#line 62 "../../../src/options/strings_options"
inline bool stringRExplainLemmas__option_t::wasSetByUser() const { return Options::current()->wasSetByUser(*this); }

#line 64 "../../../src/options/strings_options"
inline stringMinPrefixExplain__option_t::type stringMinPrefixExplain__option_t::operator()() const { return (*Options::current())[*this]; }
#line 64 "../../../src/options/strings_options"
inline bool stringMinPrefixExplain__option_t::wasSetByUser() const { return Options::current()->wasSetByUser(*this); }

#line 66 "../../../src/options/strings_options"
inline stringGuessModel__option_t::type stringGuessModel__option_t::operator()() const { return (*Options::current())[*this]; }
#line 66 "../../../src/options/strings_options"
inline bool stringGuessModel__option_t::wasSetByUser() const { return Options::current()->wasSetByUser(*this); }

#line 68 "../../../src/options/strings_options"
inline stringUfReduct__option_t::type stringUfReduct__option_t::operator()() const { return (*Options::current())[*this]; }
#line 68 "../../../src/options/strings_options"
inline bool stringUfReduct__option_t::wasSetByUser() const { return Options::current()->wasSetByUser(*this); }

#line 70 "../../../src/options/strings_options"
inline stringBinaryCsp__option_t::type stringBinaryCsp__option_t::operator()() const { return (*Options::current())[*this]; }
#line 70 "../../../src/options/strings_options"
inline bool stringBinaryCsp__option_t::wasSetByUser() const { return Options::current()->wasSetByUser(*this); }

#line 72 "../../../src/options/strings_options"
inline stringLenPropCsp__option_t::type stringLenPropCsp__option_t::operator()() const { return (*Options::current())[*this]; }
#line 72 "../../../src/options/strings_options"
inline bool stringLenPropCsp__option_t::wasSetByUser() const { return Options::current()->wasSetByUser(*this); }

#line 50 "../../../src/options/base_options_template.h"

}/* CVC4::options namespace */

}/* CVC4 namespace */

#endif /* __CVC4__OPTIONS__STRINGS_H */
