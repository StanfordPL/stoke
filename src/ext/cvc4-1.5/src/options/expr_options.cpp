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


#line 8 "../../../src/options/expr_options"
template <> const options::defaultExprDepth__option_t::type& Options::operator[](options::defaultExprDepth__option_t) const { return d_holder->defaultExprDepth; }
#line 8 "../../../src/options/expr_options"
template <> bool Options::wasSetByUser(options::defaultExprDepth__option_t) const { return d_holder->defaultExprDepth__setByUser__; }
#line 12 "../../../src/options/expr_options"
template <> const options::defaultDagThresh__option_t::type& Options::operator[](options::defaultDagThresh__option_t) const { return d_holder->defaultDagThresh; }
#line 12 "../../../src/options/expr_options"
template <> bool Options::wasSetByUser(options::defaultDagThresh__option_t) const { return d_holder->defaultDagThresh__setByUser__; }
#line 17 "../../../src/options/expr_options"
template <> const options::printExprTypes__option_t::type& Options::operator[](options::printExprTypes__option_t) const { return d_holder->printExprTypes; }
#line 17 "../../../src/options/expr_options"
template <> bool Options::wasSetByUser(options::printExprTypes__option_t) const { return d_holder->printExprTypes__setByUser__; }
#line 20 "../../../src/options/expr_options"
template <> const options::earlyTypeChecking__option_t::type& Options::operator[](options::earlyTypeChecking__option_t) const { return d_holder->earlyTypeChecking; }
#line 20 "../../../src/options/expr_options"
template <> bool Options::wasSetByUser(options::earlyTypeChecking__option_t) const { return d_holder->earlyTypeChecking__setByUser__; }
#line 26 "../../../src/options/expr_options"
template <> const options::typeChecking__option_t::type& Options::operator[](options::typeChecking__option_t) const { return d_holder->typeChecking; }
#line 26 "../../../src/options/expr_options"
template <> bool Options::wasSetByUser(options::typeChecking__option_t) const { return d_holder->typeChecking__setByUser__; }

#line 24 "../../../src/options/base_options_template.cpp"

namespace options {


#line 8 "../../../src/options/expr_options"
struct defaultExprDepth__option_t defaultExprDepth;
#line 12 "../../../src/options/expr_options"
struct defaultDagThresh__option_t defaultDagThresh;
#line 17 "../../../src/options/expr_options"
struct printExprTypes__option_t printExprTypes;
#line 20 "../../../src/options/expr_options"
struct earlyTypeChecking__option_t earlyTypeChecking;
#line 26 "../../../src/options/expr_options"
struct typeChecking__option_t typeChecking;

#line 30 "../../../src/options/base_options_template.cpp"

}/* CVC4::options namespace */

}/* CVC4 namespace */
