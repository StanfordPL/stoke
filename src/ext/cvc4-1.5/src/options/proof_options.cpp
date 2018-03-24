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


#line 8 "../../../src/options/proof_options"
template <> const options::lfscLetification__option_t::type& Options::operator[](options::lfscLetification__option_t) const { return d_holder->lfscLetification; }
#line 8 "../../../src/options/proof_options"
template <> bool Options::wasSetByUser(options::lfscLetification__option_t) const { return d_holder->lfscLetification__setByUser__; }
#line 11 "../../../src/options/proof_options"
template <> const options::aggressiveCoreMin__option_t::type& Options::operator[](options::aggressiveCoreMin__option_t) const { return d_holder->aggressiveCoreMin; }
#line 11 "../../../src/options/proof_options"
template <> bool Options::wasSetByUser(options::aggressiveCoreMin__option_t) const { return d_holder->aggressiveCoreMin__setByUser__; }
#line 14 "../../../src/options/proof_options"
template <> void Options::set(options::fewerPreprocessingHoles__option_t, const options::fewerPreprocessingHoles__option_t::type& x) { d_holder->fewerPreprocessingHoles = x; }
#line 14 "../../../src/options/proof_options"
template <> const options::fewerPreprocessingHoles__option_t::type& Options::operator[](options::fewerPreprocessingHoles__option_t) const { return d_holder->fewerPreprocessingHoles; }
#line 14 "../../../src/options/proof_options"
template <> bool Options::wasSetByUser(options::fewerPreprocessingHoles__option_t) const { return d_holder->fewerPreprocessingHoles__setByUser__; }
#line 17 "../../../src/options/proof_options"
template <> const options::allowEmptyDependencies__option_t::type& Options::operator[](options::allowEmptyDependencies__option_t) const { return d_holder->allowEmptyDependencies; }
#line 17 "../../../src/options/proof_options"
template <> bool Options::wasSetByUser(options::allowEmptyDependencies__option_t) const { return d_holder->allowEmptyDependencies__setByUser__; }

#line 24 "../../../src/options/base_options_template.cpp"

namespace options {


#line 8 "../../../src/options/proof_options"
struct lfscLetification__option_t lfscLetification;
#line 11 "../../../src/options/proof_options"
struct aggressiveCoreMin__option_t aggressiveCoreMin;
#line 14 "../../../src/options/proof_options"
struct fewerPreprocessingHoles__option_t fewerPreprocessingHoles;
#line 17 "../../../src/options/proof_options"
struct allowEmptyDependencies__option_t allowEmptyDependencies;

#line 30 "../../../src/options/base_options_template.cpp"

}/* CVC4::options namespace */

}/* CVC4 namespace */
