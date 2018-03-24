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


#line 158 "../../../src/options/base_options"
template <> void Options::set(options::binary_name__option_t, const options::binary_name__option_t::type& x) { d_holder->binary_name = x; }
#line 158 "../../../src/options/base_options"
template <> const options::binary_name__option_t::type& Options::operator[](options::binary_name__option_t) const { return d_holder->binary_name; }
#line 158 "../../../src/options/base_options"
template <> bool Options::wasSetByUser(options::binary_name__option_t) const { return d_holder->binary_name__setByUser__; }
#line 160 "../../../src/options/base_options"
template <> void Options::set(options::in__option_t, const options::in__option_t::type& x) { d_holder->in = x; }
#line 160 "../../../src/options/base_options"
template <> const options::in__option_t::type& Options::operator[](options::in__option_t) const { return d_holder->in; }
#line 160 "../../../src/options/base_options"
template <> bool Options::wasSetByUser(options::in__option_t) const { return d_holder->in__setByUser__; }
#line 161 "../../../src/options/base_options"
template <> void Options::set(options::out__option_t, const options::out__option_t::type& x) { d_holder->out = x; }
#line 161 "../../../src/options/base_options"
template <> const options::out__option_t::type& Options::operator[](options::out__option_t) const { return d_holder->out; }
#line 161 "../../../src/options/base_options"
template <> bool Options::wasSetByUser(options::out__option_t) const { return d_holder->out__setByUser__; }
#line 162 "../../../src/options/base_options"
template <> void Options::set(options::err__option_t, const options::err__option_t::type& x) { d_holder->err = x; }
#line 162 "../../../src/options/base_options"
template <> const options::err__option_t::type& Options::operator[](options::err__option_t) const { return d_holder->err; }
#line 162 "../../../src/options/base_options"
template <> bool Options::wasSetByUser(options::err__option_t) const { return d_holder->err__setByUser__; }
#line 164 "../../../src/options/base_options"
template <> void Options::set(options::inputLanguage__option_t, const options::inputLanguage__option_t::type& x) { d_holder->inputLanguage = x; }
#line 164 "../../../src/options/base_options"
template <> const options::inputLanguage__option_t::type& Options::operator[](options::inputLanguage__option_t) const { return d_holder->inputLanguage; }
#line 164 "../../../src/options/base_options"
template <> bool Options::wasSetByUser(options::inputLanguage__option_t) const { return d_holder->inputLanguage__setByUser__; }
#line 166 "../../../src/options/base_options"
template <> void Options::set(options::outputLanguage__option_t, const options::outputLanguage__option_t::type& x) { d_holder->outputLanguage = x; }
#line 166 "../../../src/options/base_options"
template <> const options::outputLanguage__option_t::type& Options::operator[](options::outputLanguage__option_t) const { return d_holder->outputLanguage; }
#line 166 "../../../src/options/base_options"
template <> bool Options::wasSetByUser(options::outputLanguage__option_t) const { return d_holder->outputLanguage__setByUser__; }
#line 168 "../../../src/options/base_options"
template <> void Options::set(options::languageHelp__option_t, const options::languageHelp__option_t::type& x) { d_holder->languageHelp = x; }
#line 168 "../../../src/options/base_options"
template <> const options::languageHelp__option_t::type& Options::operator[](options::languageHelp__option_t) const { return d_holder->languageHelp; }
#line 168 "../../../src/options/base_options"
template <> bool Options::wasSetByUser(options::languageHelp__option_t) const { return d_holder->languageHelp__setByUser__; }
#line 175 "../../../src/options/base_options"
template <> void Options::set(options::verbosity__option_t, const options::verbosity__option_t::type& x) { d_holder->verbosity = x; }
#line 175 "../../../src/options/base_options"
template <> const options::verbosity__option_t::type& Options::operator[](options::verbosity__option_t) const { return d_holder->verbosity; }
#line 175 "../../../src/options/base_options"
template <> bool Options::wasSetByUser(options::verbosity__option_t) const { return d_holder->verbosity__setByUser__; }
#line 182 "../../../src/options/base_options"
template <> const options::statistics__option_t::type& Options::operator[](options::statistics__option_t) const { return d_holder->statistics; }
#line 182 "../../../src/options/base_options"
template <> bool Options::wasSetByUser(options::statistics__option_t) const { return d_holder->statistics__setByUser__; }
#line 186 "../../../src/options/base_options"
template <> const options::statsEveryQuery__option_t::type& Options::operator[](options::statsEveryQuery__option_t) const { return d_holder->statsEveryQuery; }
#line 186 "../../../src/options/base_options"
template <> bool Options::wasSetByUser(options::statsEveryQuery__option_t) const { return d_holder->statsEveryQuery__setByUser__; }
#line 190 "../../../src/options/base_options"
template <> const options::statsHideZeros__option_t::type& Options::operator[](options::statsHideZeros__option_t) const { return d_holder->statsHideZeros; }
#line 190 "../../../src/options/base_options"
template <> bool Options::wasSetByUser(options::statsHideZeros__option_t) const { return d_holder->statsHideZeros__setByUser__; }
#line 196 "../../../src/options/base_options"
template <> void Options::set(options::parseOnly__option_t, const options::parseOnly__option_t::type& x) { d_holder->parseOnly = x; }
#line 196 "../../../src/options/base_options"
template <> const options::parseOnly__option_t::type& Options::operator[](options::parseOnly__option_t) const { return d_holder->parseOnly; }
#line 196 "../../../src/options/base_options"
template <> bool Options::wasSetByUser(options::parseOnly__option_t) const { return d_holder->parseOnly__setByUser__; }
#line 199 "../../../src/options/base_options"
template <> const options::preprocessOnly__option_t::type& Options::operator[](options::preprocessOnly__option_t) const { return d_holder->preprocessOnly; }
#line 199 "../../../src/options/base_options"
template <> bool Options::wasSetByUser(options::preprocessOnly__option_t) const { return d_holder->preprocessOnly__setByUser__; }
#line 207 "../../../src/options/base_options"
template <> const options::printSuccess__option_t::type& Options::operator[](options::printSuccess__option_t) const { return d_holder->printSuccess; }
#line 207 "../../../src/options/base_options"
template <> bool Options::wasSetByUser(options::printSuccess__option_t) const { return d_holder->printSuccess__setByUser__; }

#line 24 "../../../src/options/base_options_template.cpp"

namespace options {


#line 158 "../../../src/options/base_options"
struct binary_name__option_t binary_name;
#line 160 "../../../src/options/base_options"
struct in__option_t in;
#line 161 "../../../src/options/base_options"
struct out__option_t out;
#line 162 "../../../src/options/base_options"
struct err__option_t err;
#line 164 "../../../src/options/base_options"
struct inputLanguage__option_t inputLanguage;
#line 166 "../../../src/options/base_options"
struct outputLanguage__option_t outputLanguage;
#line 168 "../../../src/options/base_options"
struct languageHelp__option_t languageHelp;
#line 175 "../../../src/options/base_options"
struct verbosity__option_t verbosity;
#line 182 "../../../src/options/base_options"
struct statistics__option_t statistics;
#line 186 "../../../src/options/base_options"
struct statsEveryQuery__option_t statsEveryQuery;
#line 190 "../../../src/options/base_options"
struct statsHideZeros__option_t statsHideZeros;
#line 196 "../../../src/options/base_options"
struct parseOnly__option_t parseOnly;
#line 199 "../../../src/options/base_options"
struct preprocessOnly__option_t preprocessOnly;
#line 207 "../../../src/options/base_options"
struct printSuccess__option_t printSuccess;

#line 30 "../../../src/options/base_options_template.cpp"

}/* CVC4::options namespace */

}/* CVC4 namespace */
