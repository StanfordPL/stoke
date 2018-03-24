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


#line 8 "../../../src/options/uf_options"
template <> void Options::set(options::ufSymmetryBreaker__option_t, const options::ufSymmetryBreaker__option_t::type& x) { d_holder->ufSymmetryBreaker = x; }
#line 8 "../../../src/options/uf_options"
template <> const options::ufSymmetryBreaker__option_t::type& Options::operator[](options::ufSymmetryBreaker__option_t) const { return d_holder->ufSymmetryBreaker; }
#line 8 "../../../src/options/uf_options"
template <> bool Options::wasSetByUser(options::ufSymmetryBreaker__option_t) const { return d_holder->ufSymmetryBreaker__setByUser__; }
#line 11 "../../../src/options/uf_options"
template <> const options::condenseFunctionValues__option_t::type& Options::operator[](options::condenseFunctionValues__option_t) const { return d_holder->condenseFunctionValues; }
#line 11 "../../../src/options/uf_options"
template <> bool Options::wasSetByUser(options::condenseFunctionValues__option_t) const { return d_holder->condenseFunctionValues__setByUser__; }
#line 14 "../../../src/options/uf_options"
template <> const options::ufssRegions__option_t::type& Options::operator[](options::ufssRegions__option_t) const { return d_holder->ufssRegions; }
#line 14 "../../../src/options/uf_options"
template <> bool Options::wasSetByUser(options::ufssRegions__option_t) const { return d_holder->ufssRegions__setByUser__; }
#line 16 "../../../src/options/uf_options"
template <> const options::ufssEagerSplits__option_t::type& Options::operator[](options::ufssEagerSplits__option_t) const { return d_holder->ufssEagerSplits; }
#line 16 "../../../src/options/uf_options"
template <> bool Options::wasSetByUser(options::ufssEagerSplits__option_t) const { return d_holder->ufssEagerSplits__setByUser__; }
#line 18 "../../../src/options/uf_options"
template <> const options::ufssTotality__option_t::type& Options::operator[](options::ufssTotality__option_t) const { return d_holder->ufssTotality; }
#line 18 "../../../src/options/uf_options"
template <> bool Options::wasSetByUser(options::ufssTotality__option_t) const { return d_holder->ufssTotality__setByUser__; }
#line 20 "../../../src/options/uf_options"
template <> const options::ufssTotalityLimited__option_t::type& Options::operator[](options::ufssTotalityLimited__option_t) const { return d_holder->ufssTotalityLimited; }
#line 20 "../../../src/options/uf_options"
template <> bool Options::wasSetByUser(options::ufssTotalityLimited__option_t) const { return d_holder->ufssTotalityLimited__setByUser__; }
#line 22 "../../../src/options/uf_options"
template <> const options::ufssTotalitySymBreak__option_t::type& Options::operator[](options::ufssTotalitySymBreak__option_t) const { return d_holder->ufssTotalitySymBreak; }
#line 22 "../../../src/options/uf_options"
template <> bool Options::wasSetByUser(options::ufssTotalitySymBreak__option_t) const { return d_holder->ufssTotalitySymBreak__setByUser__; }
#line 24 "../../../src/options/uf_options"
template <> const options::ufssAbortCardinality__option_t::type& Options::operator[](options::ufssAbortCardinality__option_t) const { return d_holder->ufssAbortCardinality; }
#line 24 "../../../src/options/uf_options"
template <> bool Options::wasSetByUser(options::ufssAbortCardinality__option_t) const { return d_holder->ufssAbortCardinality__setByUser__; }
#line 26 "../../../src/options/uf_options"
template <> const options::ufssExplainedCliques__option_t::type& Options::operator[](options::ufssExplainedCliques__option_t) const { return d_holder->ufssExplainedCliques; }
#line 26 "../../../src/options/uf_options"
template <> bool Options::wasSetByUser(options::ufssExplainedCliques__option_t) const { return d_holder->ufssExplainedCliques__setByUser__; }
#line 28 "../../../src/options/uf_options"
template <> const options::ufssSimpleCliques__option_t::type& Options::operator[](options::ufssSimpleCliques__option_t) const { return d_holder->ufssSimpleCliques; }
#line 28 "../../../src/options/uf_options"
template <> bool Options::wasSetByUser(options::ufssSimpleCliques__option_t) const { return d_holder->ufssSimpleCliques__setByUser__; }
#line 30 "../../../src/options/uf_options"
template <> const options::ufssDiseqPropagation__option_t::type& Options::operator[](options::ufssDiseqPropagation__option_t) const { return d_holder->ufssDiseqPropagation; }
#line 30 "../../../src/options/uf_options"
template <> bool Options::wasSetByUser(options::ufssDiseqPropagation__option_t) const { return d_holder->ufssDiseqPropagation__setByUser__; }
#line 32 "../../../src/options/uf_options"
template <> const options::ufssMode__option_t::type& Options::operator[](options::ufssMode__option_t) const { return d_holder->ufssMode; }
#line 32 "../../../src/options/uf_options"
template <> bool Options::wasSetByUser(options::ufssMode__option_t) const { return d_holder->ufssMode__setByUser__; }
#line 34 "../../../src/options/uf_options"
template <> const options::ufssCliqueSplits__option_t::type& Options::operator[](options::ufssCliqueSplits__option_t) const { return d_holder->ufssCliqueSplits; }
#line 34 "../../../src/options/uf_options"
template <> bool Options::wasSetByUser(options::ufssCliqueSplits__option_t) const { return d_holder->ufssCliqueSplits__setByUser__; }
#line 37 "../../../src/options/uf_options"
template <> const options::ufssSymBreak__option_t::type& Options::operator[](options::ufssSymBreak__option_t) const { return d_holder->ufssSymBreak; }
#line 37 "../../../src/options/uf_options"
template <> bool Options::wasSetByUser(options::ufssSymBreak__option_t) const { return d_holder->ufssSymBreak__setByUser__; }
#line 39 "../../../src/options/uf_options"
template <> const options::ufssFairness__option_t::type& Options::operator[](options::ufssFairness__option_t) const { return d_holder->ufssFairness; }
#line 39 "../../../src/options/uf_options"
template <> bool Options::wasSetByUser(options::ufssFairness__option_t) const { return d_holder->ufssFairness__setByUser__; }
#line 41 "../../../src/options/uf_options"
template <> void Options::set(options::ufssFairnessMonotone__option_t, const options::ufssFairnessMonotone__option_t::type& x) { d_holder->ufssFairnessMonotone = x; }
#line 41 "../../../src/options/uf_options"
template <> const options::ufssFairnessMonotone__option_t::type& Options::operator[](options::ufssFairnessMonotone__option_t) const { return d_holder->ufssFairnessMonotone; }
#line 41 "../../../src/options/uf_options"
template <> bool Options::wasSetByUser(options::ufssFairnessMonotone__option_t) const { return d_holder->ufssFairnessMonotone__setByUser__; }

#line 24 "../../../src/options/base_options_template.cpp"

namespace options {


#line 8 "../../../src/options/uf_options"
struct ufSymmetryBreaker__option_t ufSymmetryBreaker;
#line 11 "../../../src/options/uf_options"
struct condenseFunctionValues__option_t condenseFunctionValues;
#line 14 "../../../src/options/uf_options"
struct ufssRegions__option_t ufssRegions;
#line 16 "../../../src/options/uf_options"
struct ufssEagerSplits__option_t ufssEagerSplits;
#line 18 "../../../src/options/uf_options"
struct ufssTotality__option_t ufssTotality;
#line 20 "../../../src/options/uf_options"
struct ufssTotalityLimited__option_t ufssTotalityLimited;
#line 22 "../../../src/options/uf_options"
struct ufssTotalitySymBreak__option_t ufssTotalitySymBreak;
#line 24 "../../../src/options/uf_options"
struct ufssAbortCardinality__option_t ufssAbortCardinality;
#line 26 "../../../src/options/uf_options"
struct ufssExplainedCliques__option_t ufssExplainedCliques;
#line 28 "../../../src/options/uf_options"
struct ufssSimpleCliques__option_t ufssSimpleCliques;
#line 30 "../../../src/options/uf_options"
struct ufssDiseqPropagation__option_t ufssDiseqPropagation;
#line 32 "../../../src/options/uf_options"
struct ufssMode__option_t ufssMode;
#line 34 "../../../src/options/uf_options"
struct ufssCliqueSplits__option_t ufssCliqueSplits;
#line 37 "../../../src/options/uf_options"
struct ufssSymBreak__option_t ufssSymBreak;
#line 39 "../../../src/options/uf_options"
struct ufssFairness__option_t ufssFairness;
#line 41 "../../../src/options/uf_options"
struct ufssFairnessMonotone__option_t ufssFairnessMonotone;

#line 30 "../../../src/options/base_options_template.cpp"

}/* CVC4::options namespace */

}/* CVC4 namespace */
