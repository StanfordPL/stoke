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

#ifndef __CVC4__OPTIONS__SETS_H
#define __CVC4__OPTIONS__SETS_H

#include "options/options.h"


#line 26 "../../../src/options/base_options_template.h"

#define CVC4_OPTIONS__SETS__FOR_OPTION_HOLDER \
  setsProxyLemmas__option_t::type setsProxyLemmas; \
  bool setsProxyLemmas__setByUser__; \
  setsInferAsLemmas__option_t::type setsInferAsLemmas; \
  bool setsInferAsLemmas__setByUser__; \
  setsRelEager__option_t::type setsRelEager; \
  bool setsRelEager__setByUser__; \
  setsExt__option_t::type setsExt; \
  bool setsExt__setByUser__;

#line 30 "../../../src/options/base_options_template.h"

namespace CVC4 {

namespace options {


#line 8 "../../../src/options/sets_options"
extern struct CVC4_PUBLIC setsProxyLemmas__option_t { typedef bool type; type operator()() const; bool wasSetByUser() const; } setsProxyLemmas CVC4_PUBLIC;
#line 11 "../../../src/options/sets_options"
extern struct CVC4_PUBLIC setsInferAsLemmas__option_t { typedef bool type; type operator()() const; bool wasSetByUser() const; } setsInferAsLemmas CVC4_PUBLIC;
#line 14 "../../../src/options/sets_options"
extern struct CVC4_PUBLIC setsRelEager__option_t { typedef bool type; type operator()() const; bool wasSetByUser() const; } setsRelEager CVC4_PUBLIC;
#line 17 "../../../src/options/sets_options"
extern struct CVC4_PUBLIC setsExt__option_t { typedef bool type; type operator()() const; bool wasSetByUser() const; } setsExt CVC4_PUBLIC;

#line 38 "../../../src/options/base_options_template.h"

}/* CVC4::options namespace */


#line 8 "../../../src/options/sets_options"
template <> const options::setsProxyLemmas__option_t::type& Options::operator[](options::setsProxyLemmas__option_t) const;
#line 8 "../../../src/options/sets_options"
template <> bool Options::wasSetByUser(options::setsProxyLemmas__option_t) const;
#line 8 "../../../src/options/sets_options"
template <> void Options::assignBool(options::setsProxyLemmas__option_t, std::string option, bool value);
#line 11 "../../../src/options/sets_options"
template <> const options::setsInferAsLemmas__option_t::type& Options::operator[](options::setsInferAsLemmas__option_t) const;
#line 11 "../../../src/options/sets_options"
template <> bool Options::wasSetByUser(options::setsInferAsLemmas__option_t) const;
#line 11 "../../../src/options/sets_options"
template <> void Options::assignBool(options::setsInferAsLemmas__option_t, std::string option, bool value);
#line 14 "../../../src/options/sets_options"
template <> const options::setsRelEager__option_t::type& Options::operator[](options::setsRelEager__option_t) const;
#line 14 "../../../src/options/sets_options"
template <> bool Options::wasSetByUser(options::setsRelEager__option_t) const;
#line 14 "../../../src/options/sets_options"
template <> void Options::assignBool(options::setsRelEager__option_t, std::string option, bool value);
#line 17 "../../../src/options/sets_options"
template <> const options::setsExt__option_t::type& Options::operator[](options::setsExt__option_t) const;
#line 17 "../../../src/options/sets_options"
template <> bool Options::wasSetByUser(options::setsExt__option_t) const;
#line 17 "../../../src/options/sets_options"
template <> void Options::assignBool(options::setsExt__option_t, std::string option, bool value);

#line 44 "../../../src/options/base_options_template.h"

namespace options {


#line 8 "../../../src/options/sets_options"
inline setsProxyLemmas__option_t::type setsProxyLemmas__option_t::operator()() const { return (*Options::current())[*this]; }
#line 8 "../../../src/options/sets_options"
inline bool setsProxyLemmas__option_t::wasSetByUser() const { return Options::current()->wasSetByUser(*this); }

#line 11 "../../../src/options/sets_options"
inline setsInferAsLemmas__option_t::type setsInferAsLemmas__option_t::operator()() const { return (*Options::current())[*this]; }
#line 11 "../../../src/options/sets_options"
inline bool setsInferAsLemmas__option_t::wasSetByUser() const { return Options::current()->wasSetByUser(*this); }

#line 14 "../../../src/options/sets_options"
inline setsRelEager__option_t::type setsRelEager__option_t::operator()() const { return (*Options::current())[*this]; }
#line 14 "../../../src/options/sets_options"
inline bool setsRelEager__option_t::wasSetByUser() const { return Options::current()->wasSetByUser(*this); }

#line 17 "../../../src/options/sets_options"
inline setsExt__option_t::type setsExt__option_t::operator()() const { return (*Options::current())[*this]; }
#line 17 "../../../src/options/sets_options"
inline bool setsExt__option_t::wasSetByUser() const { return Options::current()->wasSetByUser(*this); }

#line 50 "../../../src/options/base_options_template.h"

}/* CVC4::options namespace */

}/* CVC4 namespace */

#endif /* __CVC4__OPTIONS__SETS_H */
