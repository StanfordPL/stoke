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

#ifndef __CVC4__OPTIONS__PARSER_H
#define __CVC4__OPTIONS__PARSER_H

#include "options/options.h"


#line 26 "../../../src/options/base_options_template.h"

#define CVC4_OPTIONS__PARSER__FOR_OPTION_HOLDER \
  strictParsing__option_t::type strictParsing; \
  bool strictParsing__setByUser__; \
  memoryMap__option_t::type memoryMap; \
  bool memoryMap__setByUser__; \
  semanticChecks__option_t::type semanticChecks; \
  bool semanticChecks__setByUser__; \
  globalDeclarations__option_t::type globalDeclarations; \
  bool globalDeclarations__setByUser__; \
  filesystemAccess__option_t::type filesystemAccess; \
  bool filesystemAccess__setByUser__;

#line 30 "../../../src/options/base_options_template.h"

namespace CVC4 {

namespace options {


#line 8 "../../../src/options/parser_options"
extern struct CVC4_PUBLIC strictParsing__option_t { typedef bool type; type operator()() const; bool wasSetByUser() const; } strictParsing CVC4_PUBLIC;
#line 11 "../../../src/options/parser_options"
extern struct CVC4_PUBLIC memoryMap__option_t { typedef bool type; type operator()() const; bool wasSetByUser() const; } memoryMap CVC4_PUBLIC;
#line 14 "../../../src/options/parser_options"
extern struct CVC4_PUBLIC semanticChecks__option_t { typedef bool type; type operator()() const; bool wasSetByUser() const; } semanticChecks CVC4_PUBLIC;
#line 17 "../../../src/options/parser_options"
extern struct CVC4_PUBLIC globalDeclarations__option_t { typedef bool type; type operator()() const; bool wasSetByUser() const; } globalDeclarations CVC4_PUBLIC;
#line 32 "../../../src/options/parser_options"
extern struct CVC4_PUBLIC filesystemAccess__option_t { typedef bool type; type operator()() const; bool wasSetByUser() const; } filesystemAccess CVC4_PUBLIC;

#line 38 "../../../src/options/base_options_template.h"

}/* CVC4::options namespace */


#line 8 "../../../src/options/parser_options"
template <> const options::strictParsing__option_t::type& Options::operator[](options::strictParsing__option_t) const;
#line 8 "../../../src/options/parser_options"
template <> bool Options::wasSetByUser(options::strictParsing__option_t) const;
#line 8 "../../../src/options/parser_options"
template <> void Options::assignBool(options::strictParsing__option_t, std::string option, bool value);
#line 11 "../../../src/options/parser_options"
template <> const options::memoryMap__option_t::type& Options::operator[](options::memoryMap__option_t) const;
#line 11 "../../../src/options/parser_options"
template <> bool Options::wasSetByUser(options::memoryMap__option_t) const;
#line 11 "../../../src/options/parser_options"
template <> void Options::assignBool(options::memoryMap__option_t, std::string option, bool value);
#line 14 "../../../src/options/parser_options"
template <> const options::semanticChecks__option_t::type& Options::operator[](options::semanticChecks__option_t) const;
#line 14 "../../../src/options/parser_options"
template <> bool Options::wasSetByUser(options::semanticChecks__option_t) const;
#line 14 "../../../src/options/parser_options"
template <> void Options::assignBool(options::semanticChecks__option_t, std::string option, bool value);
#line 17 "../../../src/options/parser_options"
template <> const options::globalDeclarations__option_t::type& Options::operator[](options::globalDeclarations__option_t) const;
#line 17 "../../../src/options/parser_options"
template <> bool Options::wasSetByUser(options::globalDeclarations__option_t) const;
#line 17 "../../../src/options/parser_options"
template <> void Options::assignBool(options::globalDeclarations__option_t, std::string option, bool value);
#line 32 "../../../src/options/parser_options"
template <> const options::filesystemAccess__option_t::type& Options::operator[](options::filesystemAccess__option_t) const;
#line 32 "../../../src/options/parser_options"
template <> bool Options::wasSetByUser(options::filesystemAccess__option_t) const;
#line 32 "../../../src/options/parser_options"
template <> void Options::assignBool(options::filesystemAccess__option_t, std::string option, bool value);

#line 44 "../../../src/options/base_options_template.h"

namespace options {


#line 8 "../../../src/options/parser_options"
inline strictParsing__option_t::type strictParsing__option_t::operator()() const { return (*Options::current())[*this]; }
#line 8 "../../../src/options/parser_options"
inline bool strictParsing__option_t::wasSetByUser() const { return Options::current()->wasSetByUser(*this); }

#line 11 "../../../src/options/parser_options"
inline memoryMap__option_t::type memoryMap__option_t::operator()() const { return (*Options::current())[*this]; }
#line 11 "../../../src/options/parser_options"
inline bool memoryMap__option_t::wasSetByUser() const { return Options::current()->wasSetByUser(*this); }

#line 14 "../../../src/options/parser_options"
inline semanticChecks__option_t::type semanticChecks__option_t::operator()() const { return (*Options::current())[*this]; }
#line 14 "../../../src/options/parser_options"
inline bool semanticChecks__option_t::wasSetByUser() const { return Options::current()->wasSetByUser(*this); }

#line 17 "../../../src/options/parser_options"
inline globalDeclarations__option_t::type globalDeclarations__option_t::operator()() const { return (*Options::current())[*this]; }
#line 17 "../../../src/options/parser_options"
inline bool globalDeclarations__option_t::wasSetByUser() const { return Options::current()->wasSetByUser(*this); }

#line 32 "../../../src/options/parser_options"
inline filesystemAccess__option_t::type filesystemAccess__option_t::operator()() const { return (*Options::current())[*this]; }
#line 32 "../../../src/options/parser_options"
inline bool filesystemAccess__option_t::wasSetByUser() const { return Options::current()->wasSetByUser(*this); }

#line 50 "../../../src/options/base_options_template.h"

}/* CVC4::options namespace */

}/* CVC4 namespace */

#endif /* __CVC4__OPTIONS__PARSER_H */
