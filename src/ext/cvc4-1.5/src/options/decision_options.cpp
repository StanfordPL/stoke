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


#line 9 "../../../src/options/decision_options"
template <> void Options::set(options::decisionMode__option_t, const options::decisionMode__option_t::type& x) { d_holder->decisionMode = x; }
#line 9 "../../../src/options/decision_options"
template <> const options::decisionMode__option_t::type& Options::operator[](options::decisionMode__option_t) const { return d_holder->decisionMode; }
#line 9 "../../../src/options/decision_options"
template <> bool Options::wasSetByUser(options::decisionMode__option_t) const { return d_holder->decisionMode__setByUser__; }
#line 13 "../../../src/options/decision_options"
template <> void Options::set(options::decisionStopOnly__option_t, const options::decisionStopOnly__option_t::type& x) { d_holder->decisionStopOnly = x; }
#line 13 "../../../src/options/decision_options"
template <> const options::decisionStopOnly__option_t::type& Options::operator[](options::decisionStopOnly__option_t) const { return d_holder->decisionStopOnly; }
#line 13 "../../../src/options/decision_options"
template <> bool Options::wasSetByUser(options::decisionStopOnly__option_t) const { return d_holder->decisionStopOnly__setByUser__; }
#line 15 "../../../src/options/decision_options"
template <> const options::decisionThreshold__option_t::type& Options::operator[](options::decisionThreshold__option_t) const { return d_holder->decisionThreshold; }
#line 15 "../../../src/options/decision_options"
template <> bool Options::wasSetByUser(options::decisionThreshold__option_t) const { return d_holder->decisionThreshold__setByUser__; }
#line 18 "../../../src/options/decision_options"
template <> const options::decisionUseWeight__option_t::type& Options::operator[](options::decisionUseWeight__option_t) const { return d_holder->decisionUseWeight; }
#line 18 "../../../src/options/decision_options"
template <> bool Options::wasSetByUser(options::decisionUseWeight__option_t) const { return d_holder->decisionUseWeight__setByUser__; }
#line 21 "../../../src/options/decision_options"
template <> const options::decisionRandomWeight__option_t::type& Options::operator[](options::decisionRandomWeight__option_t) const { return d_holder->decisionRandomWeight; }
#line 21 "../../../src/options/decision_options"
template <> bool Options::wasSetByUser(options::decisionRandomWeight__option_t) const { return d_holder->decisionRandomWeight__setByUser__; }
#line 24 "../../../src/options/decision_options"
template <> const options::decisionWeightInternal__option_t::type& Options::operator[](options::decisionWeightInternal__option_t) const { return d_holder->decisionWeightInternal; }
#line 24 "../../../src/options/decision_options"
template <> bool Options::wasSetByUser(options::decisionWeightInternal__option_t) const { return d_holder->decisionWeightInternal__setByUser__; }

#line 24 "../../../src/options/base_options_template.cpp"

namespace options {


#line 9 "../../../src/options/decision_options"
struct decisionMode__option_t decisionMode;
#line 13 "../../../src/options/decision_options"
struct decisionStopOnly__option_t decisionStopOnly;
#line 15 "../../../src/options/decision_options"
struct decisionThreshold__option_t decisionThreshold;
#line 18 "../../../src/options/decision_options"
struct decisionUseWeight__option_t decisionUseWeight;
#line 21 "../../../src/options/decision_options"
struct decisionRandomWeight__option_t decisionRandomWeight;
#line 24 "../../../src/options/decision_options"
struct decisionWeightInternal__option_t decisionWeightInternal;

#line 30 "../../../src/options/base_options_template.cpp"

}/* CVC4::options namespace */

}/* CVC4 namespace */
