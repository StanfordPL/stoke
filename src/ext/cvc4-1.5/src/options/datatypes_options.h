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

#ifndef __CVC4__OPTIONS__DATATYPES_H
#define __CVC4__OPTIONS__DATATYPES_H

#include "options/options.h"


#line 26 "../../../src/options/base_options_template.h"

#define CVC4_OPTIONS__DATATYPES__FOR_OPTION_HOLDER \
  dtRewriteErrorSel__option_t::type dtRewriteErrorSel; \
  bool dtRewriteErrorSel__setByUser__; \
  dtForceAssignment__option_t::type dtForceAssignment; \
  bool dtForceAssignment__setByUser__; \
  dtBinarySplit__option_t::type dtBinarySplit; \
  bool dtBinarySplit__setByUser__; \
  dtRefIntro__option_t::type dtRefIntro; \
  bool dtRefIntro__setByUser__; \
  dtUseTesters__option_t::type dtUseTesters; \
  bool dtUseTesters__setByUser__; \
  cdtBisimilar__option_t::type cdtBisimilar; \
  bool cdtBisimilar__setByUser__; \
  dtCyclic__option_t::type dtCyclic; \
  bool dtCyclic__setByUser__; \
  dtInferAsLemmas__option_t::type dtInferAsLemmas; \
  bool dtInferAsLemmas__setByUser__; \
  dtBlastSplits__option_t::type dtBlastSplits; \
  bool dtBlastSplits__setByUser__;

#line 30 "../../../src/options/base_options_template.h"

namespace CVC4 {

namespace options {


#line 12 "../../../src/options/datatypes_options"
extern struct CVC4_PUBLIC dtRewriteErrorSel__option_t { typedef bool type; type operator()() const; bool wasSetByUser() const; void set(const type& v); } dtRewriteErrorSel CVC4_PUBLIC;
#line 14 "../../../src/options/datatypes_options"
extern struct CVC4_PUBLIC dtForceAssignment__option_t { typedef bool type; type operator()() const; bool wasSetByUser() const; void set(const type& v); } dtForceAssignment CVC4_PUBLIC;
#line 16 "../../../src/options/datatypes_options"
extern struct CVC4_PUBLIC dtBinarySplit__option_t { typedef bool type; type operator()() const; bool wasSetByUser() const; } dtBinarySplit CVC4_PUBLIC;
#line 18 "../../../src/options/datatypes_options"
extern struct CVC4_PUBLIC dtRefIntro__option_t { typedef bool type; type operator()() const; bool wasSetByUser() const; } dtRefIntro CVC4_PUBLIC;
#line 20 "../../../src/options/datatypes_options"
extern struct CVC4_PUBLIC dtUseTesters__option_t { typedef bool type; type operator()() const; bool wasSetByUser() const; } dtUseTesters CVC4_PUBLIC;
#line 22 "../../../src/options/datatypes_options"
extern struct CVC4_PUBLIC cdtBisimilar__option_t { typedef bool type; type operator()() const; bool wasSetByUser() const; } cdtBisimilar CVC4_PUBLIC;
#line 24 "../../../src/options/datatypes_options"
extern struct CVC4_PUBLIC dtCyclic__option_t { typedef bool type; type operator()() const; bool wasSetByUser() const; } dtCyclic CVC4_PUBLIC;
#line 26 "../../../src/options/datatypes_options"
extern struct CVC4_PUBLIC dtInferAsLemmas__option_t { typedef bool type; type operator()() const; bool wasSetByUser() const; } dtInferAsLemmas CVC4_PUBLIC;
#line 30 "../../../src/options/datatypes_options"
extern struct CVC4_PUBLIC dtBlastSplits__option_t { typedef bool type; type operator()() const; bool wasSetByUser() const; } dtBlastSplits CVC4_PUBLIC;

#line 38 "../../../src/options/base_options_template.h"

}/* CVC4::options namespace */


#line 12 "../../../src/options/datatypes_options"
template <> void Options::set(options::dtRewriteErrorSel__option_t, const options::dtRewriteErrorSel__option_t::type& x);
#line 12 "../../../src/options/datatypes_options"
template <> const options::dtRewriteErrorSel__option_t::type& Options::operator[](options::dtRewriteErrorSel__option_t) const;
#line 12 "../../../src/options/datatypes_options"
template <> bool Options::wasSetByUser(options::dtRewriteErrorSel__option_t) const;
#line 12 "../../../src/options/datatypes_options"
template <> void Options::assignBool(options::dtRewriteErrorSel__option_t, std::string option, bool value);
#line 14 "../../../src/options/datatypes_options"
template <> void Options::set(options::dtForceAssignment__option_t, const options::dtForceAssignment__option_t::type& x);
#line 14 "../../../src/options/datatypes_options"
template <> const options::dtForceAssignment__option_t::type& Options::operator[](options::dtForceAssignment__option_t) const;
#line 14 "../../../src/options/datatypes_options"
template <> bool Options::wasSetByUser(options::dtForceAssignment__option_t) const;
#line 14 "../../../src/options/datatypes_options"
template <> void Options::assignBool(options::dtForceAssignment__option_t, std::string option, bool value);
#line 16 "../../../src/options/datatypes_options"
template <> const options::dtBinarySplit__option_t::type& Options::operator[](options::dtBinarySplit__option_t) const;
#line 16 "../../../src/options/datatypes_options"
template <> bool Options::wasSetByUser(options::dtBinarySplit__option_t) const;
#line 16 "../../../src/options/datatypes_options"
template <> void Options::assignBool(options::dtBinarySplit__option_t, std::string option, bool value);
#line 18 "../../../src/options/datatypes_options"
template <> const options::dtRefIntro__option_t::type& Options::operator[](options::dtRefIntro__option_t) const;
#line 18 "../../../src/options/datatypes_options"
template <> bool Options::wasSetByUser(options::dtRefIntro__option_t) const;
#line 18 "../../../src/options/datatypes_options"
template <> void Options::assignBool(options::dtRefIntro__option_t, std::string option, bool value);
#line 20 "../../../src/options/datatypes_options"
template <> const options::dtUseTesters__option_t::type& Options::operator[](options::dtUseTesters__option_t) const;
#line 20 "../../../src/options/datatypes_options"
template <> bool Options::wasSetByUser(options::dtUseTesters__option_t) const;
#line 20 "../../../src/options/datatypes_options"
template <> void Options::assignBool(options::dtUseTesters__option_t, std::string option, bool value);
#line 22 "../../../src/options/datatypes_options"
template <> const options::cdtBisimilar__option_t::type& Options::operator[](options::cdtBisimilar__option_t) const;
#line 22 "../../../src/options/datatypes_options"
template <> bool Options::wasSetByUser(options::cdtBisimilar__option_t) const;
#line 22 "../../../src/options/datatypes_options"
template <> void Options::assignBool(options::cdtBisimilar__option_t, std::string option, bool value);
#line 24 "../../../src/options/datatypes_options"
template <> const options::dtCyclic__option_t::type& Options::operator[](options::dtCyclic__option_t) const;
#line 24 "../../../src/options/datatypes_options"
template <> bool Options::wasSetByUser(options::dtCyclic__option_t) const;
#line 24 "../../../src/options/datatypes_options"
template <> void Options::assignBool(options::dtCyclic__option_t, std::string option, bool value);
#line 26 "../../../src/options/datatypes_options"
template <> const options::dtInferAsLemmas__option_t::type& Options::operator[](options::dtInferAsLemmas__option_t) const;
#line 26 "../../../src/options/datatypes_options"
template <> bool Options::wasSetByUser(options::dtInferAsLemmas__option_t) const;
#line 26 "../../../src/options/datatypes_options"
template <> void Options::assignBool(options::dtInferAsLemmas__option_t, std::string option, bool value);
#line 30 "../../../src/options/datatypes_options"
template <> const options::dtBlastSplits__option_t::type& Options::operator[](options::dtBlastSplits__option_t) const;
#line 30 "../../../src/options/datatypes_options"
template <> bool Options::wasSetByUser(options::dtBlastSplits__option_t) const;
#line 30 "../../../src/options/datatypes_options"
template <> void Options::assignBool(options::dtBlastSplits__option_t, std::string option, bool value);

#line 44 "../../../src/options/base_options_template.h"

namespace options {


#line 12 "../../../src/options/datatypes_options"
inline dtRewriteErrorSel__option_t::type dtRewriteErrorSel__option_t::operator()() const { return (*Options::current())[*this]; }
#line 12 "../../../src/options/datatypes_options"
inline bool dtRewriteErrorSel__option_t::wasSetByUser() const { return Options::current()->wasSetByUser(*this); }
#line 12 "../../../src/options/datatypes_options"
inline void dtRewriteErrorSel__option_t::set(const dtRewriteErrorSel__option_t::type& v) { Options::current()->set(*this, v); }

#line 14 "../../../src/options/datatypes_options"
inline dtForceAssignment__option_t::type dtForceAssignment__option_t::operator()() const { return (*Options::current())[*this]; }
#line 14 "../../../src/options/datatypes_options"
inline bool dtForceAssignment__option_t::wasSetByUser() const { return Options::current()->wasSetByUser(*this); }
#line 14 "../../../src/options/datatypes_options"
inline void dtForceAssignment__option_t::set(const dtForceAssignment__option_t::type& v) { Options::current()->set(*this, v); }

#line 16 "../../../src/options/datatypes_options"
inline dtBinarySplit__option_t::type dtBinarySplit__option_t::operator()() const { return (*Options::current())[*this]; }
#line 16 "../../../src/options/datatypes_options"
inline bool dtBinarySplit__option_t::wasSetByUser() const { return Options::current()->wasSetByUser(*this); }

#line 18 "../../../src/options/datatypes_options"
inline dtRefIntro__option_t::type dtRefIntro__option_t::operator()() const { return (*Options::current())[*this]; }
#line 18 "../../../src/options/datatypes_options"
inline bool dtRefIntro__option_t::wasSetByUser() const { return Options::current()->wasSetByUser(*this); }

#line 20 "../../../src/options/datatypes_options"
inline dtUseTesters__option_t::type dtUseTesters__option_t::operator()() const { return (*Options::current())[*this]; }
#line 20 "../../../src/options/datatypes_options"
inline bool dtUseTesters__option_t::wasSetByUser() const { return Options::current()->wasSetByUser(*this); }

#line 22 "../../../src/options/datatypes_options"
inline cdtBisimilar__option_t::type cdtBisimilar__option_t::operator()() const { return (*Options::current())[*this]; }
#line 22 "../../../src/options/datatypes_options"
inline bool cdtBisimilar__option_t::wasSetByUser() const { return Options::current()->wasSetByUser(*this); }

#line 24 "../../../src/options/datatypes_options"
inline dtCyclic__option_t::type dtCyclic__option_t::operator()() const { return (*Options::current())[*this]; }
#line 24 "../../../src/options/datatypes_options"
inline bool dtCyclic__option_t::wasSetByUser() const { return Options::current()->wasSetByUser(*this); }

#line 26 "../../../src/options/datatypes_options"
inline dtInferAsLemmas__option_t::type dtInferAsLemmas__option_t::operator()() const { return (*Options::current())[*this]; }
#line 26 "../../../src/options/datatypes_options"
inline bool dtInferAsLemmas__option_t::wasSetByUser() const { return Options::current()->wasSetByUser(*this); }

#line 30 "../../../src/options/datatypes_options"
inline dtBlastSplits__option_t::type dtBlastSplits__option_t::operator()() const { return (*Options::current())[*this]; }
#line 30 "../../../src/options/datatypes_options"
inline bool dtBlastSplits__option_t::wasSetByUser() const { return Options::current()->wasSetByUser(*this); }

#line 50 "../../../src/options/base_options_template.h"

}/* CVC4::options namespace */

}/* CVC4 namespace */

#endif /* __CVC4__OPTIONS__DATATYPES_H */
