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


#line 8 "../../../src/options/prop_options"
template <> const options::satRandomFreq__option_t::type& Options::operator[](options::satRandomFreq__option_t) const { return d_holder->satRandomFreq; }
#line 8 "../../../src/options/prop_options"
template <> bool Options::wasSetByUser(options::satRandomFreq__option_t) const { return d_holder->satRandomFreq__setByUser__; }
#line 10 "../../../src/options/prop_options"
template <> void Options::set(options::satRandomSeed__option_t, const options::satRandomSeed__option_t::type& x) { d_holder->satRandomSeed = x; }
#line 10 "../../../src/options/prop_options"
template <> const options::satRandomSeed__option_t::type& Options::operator[](options::satRandomSeed__option_t) const { return d_holder->satRandomSeed; }
#line 10 "../../../src/options/prop_options"
template <> bool Options::wasSetByUser(options::satRandomSeed__option_t) const { return d_holder->satRandomSeed__setByUser__; }
#line 13 "../../../src/options/prop_options"
template <> void Options::set(options::satVarDecay__option_t, const options::satVarDecay__option_t::type& x) { d_holder->satVarDecay = x; }
#line 13 "../../../src/options/prop_options"
template <> const options::satVarDecay__option_t::type& Options::operator[](options::satVarDecay__option_t) const { return d_holder->satVarDecay; }
#line 13 "../../../src/options/prop_options"
template <> bool Options::wasSetByUser(options::satVarDecay__option_t) const { return d_holder->satVarDecay__setByUser__; }
#line 15 "../../../src/options/prop_options"
template <> void Options::set(options::satClauseDecay__option_t, const options::satClauseDecay__option_t::type& x) { d_holder->satClauseDecay = x; }
#line 15 "../../../src/options/prop_options"
template <> const options::satClauseDecay__option_t::type& Options::operator[](options::satClauseDecay__option_t) const { return d_holder->satClauseDecay; }
#line 15 "../../../src/options/prop_options"
template <> bool Options::wasSetByUser(options::satClauseDecay__option_t) const { return d_holder->satClauseDecay__setByUser__; }
#line 17 "../../../src/options/prop_options"
template <> const options::satRestartFirst__option_t::type& Options::operator[](options::satRestartFirst__option_t) const { return d_holder->satRestartFirst; }
#line 17 "../../../src/options/prop_options"
template <> bool Options::wasSetByUser(options::satRestartFirst__option_t) const { return d_holder->satRestartFirst__setByUser__; }
#line 19 "../../../src/options/prop_options"
template <> const options::satRestartInc__option_t::type& Options::operator[](options::satRestartInc__option_t) const { return d_holder->satRestartInc; }
#line 19 "../../../src/options/prop_options"
template <> bool Options::wasSetByUser(options::satRestartInc__option_t) const { return d_holder->satRestartInc__setByUser__; }
#line 22 "../../../src/options/prop_options"
template <> const options::sat_refine_conflicts__option_t::type& Options::operator[](options::sat_refine_conflicts__option_t) const { return d_holder->sat_refine_conflicts; }
#line 22 "../../../src/options/prop_options"
template <> bool Options::wasSetByUser(options::sat_refine_conflicts__option_t) const { return d_holder->sat_refine_conflicts__setByUser__; }
#line 25 "../../../src/options/prop_options"
template <> void Options::set(options::minisatUseElim__option_t, const options::minisatUseElim__option_t::type& x) { d_holder->minisatUseElim = x; }
#line 25 "../../../src/options/prop_options"
template <> const options::minisatUseElim__option_t::type& Options::operator[](options::minisatUseElim__option_t) const { return d_holder->minisatUseElim; }
#line 25 "../../../src/options/prop_options"
template <> bool Options::wasSetByUser(options::minisatUseElim__option_t) const { return d_holder->minisatUseElim__setByUser__; }
#line 28 "../../../src/options/prop_options"
template <> const options::minisatDumpDimacs__option_t::type& Options::operator[](options::minisatDumpDimacs__option_t) const { return d_holder->minisatDumpDimacs; }
#line 28 "../../../src/options/prop_options"
template <> bool Options::wasSetByUser(options::minisatDumpDimacs__option_t) const { return d_holder->minisatDumpDimacs__setByUser__; }

#line 24 "../../../src/options/base_options_template.cpp"

namespace options {


#line 8 "../../../src/options/prop_options"
struct satRandomFreq__option_t satRandomFreq;
#line 10 "../../../src/options/prop_options"
struct satRandomSeed__option_t satRandomSeed;
#line 13 "../../../src/options/prop_options"
struct satVarDecay__option_t satVarDecay;
#line 15 "../../../src/options/prop_options"
struct satClauseDecay__option_t satClauseDecay;
#line 17 "../../../src/options/prop_options"
struct satRestartFirst__option_t satRestartFirst;
#line 19 "../../../src/options/prop_options"
struct satRestartInc__option_t satRestartInc;
#line 22 "../../../src/options/prop_options"
struct sat_refine_conflicts__option_t sat_refine_conflicts;
#line 25 "../../../src/options/prop_options"
struct minisatUseElim__option_t minisatUseElim;
#line 28 "../../../src/options/prop_options"
struct minisatDumpDimacs__option_t minisatDumpDimacs;

#line 30 "../../../src/options/base_options_template.cpp"

}/* CVC4::options namespace */

}/* CVC4 namespace */
