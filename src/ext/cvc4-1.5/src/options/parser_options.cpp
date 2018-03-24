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


#line 8 "../../../src/options/parser_options"
template <> const options::strictParsing__option_t::type& Options::operator[](options::strictParsing__option_t) const { return d_holder->strictParsing; }
#line 8 "../../../src/options/parser_options"
template <> bool Options::wasSetByUser(options::strictParsing__option_t) const { return d_holder->strictParsing__setByUser__; }
#line 11 "../../../src/options/parser_options"
template <> const options::memoryMap__option_t::type& Options::operator[](options::memoryMap__option_t) const { return d_holder->memoryMap; }
#line 11 "../../../src/options/parser_options"
template <> bool Options::wasSetByUser(options::memoryMap__option_t) const { return d_holder->memoryMap__setByUser__; }
#line 14 "../../../src/options/parser_options"
template <> const options::semanticChecks__option_t::type& Options::operator[](options::semanticChecks__option_t) const { return d_holder->semanticChecks; }
#line 14 "../../../src/options/parser_options"
template <> bool Options::wasSetByUser(options::semanticChecks__option_t) const { return d_holder->semanticChecks__setByUser__; }
#line 17 "../../../src/options/parser_options"
template <> const options::globalDeclarations__option_t::type& Options::operator[](options::globalDeclarations__option_t) const { return d_holder->globalDeclarations; }
#line 17 "../../../src/options/parser_options"
template <> bool Options::wasSetByUser(options::globalDeclarations__option_t) const { return d_holder->globalDeclarations__setByUser__; }
#line 32 "../../../src/options/parser_options"
template <> const options::filesystemAccess__option_t::type& Options::operator[](options::filesystemAccess__option_t) const { return d_holder->filesystemAccess; }
#line 32 "../../../src/options/parser_options"
template <> bool Options::wasSetByUser(options::filesystemAccess__option_t) const { return d_holder->filesystemAccess__setByUser__; }

#line 24 "../../../src/options/base_options_template.cpp"

namespace options {


#line 8 "../../../src/options/parser_options"
struct strictParsing__option_t strictParsing;
#line 11 "../../../src/options/parser_options"
struct memoryMap__option_t memoryMap;
#line 14 "../../../src/options/parser_options"
struct semanticChecks__option_t semanticChecks;
#line 17 "../../../src/options/parser_options"
struct globalDeclarations__option_t globalDeclarations;
#line 32 "../../../src/options/parser_options"
struct filesystemAccess__option_t filesystemAccess;

#line 30 "../../../src/options/base_options_template.cpp"

}/* CVC4::options namespace */

}/* CVC4 namespace */
