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


#line 8 "../../../src/options/printer_options"
template <> void Options::set(options::modelFormatMode__option_t, const options::modelFormatMode__option_t::type& x) { d_holder->modelFormatMode = x; }
#line 8 "../../../src/options/printer_options"
template <> const options::modelFormatMode__option_t::type& Options::operator[](options::modelFormatMode__option_t) const { return d_holder->modelFormatMode; }
#line 8 "../../../src/options/printer_options"
template <> bool Options::wasSetByUser(options::modelFormatMode__option_t) const { return d_holder->modelFormatMode__setByUser__; }
#line 11 "../../../src/options/printer_options"
template <> void Options::set(options::instFormatMode__option_t, const options::instFormatMode__option_t::type& x) { d_holder->instFormatMode = x; }
#line 11 "../../../src/options/printer_options"
template <> const options::instFormatMode__option_t::type& Options::operator[](options::instFormatMode__option_t) const { return d_holder->instFormatMode; }
#line 11 "../../../src/options/printer_options"
template <> bool Options::wasSetByUser(options::instFormatMode__option_t) const { return d_holder->instFormatMode__setByUser__; }

#line 24 "../../../src/options/base_options_template.cpp"

namespace options {


#line 8 "../../../src/options/printer_options"
struct modelFormatMode__option_t modelFormatMode;
#line 11 "../../../src/options/printer_options"
struct instFormatMode__option_t instFormatMode;

#line 30 "../../../src/options/base_options_template.cpp"

}/* CVC4::options namespace */

}/* CVC4 namespace */
