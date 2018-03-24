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


#line 8 "../../../src/options/sep_options"
template <> const options::sepCheckNeg__option_t::type& Options::operator[](options::sepCheckNeg__option_t) const { return d_holder->sepCheckNeg; }
#line 8 "../../../src/options/sep_options"
template <> bool Options::wasSetByUser(options::sepCheckNeg__option_t) const { return d_holder->sepCheckNeg__setByUser__; }
#line 11 "../../../src/options/sep_options"
template <> const options::sepExp__option_t::type& Options::operator[](options::sepExp__option_t) const { return d_holder->sepExp; }
#line 11 "../../../src/options/sep_options"
template <> bool Options::wasSetByUser(options::sepExp__option_t) const { return d_holder->sepExp__setByUser__; }
#line 13 "../../../src/options/sep_options"
template <> const options::sepMinimalRefine__option_t::type& Options::operator[](options::sepMinimalRefine__option_t) const { return d_holder->sepMinimalRefine; }
#line 13 "../../../src/options/sep_options"
template <> bool Options::wasSetByUser(options::sepMinimalRefine__option_t) const { return d_holder->sepMinimalRefine__setByUser__; }
#line 15 "../../../src/options/sep_options"
template <> const options::sepDisequalC__option_t::type& Options::operator[](options::sepDisequalC__option_t) const { return d_holder->sepDisequalC; }
#line 15 "../../../src/options/sep_options"
template <> bool Options::wasSetByUser(options::sepDisequalC__option_t) const { return d_holder->sepDisequalC__setByUser__; }
#line 18 "../../../src/options/sep_options"
template <> const options::sepPreSkolemEmp__option_t::type& Options::operator[](options::sepPreSkolemEmp__option_t) const { return d_holder->sepPreSkolemEmp; }
#line 18 "../../../src/options/sep_options"
template <> bool Options::wasSetByUser(options::sepPreSkolemEmp__option_t) const { return d_holder->sepPreSkolemEmp__setByUser__; }
#line 21 "../../../src/options/sep_options"
template <> const options::sepChildRefine__option_t::type& Options::operator[](options::sepChildRefine__option_t) const { return d_holder->sepChildRefine; }
#line 21 "../../../src/options/sep_options"
template <> bool Options::wasSetByUser(options::sepChildRefine__option_t) const { return d_holder->sepChildRefine__setByUser__; }

#line 24 "../../../src/options/base_options_template.cpp"

namespace options {


#line 8 "../../../src/options/sep_options"
struct sepCheckNeg__option_t sepCheckNeg;
#line 11 "../../../src/options/sep_options"
struct sepExp__option_t sepExp;
#line 13 "../../../src/options/sep_options"
struct sepMinimalRefine__option_t sepMinimalRefine;
#line 15 "../../../src/options/sep_options"
struct sepDisequalC__option_t sepDisequalC;
#line 18 "../../../src/options/sep_options"
struct sepPreSkolemEmp__option_t sepPreSkolemEmp;
#line 21 "../../../src/options/sep_options"
struct sepChildRefine__option_t sepChildRefine;

#line 30 "../../../src/options/base_options_template.cpp"

}/* CVC4::options namespace */

}/* CVC4 namespace */
