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

#ifndef __CVC4__OPTIONS__IDL_H
#define __CVC4__OPTIONS__IDL_H

#include "options/options.h"


#line 26 "../../../src/options/base_options_template.h"

#define CVC4_OPTIONS__IDL__FOR_OPTION_HOLDER \
  idlRewriteEq__option_t::type idlRewriteEq; \
  bool idlRewriteEq__setByUser__;

#line 30 "../../../src/options/base_options_template.h"

namespace CVC4 {

namespace options {


#line 8 "../../../src/options/idl_options"
extern struct CVC4_PUBLIC idlRewriteEq__option_t { typedef bool type; type operator()() const; bool wasSetByUser() const; void set(const type& v); } idlRewriteEq CVC4_PUBLIC;

#line 38 "../../../src/options/base_options_template.h"

}/* CVC4::options namespace */


#line 8 "../../../src/options/idl_options"
template <> void Options::set(options::idlRewriteEq__option_t, const options::idlRewriteEq__option_t::type& x);
#line 8 "../../../src/options/idl_options"
template <> const options::idlRewriteEq__option_t::type& Options::operator[](options::idlRewriteEq__option_t) const;
#line 8 "../../../src/options/idl_options"
template <> bool Options::wasSetByUser(options::idlRewriteEq__option_t) const;
#line 8 "../../../src/options/idl_options"
template <> void Options::assignBool(options::idlRewriteEq__option_t, std::string option, bool value);

#line 44 "../../../src/options/base_options_template.h"

namespace options {


#line 8 "../../../src/options/idl_options"
inline idlRewriteEq__option_t::type idlRewriteEq__option_t::operator()() const { return (*Options::current())[*this]; }
#line 8 "../../../src/options/idl_options"
inline bool idlRewriteEq__option_t::wasSetByUser() const { return Options::current()->wasSetByUser(*this); }
#line 8 "../../../src/options/idl_options"
inline void idlRewriteEq__option_t::set(const idlRewriteEq__option_t::type& v) { Options::current()->set(*this, v); }

#line 50 "../../../src/options/base_options_template.h"

}/* CVC4::options namespace */

}/* CVC4 namespace */

#endif /* __CVC4__OPTIONS__IDL_H */
