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

#ifndef __CVC4__OPTIONS__THEORY_H
#define __CVC4__OPTIONS__THEORY_H

#include "options/options.h"

#line 8 "../../../src/options/theory_options"
#include "options/theoryof_mode.h"

#line 26 "../../../src/options/base_options_template.h"

#define CVC4_OPTIONS__THEORY__FOR_OPTION_HOLDER \
  theoryOfMode__option_t::type theoryOfMode; \
  bool theoryOfMode__setByUser__; \
  useTheoryList__option_t::type useTheoryList; \
  bool useTheoryList__setByUser__;

#line 30 "../../../src/options/base_options_template.h"

namespace CVC4 {

namespace options {


#line 8 "../../../src/options/theory_options"
extern struct CVC4_PUBLIC theoryOfMode__option_t { typedef CVC4::theory::TheoryOfMode type; type operator()() const; bool wasSetByUser() const; void set(const type& v); } theoryOfMode CVC4_PUBLIC;
#line 11 "../../../src/options/theory_options"
extern struct CVC4_PUBLIC useTheoryList__option_t { typedef std::string type; type operator()() const; bool wasSetByUser() const; } useTheoryList CVC4_PUBLIC;

#line 38 "../../../src/options/base_options_template.h"

}/* CVC4::options namespace */


#line 8 "../../../src/options/theory_options"
template <> void Options::set(options::theoryOfMode__option_t, const options::theoryOfMode__option_t::type& x);
#line 8 "../../../src/options/theory_options"
template <> const options::theoryOfMode__option_t::type& Options::operator[](options::theoryOfMode__option_t) const;
#line 8 "../../../src/options/theory_options"
template <> bool Options::wasSetByUser(options::theoryOfMode__option_t) const;
#line 8 "../../../src/options/theory_options"
template <> void Options::assign(options::theoryOfMode__option_t, std::string option, std::string value);
#line 11 "../../../src/options/theory_options"
template <> const options::useTheoryList__option_t::type& Options::operator[](options::useTheoryList__option_t) const;
#line 11 "../../../src/options/theory_options"
template <> bool Options::wasSetByUser(options::useTheoryList__option_t) const;
#line 11 "../../../src/options/theory_options"
template <> void Options::assign(options::useTheoryList__option_t, std::string option, std::string value);

#line 44 "../../../src/options/base_options_template.h"

namespace options {


#line 8 "../../../src/options/theory_options"
inline theoryOfMode__option_t::type theoryOfMode__option_t::operator()() const { return (*Options::current())[*this]; }
#line 8 "../../../src/options/theory_options"
inline bool theoryOfMode__option_t::wasSetByUser() const { return Options::current()->wasSetByUser(*this); }
#line 8 "../../../src/options/theory_options"
inline void theoryOfMode__option_t::set(const theoryOfMode__option_t::type& v) { Options::current()->set(*this, v); }

#line 11 "../../../src/options/theory_options"
inline useTheoryList__option_t::type useTheoryList__option_t::operator()() const { return (*Options::current())[*this]; }
#line 11 "../../../src/options/theory_options"
inline bool useTheoryList__option_t::wasSetByUser() const { return Options::current()->wasSetByUser(*this); }

#line 50 "../../../src/options/base_options_template.h"

}/* CVC4::options namespace */

}/* CVC4 namespace */

#endif /* __CVC4__OPTIONS__THEORY_H */
