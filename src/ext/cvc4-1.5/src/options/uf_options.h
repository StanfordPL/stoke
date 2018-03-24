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

#ifndef __CVC4__OPTIONS__UF_H
#define __CVC4__OPTIONS__UF_H

#include "options/options.h"

#line 32 "../../../src/options/uf_options"
#include "options/ufss_mode.h"

#line 26 "../../../src/options/base_options_template.h"

#define CVC4_OPTIONS__UF__FOR_OPTION_HOLDER \
  ufSymmetryBreaker__option_t::type ufSymmetryBreaker; \
  bool ufSymmetryBreaker__setByUser__; \
  condenseFunctionValues__option_t::type condenseFunctionValues; \
  bool condenseFunctionValues__setByUser__; \
  ufssRegions__option_t::type ufssRegions; \
  bool ufssRegions__setByUser__; \
  ufssEagerSplits__option_t::type ufssEagerSplits; \
  bool ufssEagerSplits__setByUser__; \
  ufssTotality__option_t::type ufssTotality; \
  bool ufssTotality__setByUser__; \
  ufssTotalityLimited__option_t::type ufssTotalityLimited; \
  bool ufssTotalityLimited__setByUser__; \
  ufssTotalitySymBreak__option_t::type ufssTotalitySymBreak; \
  bool ufssTotalitySymBreak__setByUser__; \
  ufssAbortCardinality__option_t::type ufssAbortCardinality; \
  bool ufssAbortCardinality__setByUser__; \
  ufssExplainedCliques__option_t::type ufssExplainedCliques; \
  bool ufssExplainedCliques__setByUser__; \
  ufssSimpleCliques__option_t::type ufssSimpleCliques; \
  bool ufssSimpleCliques__setByUser__; \
  ufssDiseqPropagation__option_t::type ufssDiseqPropagation; \
  bool ufssDiseqPropagation__setByUser__; \
  ufssMode__option_t::type ufssMode; \
  bool ufssMode__setByUser__; \
  ufssCliqueSplits__option_t::type ufssCliqueSplits; \
  bool ufssCliqueSplits__setByUser__; \
  ufssSymBreak__option_t::type ufssSymBreak; \
  bool ufssSymBreak__setByUser__; \
  ufssFairness__option_t::type ufssFairness; \
  bool ufssFairness__setByUser__; \
  ufssFairnessMonotone__option_t::type ufssFairnessMonotone; \
  bool ufssFairnessMonotone__setByUser__;

#line 30 "../../../src/options/base_options_template.h"

namespace CVC4 {

namespace options {


#line 8 "../../../src/options/uf_options"
extern struct CVC4_PUBLIC ufSymmetryBreaker__option_t { typedef bool type; type operator()() const; bool wasSetByUser() const; void set(const type& v); } ufSymmetryBreaker CVC4_PUBLIC;
#line 11 "../../../src/options/uf_options"
extern struct CVC4_PUBLIC condenseFunctionValues__option_t { typedef bool type; type operator()() const; bool wasSetByUser() const; } condenseFunctionValues CVC4_PUBLIC;
#line 14 "../../../src/options/uf_options"
extern struct CVC4_PUBLIC ufssRegions__option_t { typedef bool type; type operator()() const; bool wasSetByUser() const; } ufssRegions CVC4_PUBLIC;
#line 16 "../../../src/options/uf_options"
extern struct CVC4_PUBLIC ufssEagerSplits__option_t { typedef bool type; type operator()() const; bool wasSetByUser() const; } ufssEagerSplits CVC4_PUBLIC;
#line 18 "../../../src/options/uf_options"
extern struct CVC4_PUBLIC ufssTotality__option_t { typedef bool type; type operator()() const; bool wasSetByUser() const; } ufssTotality CVC4_PUBLIC;
#line 20 "../../../src/options/uf_options"
extern struct CVC4_PUBLIC ufssTotalityLimited__option_t { typedef int type; type operator()() const; bool wasSetByUser() const; } ufssTotalityLimited CVC4_PUBLIC;
#line 22 "../../../src/options/uf_options"
extern struct CVC4_PUBLIC ufssTotalitySymBreak__option_t { typedef bool type; type operator()() const; bool wasSetByUser() const; } ufssTotalitySymBreak CVC4_PUBLIC;
#line 24 "../../../src/options/uf_options"
extern struct CVC4_PUBLIC ufssAbortCardinality__option_t { typedef int type; type operator()() const; bool wasSetByUser() const; } ufssAbortCardinality CVC4_PUBLIC;
#line 26 "../../../src/options/uf_options"
extern struct CVC4_PUBLIC ufssExplainedCliques__option_t { typedef bool type; type operator()() const; bool wasSetByUser() const; } ufssExplainedCliques CVC4_PUBLIC;
#line 28 "../../../src/options/uf_options"
extern struct CVC4_PUBLIC ufssSimpleCliques__option_t { typedef bool type; type operator()() const; bool wasSetByUser() const; } ufssSimpleCliques CVC4_PUBLIC;
#line 30 "../../../src/options/uf_options"
extern struct CVC4_PUBLIC ufssDiseqPropagation__option_t { typedef bool type; type operator()() const; bool wasSetByUser() const; } ufssDiseqPropagation CVC4_PUBLIC;
#line 32 "../../../src/options/uf_options"
extern struct CVC4_PUBLIC ufssMode__option_t { typedef CVC4::theory::uf::UfssMode type; type operator()() const; bool wasSetByUser() const; } ufssMode CVC4_PUBLIC;
#line 34 "../../../src/options/uf_options"
extern struct CVC4_PUBLIC ufssCliqueSplits__option_t { typedef bool type; type operator()() const; bool wasSetByUser() const; } ufssCliqueSplits CVC4_PUBLIC;
#line 37 "../../../src/options/uf_options"
extern struct CVC4_PUBLIC ufssSymBreak__option_t { typedef bool type; type operator()() const; bool wasSetByUser() const; } ufssSymBreak CVC4_PUBLIC;
#line 39 "../../../src/options/uf_options"
extern struct CVC4_PUBLIC ufssFairness__option_t { typedef bool type; type operator()() const; bool wasSetByUser() const; } ufssFairness CVC4_PUBLIC;
#line 41 "../../../src/options/uf_options"
extern struct CVC4_PUBLIC ufssFairnessMonotone__option_t { typedef bool type; type operator()() const; bool wasSetByUser() const; void set(const type& v); } ufssFairnessMonotone CVC4_PUBLIC;

#line 38 "../../../src/options/base_options_template.h"

}/* CVC4::options namespace */


#line 8 "../../../src/options/uf_options"
template <> void Options::set(options::ufSymmetryBreaker__option_t, const options::ufSymmetryBreaker__option_t::type& x);
#line 8 "../../../src/options/uf_options"
template <> const options::ufSymmetryBreaker__option_t::type& Options::operator[](options::ufSymmetryBreaker__option_t) const;
#line 8 "../../../src/options/uf_options"
template <> bool Options::wasSetByUser(options::ufSymmetryBreaker__option_t) const;
#line 8 "../../../src/options/uf_options"
template <> void Options::assignBool(options::ufSymmetryBreaker__option_t, std::string option, bool value);
#line 11 "../../../src/options/uf_options"
template <> const options::condenseFunctionValues__option_t::type& Options::operator[](options::condenseFunctionValues__option_t) const;
#line 11 "../../../src/options/uf_options"
template <> bool Options::wasSetByUser(options::condenseFunctionValues__option_t) const;
#line 11 "../../../src/options/uf_options"
template <> void Options::assignBool(options::condenseFunctionValues__option_t, std::string option, bool value);
#line 14 "../../../src/options/uf_options"
template <> const options::ufssRegions__option_t::type& Options::operator[](options::ufssRegions__option_t) const;
#line 14 "../../../src/options/uf_options"
template <> bool Options::wasSetByUser(options::ufssRegions__option_t) const;
#line 14 "../../../src/options/uf_options"
template <> void Options::assignBool(options::ufssRegions__option_t, std::string option, bool value);
#line 16 "../../../src/options/uf_options"
template <> const options::ufssEagerSplits__option_t::type& Options::operator[](options::ufssEagerSplits__option_t) const;
#line 16 "../../../src/options/uf_options"
template <> bool Options::wasSetByUser(options::ufssEagerSplits__option_t) const;
#line 16 "../../../src/options/uf_options"
template <> void Options::assignBool(options::ufssEagerSplits__option_t, std::string option, bool value);
#line 18 "../../../src/options/uf_options"
template <> const options::ufssTotality__option_t::type& Options::operator[](options::ufssTotality__option_t) const;
#line 18 "../../../src/options/uf_options"
template <> bool Options::wasSetByUser(options::ufssTotality__option_t) const;
#line 18 "../../../src/options/uf_options"
template <> void Options::assignBool(options::ufssTotality__option_t, std::string option, bool value);
#line 20 "../../../src/options/uf_options"
template <> const options::ufssTotalityLimited__option_t::type& Options::operator[](options::ufssTotalityLimited__option_t) const;
#line 20 "../../../src/options/uf_options"
template <> bool Options::wasSetByUser(options::ufssTotalityLimited__option_t) const;
#line 20 "../../../src/options/uf_options"
template <> void Options::assign(options::ufssTotalityLimited__option_t, std::string option, std::string value);
#line 22 "../../../src/options/uf_options"
template <> const options::ufssTotalitySymBreak__option_t::type& Options::operator[](options::ufssTotalitySymBreak__option_t) const;
#line 22 "../../../src/options/uf_options"
template <> bool Options::wasSetByUser(options::ufssTotalitySymBreak__option_t) const;
#line 22 "../../../src/options/uf_options"
template <> void Options::assignBool(options::ufssTotalitySymBreak__option_t, std::string option, bool value);
#line 24 "../../../src/options/uf_options"
template <> const options::ufssAbortCardinality__option_t::type& Options::operator[](options::ufssAbortCardinality__option_t) const;
#line 24 "../../../src/options/uf_options"
template <> bool Options::wasSetByUser(options::ufssAbortCardinality__option_t) const;
#line 24 "../../../src/options/uf_options"
template <> void Options::assign(options::ufssAbortCardinality__option_t, std::string option, std::string value);
#line 26 "../../../src/options/uf_options"
template <> const options::ufssExplainedCliques__option_t::type& Options::operator[](options::ufssExplainedCliques__option_t) const;
#line 26 "../../../src/options/uf_options"
template <> bool Options::wasSetByUser(options::ufssExplainedCliques__option_t) const;
#line 26 "../../../src/options/uf_options"
template <> void Options::assignBool(options::ufssExplainedCliques__option_t, std::string option, bool value);
#line 28 "../../../src/options/uf_options"
template <> const options::ufssSimpleCliques__option_t::type& Options::operator[](options::ufssSimpleCliques__option_t) const;
#line 28 "../../../src/options/uf_options"
template <> bool Options::wasSetByUser(options::ufssSimpleCliques__option_t) const;
#line 28 "../../../src/options/uf_options"
template <> void Options::assignBool(options::ufssSimpleCliques__option_t, std::string option, bool value);
#line 30 "../../../src/options/uf_options"
template <> const options::ufssDiseqPropagation__option_t::type& Options::operator[](options::ufssDiseqPropagation__option_t) const;
#line 30 "../../../src/options/uf_options"
template <> bool Options::wasSetByUser(options::ufssDiseqPropagation__option_t) const;
#line 30 "../../../src/options/uf_options"
template <> void Options::assignBool(options::ufssDiseqPropagation__option_t, std::string option, bool value);
#line 32 "../../../src/options/uf_options"
template <> const options::ufssMode__option_t::type& Options::operator[](options::ufssMode__option_t) const;
#line 32 "../../../src/options/uf_options"
template <> bool Options::wasSetByUser(options::ufssMode__option_t) const;
#line 32 "../../../src/options/uf_options"
template <> void Options::assign(options::ufssMode__option_t, std::string option, std::string value);
#line 34 "../../../src/options/uf_options"
template <> const options::ufssCliqueSplits__option_t::type& Options::operator[](options::ufssCliqueSplits__option_t) const;
#line 34 "../../../src/options/uf_options"
template <> bool Options::wasSetByUser(options::ufssCliqueSplits__option_t) const;
#line 34 "../../../src/options/uf_options"
template <> void Options::assignBool(options::ufssCliqueSplits__option_t, std::string option, bool value);
#line 37 "../../../src/options/uf_options"
template <> const options::ufssSymBreak__option_t::type& Options::operator[](options::ufssSymBreak__option_t) const;
#line 37 "../../../src/options/uf_options"
template <> bool Options::wasSetByUser(options::ufssSymBreak__option_t) const;
#line 37 "../../../src/options/uf_options"
template <> void Options::assignBool(options::ufssSymBreak__option_t, std::string option, bool value);
#line 39 "../../../src/options/uf_options"
template <> const options::ufssFairness__option_t::type& Options::operator[](options::ufssFairness__option_t) const;
#line 39 "../../../src/options/uf_options"
template <> bool Options::wasSetByUser(options::ufssFairness__option_t) const;
#line 39 "../../../src/options/uf_options"
template <> void Options::assignBool(options::ufssFairness__option_t, std::string option, bool value);
#line 41 "../../../src/options/uf_options"
template <> void Options::set(options::ufssFairnessMonotone__option_t, const options::ufssFairnessMonotone__option_t::type& x);
#line 41 "../../../src/options/uf_options"
template <> const options::ufssFairnessMonotone__option_t::type& Options::operator[](options::ufssFairnessMonotone__option_t) const;
#line 41 "../../../src/options/uf_options"
template <> bool Options::wasSetByUser(options::ufssFairnessMonotone__option_t) const;
#line 41 "../../../src/options/uf_options"
template <> void Options::assignBool(options::ufssFairnessMonotone__option_t, std::string option, bool value);

#line 44 "../../../src/options/base_options_template.h"

namespace options {


#line 8 "../../../src/options/uf_options"
inline ufSymmetryBreaker__option_t::type ufSymmetryBreaker__option_t::operator()() const { return (*Options::current())[*this]; }
#line 8 "../../../src/options/uf_options"
inline bool ufSymmetryBreaker__option_t::wasSetByUser() const { return Options::current()->wasSetByUser(*this); }
#line 8 "../../../src/options/uf_options"
inline void ufSymmetryBreaker__option_t::set(const ufSymmetryBreaker__option_t::type& v) { Options::current()->set(*this, v); }

#line 11 "../../../src/options/uf_options"
inline condenseFunctionValues__option_t::type condenseFunctionValues__option_t::operator()() const { return (*Options::current())[*this]; }
#line 11 "../../../src/options/uf_options"
inline bool condenseFunctionValues__option_t::wasSetByUser() const { return Options::current()->wasSetByUser(*this); }

#line 14 "../../../src/options/uf_options"
inline ufssRegions__option_t::type ufssRegions__option_t::operator()() const { return (*Options::current())[*this]; }
#line 14 "../../../src/options/uf_options"
inline bool ufssRegions__option_t::wasSetByUser() const { return Options::current()->wasSetByUser(*this); }

#line 16 "../../../src/options/uf_options"
inline ufssEagerSplits__option_t::type ufssEagerSplits__option_t::operator()() const { return (*Options::current())[*this]; }
#line 16 "../../../src/options/uf_options"
inline bool ufssEagerSplits__option_t::wasSetByUser() const { return Options::current()->wasSetByUser(*this); }

#line 18 "../../../src/options/uf_options"
inline ufssTotality__option_t::type ufssTotality__option_t::operator()() const { return (*Options::current())[*this]; }
#line 18 "../../../src/options/uf_options"
inline bool ufssTotality__option_t::wasSetByUser() const { return Options::current()->wasSetByUser(*this); }

#line 20 "../../../src/options/uf_options"
inline ufssTotalityLimited__option_t::type ufssTotalityLimited__option_t::operator()() const { return (*Options::current())[*this]; }
#line 20 "../../../src/options/uf_options"
inline bool ufssTotalityLimited__option_t::wasSetByUser() const { return Options::current()->wasSetByUser(*this); }

#line 22 "../../../src/options/uf_options"
inline ufssTotalitySymBreak__option_t::type ufssTotalitySymBreak__option_t::operator()() const { return (*Options::current())[*this]; }
#line 22 "../../../src/options/uf_options"
inline bool ufssTotalitySymBreak__option_t::wasSetByUser() const { return Options::current()->wasSetByUser(*this); }

#line 24 "../../../src/options/uf_options"
inline ufssAbortCardinality__option_t::type ufssAbortCardinality__option_t::operator()() const { return (*Options::current())[*this]; }
#line 24 "../../../src/options/uf_options"
inline bool ufssAbortCardinality__option_t::wasSetByUser() const { return Options::current()->wasSetByUser(*this); }

#line 26 "../../../src/options/uf_options"
inline ufssExplainedCliques__option_t::type ufssExplainedCliques__option_t::operator()() const { return (*Options::current())[*this]; }
#line 26 "../../../src/options/uf_options"
inline bool ufssExplainedCliques__option_t::wasSetByUser() const { return Options::current()->wasSetByUser(*this); }

#line 28 "../../../src/options/uf_options"
inline ufssSimpleCliques__option_t::type ufssSimpleCliques__option_t::operator()() const { return (*Options::current())[*this]; }
#line 28 "../../../src/options/uf_options"
inline bool ufssSimpleCliques__option_t::wasSetByUser() const { return Options::current()->wasSetByUser(*this); }

#line 30 "../../../src/options/uf_options"
inline ufssDiseqPropagation__option_t::type ufssDiseqPropagation__option_t::operator()() const { return (*Options::current())[*this]; }
#line 30 "../../../src/options/uf_options"
inline bool ufssDiseqPropagation__option_t::wasSetByUser() const { return Options::current()->wasSetByUser(*this); }

#line 32 "../../../src/options/uf_options"
inline ufssMode__option_t::type ufssMode__option_t::operator()() const { return (*Options::current())[*this]; }
#line 32 "../../../src/options/uf_options"
inline bool ufssMode__option_t::wasSetByUser() const { return Options::current()->wasSetByUser(*this); }

#line 34 "../../../src/options/uf_options"
inline ufssCliqueSplits__option_t::type ufssCliqueSplits__option_t::operator()() const { return (*Options::current())[*this]; }
#line 34 "../../../src/options/uf_options"
inline bool ufssCliqueSplits__option_t::wasSetByUser() const { return Options::current()->wasSetByUser(*this); }

#line 37 "../../../src/options/uf_options"
inline ufssSymBreak__option_t::type ufssSymBreak__option_t::operator()() const { return (*Options::current())[*this]; }
#line 37 "../../../src/options/uf_options"
inline bool ufssSymBreak__option_t::wasSetByUser() const { return Options::current()->wasSetByUser(*this); }

#line 39 "../../../src/options/uf_options"
inline ufssFairness__option_t::type ufssFairness__option_t::operator()() const { return (*Options::current())[*this]; }
#line 39 "../../../src/options/uf_options"
inline bool ufssFairness__option_t::wasSetByUser() const { return Options::current()->wasSetByUser(*this); }

#line 41 "../../../src/options/uf_options"
inline ufssFairnessMonotone__option_t::type ufssFairnessMonotone__option_t::operator()() const { return (*Options::current())[*this]; }
#line 41 "../../../src/options/uf_options"
inline bool ufssFairnessMonotone__option_t::wasSetByUser() const { return Options::current()->wasSetByUser(*this); }
#line 41 "../../../src/options/uf_options"
inline void ufssFairnessMonotone__option_t::set(const ufssFairnessMonotone__option_t::type& v) { Options::current()->set(*this, v); }

#line 50 "../../../src/options/base_options_template.h"

}/* CVC4::options namespace */

}/* CVC4 namespace */

#endif /* __CVC4__OPTIONS__UF_H */
