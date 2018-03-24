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

#ifndef __CVC4__OPTIONS__DECISION_H
#define __CVC4__OPTIONS__DECISION_H

#include "options/options.h"

#line 9 "../../../src/options/decision_options"
#include "options/decision_mode.h"
#line 15 "../../../src/options/decision_options"
#include "options/decision_weight.h"

#line 26 "../../../src/options/base_options_template.h"

#define CVC4_OPTIONS__DECISION__FOR_OPTION_HOLDER \
  decisionMode__option_t::type decisionMode; \
  bool decisionMode__setByUser__; \
  decisionStopOnly__option_t::type decisionStopOnly; \
  bool decisionStopOnly__setByUser__; \
  decisionThreshold__option_t::type decisionThreshold; \
  bool decisionThreshold__setByUser__; \
  decisionUseWeight__option_t::type decisionUseWeight; \
  bool decisionUseWeight__setByUser__; \
  decisionRandomWeight__option_t::type decisionRandomWeight; \
  bool decisionRandomWeight__setByUser__; \
  decisionWeightInternal__option_t::type decisionWeightInternal; \
  bool decisionWeightInternal__setByUser__;

#line 30 "../../../src/options/base_options_template.h"

namespace CVC4 {

namespace options {


#line 9 "../../../src/options/decision_options"
extern struct CVC4_PUBLIC decisionMode__option_t { typedef decision::DecisionMode type; type operator()() const; bool wasSetByUser() const; void set(const type& v); } decisionMode CVC4_PUBLIC;
#line 13 "../../../src/options/decision_options"
extern struct CVC4_PUBLIC decisionStopOnly__option_t { typedef bool type; type operator()() const; bool wasSetByUser() const; void set(const type& v); } decisionStopOnly CVC4_PUBLIC;
#line 15 "../../../src/options/decision_options"
extern struct CVC4_PUBLIC decisionThreshold__option_t { typedef decision::DecisionWeight type; type operator()() const; bool wasSetByUser() const; } decisionThreshold CVC4_PUBLIC;
#line 18 "../../../src/options/decision_options"
extern struct CVC4_PUBLIC decisionUseWeight__option_t { typedef bool type; type operator()() const; bool wasSetByUser() const; } decisionUseWeight CVC4_PUBLIC;
#line 21 "../../../src/options/decision_options"
extern struct CVC4_PUBLIC decisionRandomWeight__option_t { typedef int type; type operator()() const; bool wasSetByUser() const; } decisionRandomWeight CVC4_PUBLIC;
#line 24 "../../../src/options/decision_options"
extern struct CVC4_PUBLIC decisionWeightInternal__option_t { typedef decision::DecisionWeightInternal type; type operator()() const; bool wasSetByUser() const; } decisionWeightInternal CVC4_PUBLIC;

#line 38 "../../../src/options/base_options_template.h"

}/* CVC4::options namespace */


#line 9 "../../../src/options/decision_options"
template <> void Options::set(options::decisionMode__option_t, const options::decisionMode__option_t::type& x);
#line 9 "../../../src/options/decision_options"
template <> const options::decisionMode__option_t::type& Options::operator[](options::decisionMode__option_t) const;
#line 9 "../../../src/options/decision_options"
template <> bool Options::wasSetByUser(options::decisionMode__option_t) const;
#line 9 "../../../src/options/decision_options"
template <> void Options::assign(options::decisionMode__option_t, std::string option, std::string value);
#line 13 "../../../src/options/decision_options"
template <> void Options::set(options::decisionStopOnly__option_t, const options::decisionStopOnly__option_t::type& x);
#line 13 "../../../src/options/decision_options"
template <> const options::decisionStopOnly__option_t::type& Options::operator[](options::decisionStopOnly__option_t) const;
#line 13 "../../../src/options/decision_options"
template <> bool Options::wasSetByUser(options::decisionStopOnly__option_t) const;
#line 13 "../../../src/options/decision_options"
template <> void Options::assignBool(options::decisionStopOnly__option_t, std::string option, bool value);
#line 15 "../../../src/options/decision_options"
template <> const options::decisionThreshold__option_t::type& Options::operator[](options::decisionThreshold__option_t) const;
#line 15 "../../../src/options/decision_options"
template <> bool Options::wasSetByUser(options::decisionThreshold__option_t) const;
#line 15 "../../../src/options/decision_options"
template <> void Options::assign(options::decisionThreshold__option_t, std::string option, std::string value);
#line 18 "../../../src/options/decision_options"
template <> const options::decisionUseWeight__option_t::type& Options::operator[](options::decisionUseWeight__option_t) const;
#line 18 "../../../src/options/decision_options"
template <> bool Options::wasSetByUser(options::decisionUseWeight__option_t) const;
#line 18 "../../../src/options/decision_options"
template <> void Options::assignBool(options::decisionUseWeight__option_t, std::string option, bool value);
#line 21 "../../../src/options/decision_options"
template <> const options::decisionRandomWeight__option_t::type& Options::operator[](options::decisionRandomWeight__option_t) const;
#line 21 "../../../src/options/decision_options"
template <> bool Options::wasSetByUser(options::decisionRandomWeight__option_t) const;
#line 21 "../../../src/options/decision_options"
template <> void Options::assign(options::decisionRandomWeight__option_t, std::string option, std::string value);
#line 24 "../../../src/options/decision_options"
template <> const options::decisionWeightInternal__option_t::type& Options::operator[](options::decisionWeightInternal__option_t) const;
#line 24 "../../../src/options/decision_options"
template <> bool Options::wasSetByUser(options::decisionWeightInternal__option_t) const;
#line 24 "../../../src/options/decision_options"
template <> void Options::assign(options::decisionWeightInternal__option_t, std::string option, std::string value);

#line 44 "../../../src/options/base_options_template.h"

namespace options {


#line 9 "../../../src/options/decision_options"
inline decisionMode__option_t::type decisionMode__option_t::operator()() const { return (*Options::current())[*this]; }
#line 9 "../../../src/options/decision_options"
inline bool decisionMode__option_t::wasSetByUser() const { return Options::current()->wasSetByUser(*this); }
#line 9 "../../../src/options/decision_options"
inline void decisionMode__option_t::set(const decisionMode__option_t::type& v) { Options::current()->set(*this, v); }

#line 13 "../../../src/options/decision_options"
inline decisionStopOnly__option_t::type decisionStopOnly__option_t::operator()() const { return (*Options::current())[*this]; }
#line 13 "../../../src/options/decision_options"
inline bool decisionStopOnly__option_t::wasSetByUser() const { return Options::current()->wasSetByUser(*this); }
#line 13 "../../../src/options/decision_options"
inline void decisionStopOnly__option_t::set(const decisionStopOnly__option_t::type& v) { Options::current()->set(*this, v); }

#line 15 "../../../src/options/decision_options"
inline decisionThreshold__option_t::type decisionThreshold__option_t::operator()() const { return (*Options::current())[*this]; }
#line 15 "../../../src/options/decision_options"
inline bool decisionThreshold__option_t::wasSetByUser() const { return Options::current()->wasSetByUser(*this); }

#line 18 "../../../src/options/decision_options"
inline decisionUseWeight__option_t::type decisionUseWeight__option_t::operator()() const { return (*Options::current())[*this]; }
#line 18 "../../../src/options/decision_options"
inline bool decisionUseWeight__option_t::wasSetByUser() const { return Options::current()->wasSetByUser(*this); }

#line 21 "../../../src/options/decision_options"
inline decisionRandomWeight__option_t::type decisionRandomWeight__option_t::operator()() const { return (*Options::current())[*this]; }
#line 21 "../../../src/options/decision_options"
inline bool decisionRandomWeight__option_t::wasSetByUser() const { return Options::current()->wasSetByUser(*this); }

#line 24 "../../../src/options/decision_options"
inline decisionWeightInternal__option_t::type decisionWeightInternal__option_t::operator()() const { return (*Options::current())[*this]; }
#line 24 "../../../src/options/decision_options"
inline bool decisionWeightInternal__option_t::wasSetByUser() const { return Options::current()->wasSetByUser(*this); }

#line 50 "../../../src/options/base_options_template.h"

}/* CVC4::options namespace */

}/* CVC4 namespace */

#endif /* __CVC4__OPTIONS__DECISION_H */
