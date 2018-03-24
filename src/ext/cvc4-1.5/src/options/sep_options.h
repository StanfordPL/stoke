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

#ifndef __CVC4__OPTIONS__SEP_H
#define __CVC4__OPTIONS__SEP_H

#include "options/options.h"


#line 26 "../../../src/options/base_options_template.h"

#define CVC4_OPTIONS__SEP__FOR_OPTION_HOLDER \
  sepCheckNeg__option_t::type sepCheckNeg; \
  bool sepCheckNeg__setByUser__; \
  sepExp__option_t::type sepExp; \
  bool sepExp__setByUser__; \
  sepMinimalRefine__option_t::type sepMinimalRefine; \
  bool sepMinimalRefine__setByUser__; \
  sepDisequalC__option_t::type sepDisequalC; \
  bool sepDisequalC__setByUser__; \
  sepPreSkolemEmp__option_t::type sepPreSkolemEmp; \
  bool sepPreSkolemEmp__setByUser__; \
  sepChildRefine__option_t::type sepChildRefine; \
  bool sepChildRefine__setByUser__;

#line 30 "../../../src/options/base_options_template.h"

namespace CVC4 {

namespace options {


#line 8 "../../../src/options/sep_options"
extern struct CVC4_PUBLIC sepCheckNeg__option_t { typedef bool type; type operator()() const; bool wasSetByUser() const; } sepCheckNeg CVC4_PUBLIC;
#line 11 "../../../src/options/sep_options"
extern struct CVC4_PUBLIC sepExp__option_t { typedef bool type; type operator()() const; bool wasSetByUser() const; } sepExp CVC4_PUBLIC;
#line 13 "../../../src/options/sep_options"
extern struct CVC4_PUBLIC sepMinimalRefine__option_t { typedef bool type; type operator()() const; bool wasSetByUser() const; } sepMinimalRefine CVC4_PUBLIC;
#line 15 "../../../src/options/sep_options"
extern struct CVC4_PUBLIC sepDisequalC__option_t { typedef bool type; type operator()() const; bool wasSetByUser() const; } sepDisequalC CVC4_PUBLIC;
#line 18 "../../../src/options/sep_options"
extern struct CVC4_PUBLIC sepPreSkolemEmp__option_t { typedef bool type; type operator()() const; bool wasSetByUser() const; } sepPreSkolemEmp CVC4_PUBLIC;
#line 21 "../../../src/options/sep_options"
extern struct CVC4_PUBLIC sepChildRefine__option_t { typedef bool type; type operator()() const; bool wasSetByUser() const; } sepChildRefine CVC4_PUBLIC;

#line 38 "../../../src/options/base_options_template.h"

}/* CVC4::options namespace */


#line 8 "../../../src/options/sep_options"
template <> const options::sepCheckNeg__option_t::type& Options::operator[](options::sepCheckNeg__option_t) const;
#line 8 "../../../src/options/sep_options"
template <> bool Options::wasSetByUser(options::sepCheckNeg__option_t) const;
#line 8 "../../../src/options/sep_options"
template <> void Options::assignBool(options::sepCheckNeg__option_t, std::string option, bool value);
#line 11 "../../../src/options/sep_options"
template <> const options::sepExp__option_t::type& Options::operator[](options::sepExp__option_t) const;
#line 11 "../../../src/options/sep_options"
template <> bool Options::wasSetByUser(options::sepExp__option_t) const;
#line 11 "../../../src/options/sep_options"
template <> void Options::assignBool(options::sepExp__option_t, std::string option, bool value);
#line 13 "../../../src/options/sep_options"
template <> const options::sepMinimalRefine__option_t::type& Options::operator[](options::sepMinimalRefine__option_t) const;
#line 13 "../../../src/options/sep_options"
template <> bool Options::wasSetByUser(options::sepMinimalRefine__option_t) const;
#line 13 "../../../src/options/sep_options"
template <> void Options::assignBool(options::sepMinimalRefine__option_t, std::string option, bool value);
#line 15 "../../../src/options/sep_options"
template <> const options::sepDisequalC__option_t::type& Options::operator[](options::sepDisequalC__option_t) const;
#line 15 "../../../src/options/sep_options"
template <> bool Options::wasSetByUser(options::sepDisequalC__option_t) const;
#line 15 "../../../src/options/sep_options"
template <> void Options::assignBool(options::sepDisequalC__option_t, std::string option, bool value);
#line 18 "../../../src/options/sep_options"
template <> const options::sepPreSkolemEmp__option_t::type& Options::operator[](options::sepPreSkolemEmp__option_t) const;
#line 18 "../../../src/options/sep_options"
template <> bool Options::wasSetByUser(options::sepPreSkolemEmp__option_t) const;
#line 18 "../../../src/options/sep_options"
template <> void Options::assignBool(options::sepPreSkolemEmp__option_t, std::string option, bool value);
#line 21 "../../../src/options/sep_options"
template <> const options::sepChildRefine__option_t::type& Options::operator[](options::sepChildRefine__option_t) const;
#line 21 "../../../src/options/sep_options"
template <> bool Options::wasSetByUser(options::sepChildRefine__option_t) const;
#line 21 "../../../src/options/sep_options"
template <> void Options::assignBool(options::sepChildRefine__option_t, std::string option, bool value);

#line 44 "../../../src/options/base_options_template.h"

namespace options {


#line 8 "../../../src/options/sep_options"
inline sepCheckNeg__option_t::type sepCheckNeg__option_t::operator()() const { return (*Options::current())[*this]; }
#line 8 "../../../src/options/sep_options"
inline bool sepCheckNeg__option_t::wasSetByUser() const { return Options::current()->wasSetByUser(*this); }

#line 11 "../../../src/options/sep_options"
inline sepExp__option_t::type sepExp__option_t::operator()() const { return (*Options::current())[*this]; }
#line 11 "../../../src/options/sep_options"
inline bool sepExp__option_t::wasSetByUser() const { return Options::current()->wasSetByUser(*this); }

#line 13 "../../../src/options/sep_options"
inline sepMinimalRefine__option_t::type sepMinimalRefine__option_t::operator()() const { return (*Options::current())[*this]; }
#line 13 "../../../src/options/sep_options"
inline bool sepMinimalRefine__option_t::wasSetByUser() const { return Options::current()->wasSetByUser(*this); }

#line 15 "../../../src/options/sep_options"
inline sepDisequalC__option_t::type sepDisequalC__option_t::operator()() const { return (*Options::current())[*this]; }
#line 15 "../../../src/options/sep_options"
inline bool sepDisequalC__option_t::wasSetByUser() const { return Options::current()->wasSetByUser(*this); }

#line 18 "../../../src/options/sep_options"
inline sepPreSkolemEmp__option_t::type sepPreSkolemEmp__option_t::operator()() const { return (*Options::current())[*this]; }
#line 18 "../../../src/options/sep_options"
inline bool sepPreSkolemEmp__option_t::wasSetByUser() const { return Options::current()->wasSetByUser(*this); }

#line 21 "../../../src/options/sep_options"
inline sepChildRefine__option_t::type sepChildRefine__option_t::operator()() const { return (*Options::current())[*this]; }
#line 21 "../../../src/options/sep_options"
inline bool sepChildRefine__option_t::wasSetByUser() const { return Options::current()->wasSetByUser(*this); }

#line 50 "../../../src/options/base_options_template.h"

}/* CVC4::options namespace */

}/* CVC4 namespace */

#endif /* __CVC4__OPTIONS__SEP_H */
