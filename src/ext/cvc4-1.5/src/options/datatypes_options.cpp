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


#line 12 "../../../src/options/datatypes_options"
template <> void Options::set(options::dtRewriteErrorSel__option_t, const options::dtRewriteErrorSel__option_t::type& x) { d_holder->dtRewriteErrorSel = x; }
#line 12 "../../../src/options/datatypes_options"
template <> const options::dtRewriteErrorSel__option_t::type& Options::operator[](options::dtRewriteErrorSel__option_t) const { return d_holder->dtRewriteErrorSel; }
#line 12 "../../../src/options/datatypes_options"
template <> bool Options::wasSetByUser(options::dtRewriteErrorSel__option_t) const { return d_holder->dtRewriteErrorSel__setByUser__; }
#line 14 "../../../src/options/datatypes_options"
template <> void Options::set(options::dtForceAssignment__option_t, const options::dtForceAssignment__option_t::type& x) { d_holder->dtForceAssignment = x; }
#line 14 "../../../src/options/datatypes_options"
template <> const options::dtForceAssignment__option_t::type& Options::operator[](options::dtForceAssignment__option_t) const { return d_holder->dtForceAssignment; }
#line 14 "../../../src/options/datatypes_options"
template <> bool Options::wasSetByUser(options::dtForceAssignment__option_t) const { return d_holder->dtForceAssignment__setByUser__; }
#line 16 "../../../src/options/datatypes_options"
template <> const options::dtBinarySplit__option_t::type& Options::operator[](options::dtBinarySplit__option_t) const { return d_holder->dtBinarySplit; }
#line 16 "../../../src/options/datatypes_options"
template <> bool Options::wasSetByUser(options::dtBinarySplit__option_t) const { return d_holder->dtBinarySplit__setByUser__; }
#line 18 "../../../src/options/datatypes_options"
template <> const options::dtRefIntro__option_t::type& Options::operator[](options::dtRefIntro__option_t) const { return d_holder->dtRefIntro; }
#line 18 "../../../src/options/datatypes_options"
template <> bool Options::wasSetByUser(options::dtRefIntro__option_t) const { return d_holder->dtRefIntro__setByUser__; }
#line 20 "../../../src/options/datatypes_options"
template <> const options::dtUseTesters__option_t::type& Options::operator[](options::dtUseTesters__option_t) const { return d_holder->dtUseTesters; }
#line 20 "../../../src/options/datatypes_options"
template <> bool Options::wasSetByUser(options::dtUseTesters__option_t) const { return d_holder->dtUseTesters__setByUser__; }
#line 22 "../../../src/options/datatypes_options"
template <> const options::cdtBisimilar__option_t::type& Options::operator[](options::cdtBisimilar__option_t) const { return d_holder->cdtBisimilar; }
#line 22 "../../../src/options/datatypes_options"
template <> bool Options::wasSetByUser(options::cdtBisimilar__option_t) const { return d_holder->cdtBisimilar__setByUser__; }
#line 24 "../../../src/options/datatypes_options"
template <> const options::dtCyclic__option_t::type& Options::operator[](options::dtCyclic__option_t) const { return d_holder->dtCyclic; }
#line 24 "../../../src/options/datatypes_options"
template <> bool Options::wasSetByUser(options::dtCyclic__option_t) const { return d_holder->dtCyclic__setByUser__; }
#line 26 "../../../src/options/datatypes_options"
template <> const options::dtInferAsLemmas__option_t::type& Options::operator[](options::dtInferAsLemmas__option_t) const { return d_holder->dtInferAsLemmas; }
#line 26 "../../../src/options/datatypes_options"
template <> bool Options::wasSetByUser(options::dtInferAsLemmas__option_t) const { return d_holder->dtInferAsLemmas__setByUser__; }
#line 30 "../../../src/options/datatypes_options"
template <> const options::dtBlastSplits__option_t::type& Options::operator[](options::dtBlastSplits__option_t) const { return d_holder->dtBlastSplits; }
#line 30 "../../../src/options/datatypes_options"
template <> bool Options::wasSetByUser(options::dtBlastSplits__option_t) const { return d_holder->dtBlastSplits__setByUser__; }

#line 24 "../../../src/options/base_options_template.cpp"

namespace options {


#line 12 "../../../src/options/datatypes_options"
struct dtRewriteErrorSel__option_t dtRewriteErrorSel;
#line 14 "../../../src/options/datatypes_options"
struct dtForceAssignment__option_t dtForceAssignment;
#line 16 "../../../src/options/datatypes_options"
struct dtBinarySplit__option_t dtBinarySplit;
#line 18 "../../../src/options/datatypes_options"
struct dtRefIntro__option_t dtRefIntro;
#line 20 "../../../src/options/datatypes_options"
struct dtUseTesters__option_t dtUseTesters;
#line 22 "../../../src/options/datatypes_options"
struct cdtBisimilar__option_t cdtBisimilar;
#line 24 "../../../src/options/datatypes_options"
struct dtCyclic__option_t dtCyclic;
#line 26 "../../../src/options/datatypes_options"
struct dtInferAsLemmas__option_t dtInferAsLemmas;
#line 30 "../../../src/options/datatypes_options"
struct dtBlastSplits__option_t dtBlastSplits;

#line 30 "../../../src/options/base_options_template.cpp"

}/* CVC4::options namespace */

}/* CVC4 namespace */
