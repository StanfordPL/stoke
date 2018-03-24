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

#ifndef __CVC4__OPTIONS__ARRAYS_H
#define __CVC4__OPTIONS__ARRAYS_H

#include "options/options.h"


#line 26 "../../../src/options/base_options_template.h"

#define CVC4_OPTIONS__ARRAYS__FOR_OPTION_HOLDER \
  arraysOptimizeLinear__option_t::type arraysOptimizeLinear; \
  bool arraysOptimizeLinear__setByUser__; \
  arraysLazyRIntro1__option_t::type arraysLazyRIntro1; \
  bool arraysLazyRIntro1__setByUser__; \
  arraysWeakEquivalence__option_t::type arraysWeakEquivalence; \
  bool arraysWeakEquivalence__setByUser__; \
  arraysModelBased__option_t::type arraysModelBased; \
  bool arraysModelBased__setByUser__; \
  arraysEagerIndexSplitting__option_t::type arraysEagerIndexSplitting; \
  bool arraysEagerIndexSplitting__setByUser__; \
  arraysEagerLemmas__option_t::type arraysEagerLemmas; \
  bool arraysEagerLemmas__setByUser__; \
  arraysConfig__option_t::type arraysConfig; \
  bool arraysConfig__setByUser__; \
  arraysReduceSharing__option_t::type arraysReduceSharing; \
  bool arraysReduceSharing__setByUser__; \
  arraysPropagate__option_t::type arraysPropagate; \
  bool arraysPropagate__setByUser__;

#line 30 "../../../src/options/base_options_template.h"

namespace CVC4 {

namespace options {


#line 8 "../../../src/options/arrays_options"
extern struct CVC4_PUBLIC arraysOptimizeLinear__option_t { typedef bool type; type operator()() const; bool wasSetByUser() const; void set(const type& v); } arraysOptimizeLinear CVC4_PUBLIC;
#line 11 "../../../src/options/arrays_options"
extern struct CVC4_PUBLIC arraysLazyRIntro1__option_t { typedef bool type; type operator()() const; bool wasSetByUser() const; void set(const type& v); } arraysLazyRIntro1 CVC4_PUBLIC;
#line 14 "../../../src/options/arrays_options"
extern struct CVC4_PUBLIC arraysWeakEquivalence__option_t { typedef bool type; type operator()() const; bool wasSetByUser() const; void set(const type& v); } arraysWeakEquivalence CVC4_PUBLIC;
#line 17 "../../../src/options/arrays_options"
extern struct CVC4_PUBLIC arraysModelBased__option_t { typedef bool type; type operator()() const; bool wasSetByUser() const; void set(const type& v); } arraysModelBased CVC4_PUBLIC;
#line 20 "../../../src/options/arrays_options"
extern struct CVC4_PUBLIC arraysEagerIndexSplitting__option_t { typedef bool type; type operator()() const; bool wasSetByUser() const; void set(const type& v); } arraysEagerIndexSplitting CVC4_PUBLIC;
#line 23 "../../../src/options/arrays_options"
extern struct CVC4_PUBLIC arraysEagerLemmas__option_t { typedef bool type; type operator()() const; bool wasSetByUser() const; void set(const type& v); } arraysEagerLemmas CVC4_PUBLIC;
#line 26 "../../../src/options/arrays_options"
extern struct CVC4_PUBLIC arraysConfig__option_t { typedef int type; type operator()() const; bool wasSetByUser() const; void set(const type& v); } arraysConfig CVC4_PUBLIC;
#line 29 "../../../src/options/arrays_options"
extern struct CVC4_PUBLIC arraysReduceSharing__option_t { typedef bool type; type operator()() const; bool wasSetByUser() const; void set(const type& v); } arraysReduceSharing CVC4_PUBLIC;
#line 32 "../../../src/options/arrays_options"
extern struct CVC4_PUBLIC arraysPropagate__option_t { typedef int type; type operator()() const; bool wasSetByUser() const; void set(const type& v); } arraysPropagate CVC4_PUBLIC;

#line 38 "../../../src/options/base_options_template.h"

}/* CVC4::options namespace */


#line 8 "../../../src/options/arrays_options"
template <> void Options::set(options::arraysOptimizeLinear__option_t, const options::arraysOptimizeLinear__option_t::type& x);
#line 8 "../../../src/options/arrays_options"
template <> const options::arraysOptimizeLinear__option_t::type& Options::operator[](options::arraysOptimizeLinear__option_t) const;
#line 8 "../../../src/options/arrays_options"
template <> bool Options::wasSetByUser(options::arraysOptimizeLinear__option_t) const;
#line 8 "../../../src/options/arrays_options"
template <> void Options::assignBool(options::arraysOptimizeLinear__option_t, std::string option, bool value);
#line 11 "../../../src/options/arrays_options"
template <> void Options::set(options::arraysLazyRIntro1__option_t, const options::arraysLazyRIntro1__option_t::type& x);
#line 11 "../../../src/options/arrays_options"
template <> const options::arraysLazyRIntro1__option_t::type& Options::operator[](options::arraysLazyRIntro1__option_t) const;
#line 11 "../../../src/options/arrays_options"
template <> bool Options::wasSetByUser(options::arraysLazyRIntro1__option_t) const;
#line 11 "../../../src/options/arrays_options"
template <> void Options::assignBool(options::arraysLazyRIntro1__option_t, std::string option, bool value);
#line 14 "../../../src/options/arrays_options"
template <> void Options::set(options::arraysWeakEquivalence__option_t, const options::arraysWeakEquivalence__option_t::type& x);
#line 14 "../../../src/options/arrays_options"
template <> const options::arraysWeakEquivalence__option_t::type& Options::operator[](options::arraysWeakEquivalence__option_t) const;
#line 14 "../../../src/options/arrays_options"
template <> bool Options::wasSetByUser(options::arraysWeakEquivalence__option_t) const;
#line 14 "../../../src/options/arrays_options"
template <> void Options::assignBool(options::arraysWeakEquivalence__option_t, std::string option, bool value);
#line 17 "../../../src/options/arrays_options"
template <> void Options::set(options::arraysModelBased__option_t, const options::arraysModelBased__option_t::type& x);
#line 17 "../../../src/options/arrays_options"
template <> const options::arraysModelBased__option_t::type& Options::operator[](options::arraysModelBased__option_t) const;
#line 17 "../../../src/options/arrays_options"
template <> bool Options::wasSetByUser(options::arraysModelBased__option_t) const;
#line 17 "../../../src/options/arrays_options"
template <> void Options::assignBool(options::arraysModelBased__option_t, std::string option, bool value);
#line 20 "../../../src/options/arrays_options"
template <> void Options::set(options::arraysEagerIndexSplitting__option_t, const options::arraysEagerIndexSplitting__option_t::type& x);
#line 20 "../../../src/options/arrays_options"
template <> const options::arraysEagerIndexSplitting__option_t::type& Options::operator[](options::arraysEagerIndexSplitting__option_t) const;
#line 20 "../../../src/options/arrays_options"
template <> bool Options::wasSetByUser(options::arraysEagerIndexSplitting__option_t) const;
#line 20 "../../../src/options/arrays_options"
template <> void Options::assignBool(options::arraysEagerIndexSplitting__option_t, std::string option, bool value);
#line 23 "../../../src/options/arrays_options"
template <> void Options::set(options::arraysEagerLemmas__option_t, const options::arraysEagerLemmas__option_t::type& x);
#line 23 "../../../src/options/arrays_options"
template <> const options::arraysEagerLemmas__option_t::type& Options::operator[](options::arraysEagerLemmas__option_t) const;
#line 23 "../../../src/options/arrays_options"
template <> bool Options::wasSetByUser(options::arraysEagerLemmas__option_t) const;
#line 23 "../../../src/options/arrays_options"
template <> void Options::assignBool(options::arraysEagerLemmas__option_t, std::string option, bool value);
#line 26 "../../../src/options/arrays_options"
template <> void Options::set(options::arraysConfig__option_t, const options::arraysConfig__option_t::type& x);
#line 26 "../../../src/options/arrays_options"
template <> const options::arraysConfig__option_t::type& Options::operator[](options::arraysConfig__option_t) const;
#line 26 "../../../src/options/arrays_options"
template <> bool Options::wasSetByUser(options::arraysConfig__option_t) const;
#line 26 "../../../src/options/arrays_options"
template <> void Options::assign(options::arraysConfig__option_t, std::string option, std::string value);
#line 29 "../../../src/options/arrays_options"
template <> void Options::set(options::arraysReduceSharing__option_t, const options::arraysReduceSharing__option_t::type& x);
#line 29 "../../../src/options/arrays_options"
template <> const options::arraysReduceSharing__option_t::type& Options::operator[](options::arraysReduceSharing__option_t) const;
#line 29 "../../../src/options/arrays_options"
template <> bool Options::wasSetByUser(options::arraysReduceSharing__option_t) const;
#line 29 "../../../src/options/arrays_options"
template <> void Options::assignBool(options::arraysReduceSharing__option_t, std::string option, bool value);
#line 32 "../../../src/options/arrays_options"
template <> void Options::set(options::arraysPropagate__option_t, const options::arraysPropagate__option_t::type& x);
#line 32 "../../../src/options/arrays_options"
template <> const options::arraysPropagate__option_t::type& Options::operator[](options::arraysPropagate__option_t) const;
#line 32 "../../../src/options/arrays_options"
template <> bool Options::wasSetByUser(options::arraysPropagate__option_t) const;
#line 32 "../../../src/options/arrays_options"
template <> void Options::assign(options::arraysPropagate__option_t, std::string option, std::string value);

#line 44 "../../../src/options/base_options_template.h"

namespace options {


#line 8 "../../../src/options/arrays_options"
inline arraysOptimizeLinear__option_t::type arraysOptimizeLinear__option_t::operator()() const { return (*Options::current())[*this]; }
#line 8 "../../../src/options/arrays_options"
inline bool arraysOptimizeLinear__option_t::wasSetByUser() const { return Options::current()->wasSetByUser(*this); }
#line 8 "../../../src/options/arrays_options"
inline void arraysOptimizeLinear__option_t::set(const arraysOptimizeLinear__option_t::type& v) { Options::current()->set(*this, v); }

#line 11 "../../../src/options/arrays_options"
inline arraysLazyRIntro1__option_t::type arraysLazyRIntro1__option_t::operator()() const { return (*Options::current())[*this]; }
#line 11 "../../../src/options/arrays_options"
inline bool arraysLazyRIntro1__option_t::wasSetByUser() const { return Options::current()->wasSetByUser(*this); }
#line 11 "../../../src/options/arrays_options"
inline void arraysLazyRIntro1__option_t::set(const arraysLazyRIntro1__option_t::type& v) { Options::current()->set(*this, v); }

#line 14 "../../../src/options/arrays_options"
inline arraysWeakEquivalence__option_t::type arraysWeakEquivalence__option_t::operator()() const { return (*Options::current())[*this]; }
#line 14 "../../../src/options/arrays_options"
inline bool arraysWeakEquivalence__option_t::wasSetByUser() const { return Options::current()->wasSetByUser(*this); }
#line 14 "../../../src/options/arrays_options"
inline void arraysWeakEquivalence__option_t::set(const arraysWeakEquivalence__option_t::type& v) { Options::current()->set(*this, v); }

#line 17 "../../../src/options/arrays_options"
inline arraysModelBased__option_t::type arraysModelBased__option_t::operator()() const { return (*Options::current())[*this]; }
#line 17 "../../../src/options/arrays_options"
inline bool arraysModelBased__option_t::wasSetByUser() const { return Options::current()->wasSetByUser(*this); }
#line 17 "../../../src/options/arrays_options"
inline void arraysModelBased__option_t::set(const arraysModelBased__option_t::type& v) { Options::current()->set(*this, v); }

#line 20 "../../../src/options/arrays_options"
inline arraysEagerIndexSplitting__option_t::type arraysEagerIndexSplitting__option_t::operator()() const { return (*Options::current())[*this]; }
#line 20 "../../../src/options/arrays_options"
inline bool arraysEagerIndexSplitting__option_t::wasSetByUser() const { return Options::current()->wasSetByUser(*this); }
#line 20 "../../../src/options/arrays_options"
inline void arraysEagerIndexSplitting__option_t::set(const arraysEagerIndexSplitting__option_t::type& v) { Options::current()->set(*this, v); }

#line 23 "../../../src/options/arrays_options"
inline arraysEagerLemmas__option_t::type arraysEagerLemmas__option_t::operator()() const { return (*Options::current())[*this]; }
#line 23 "../../../src/options/arrays_options"
inline bool arraysEagerLemmas__option_t::wasSetByUser() const { return Options::current()->wasSetByUser(*this); }
#line 23 "../../../src/options/arrays_options"
inline void arraysEagerLemmas__option_t::set(const arraysEagerLemmas__option_t::type& v) { Options::current()->set(*this, v); }

#line 26 "../../../src/options/arrays_options"
inline arraysConfig__option_t::type arraysConfig__option_t::operator()() const { return (*Options::current())[*this]; }
#line 26 "../../../src/options/arrays_options"
inline bool arraysConfig__option_t::wasSetByUser() const { return Options::current()->wasSetByUser(*this); }
#line 26 "../../../src/options/arrays_options"
inline void arraysConfig__option_t::set(const arraysConfig__option_t::type& v) { Options::current()->set(*this, v); }

#line 29 "../../../src/options/arrays_options"
inline arraysReduceSharing__option_t::type arraysReduceSharing__option_t::operator()() const { return (*Options::current())[*this]; }
#line 29 "../../../src/options/arrays_options"
inline bool arraysReduceSharing__option_t::wasSetByUser() const { return Options::current()->wasSetByUser(*this); }
#line 29 "../../../src/options/arrays_options"
inline void arraysReduceSharing__option_t::set(const arraysReduceSharing__option_t::type& v) { Options::current()->set(*this, v); }

#line 32 "../../../src/options/arrays_options"
inline arraysPropagate__option_t::type arraysPropagate__option_t::operator()() const { return (*Options::current())[*this]; }
#line 32 "../../../src/options/arrays_options"
inline bool arraysPropagate__option_t::wasSetByUser() const { return Options::current()->wasSetByUser(*this); }
#line 32 "../../../src/options/arrays_options"
inline void arraysPropagate__option_t::set(const arraysPropagate__option_t::type& v) { Options::current()->set(*this, v); }

#line 50 "../../../src/options/base_options_template.h"

}/* CVC4::options namespace */

}/* CVC4 namespace */

#endif /* __CVC4__OPTIONS__ARRAYS_H */
