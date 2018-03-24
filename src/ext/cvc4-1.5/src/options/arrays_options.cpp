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


#line 8 "../../../src/options/arrays_options"
template <> void Options::set(options::arraysOptimizeLinear__option_t, const options::arraysOptimizeLinear__option_t::type& x) { d_holder->arraysOptimizeLinear = x; }
#line 8 "../../../src/options/arrays_options"
template <> const options::arraysOptimizeLinear__option_t::type& Options::operator[](options::arraysOptimizeLinear__option_t) const { return d_holder->arraysOptimizeLinear; }
#line 8 "../../../src/options/arrays_options"
template <> bool Options::wasSetByUser(options::arraysOptimizeLinear__option_t) const { return d_holder->arraysOptimizeLinear__setByUser__; }
#line 11 "../../../src/options/arrays_options"
template <> void Options::set(options::arraysLazyRIntro1__option_t, const options::arraysLazyRIntro1__option_t::type& x) { d_holder->arraysLazyRIntro1 = x; }
#line 11 "../../../src/options/arrays_options"
template <> const options::arraysLazyRIntro1__option_t::type& Options::operator[](options::arraysLazyRIntro1__option_t) const { return d_holder->arraysLazyRIntro1; }
#line 11 "../../../src/options/arrays_options"
template <> bool Options::wasSetByUser(options::arraysLazyRIntro1__option_t) const { return d_holder->arraysLazyRIntro1__setByUser__; }
#line 14 "../../../src/options/arrays_options"
template <> void Options::set(options::arraysWeakEquivalence__option_t, const options::arraysWeakEquivalence__option_t::type& x) { d_holder->arraysWeakEquivalence = x; }
#line 14 "../../../src/options/arrays_options"
template <> const options::arraysWeakEquivalence__option_t::type& Options::operator[](options::arraysWeakEquivalence__option_t) const { return d_holder->arraysWeakEquivalence; }
#line 14 "../../../src/options/arrays_options"
template <> bool Options::wasSetByUser(options::arraysWeakEquivalence__option_t) const { return d_holder->arraysWeakEquivalence__setByUser__; }
#line 17 "../../../src/options/arrays_options"
template <> void Options::set(options::arraysModelBased__option_t, const options::arraysModelBased__option_t::type& x) { d_holder->arraysModelBased = x; }
#line 17 "../../../src/options/arrays_options"
template <> const options::arraysModelBased__option_t::type& Options::operator[](options::arraysModelBased__option_t) const { return d_holder->arraysModelBased; }
#line 17 "../../../src/options/arrays_options"
template <> bool Options::wasSetByUser(options::arraysModelBased__option_t) const { return d_holder->arraysModelBased__setByUser__; }
#line 20 "../../../src/options/arrays_options"
template <> void Options::set(options::arraysEagerIndexSplitting__option_t, const options::arraysEagerIndexSplitting__option_t::type& x) { d_holder->arraysEagerIndexSplitting = x; }
#line 20 "../../../src/options/arrays_options"
template <> const options::arraysEagerIndexSplitting__option_t::type& Options::operator[](options::arraysEagerIndexSplitting__option_t) const { return d_holder->arraysEagerIndexSplitting; }
#line 20 "../../../src/options/arrays_options"
template <> bool Options::wasSetByUser(options::arraysEagerIndexSplitting__option_t) const { return d_holder->arraysEagerIndexSplitting__setByUser__; }
#line 23 "../../../src/options/arrays_options"
template <> void Options::set(options::arraysEagerLemmas__option_t, const options::arraysEagerLemmas__option_t::type& x) { d_holder->arraysEagerLemmas = x; }
#line 23 "../../../src/options/arrays_options"
template <> const options::arraysEagerLemmas__option_t::type& Options::operator[](options::arraysEagerLemmas__option_t) const { return d_holder->arraysEagerLemmas; }
#line 23 "../../../src/options/arrays_options"
template <> bool Options::wasSetByUser(options::arraysEagerLemmas__option_t) const { return d_holder->arraysEagerLemmas__setByUser__; }
#line 26 "../../../src/options/arrays_options"
template <> void Options::set(options::arraysConfig__option_t, const options::arraysConfig__option_t::type& x) { d_holder->arraysConfig = x; }
#line 26 "../../../src/options/arrays_options"
template <> const options::arraysConfig__option_t::type& Options::operator[](options::arraysConfig__option_t) const { return d_holder->arraysConfig; }
#line 26 "../../../src/options/arrays_options"
template <> bool Options::wasSetByUser(options::arraysConfig__option_t) const { return d_holder->arraysConfig__setByUser__; }
#line 29 "../../../src/options/arrays_options"
template <> void Options::set(options::arraysReduceSharing__option_t, const options::arraysReduceSharing__option_t::type& x) { d_holder->arraysReduceSharing = x; }
#line 29 "../../../src/options/arrays_options"
template <> const options::arraysReduceSharing__option_t::type& Options::operator[](options::arraysReduceSharing__option_t) const { return d_holder->arraysReduceSharing; }
#line 29 "../../../src/options/arrays_options"
template <> bool Options::wasSetByUser(options::arraysReduceSharing__option_t) const { return d_holder->arraysReduceSharing__setByUser__; }
#line 32 "../../../src/options/arrays_options"
template <> void Options::set(options::arraysPropagate__option_t, const options::arraysPropagate__option_t::type& x) { d_holder->arraysPropagate = x; }
#line 32 "../../../src/options/arrays_options"
template <> const options::arraysPropagate__option_t::type& Options::operator[](options::arraysPropagate__option_t) const { return d_holder->arraysPropagate; }
#line 32 "../../../src/options/arrays_options"
template <> bool Options::wasSetByUser(options::arraysPropagate__option_t) const { return d_holder->arraysPropagate__setByUser__; }

#line 24 "../../../src/options/base_options_template.cpp"

namespace options {


#line 8 "../../../src/options/arrays_options"
struct arraysOptimizeLinear__option_t arraysOptimizeLinear;
#line 11 "../../../src/options/arrays_options"
struct arraysLazyRIntro1__option_t arraysLazyRIntro1;
#line 14 "../../../src/options/arrays_options"
struct arraysWeakEquivalence__option_t arraysWeakEquivalence;
#line 17 "../../../src/options/arrays_options"
struct arraysModelBased__option_t arraysModelBased;
#line 20 "../../../src/options/arrays_options"
struct arraysEagerIndexSplitting__option_t arraysEagerIndexSplitting;
#line 23 "../../../src/options/arrays_options"
struct arraysEagerLemmas__option_t arraysEagerLemmas;
#line 26 "../../../src/options/arrays_options"
struct arraysConfig__option_t arraysConfig;
#line 29 "../../../src/options/arrays_options"
struct arraysReduceSharing__option_t arraysReduceSharing;
#line 32 "../../../src/options/arrays_options"
struct arraysPropagate__option_t arraysPropagate;

#line 30 "../../../src/options/base_options_template.cpp"

}/* CVC4::options namespace */

}/* CVC4 namespace */
