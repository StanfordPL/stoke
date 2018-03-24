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


#line 8 "../../../src/options/sets_options"
template <> const options::setsProxyLemmas__option_t::type& Options::operator[](options::setsProxyLemmas__option_t) const { return d_holder->setsProxyLemmas; }
#line 8 "../../../src/options/sets_options"
template <> bool Options::wasSetByUser(options::setsProxyLemmas__option_t) const { return d_holder->setsProxyLemmas__setByUser__; }
#line 11 "../../../src/options/sets_options"
template <> const options::setsInferAsLemmas__option_t::type& Options::operator[](options::setsInferAsLemmas__option_t) const { return d_holder->setsInferAsLemmas; }
#line 11 "../../../src/options/sets_options"
template <> bool Options::wasSetByUser(options::setsInferAsLemmas__option_t) const { return d_holder->setsInferAsLemmas__setByUser__; }
#line 14 "../../../src/options/sets_options"
template <> const options::setsRelEager__option_t::type& Options::operator[](options::setsRelEager__option_t) const { return d_holder->setsRelEager; }
#line 14 "../../../src/options/sets_options"
template <> bool Options::wasSetByUser(options::setsRelEager__option_t) const { return d_holder->setsRelEager__setByUser__; }
#line 17 "../../../src/options/sets_options"
template <> const options::setsExt__option_t::type& Options::operator[](options::setsExt__option_t) const { return d_holder->setsExt; }
#line 17 "../../../src/options/sets_options"
template <> bool Options::wasSetByUser(options::setsExt__option_t) const { return d_holder->setsExt__setByUser__; }

#line 24 "../../../src/options/base_options_template.cpp"

namespace options {


#line 8 "../../../src/options/sets_options"
struct setsProxyLemmas__option_t setsProxyLemmas;
#line 11 "../../../src/options/sets_options"
struct setsInferAsLemmas__option_t setsInferAsLemmas;
#line 14 "../../../src/options/sets_options"
struct setsRelEager__option_t setsRelEager;
#line 17 "../../../src/options/sets_options"
struct setsExt__option_t setsExt;

#line 30 "../../../src/options/base_options_template.cpp"

}/* CVC4::options namespace */

}/* CVC4 namespace */
