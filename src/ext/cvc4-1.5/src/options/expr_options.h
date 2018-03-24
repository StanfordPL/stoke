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

#ifndef __CVC4__OPTIONS__EXPR_H
#define __CVC4__OPTIONS__EXPR_H

#include "options/options.h"


#line 26 "../../../src/options/base_options_template.h"

#define CVC4_OPTIONS__EXPR__FOR_OPTION_HOLDER \
  defaultExprDepth__option_t::type defaultExprDepth; \
  bool defaultExprDepth__setByUser__; \
  defaultDagThresh__option_t::type defaultDagThresh; \
  bool defaultDagThresh__setByUser__; \
  printExprTypes__option_t::type printExprTypes; \
  bool printExprTypes__setByUser__; \
  earlyTypeChecking__option_t::type earlyTypeChecking; \
  bool earlyTypeChecking__setByUser__; \
  typeChecking__option_t::type typeChecking; \
  bool typeChecking__setByUser__;

#line 30 "../../../src/options/base_options_template.h"

namespace CVC4 {

namespace options {


#line 8 "../../../src/options/expr_options"
extern struct CVC4_PUBLIC defaultExprDepth__option_t { typedef int type; type operator()() const; bool wasSetByUser() const; } defaultExprDepth CVC4_PUBLIC;
#line 12 "../../../src/options/expr_options"
extern struct CVC4_PUBLIC defaultDagThresh__option_t { typedef int type; type operator()() const; bool wasSetByUser() const; } defaultDagThresh CVC4_PUBLIC;
#line 17 "../../../src/options/expr_options"
extern struct CVC4_PUBLIC printExprTypes__option_t { typedef bool type; type operator()() const; bool wasSetByUser() const; } printExprTypes CVC4_PUBLIC;
#line 20 "../../../src/options/expr_options"
extern struct CVC4_PUBLIC earlyTypeChecking__option_t { typedef bool type; type operator()() const; bool wasSetByUser() const; } earlyTypeChecking CVC4_PUBLIC;
#line 26 "../../../src/options/expr_options"
extern struct CVC4_PUBLIC typeChecking__option_t { typedef bool type; type operator()() const; bool wasSetByUser() const; } typeChecking CVC4_PUBLIC;

#line 38 "../../../src/options/base_options_template.h"

}/* CVC4::options namespace */


#line 8 "../../../src/options/expr_options"
template <> const options::defaultExprDepth__option_t::type& Options::operator[](options::defaultExprDepth__option_t) const;
#line 8 "../../../src/options/expr_options"
template <> bool Options::wasSetByUser(options::defaultExprDepth__option_t) const;
#line 8 "../../../src/options/expr_options"
template <> void Options::assign(options::defaultExprDepth__option_t, std::string option, std::string value);
#line 12 "../../../src/options/expr_options"
template <> const options::defaultDagThresh__option_t::type& Options::operator[](options::defaultDagThresh__option_t) const;
#line 12 "../../../src/options/expr_options"
template <> bool Options::wasSetByUser(options::defaultDagThresh__option_t) const;
#line 12 "../../../src/options/expr_options"
template <> void Options::assign(options::defaultDagThresh__option_t, std::string option, std::string value);
#line 17 "../../../src/options/expr_options"
template <> const options::printExprTypes__option_t::type& Options::operator[](options::printExprTypes__option_t) const;
#line 17 "../../../src/options/expr_options"
template <> bool Options::wasSetByUser(options::printExprTypes__option_t) const;
#line 17 "../../../src/options/expr_options"
template <> void Options::assignBool(options::printExprTypes__option_t, std::string option, bool value);
#line 20 "../../../src/options/expr_options"
template <> const options::earlyTypeChecking__option_t::type& Options::operator[](options::earlyTypeChecking__option_t) const;
#line 20 "../../../src/options/expr_options"
template <> bool Options::wasSetByUser(options::earlyTypeChecking__option_t) const;
#line 20 "../../../src/options/expr_options"
template <> void Options::assignBool(options::earlyTypeChecking__option_t, std::string option, bool value);
#line 26 "../../../src/options/expr_options"
template <> const options::typeChecking__option_t::type& Options::operator[](options::typeChecking__option_t) const;
#line 26 "../../../src/options/expr_options"
template <> bool Options::wasSetByUser(options::typeChecking__option_t) const;
#line 26 "../../../src/options/expr_options"
template <> void Options::assignBool(options::typeChecking__option_t, std::string option, bool value);

#line 44 "../../../src/options/base_options_template.h"

namespace options {


#line 8 "../../../src/options/expr_options"
inline defaultExprDepth__option_t::type defaultExprDepth__option_t::operator()() const { return (*Options::current())[*this]; }
#line 8 "../../../src/options/expr_options"
inline bool defaultExprDepth__option_t::wasSetByUser() const { return Options::current()->wasSetByUser(*this); }

#line 12 "../../../src/options/expr_options"
inline defaultDagThresh__option_t::type defaultDagThresh__option_t::operator()() const { return (*Options::current())[*this]; }
#line 12 "../../../src/options/expr_options"
inline bool defaultDagThresh__option_t::wasSetByUser() const { return Options::current()->wasSetByUser(*this); }

#line 17 "../../../src/options/expr_options"
inline printExprTypes__option_t::type printExprTypes__option_t::operator()() const { return (*Options::current())[*this]; }
#line 17 "../../../src/options/expr_options"
inline bool printExprTypes__option_t::wasSetByUser() const { return Options::current()->wasSetByUser(*this); }

#line 20 "../../../src/options/expr_options"
inline earlyTypeChecking__option_t::type earlyTypeChecking__option_t::operator()() const { return (*Options::current())[*this]; }
#line 20 "../../../src/options/expr_options"
inline bool earlyTypeChecking__option_t::wasSetByUser() const { return Options::current()->wasSetByUser(*this); }

#line 26 "../../../src/options/expr_options"
inline typeChecking__option_t::type typeChecking__option_t::operator()() const { return (*Options::current())[*this]; }
#line 26 "../../../src/options/expr_options"
inline bool typeChecking__option_t::wasSetByUser() const { return Options::current()->wasSetByUser(*this); }

#line 50 "../../../src/options/base_options_template.h"

}/* CVC4::options namespace */

}/* CVC4 namespace */

#endif /* __CVC4__OPTIONS__EXPR_H */
