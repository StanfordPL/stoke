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


#line 8 "../../../src/options/idl_options"
template <> void Options::set(options::idlRewriteEq__option_t, const options::idlRewriteEq__option_t::type& x) { d_holder->idlRewriteEq = x; }
#line 8 "../../../src/options/idl_options"
template <> const options::idlRewriteEq__option_t::type& Options::operator[](options::idlRewriteEq__option_t) const { return d_holder->idlRewriteEq; }
#line 8 "../../../src/options/idl_options"
template <> bool Options::wasSetByUser(options::idlRewriteEq__option_t) const { return d_holder->idlRewriteEq__setByUser__; }

#line 24 "../../../src/options/base_options_template.cpp"

namespace options {


#line 8 "../../../src/options/idl_options"
struct idlRewriteEq__option_t idlRewriteEq;

#line 30 "../../../src/options/base_options_template.cpp"

}/* CVC4::options namespace */

}/* CVC4 namespace */
