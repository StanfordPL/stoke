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

#ifndef __CVC4__OPTIONS__PRINTER_H
#define __CVC4__OPTIONS__PRINTER_H

#include "options/options.h"

#line 8 "../../../src/options/printer_options"
#include "options/printer_modes.h"
#line 11 "../../../src/options/printer_options"
#include "options/printer_modes.h"

#line 26 "../../../src/options/base_options_template.h"

#define CVC4_OPTIONS__PRINTER__FOR_OPTION_HOLDER \
  modelFormatMode__option_t::type modelFormatMode; \
  bool modelFormatMode__setByUser__; \
  instFormatMode__option_t::type instFormatMode; \
  bool instFormatMode__setByUser__;

#line 30 "../../../src/options/base_options_template.h"

namespace CVC4 {

namespace options {


#line 8 "../../../src/options/printer_options"
extern struct CVC4_PUBLIC modelFormatMode__option_t { typedef ModelFormatMode type; type operator()() const; bool wasSetByUser() const; void set(const type& v); } modelFormatMode CVC4_PUBLIC;
#line 11 "../../../src/options/printer_options"
extern struct CVC4_PUBLIC instFormatMode__option_t { typedef InstFormatMode type; type operator()() const; bool wasSetByUser() const; void set(const type& v); } instFormatMode CVC4_PUBLIC;

#line 38 "../../../src/options/base_options_template.h"

}/* CVC4::options namespace */


#line 8 "../../../src/options/printer_options"
template <> void Options::set(options::modelFormatMode__option_t, const options::modelFormatMode__option_t::type& x);
#line 8 "../../../src/options/printer_options"
template <> const options::modelFormatMode__option_t::type& Options::operator[](options::modelFormatMode__option_t) const;
#line 8 "../../../src/options/printer_options"
template <> bool Options::wasSetByUser(options::modelFormatMode__option_t) const;
#line 8 "../../../src/options/printer_options"
template <> void Options::assign(options::modelFormatMode__option_t, std::string option, std::string value);
#line 11 "../../../src/options/printer_options"
template <> void Options::set(options::instFormatMode__option_t, const options::instFormatMode__option_t::type& x);
#line 11 "../../../src/options/printer_options"
template <> const options::instFormatMode__option_t::type& Options::operator[](options::instFormatMode__option_t) const;
#line 11 "../../../src/options/printer_options"
template <> bool Options::wasSetByUser(options::instFormatMode__option_t) const;
#line 11 "../../../src/options/printer_options"
template <> void Options::assign(options::instFormatMode__option_t, std::string option, std::string value);

#line 44 "../../../src/options/base_options_template.h"

namespace options {


#line 8 "../../../src/options/printer_options"
inline modelFormatMode__option_t::type modelFormatMode__option_t::operator()() const { return (*Options::current())[*this]; }
#line 8 "../../../src/options/printer_options"
inline bool modelFormatMode__option_t::wasSetByUser() const { return Options::current()->wasSetByUser(*this); }
#line 8 "../../../src/options/printer_options"
inline void modelFormatMode__option_t::set(const modelFormatMode__option_t::type& v) { Options::current()->set(*this, v); }

#line 11 "../../../src/options/printer_options"
inline instFormatMode__option_t::type instFormatMode__option_t::operator()() const { return (*Options::current())[*this]; }
#line 11 "../../../src/options/printer_options"
inline bool instFormatMode__option_t::wasSetByUser() const { return Options::current()->wasSetByUser(*this); }
#line 11 "../../../src/options/printer_options"
inline void instFormatMode__option_t::set(const instFormatMode__option_t::type& v) { Options::current()->set(*this, v); }

#line 50 "../../../src/options/base_options_template.h"

}/* CVC4::options namespace */

}/* CVC4 namespace */

#endif /* __CVC4__OPTIONS__PRINTER_H */
