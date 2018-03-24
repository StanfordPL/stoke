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

#ifndef __CVC4__OPTIONS__PROOF_H
#define __CVC4__OPTIONS__PROOF_H

#include "options/options.h"


#line 26 "../../../src/options/base_options_template.h"

#define CVC4_OPTIONS__PROOF__FOR_OPTION_HOLDER \
  lfscLetification__option_t::type lfscLetification; \
  bool lfscLetification__setByUser__; \
  aggressiveCoreMin__option_t::type aggressiveCoreMin; \
  bool aggressiveCoreMin__setByUser__; \
  fewerPreprocessingHoles__option_t::type fewerPreprocessingHoles; \
  bool fewerPreprocessingHoles__setByUser__; \
  allowEmptyDependencies__option_t::type allowEmptyDependencies; \
  bool allowEmptyDependencies__setByUser__;

#line 30 "../../../src/options/base_options_template.h"

namespace CVC4 {

namespace options {


#line 8 "../../../src/options/proof_options"
extern struct CVC4_PUBLIC lfscLetification__option_t { typedef bool type; type operator()() const; bool wasSetByUser() const; } lfscLetification CVC4_PUBLIC;
#line 11 "../../../src/options/proof_options"
extern struct CVC4_PUBLIC aggressiveCoreMin__option_t { typedef bool type; type operator()() const; bool wasSetByUser() const; } aggressiveCoreMin CVC4_PUBLIC;
#line 14 "../../../src/options/proof_options"
extern struct CVC4_PUBLIC fewerPreprocessingHoles__option_t { typedef bool type; type operator()() const; bool wasSetByUser() const; void set(const type& v); } fewerPreprocessingHoles CVC4_PUBLIC;
#line 17 "../../../src/options/proof_options"
extern struct CVC4_PUBLIC allowEmptyDependencies__option_t { typedef bool type; type operator()() const; bool wasSetByUser() const; } allowEmptyDependencies CVC4_PUBLIC;

#line 38 "../../../src/options/base_options_template.h"

}/* CVC4::options namespace */


#line 8 "../../../src/options/proof_options"
template <> const options::lfscLetification__option_t::type& Options::operator[](options::lfscLetification__option_t) const;
#line 8 "../../../src/options/proof_options"
template <> bool Options::wasSetByUser(options::lfscLetification__option_t) const;
#line 8 "../../../src/options/proof_options"
template <> void Options::assignBool(options::lfscLetification__option_t, std::string option, bool value);
#line 11 "../../../src/options/proof_options"
template <> const options::aggressiveCoreMin__option_t::type& Options::operator[](options::aggressiveCoreMin__option_t) const;
#line 11 "../../../src/options/proof_options"
template <> bool Options::wasSetByUser(options::aggressiveCoreMin__option_t) const;
#line 11 "../../../src/options/proof_options"
template <> void Options::assignBool(options::aggressiveCoreMin__option_t, std::string option, bool value);
#line 14 "../../../src/options/proof_options"
template <> void Options::set(options::fewerPreprocessingHoles__option_t, const options::fewerPreprocessingHoles__option_t::type& x);
#line 14 "../../../src/options/proof_options"
template <> const options::fewerPreprocessingHoles__option_t::type& Options::operator[](options::fewerPreprocessingHoles__option_t) const;
#line 14 "../../../src/options/proof_options"
template <> bool Options::wasSetByUser(options::fewerPreprocessingHoles__option_t) const;
#line 14 "../../../src/options/proof_options"
template <> void Options::assignBool(options::fewerPreprocessingHoles__option_t, std::string option, bool value);
#line 17 "../../../src/options/proof_options"
template <> const options::allowEmptyDependencies__option_t::type& Options::operator[](options::allowEmptyDependencies__option_t) const;
#line 17 "../../../src/options/proof_options"
template <> bool Options::wasSetByUser(options::allowEmptyDependencies__option_t) const;
#line 17 "../../../src/options/proof_options"
template <> void Options::assignBool(options::allowEmptyDependencies__option_t, std::string option, bool value);

#line 44 "../../../src/options/base_options_template.h"

namespace options {


#line 8 "../../../src/options/proof_options"
inline lfscLetification__option_t::type lfscLetification__option_t::operator()() const { return (*Options::current())[*this]; }
#line 8 "../../../src/options/proof_options"
inline bool lfscLetification__option_t::wasSetByUser() const { return Options::current()->wasSetByUser(*this); }

#line 11 "../../../src/options/proof_options"
inline aggressiveCoreMin__option_t::type aggressiveCoreMin__option_t::operator()() const { return (*Options::current())[*this]; }
#line 11 "../../../src/options/proof_options"
inline bool aggressiveCoreMin__option_t::wasSetByUser() const { return Options::current()->wasSetByUser(*this); }

#line 14 "../../../src/options/proof_options"
inline fewerPreprocessingHoles__option_t::type fewerPreprocessingHoles__option_t::operator()() const { return (*Options::current())[*this]; }
#line 14 "../../../src/options/proof_options"
inline bool fewerPreprocessingHoles__option_t::wasSetByUser() const { return Options::current()->wasSetByUser(*this); }
#line 14 "../../../src/options/proof_options"
inline void fewerPreprocessingHoles__option_t::set(const fewerPreprocessingHoles__option_t::type& v) { Options::current()->set(*this, v); }

#line 17 "../../../src/options/proof_options"
inline allowEmptyDependencies__option_t::type allowEmptyDependencies__option_t::operator()() const { return (*Options::current())[*this]; }
#line 17 "../../../src/options/proof_options"
inline bool allowEmptyDependencies__option_t::wasSetByUser() const { return Options::current()->wasSetByUser(*this); }

#line 50 "../../../src/options/base_options_template.h"

}/* CVC4::options namespace */

}/* CVC4 namespace */

#endif /* __CVC4__OPTIONS__PROOF_H */
