/*********************                                                        */
/** options.h
 **
 ** Copyright 2011-2014  New York University and The University of Iowa,
 ** and as below.
 **
 ** This file automatically generated by:
 **
 **     /home/mdeters/cvc4/builds/x86_64-unknown-linux-gnu/production/../../../src/options/mkoptions /home/mdeters/cvc4/builds/x86_64-unknown-linux-gnu/production/../../../src/options/base_options_template.h ../theory/arrays/options.h
 **
 ** for the CVC4 project.
 **/

/* THIS FILE IS AUTOMATICALLY GENERATED, DO NOT EDIT ! */
/* THIS FILE IS AUTOMATICALLY GENERATED, DO NOT EDIT ! */
/* THIS FILE IS AUTOMATICALLY GENERATED, DO NOT EDIT ! */
/* THIS FILE IS AUTOMATICALLY GENERATED, DO NOT EDIT ! */
/* THIS FILE IS AUTOMATICALLY GENERATED, DO NOT EDIT ! */
/* THIS FILE IS AUTOMATICALLY GENERATED, DO NOT EDIT ! */

/* THIS FILE IS AUTOMATICALLY GENERATED, DO NOT EDIT ! */
/* THIS FILE IS AUTOMATICALLY GENERATED, DO NOT EDIT ! */
/* THIS FILE IS AUTOMATICALLY GENERATED, DO NOT EDIT ! */
/* THIS FILE IS AUTOMATICALLY GENERATED, DO NOT EDIT ! */
/* THIS FILE IS AUTOMATICALLY GENERATED, DO NOT EDIT ! */
/* THIS FILE IS AUTOMATICALLY GENERATED, DO NOT EDIT ! */

/* Edit the template file instead.                     */

/*********************                                                        */
/*! \file base_options_template.h
 ** \verbatim
 ** Original author: Morgan Deters
 ** Major contributors: none
 ** Minor contributors (to current version): none
 ** This file is part of the CVC4 project.
 ** Copyright (c) 2009-2014  New York University and The University of Iowa
 ** See the file COPYING in the top-level source directory for licensing
 ** information.\endverbatim
 **
 ** \brief Contains code for handling command-line options.
 **
 ** Contains code for handling command-line options
 **/

#include <cvc4/cvc4_public.h>

#ifndef __CVC4__OPTIONS__ARRAYS_H
#define __CVC4__OPTIONS__ARRAYS_H

#include <cvc4/options/options.h>


#line 26 "/home/mdeters/cvc4/builds/x86_64-unknown-linux-gnu/production/../../../src/options/base_options_template.h"

#define CVC4_OPTIONS__ARRAYS__FOR_OPTION_HOLDER \
  arraysOptimizeLinear__option_t::type arraysOptimizeLinear; \
  bool arraysOptimizeLinear__setByUser__; \
  arraysLazyRIntro1__option_t::type arraysLazyRIntro1; \
  bool arraysLazyRIntro1__setByUser__; \
  arraysModelBased__option_t::type arraysModelBased; \
  bool arraysModelBased__setByUser__; \
  arraysEagerIndexSplitting__option_t::type arraysEagerIndexSplitting; \
  bool arraysEagerIndexSplitting__setByUser__; \
  arraysEagerLemmas__option_t::type arraysEagerLemmas; \
  bool arraysEagerLemmas__setByUser__;

#line 30 "/home/mdeters/cvc4/builds/x86_64-unknown-linux-gnu/production/../../../src/options/base_options_template.h"

namespace CVC4 {

namespace options {


#line 8 "/home/mdeters/cvc4/builds/x86_64-unknown-linux-gnu/production/../../../src/options/../theory/arrays/options"
extern struct CVC4_PUBLIC arraysOptimizeLinear__option_t { typedef bool type; type operator()() const; bool wasSetByUser() const; void set(const type& v); } arraysOptimizeLinear CVC4_PUBLIC;
#line 11 "/home/mdeters/cvc4/builds/x86_64-unknown-linux-gnu/production/../../../src/options/../theory/arrays/options"
extern struct CVC4_PUBLIC arraysLazyRIntro1__option_t { typedef bool type; type operator()() const; bool wasSetByUser() const; void set(const type& v); } arraysLazyRIntro1 CVC4_PUBLIC;
#line 14 "/home/mdeters/cvc4/builds/x86_64-unknown-linux-gnu/production/../../../src/options/../theory/arrays/options"
extern struct CVC4_PUBLIC arraysModelBased__option_t { typedef bool type; type operator()() const; bool wasSetByUser() const; void set(const type& v); } arraysModelBased CVC4_PUBLIC;
#line 17 "/home/mdeters/cvc4/builds/x86_64-unknown-linux-gnu/production/../../../src/options/../theory/arrays/options"
extern struct CVC4_PUBLIC arraysEagerIndexSplitting__option_t { typedef bool type; type operator()() const; bool wasSetByUser() const; void set(const type& v); } arraysEagerIndexSplitting CVC4_PUBLIC;
#line 20 "/home/mdeters/cvc4/builds/x86_64-unknown-linux-gnu/production/../../../src/options/../theory/arrays/options"
extern struct CVC4_PUBLIC arraysEagerLemmas__option_t { typedef bool type; type operator()() const; bool wasSetByUser() const; void set(const type& v); } arraysEagerLemmas CVC4_PUBLIC;

#line 38 "/home/mdeters/cvc4/builds/x86_64-unknown-linux-gnu/production/../../../src/options/base_options_template.h"

}/* CVC4::options namespace */


#line 8 "/home/mdeters/cvc4/builds/x86_64-unknown-linux-gnu/production/../../../src/options/../theory/arrays/options"
template <> void Options::set(options::arraysOptimizeLinear__option_t, const options::arraysOptimizeLinear__option_t::type& x);
#line 8 "/home/mdeters/cvc4/builds/x86_64-unknown-linux-gnu/production/../../../src/options/../theory/arrays/options"
template <> const options::arraysOptimizeLinear__option_t::type& Options::operator[](options::arraysOptimizeLinear__option_t) const;
#line 8 "/home/mdeters/cvc4/builds/x86_64-unknown-linux-gnu/production/../../../src/options/../theory/arrays/options"
template <> bool Options::wasSetByUser(options::arraysOptimizeLinear__option_t) const;
#line 8 "/home/mdeters/cvc4/builds/x86_64-unknown-linux-gnu/production/../../../src/options/../theory/arrays/options"
template <> void Options::assignBool(options::arraysOptimizeLinear__option_t, std::string option, bool value, SmtEngine* smt);
#line 11 "/home/mdeters/cvc4/builds/x86_64-unknown-linux-gnu/production/../../../src/options/../theory/arrays/options"
template <> void Options::set(options::arraysLazyRIntro1__option_t, const options::arraysLazyRIntro1__option_t::type& x);
#line 11 "/home/mdeters/cvc4/builds/x86_64-unknown-linux-gnu/production/../../../src/options/../theory/arrays/options"
template <> const options::arraysLazyRIntro1__option_t::type& Options::operator[](options::arraysLazyRIntro1__option_t) const;
#line 11 "/home/mdeters/cvc4/builds/x86_64-unknown-linux-gnu/production/../../../src/options/../theory/arrays/options"
template <> bool Options::wasSetByUser(options::arraysLazyRIntro1__option_t) const;
#line 11 "/home/mdeters/cvc4/builds/x86_64-unknown-linux-gnu/production/../../../src/options/../theory/arrays/options"
template <> void Options::assignBool(options::arraysLazyRIntro1__option_t, std::string option, bool value, SmtEngine* smt);
#line 14 "/home/mdeters/cvc4/builds/x86_64-unknown-linux-gnu/production/../../../src/options/../theory/arrays/options"
template <> void Options::set(options::arraysModelBased__option_t, const options::arraysModelBased__option_t::type& x);
#line 14 "/home/mdeters/cvc4/builds/x86_64-unknown-linux-gnu/production/../../../src/options/../theory/arrays/options"
template <> const options::arraysModelBased__option_t::type& Options::operator[](options::arraysModelBased__option_t) const;
#line 14 "/home/mdeters/cvc4/builds/x86_64-unknown-linux-gnu/production/../../../src/options/../theory/arrays/options"
template <> bool Options::wasSetByUser(options::arraysModelBased__option_t) const;
#line 14 "/home/mdeters/cvc4/builds/x86_64-unknown-linux-gnu/production/../../../src/options/../theory/arrays/options"
template <> void Options::assignBool(options::arraysModelBased__option_t, std::string option, bool value, SmtEngine* smt);
#line 17 "/home/mdeters/cvc4/builds/x86_64-unknown-linux-gnu/production/../../../src/options/../theory/arrays/options"
template <> void Options::set(options::arraysEagerIndexSplitting__option_t, const options::arraysEagerIndexSplitting__option_t::type& x);
#line 17 "/home/mdeters/cvc4/builds/x86_64-unknown-linux-gnu/production/../../../src/options/../theory/arrays/options"
template <> const options::arraysEagerIndexSplitting__option_t::type& Options::operator[](options::arraysEagerIndexSplitting__option_t) const;
#line 17 "/home/mdeters/cvc4/builds/x86_64-unknown-linux-gnu/production/../../../src/options/../theory/arrays/options"
template <> bool Options::wasSetByUser(options::arraysEagerIndexSplitting__option_t) const;
#line 17 "/home/mdeters/cvc4/builds/x86_64-unknown-linux-gnu/production/../../../src/options/../theory/arrays/options"
template <> void Options::assignBool(options::arraysEagerIndexSplitting__option_t, std::string option, bool value, SmtEngine* smt);
#line 20 "/home/mdeters/cvc4/builds/x86_64-unknown-linux-gnu/production/../../../src/options/../theory/arrays/options"
template <> void Options::set(options::arraysEagerLemmas__option_t, const options::arraysEagerLemmas__option_t::type& x);
#line 20 "/home/mdeters/cvc4/builds/x86_64-unknown-linux-gnu/production/../../../src/options/../theory/arrays/options"
template <> const options::arraysEagerLemmas__option_t::type& Options::operator[](options::arraysEagerLemmas__option_t) const;
#line 20 "/home/mdeters/cvc4/builds/x86_64-unknown-linux-gnu/production/../../../src/options/../theory/arrays/options"
template <> bool Options::wasSetByUser(options::arraysEagerLemmas__option_t) const;
#line 20 "/home/mdeters/cvc4/builds/x86_64-unknown-linux-gnu/production/../../../src/options/../theory/arrays/options"
template <> void Options::assignBool(options::arraysEagerLemmas__option_t, std::string option, bool value, SmtEngine* smt);

#line 44 "/home/mdeters/cvc4/builds/x86_64-unknown-linux-gnu/production/../../../src/options/base_options_template.h"

namespace options {


#line 8 "/home/mdeters/cvc4/builds/x86_64-unknown-linux-gnu/production/../../../src/options/../theory/arrays/options"
inline arraysOptimizeLinear__option_t::type arraysOptimizeLinear__option_t::operator()() const { return Options::current()[*this]; }
#line 8 "/home/mdeters/cvc4/builds/x86_64-unknown-linux-gnu/production/../../../src/options/../theory/arrays/options"
inline bool arraysOptimizeLinear__option_t::wasSetByUser() const { return Options::current().wasSetByUser(*this); }
#line 8 "/home/mdeters/cvc4/builds/x86_64-unknown-linux-gnu/production/../../../src/options/../theory/arrays/options"
inline void arraysOptimizeLinear__option_t::set(const arraysOptimizeLinear__option_t::type& v) { Options::current().set(*this, v); }

#line 11 "/home/mdeters/cvc4/builds/x86_64-unknown-linux-gnu/production/../../../src/options/../theory/arrays/options"
inline arraysLazyRIntro1__option_t::type arraysLazyRIntro1__option_t::operator()() const { return Options::current()[*this]; }
#line 11 "/home/mdeters/cvc4/builds/x86_64-unknown-linux-gnu/production/../../../src/options/../theory/arrays/options"
inline bool arraysLazyRIntro1__option_t::wasSetByUser() const { return Options::current().wasSetByUser(*this); }
#line 11 "/home/mdeters/cvc4/builds/x86_64-unknown-linux-gnu/production/../../../src/options/../theory/arrays/options"
inline void arraysLazyRIntro1__option_t::set(const arraysLazyRIntro1__option_t::type& v) { Options::current().set(*this, v); }

#line 14 "/home/mdeters/cvc4/builds/x86_64-unknown-linux-gnu/production/../../../src/options/../theory/arrays/options"
inline arraysModelBased__option_t::type arraysModelBased__option_t::operator()() const { return Options::current()[*this]; }
#line 14 "/home/mdeters/cvc4/builds/x86_64-unknown-linux-gnu/production/../../../src/options/../theory/arrays/options"
inline bool arraysModelBased__option_t::wasSetByUser() const { return Options::current().wasSetByUser(*this); }
#line 14 "/home/mdeters/cvc4/builds/x86_64-unknown-linux-gnu/production/../../../src/options/../theory/arrays/options"
inline void arraysModelBased__option_t::set(const arraysModelBased__option_t::type& v) { Options::current().set(*this, v); }

#line 17 "/home/mdeters/cvc4/builds/x86_64-unknown-linux-gnu/production/../../../src/options/../theory/arrays/options"
inline arraysEagerIndexSplitting__option_t::type arraysEagerIndexSplitting__option_t::operator()() const { return Options::current()[*this]; }
#line 17 "/home/mdeters/cvc4/builds/x86_64-unknown-linux-gnu/production/../../../src/options/../theory/arrays/options"
inline bool arraysEagerIndexSplitting__option_t::wasSetByUser() const { return Options::current().wasSetByUser(*this); }
#line 17 "/home/mdeters/cvc4/builds/x86_64-unknown-linux-gnu/production/../../../src/options/../theory/arrays/options"
inline void arraysEagerIndexSplitting__option_t::set(const arraysEagerIndexSplitting__option_t::type& v) { Options::current().set(*this, v); }

#line 20 "/home/mdeters/cvc4/builds/x86_64-unknown-linux-gnu/production/../../../src/options/../theory/arrays/options"
inline arraysEagerLemmas__option_t::type arraysEagerLemmas__option_t::operator()() const { return Options::current()[*this]; }
#line 20 "/home/mdeters/cvc4/builds/x86_64-unknown-linux-gnu/production/../../../src/options/../theory/arrays/options"
inline bool arraysEagerLemmas__option_t::wasSetByUser() const { return Options::current().wasSetByUser(*this); }
#line 20 "/home/mdeters/cvc4/builds/x86_64-unknown-linux-gnu/production/../../../src/options/../theory/arrays/options"
inline void arraysEagerLemmas__option_t::set(const arraysEagerLemmas__option_t::type& v) { Options::current().set(*this, v); }

#line 50 "/home/mdeters/cvc4/builds/x86_64-unknown-linux-gnu/production/../../../src/options/base_options_template.h"

}/* CVC4::options namespace */

}/* CVC4 namespace */

#endif /* __CVC4__OPTIONS__ARRAYS_H */
