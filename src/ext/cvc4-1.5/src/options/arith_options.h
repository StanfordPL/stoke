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

#ifndef __CVC4__OPTIONS__ARITH_H
#define __CVC4__OPTIONS__ARITH_H

#include "options/options.h"

#line 8 "../../../src/options/arith_options"
#include "options/arith_unate_lemma_mode.h"
#line 11 "../../../src/options/arith_options"
#include "options/arith_propagation_mode.h"
#line 28 "../../../src/options/arith_options"
#include "options/arith_heuristic_pivot_rule.h"

#line 26 "../../../src/options/base_options_template.h"

#define CVC4_OPTIONS__ARITH__FOR_OPTION_HOLDER \
  arithUnateLemmaMode__option_t::type arithUnateLemmaMode; \
  bool arithUnateLemmaMode__setByUser__; \
  arithPropagationMode__option_t::type arithPropagationMode; \
  bool arithPropagationMode__setByUser__; \
  arithHeuristicPivots__option_t::type arithHeuristicPivots; \
  bool arithHeuristicPivots__setByUser__; \
  arithStandardCheckVarOrderPivots__option_t::type arithStandardCheckVarOrderPivots; \
  bool arithStandardCheckVarOrderPivots__setByUser__; \
  arithErrorSelectionRule__option_t::type arithErrorSelectionRule; \
  bool arithErrorSelectionRule__setByUser__; \
  arithSimplexCheckPeriod__option_t::type arithSimplexCheckPeriod; \
  bool arithSimplexCheckPeriod__setByUser__; \
  arithPivotThreshold__option_t::type arithPivotThreshold; \
  bool arithPivotThreshold__setByUser__; \
  arithPropagateMaxLength__option_t::type arithPropagateMaxLength; \
  bool arithPropagateMaxLength__setByUser__; \
  arithDioSolver__option_t::type arithDioSolver; \
  bool arithDioSolver__setByUser__; \
  arithRewriteEq__option_t::type arithRewriteEq; \
  bool arithRewriteEq__setByUser__; \
  arithMLTrick__option_t::type arithMLTrick; \
  bool arithMLTrick__setByUser__; \
  arithMLTrickSubstitutions__option_t::type arithMLTrickSubstitutions; \
  bool arithMLTrickSubstitutions__setByUser__; \
  doCutAllBounded__option_t::type doCutAllBounded; \
  bool doCutAllBounded__setByUser__; \
  maxCutsInContext__option_t::type maxCutsInContext; \
  bool maxCutsInContext__setByUser__; \
  revertArithModels__option_t::type revertArithModels; \
  bool revertArithModels__setByUser__; \
  havePenalties__option_t::type havePenalties; \
  bool havePenalties__setByUser__; \
  useFC__option_t::type useFC; \
  bool useFC__setByUser__; \
  useSOI__option_t::type useSOI; \
  bool useSOI__setByUser__; \
  restrictedPivots__option_t::type restrictedPivots; \
  bool restrictedPivots__setByUser__; \
  collectPivots__option_t::type collectPivots; \
  bool collectPivots__setByUser__; \
  useApprox__option_t::type useApprox; \
  bool useApprox__setByUser__; \
  maxApproxDepth__option_t::type maxApproxDepth; \
  bool maxApproxDepth__setByUser__; \
  exportDioDecompositions__option_t::type exportDioDecompositions; \
  bool exportDioDecompositions__setByUser__; \
  newProp__option_t::type newProp; \
  bool newProp__setByUser__; \
  arithPropAsLemmaLength__option_t::type arithPropAsLemmaLength; \
  bool arithPropAsLemmaLength__setByUser__; \
  soiQuickExplain__option_t::type soiQuickExplain; \
  bool soiQuickExplain__setByUser__; \
  rewriteDivk__option_t::type rewriteDivk; \
  bool rewriteDivk__setByUser__; \
  trySolveIntStandardEffort__option_t::type trySolveIntStandardEffort; \
  bool trySolveIntStandardEffort__setByUser__; \
  replayFailureLemma__option_t::type replayFailureLemma; \
  bool replayFailureLemma__setByUser__; \
  dioSolverTurns__option_t::type dioSolverTurns; \
  bool dioSolverTurns__setByUser__; \
  rrTurns__option_t::type rrTurns; \
  bool rrTurns__setByUser__; \
  dioRepeat__option_t::type dioRepeat; \
  bool dioRepeat__setByUser__; \
  replayEarlyCloseDepths__option_t::type replayEarlyCloseDepths; \
  bool replayEarlyCloseDepths__setByUser__; \
  replayFailurePenalty__option_t::type replayFailurePenalty; \
  bool replayFailurePenalty__setByUser__; \
  replayNumericFailurePenalty__option_t::type replayNumericFailurePenalty; \
  bool replayNumericFailurePenalty__setByUser__; \
  replayRejectCutSize__option_t::type replayRejectCutSize; \
  bool replayRejectCutSize__setByUser__; \
  lemmaRejectCutSize__option_t::type lemmaRejectCutSize; \
  bool lemmaRejectCutSize__setByUser__; \
  soiApproxMajorFailure__option_t::type soiApproxMajorFailure; \
  bool soiApproxMajorFailure__setByUser__; \
  soiApproxMajorFailurePen__option_t::type soiApproxMajorFailurePen; \
  bool soiApproxMajorFailurePen__setByUser__; \
  soiApproxMinorFailure__option_t::type soiApproxMinorFailure; \
  bool soiApproxMinorFailure__setByUser__; \
  soiApproxMinorFailurePen__option_t::type soiApproxMinorFailurePen; \
  bool soiApproxMinorFailurePen__setByUser__; \
  ppAssertMaxSubSize__option_t::type ppAssertMaxSubSize; \
  bool ppAssertMaxSubSize__setByUser__; \
  maxReplayTree__option_t::type maxReplayTree; \
  bool maxReplayTree__setByUser__; \
  pbRewrites__option_t::type pbRewrites; \
  bool pbRewrites__setByUser__; \
  pbRewriteThreshold__option_t::type pbRewriteThreshold; \
  bool pbRewriteThreshold__setByUser__; \
  sNormInferEq__option_t::type sNormInferEq; \
  bool sNormInferEq__setByUser__; \
  nlExt__option_t::type nlExt; \
  bool nlExt__setByUser__; \
  nlExtResBound__option_t::type nlExtResBound; \
  bool nlExtResBound__setByUser__; \
  nlExtTangentPlanes__option_t::type nlExtTangentPlanes; \
  bool nlExtTangentPlanes__setByUser__; \
  nlExtEntailConflicts__option_t::type nlExtEntailConflicts; \
  bool nlExtEntailConflicts__setByUser__; \
  nlExtRewrites__option_t::type nlExtRewrites; \
  bool nlExtRewrites__setByUser__; \
  nlExtSolveSubs__option_t::type nlExtSolveSubs; \
  bool nlExtSolveSubs__setByUser__; \
  nlExtPurify__option_t::type nlExtPurify; \
  bool nlExtPurify__setByUser__; \
  nlExtSplitZero__option_t::type nlExtSplitZero; \
  bool nlExtSplitZero__setByUser__;

#line 30 "../../../src/options/base_options_template.h"

namespace CVC4 {

namespace options {


#line 8 "../../../src/options/arith_options"
extern struct CVC4_PUBLIC arithUnateLemmaMode__option_t { typedef ArithUnateLemmaMode type; type operator()() const; bool wasSetByUser() const; } arithUnateLemmaMode CVC4_PUBLIC;
#line 11 "../../../src/options/arith_options"
extern struct CVC4_PUBLIC arithPropagationMode__option_t { typedef ArithPropagationMode type; type operator()() const; bool wasSetByUser() const; } arithPropagationMode CVC4_PUBLIC;
#line 18 "../../../src/options/arith_options"
extern struct CVC4_PUBLIC arithHeuristicPivots__option_t { typedef int16_t type; type operator()() const; bool wasSetByUser() const; void set(const type& v); } arithHeuristicPivots CVC4_PUBLIC;
#line 25 "../../../src/options/arith_options"
extern struct CVC4_PUBLIC arithStandardCheckVarOrderPivots__option_t { typedef int16_t type; type operator()() const; bool wasSetByUser() const; void set(const type& v); } arithStandardCheckVarOrderPivots CVC4_PUBLIC;
#line 28 "../../../src/options/arith_options"
extern struct CVC4_PUBLIC arithErrorSelectionRule__option_t { typedef ErrorSelectionRule type; type operator()() const; bool wasSetByUser() const; } arithErrorSelectionRule CVC4_PUBLIC;
#line 32 "../../../src/options/arith_options"
extern struct CVC4_PUBLIC arithSimplexCheckPeriod__option_t { typedef uint16_t type; type operator()() const; bool wasSetByUser() const; } arithSimplexCheckPeriod CVC4_PUBLIC;
#line 39 "../../../src/options/arith_options"
extern struct CVC4_PUBLIC arithPivotThreshold__option_t { typedef uint16_t type; type operator()() const; bool wasSetByUser() const; void set(const type& v); } arithPivotThreshold CVC4_PUBLIC;
#line 42 "../../../src/options/arith_options"
extern struct CVC4_PUBLIC arithPropagateMaxLength__option_t { typedef uint16_t type; type operator()() const; bool wasSetByUser() const; } arithPropagateMaxLength CVC4_PUBLIC;
#line 45 "../../../src/options/arith_options"
extern struct CVC4_PUBLIC arithDioSolver__option_t { typedef bool type; type operator()() const; bool wasSetByUser() const; } arithDioSolver CVC4_PUBLIC;
#line 51 "../../../src/options/arith_options"
extern struct CVC4_PUBLIC arithRewriteEq__option_t { typedef bool type; type operator()() const; bool wasSetByUser() const; void set(const type& v); } arithRewriteEq CVC4_PUBLIC;
#line 56 "../../../src/options/arith_options"
extern struct CVC4_PUBLIC arithMLTrick__option_t { typedef bool type; type operator()() const; bool wasSetByUser() const; } arithMLTrick CVC4_PUBLIC;
#line 60 "../../../src/options/arith_options"
extern struct CVC4_PUBLIC arithMLTrickSubstitutions__option_t { typedef unsigned type; type operator()() const; bool wasSetByUser() const; } arithMLTrickSubstitutions CVC4_PUBLIC;
#line 63 "../../../src/options/arith_options"
extern struct CVC4_PUBLIC doCutAllBounded__option_t { typedef bool type; type operator()() const; bool wasSetByUser() const; void set(const type& v); } doCutAllBounded CVC4_PUBLIC;
#line 67 "../../../src/options/arith_options"
extern struct CVC4_PUBLIC maxCutsInContext__option_t { typedef unsigned type; type operator()() const; bool wasSetByUser() const; } maxCutsInContext CVC4_PUBLIC;
#line 70 "../../../src/options/arith_options"
extern struct CVC4_PUBLIC revertArithModels__option_t { typedef bool type; type operator()() const; bool wasSetByUser() const; } revertArithModels CVC4_PUBLIC;
#line 73 "../../../src/options/arith_options"
extern struct CVC4_PUBLIC havePenalties__option_t { typedef bool type; type operator()() const; bool wasSetByUser() const; void set(const type& v); } havePenalties CVC4_PUBLIC;
#line 77 "../../../src/options/arith_options"
extern struct CVC4_PUBLIC useFC__option_t { typedef bool type; type operator()() const; bool wasSetByUser() const; void set(const type& v); } useFC CVC4_PUBLIC;
#line 80 "../../../src/options/arith_options"
extern struct CVC4_PUBLIC useSOI__option_t { typedef bool type; type operator()() const; bool wasSetByUser() const; void set(const type& v); } useSOI CVC4_PUBLIC;
#line 83 "../../../src/options/arith_options"
extern struct CVC4_PUBLIC restrictedPivots__option_t { typedef bool type; type operator()() const; bool wasSetByUser() const; void set(const type& v); } restrictedPivots CVC4_PUBLIC;
#line 86 "../../../src/options/arith_options"
extern struct CVC4_PUBLIC collectPivots__option_t { typedef bool type; type operator()() const; bool wasSetByUser() const; void set(const type& v); } collectPivots CVC4_PUBLIC;
#line 89 "../../../src/options/arith_options"
extern struct CVC4_PUBLIC useApprox__option_t { typedef bool type; type operator()() const; bool wasSetByUser() const; void set(const type& v); } useApprox CVC4_PUBLIC;
#line 92 "../../../src/options/arith_options"
extern struct CVC4_PUBLIC maxApproxDepth__option_t { typedef int16_t type; type operator()() const; bool wasSetByUser() const; void set(const type& v); } maxApproxDepth CVC4_PUBLIC;
#line 95 "../../../src/options/arith_options"
extern struct CVC4_PUBLIC exportDioDecompositions__option_t { typedef bool type; type operator()() const; bool wasSetByUser() const; void set(const type& v); } exportDioDecompositions CVC4_PUBLIC;
#line 98 "../../../src/options/arith_options"
extern struct CVC4_PUBLIC newProp__option_t { typedef bool type; type operator()() const; bool wasSetByUser() const; void set(const type& v); } newProp CVC4_PUBLIC;
#line 101 "../../../src/options/arith_options"
extern struct CVC4_PUBLIC arithPropAsLemmaLength__option_t { typedef uint16_t type; type operator()() const; bool wasSetByUser() const; void set(const type& v); } arithPropAsLemmaLength CVC4_PUBLIC;
#line 104 "../../../src/options/arith_options"
extern struct CVC4_PUBLIC soiQuickExplain__option_t { typedef bool type; type operator()() const; bool wasSetByUser() const; void set(const type& v); } soiQuickExplain CVC4_PUBLIC;
#line 107 "../../../src/options/arith_options"
extern struct CVC4_PUBLIC rewriteDivk__option_t { typedef bool type; type operator()() const; bool wasSetByUser() const; void set(const type& v); } rewriteDivk CVC4_PUBLIC;
#line 110 "../../../src/options/arith_options"
extern struct CVC4_PUBLIC trySolveIntStandardEffort__option_t { typedef bool type; type operator()() const; bool wasSetByUser() const; } trySolveIntStandardEffort CVC4_PUBLIC;
#line 113 "../../../src/options/arith_options"
extern struct CVC4_PUBLIC replayFailureLemma__option_t { typedef bool type; type operator()() const; bool wasSetByUser() const; } replayFailureLemma CVC4_PUBLIC;
#line 116 "../../../src/options/arith_options"
extern struct CVC4_PUBLIC dioSolverTurns__option_t { typedef int type; type operator()() const; bool wasSetByUser() const; } dioSolverTurns CVC4_PUBLIC;
#line 119 "../../../src/options/arith_options"
extern struct CVC4_PUBLIC rrTurns__option_t { typedef int type; type operator()() const; bool wasSetByUser() const; } rrTurns CVC4_PUBLIC;
#line 122 "../../../src/options/arith_options"
extern struct CVC4_PUBLIC dioRepeat__option_t { typedef bool type; type operator()() const; bool wasSetByUser() const; } dioRepeat CVC4_PUBLIC;
#line 125 "../../../src/options/arith_options"
extern struct CVC4_PUBLIC replayEarlyCloseDepths__option_t { typedef int type; type operator()() const; bool wasSetByUser() const; } replayEarlyCloseDepths CVC4_PUBLIC;
#line 128 "../../../src/options/arith_options"
extern struct CVC4_PUBLIC replayFailurePenalty__option_t { typedef int type; type operator()() const; bool wasSetByUser() const; } replayFailurePenalty CVC4_PUBLIC;
#line 131 "../../../src/options/arith_options"
extern struct CVC4_PUBLIC replayNumericFailurePenalty__option_t { typedef int type; type operator()() const; bool wasSetByUser() const; } replayNumericFailurePenalty CVC4_PUBLIC;
#line 134 "../../../src/options/arith_options"
extern struct CVC4_PUBLIC replayRejectCutSize__option_t { typedef unsigned type; type operator()() const; bool wasSetByUser() const; } replayRejectCutSize CVC4_PUBLIC;
#line 137 "../../../src/options/arith_options"
extern struct CVC4_PUBLIC lemmaRejectCutSize__option_t { typedef unsigned type; type operator()() const; bool wasSetByUser() const; } lemmaRejectCutSize CVC4_PUBLIC;
#line 140 "../../../src/options/arith_options"
extern struct CVC4_PUBLIC soiApproxMajorFailure__option_t { typedef double type; type operator()() const; bool wasSetByUser() const; } soiApproxMajorFailure CVC4_PUBLIC;
#line 143 "../../../src/options/arith_options"
extern struct CVC4_PUBLIC soiApproxMajorFailurePen__option_t { typedef int type; type operator()() const; bool wasSetByUser() const; } soiApproxMajorFailurePen CVC4_PUBLIC;
#line 146 "../../../src/options/arith_options"
extern struct CVC4_PUBLIC soiApproxMinorFailure__option_t { typedef double type; type operator()() const; bool wasSetByUser() const; } soiApproxMinorFailure CVC4_PUBLIC;
#line 149 "../../../src/options/arith_options"
extern struct CVC4_PUBLIC soiApproxMinorFailurePen__option_t { typedef int type; type operator()() const; bool wasSetByUser() const; } soiApproxMinorFailurePen CVC4_PUBLIC;
#line 152 "../../../src/options/arith_options"
extern struct CVC4_PUBLIC ppAssertMaxSubSize__option_t { typedef unsigned type; type operator()() const; bool wasSetByUser() const; } ppAssertMaxSubSize CVC4_PUBLIC;
#line 155 "../../../src/options/arith_options"
extern struct CVC4_PUBLIC maxReplayTree__option_t { typedef int type; type operator()() const; bool wasSetByUser() const; } maxReplayTree CVC4_PUBLIC;
#line 159 "../../../src/options/arith_options"
extern struct CVC4_PUBLIC pbRewrites__option_t { typedef bool type; type operator()() const; bool wasSetByUser() const; } pbRewrites CVC4_PUBLIC;
#line 162 "../../../src/options/arith_options"
extern struct CVC4_PUBLIC pbRewriteThreshold__option_t { typedef int type; type operator()() const; bool wasSetByUser() const; } pbRewriteThreshold CVC4_PUBLIC;
#line 165 "../../../src/options/arith_options"
extern struct CVC4_PUBLIC sNormInferEq__option_t { typedef bool type; type operator()() const; bool wasSetByUser() const; } sNormInferEq CVC4_PUBLIC;
#line 168 "../../../src/options/arith_options"
extern struct CVC4_PUBLIC nlExt__option_t { typedef bool type; type operator()() const; bool wasSetByUser() const; } nlExt CVC4_PUBLIC;
#line 171 "../../../src/options/arith_options"
extern struct CVC4_PUBLIC nlExtResBound__option_t { typedef bool type; type operator()() const; bool wasSetByUser() const; } nlExtResBound CVC4_PUBLIC;
#line 174 "../../../src/options/arith_options"
extern struct CVC4_PUBLIC nlExtTangentPlanes__option_t { typedef bool type; type operator()() const; bool wasSetByUser() const; } nlExtTangentPlanes CVC4_PUBLIC;
#line 177 "../../../src/options/arith_options"
extern struct CVC4_PUBLIC nlExtEntailConflicts__option_t { typedef bool type; type operator()() const; bool wasSetByUser() const; } nlExtEntailConflicts CVC4_PUBLIC;
#line 180 "../../../src/options/arith_options"
extern struct CVC4_PUBLIC nlExtRewrites__option_t { typedef bool type; type operator()() const; bool wasSetByUser() const; } nlExtRewrites CVC4_PUBLIC;
#line 183 "../../../src/options/arith_options"
extern struct CVC4_PUBLIC nlExtSolveSubs__option_t { typedef bool type; type operator()() const; bool wasSetByUser() const; } nlExtSolveSubs CVC4_PUBLIC;
#line 186 "../../../src/options/arith_options"
extern struct CVC4_PUBLIC nlExtPurify__option_t { typedef bool type; type operator()() const; bool wasSetByUser() const; } nlExtPurify CVC4_PUBLIC;
#line 189 "../../../src/options/arith_options"
extern struct CVC4_PUBLIC nlExtSplitZero__option_t { typedef bool type; type operator()() const; bool wasSetByUser() const; } nlExtSplitZero CVC4_PUBLIC;

#line 38 "../../../src/options/base_options_template.h"

}/* CVC4::options namespace */


#line 8 "../../../src/options/arith_options"
template <> const options::arithUnateLemmaMode__option_t::type& Options::operator[](options::arithUnateLemmaMode__option_t) const;
#line 8 "../../../src/options/arith_options"
template <> bool Options::wasSetByUser(options::arithUnateLemmaMode__option_t) const;
#line 8 "../../../src/options/arith_options"
template <> void Options::assign(options::arithUnateLemmaMode__option_t, std::string option, std::string value);
#line 11 "../../../src/options/arith_options"
template <> const options::arithPropagationMode__option_t::type& Options::operator[](options::arithPropagationMode__option_t) const;
#line 11 "../../../src/options/arith_options"
template <> bool Options::wasSetByUser(options::arithPropagationMode__option_t) const;
#line 11 "../../../src/options/arith_options"
template <> void Options::assign(options::arithPropagationMode__option_t, std::string option, std::string value);
#line 18 "../../../src/options/arith_options"
template <> void Options::set(options::arithHeuristicPivots__option_t, const options::arithHeuristicPivots__option_t::type& x);
#line 18 "../../../src/options/arith_options"
template <> const options::arithHeuristicPivots__option_t::type& Options::operator[](options::arithHeuristicPivots__option_t) const;
#line 18 "../../../src/options/arith_options"
template <> bool Options::wasSetByUser(options::arithHeuristicPivots__option_t) const;
#line 18 "../../../src/options/arith_options"
template <> void Options::assign(options::arithHeuristicPivots__option_t, std::string option, std::string value);
#line 25 "../../../src/options/arith_options"
template <> void Options::set(options::arithStandardCheckVarOrderPivots__option_t, const options::arithStandardCheckVarOrderPivots__option_t::type& x);
#line 25 "../../../src/options/arith_options"
template <> const options::arithStandardCheckVarOrderPivots__option_t::type& Options::operator[](options::arithStandardCheckVarOrderPivots__option_t) const;
#line 25 "../../../src/options/arith_options"
template <> bool Options::wasSetByUser(options::arithStandardCheckVarOrderPivots__option_t) const;
#line 25 "../../../src/options/arith_options"
template <> void Options::assign(options::arithStandardCheckVarOrderPivots__option_t, std::string option, std::string value);
#line 28 "../../../src/options/arith_options"
template <> const options::arithErrorSelectionRule__option_t::type& Options::operator[](options::arithErrorSelectionRule__option_t) const;
#line 28 "../../../src/options/arith_options"
template <> bool Options::wasSetByUser(options::arithErrorSelectionRule__option_t) const;
#line 28 "../../../src/options/arith_options"
template <> void Options::assign(options::arithErrorSelectionRule__option_t, std::string option, std::string value);
#line 32 "../../../src/options/arith_options"
template <> const options::arithSimplexCheckPeriod__option_t::type& Options::operator[](options::arithSimplexCheckPeriod__option_t) const;
#line 32 "../../../src/options/arith_options"
template <> bool Options::wasSetByUser(options::arithSimplexCheckPeriod__option_t) const;
#line 32 "../../../src/options/arith_options"
template <> void Options::assign(options::arithSimplexCheckPeriod__option_t, std::string option, std::string value);
#line 39 "../../../src/options/arith_options"
template <> void Options::set(options::arithPivotThreshold__option_t, const options::arithPivotThreshold__option_t::type& x);
#line 39 "../../../src/options/arith_options"
template <> const options::arithPivotThreshold__option_t::type& Options::operator[](options::arithPivotThreshold__option_t) const;
#line 39 "../../../src/options/arith_options"
template <> bool Options::wasSetByUser(options::arithPivotThreshold__option_t) const;
#line 39 "../../../src/options/arith_options"
template <> void Options::assign(options::arithPivotThreshold__option_t, std::string option, std::string value);
#line 42 "../../../src/options/arith_options"
template <> const options::arithPropagateMaxLength__option_t::type& Options::operator[](options::arithPropagateMaxLength__option_t) const;
#line 42 "../../../src/options/arith_options"
template <> bool Options::wasSetByUser(options::arithPropagateMaxLength__option_t) const;
#line 42 "../../../src/options/arith_options"
template <> void Options::assign(options::arithPropagateMaxLength__option_t, std::string option, std::string value);
#line 45 "../../../src/options/arith_options"
template <> const options::arithDioSolver__option_t::type& Options::operator[](options::arithDioSolver__option_t) const;
#line 45 "../../../src/options/arith_options"
template <> bool Options::wasSetByUser(options::arithDioSolver__option_t) const;
#line 45 "../../../src/options/arith_options"
template <> void Options::assignBool(options::arithDioSolver__option_t, std::string option, bool value);
#line 51 "../../../src/options/arith_options"
template <> void Options::set(options::arithRewriteEq__option_t, const options::arithRewriteEq__option_t::type& x);
#line 51 "../../../src/options/arith_options"
template <> const options::arithRewriteEq__option_t::type& Options::operator[](options::arithRewriteEq__option_t) const;
#line 51 "../../../src/options/arith_options"
template <> bool Options::wasSetByUser(options::arithRewriteEq__option_t) const;
#line 51 "../../../src/options/arith_options"
template <> void Options::assignBool(options::arithRewriteEq__option_t, std::string option, bool value);
#line 56 "../../../src/options/arith_options"
template <> const options::arithMLTrick__option_t::type& Options::operator[](options::arithMLTrick__option_t) const;
#line 56 "../../../src/options/arith_options"
template <> bool Options::wasSetByUser(options::arithMLTrick__option_t) const;
#line 56 "../../../src/options/arith_options"
template <> void Options::assignBool(options::arithMLTrick__option_t, std::string option, bool value);
#line 60 "../../../src/options/arith_options"
template <> const options::arithMLTrickSubstitutions__option_t::type& Options::operator[](options::arithMLTrickSubstitutions__option_t) const;
#line 60 "../../../src/options/arith_options"
template <> bool Options::wasSetByUser(options::arithMLTrickSubstitutions__option_t) const;
#line 60 "../../../src/options/arith_options"
template <> void Options::assign(options::arithMLTrickSubstitutions__option_t, std::string option, std::string value);
#line 63 "../../../src/options/arith_options"
template <> void Options::set(options::doCutAllBounded__option_t, const options::doCutAllBounded__option_t::type& x);
#line 63 "../../../src/options/arith_options"
template <> const options::doCutAllBounded__option_t::type& Options::operator[](options::doCutAllBounded__option_t) const;
#line 63 "../../../src/options/arith_options"
template <> bool Options::wasSetByUser(options::doCutAllBounded__option_t) const;
#line 63 "../../../src/options/arith_options"
template <> void Options::assignBool(options::doCutAllBounded__option_t, std::string option, bool value);
#line 67 "../../../src/options/arith_options"
template <> const options::maxCutsInContext__option_t::type& Options::operator[](options::maxCutsInContext__option_t) const;
#line 67 "../../../src/options/arith_options"
template <> bool Options::wasSetByUser(options::maxCutsInContext__option_t) const;
#line 67 "../../../src/options/arith_options"
template <> void Options::assign(options::maxCutsInContext__option_t, std::string option, std::string value);
#line 70 "../../../src/options/arith_options"
template <> const options::revertArithModels__option_t::type& Options::operator[](options::revertArithModels__option_t) const;
#line 70 "../../../src/options/arith_options"
template <> bool Options::wasSetByUser(options::revertArithModels__option_t) const;
#line 70 "../../../src/options/arith_options"
template <> void Options::assignBool(options::revertArithModels__option_t, std::string option, bool value);
#line 73 "../../../src/options/arith_options"
template <> void Options::set(options::havePenalties__option_t, const options::havePenalties__option_t::type& x);
#line 73 "../../../src/options/arith_options"
template <> const options::havePenalties__option_t::type& Options::operator[](options::havePenalties__option_t) const;
#line 73 "../../../src/options/arith_options"
template <> bool Options::wasSetByUser(options::havePenalties__option_t) const;
#line 73 "../../../src/options/arith_options"
template <> void Options::assignBool(options::havePenalties__option_t, std::string option, bool value);
#line 77 "../../../src/options/arith_options"
template <> void Options::set(options::useFC__option_t, const options::useFC__option_t::type& x);
#line 77 "../../../src/options/arith_options"
template <> const options::useFC__option_t::type& Options::operator[](options::useFC__option_t) const;
#line 77 "../../../src/options/arith_options"
template <> bool Options::wasSetByUser(options::useFC__option_t) const;
#line 77 "../../../src/options/arith_options"
template <> void Options::assignBool(options::useFC__option_t, std::string option, bool value);
#line 80 "../../../src/options/arith_options"
template <> void Options::set(options::useSOI__option_t, const options::useSOI__option_t::type& x);
#line 80 "../../../src/options/arith_options"
template <> const options::useSOI__option_t::type& Options::operator[](options::useSOI__option_t) const;
#line 80 "../../../src/options/arith_options"
template <> bool Options::wasSetByUser(options::useSOI__option_t) const;
#line 80 "../../../src/options/arith_options"
template <> void Options::assignBool(options::useSOI__option_t, std::string option, bool value);
#line 83 "../../../src/options/arith_options"
template <> void Options::set(options::restrictedPivots__option_t, const options::restrictedPivots__option_t::type& x);
#line 83 "../../../src/options/arith_options"
template <> const options::restrictedPivots__option_t::type& Options::operator[](options::restrictedPivots__option_t) const;
#line 83 "../../../src/options/arith_options"
template <> bool Options::wasSetByUser(options::restrictedPivots__option_t) const;
#line 83 "../../../src/options/arith_options"
template <> void Options::assignBool(options::restrictedPivots__option_t, std::string option, bool value);
#line 86 "../../../src/options/arith_options"
template <> void Options::set(options::collectPivots__option_t, const options::collectPivots__option_t::type& x);
#line 86 "../../../src/options/arith_options"
template <> const options::collectPivots__option_t::type& Options::operator[](options::collectPivots__option_t) const;
#line 86 "../../../src/options/arith_options"
template <> bool Options::wasSetByUser(options::collectPivots__option_t) const;
#line 86 "../../../src/options/arith_options"
template <> void Options::assignBool(options::collectPivots__option_t, std::string option, bool value);
#line 89 "../../../src/options/arith_options"
template <> void Options::set(options::useApprox__option_t, const options::useApprox__option_t::type& x);
#line 89 "../../../src/options/arith_options"
template <> const options::useApprox__option_t::type& Options::operator[](options::useApprox__option_t) const;
#line 89 "../../../src/options/arith_options"
template <> bool Options::wasSetByUser(options::useApprox__option_t) const;
#line 89 "../../../src/options/arith_options"
template <> void Options::assignBool(options::useApprox__option_t, std::string option, bool value);
#line 92 "../../../src/options/arith_options"
template <> void Options::set(options::maxApproxDepth__option_t, const options::maxApproxDepth__option_t::type& x);
#line 92 "../../../src/options/arith_options"
template <> const options::maxApproxDepth__option_t::type& Options::operator[](options::maxApproxDepth__option_t) const;
#line 92 "../../../src/options/arith_options"
template <> bool Options::wasSetByUser(options::maxApproxDepth__option_t) const;
#line 92 "../../../src/options/arith_options"
template <> void Options::assign(options::maxApproxDepth__option_t, std::string option, std::string value);
#line 95 "../../../src/options/arith_options"
template <> void Options::set(options::exportDioDecompositions__option_t, const options::exportDioDecompositions__option_t::type& x);
#line 95 "../../../src/options/arith_options"
template <> const options::exportDioDecompositions__option_t::type& Options::operator[](options::exportDioDecompositions__option_t) const;
#line 95 "../../../src/options/arith_options"
template <> bool Options::wasSetByUser(options::exportDioDecompositions__option_t) const;
#line 95 "../../../src/options/arith_options"
template <> void Options::assignBool(options::exportDioDecompositions__option_t, std::string option, bool value);
#line 98 "../../../src/options/arith_options"
template <> void Options::set(options::newProp__option_t, const options::newProp__option_t::type& x);
#line 98 "../../../src/options/arith_options"
template <> const options::newProp__option_t::type& Options::operator[](options::newProp__option_t) const;
#line 98 "../../../src/options/arith_options"
template <> bool Options::wasSetByUser(options::newProp__option_t) const;
#line 98 "../../../src/options/arith_options"
template <> void Options::assignBool(options::newProp__option_t, std::string option, bool value);
#line 101 "../../../src/options/arith_options"
template <> void Options::set(options::arithPropAsLemmaLength__option_t, const options::arithPropAsLemmaLength__option_t::type& x);
#line 101 "../../../src/options/arith_options"
template <> const options::arithPropAsLemmaLength__option_t::type& Options::operator[](options::arithPropAsLemmaLength__option_t) const;
#line 101 "../../../src/options/arith_options"
template <> bool Options::wasSetByUser(options::arithPropAsLemmaLength__option_t) const;
#line 101 "../../../src/options/arith_options"
template <> void Options::assign(options::arithPropAsLemmaLength__option_t, std::string option, std::string value);
#line 104 "../../../src/options/arith_options"
template <> void Options::set(options::soiQuickExplain__option_t, const options::soiQuickExplain__option_t::type& x);
#line 104 "../../../src/options/arith_options"
template <> const options::soiQuickExplain__option_t::type& Options::operator[](options::soiQuickExplain__option_t) const;
#line 104 "../../../src/options/arith_options"
template <> bool Options::wasSetByUser(options::soiQuickExplain__option_t) const;
#line 104 "../../../src/options/arith_options"
template <> void Options::assignBool(options::soiQuickExplain__option_t, std::string option, bool value);
#line 107 "../../../src/options/arith_options"
template <> void Options::set(options::rewriteDivk__option_t, const options::rewriteDivk__option_t::type& x);
#line 107 "../../../src/options/arith_options"
template <> const options::rewriteDivk__option_t::type& Options::operator[](options::rewriteDivk__option_t) const;
#line 107 "../../../src/options/arith_options"
template <> bool Options::wasSetByUser(options::rewriteDivk__option_t) const;
#line 107 "../../../src/options/arith_options"
template <> void Options::assignBool(options::rewriteDivk__option_t, std::string option, bool value);
#line 110 "../../../src/options/arith_options"
template <> const options::trySolveIntStandardEffort__option_t::type& Options::operator[](options::trySolveIntStandardEffort__option_t) const;
#line 110 "../../../src/options/arith_options"
template <> bool Options::wasSetByUser(options::trySolveIntStandardEffort__option_t) const;
#line 110 "../../../src/options/arith_options"
template <> void Options::assignBool(options::trySolveIntStandardEffort__option_t, std::string option, bool value);
#line 113 "../../../src/options/arith_options"
template <> const options::replayFailureLemma__option_t::type& Options::operator[](options::replayFailureLemma__option_t) const;
#line 113 "../../../src/options/arith_options"
template <> bool Options::wasSetByUser(options::replayFailureLemma__option_t) const;
#line 113 "../../../src/options/arith_options"
template <> void Options::assignBool(options::replayFailureLemma__option_t, std::string option, bool value);
#line 116 "../../../src/options/arith_options"
template <> const options::dioSolverTurns__option_t::type& Options::operator[](options::dioSolverTurns__option_t) const;
#line 116 "../../../src/options/arith_options"
template <> bool Options::wasSetByUser(options::dioSolverTurns__option_t) const;
#line 116 "../../../src/options/arith_options"
template <> void Options::assign(options::dioSolverTurns__option_t, std::string option, std::string value);
#line 119 "../../../src/options/arith_options"
template <> const options::rrTurns__option_t::type& Options::operator[](options::rrTurns__option_t) const;
#line 119 "../../../src/options/arith_options"
template <> bool Options::wasSetByUser(options::rrTurns__option_t) const;
#line 119 "../../../src/options/arith_options"
template <> void Options::assign(options::rrTurns__option_t, std::string option, std::string value);
#line 122 "../../../src/options/arith_options"
template <> const options::dioRepeat__option_t::type& Options::operator[](options::dioRepeat__option_t) const;
#line 122 "../../../src/options/arith_options"
template <> bool Options::wasSetByUser(options::dioRepeat__option_t) const;
#line 122 "../../../src/options/arith_options"
template <> void Options::assignBool(options::dioRepeat__option_t, std::string option, bool value);
#line 125 "../../../src/options/arith_options"
template <> const options::replayEarlyCloseDepths__option_t::type& Options::operator[](options::replayEarlyCloseDepths__option_t) const;
#line 125 "../../../src/options/arith_options"
template <> bool Options::wasSetByUser(options::replayEarlyCloseDepths__option_t) const;
#line 125 "../../../src/options/arith_options"
template <> void Options::assign(options::replayEarlyCloseDepths__option_t, std::string option, std::string value);
#line 128 "../../../src/options/arith_options"
template <> const options::replayFailurePenalty__option_t::type& Options::operator[](options::replayFailurePenalty__option_t) const;
#line 128 "../../../src/options/arith_options"
template <> bool Options::wasSetByUser(options::replayFailurePenalty__option_t) const;
#line 128 "../../../src/options/arith_options"
template <> void Options::assign(options::replayFailurePenalty__option_t, std::string option, std::string value);
#line 131 "../../../src/options/arith_options"
template <> const options::replayNumericFailurePenalty__option_t::type& Options::operator[](options::replayNumericFailurePenalty__option_t) const;
#line 131 "../../../src/options/arith_options"
template <> bool Options::wasSetByUser(options::replayNumericFailurePenalty__option_t) const;
#line 131 "../../../src/options/arith_options"
template <> void Options::assign(options::replayNumericFailurePenalty__option_t, std::string option, std::string value);
#line 134 "../../../src/options/arith_options"
template <> const options::replayRejectCutSize__option_t::type& Options::operator[](options::replayRejectCutSize__option_t) const;
#line 134 "../../../src/options/arith_options"
template <> bool Options::wasSetByUser(options::replayRejectCutSize__option_t) const;
#line 134 "../../../src/options/arith_options"
template <> void Options::assign(options::replayRejectCutSize__option_t, std::string option, std::string value);
#line 137 "../../../src/options/arith_options"
template <> const options::lemmaRejectCutSize__option_t::type& Options::operator[](options::lemmaRejectCutSize__option_t) const;
#line 137 "../../../src/options/arith_options"
template <> bool Options::wasSetByUser(options::lemmaRejectCutSize__option_t) const;
#line 137 "../../../src/options/arith_options"
template <> void Options::assign(options::lemmaRejectCutSize__option_t, std::string option, std::string value);
#line 140 "../../../src/options/arith_options"
template <> const options::soiApproxMajorFailure__option_t::type& Options::operator[](options::soiApproxMajorFailure__option_t) const;
#line 140 "../../../src/options/arith_options"
template <> bool Options::wasSetByUser(options::soiApproxMajorFailure__option_t) const;
#line 140 "../../../src/options/arith_options"
template <> void Options::assign(options::soiApproxMajorFailure__option_t, std::string option, std::string value);
#line 143 "../../../src/options/arith_options"
template <> const options::soiApproxMajorFailurePen__option_t::type& Options::operator[](options::soiApproxMajorFailurePen__option_t) const;
#line 143 "../../../src/options/arith_options"
template <> bool Options::wasSetByUser(options::soiApproxMajorFailurePen__option_t) const;
#line 143 "../../../src/options/arith_options"
template <> void Options::assign(options::soiApproxMajorFailurePen__option_t, std::string option, std::string value);
#line 146 "../../../src/options/arith_options"
template <> const options::soiApproxMinorFailure__option_t::type& Options::operator[](options::soiApproxMinorFailure__option_t) const;
#line 146 "../../../src/options/arith_options"
template <> bool Options::wasSetByUser(options::soiApproxMinorFailure__option_t) const;
#line 146 "../../../src/options/arith_options"
template <> void Options::assign(options::soiApproxMinorFailure__option_t, std::string option, std::string value);
#line 149 "../../../src/options/arith_options"
template <> const options::soiApproxMinorFailurePen__option_t::type& Options::operator[](options::soiApproxMinorFailurePen__option_t) const;
#line 149 "../../../src/options/arith_options"
template <> bool Options::wasSetByUser(options::soiApproxMinorFailurePen__option_t) const;
#line 149 "../../../src/options/arith_options"
template <> void Options::assign(options::soiApproxMinorFailurePen__option_t, std::string option, std::string value);
#line 152 "../../../src/options/arith_options"
template <> const options::ppAssertMaxSubSize__option_t::type& Options::operator[](options::ppAssertMaxSubSize__option_t) const;
#line 152 "../../../src/options/arith_options"
template <> bool Options::wasSetByUser(options::ppAssertMaxSubSize__option_t) const;
#line 152 "../../../src/options/arith_options"
template <> void Options::assign(options::ppAssertMaxSubSize__option_t, std::string option, std::string value);
#line 155 "../../../src/options/arith_options"
template <> const options::maxReplayTree__option_t::type& Options::operator[](options::maxReplayTree__option_t) const;
#line 155 "../../../src/options/arith_options"
template <> bool Options::wasSetByUser(options::maxReplayTree__option_t) const;
#line 155 "../../../src/options/arith_options"
template <> void Options::assign(options::maxReplayTree__option_t, std::string option, std::string value);
#line 159 "../../../src/options/arith_options"
template <> const options::pbRewrites__option_t::type& Options::operator[](options::pbRewrites__option_t) const;
#line 159 "../../../src/options/arith_options"
template <> bool Options::wasSetByUser(options::pbRewrites__option_t) const;
#line 159 "../../../src/options/arith_options"
template <> void Options::assignBool(options::pbRewrites__option_t, std::string option, bool value);
#line 162 "../../../src/options/arith_options"
template <> const options::pbRewriteThreshold__option_t::type& Options::operator[](options::pbRewriteThreshold__option_t) const;
#line 162 "../../../src/options/arith_options"
template <> bool Options::wasSetByUser(options::pbRewriteThreshold__option_t) const;
#line 162 "../../../src/options/arith_options"
template <> void Options::assign(options::pbRewriteThreshold__option_t, std::string option, std::string value);
#line 165 "../../../src/options/arith_options"
template <> const options::sNormInferEq__option_t::type& Options::operator[](options::sNormInferEq__option_t) const;
#line 165 "../../../src/options/arith_options"
template <> bool Options::wasSetByUser(options::sNormInferEq__option_t) const;
#line 165 "../../../src/options/arith_options"
template <> void Options::assignBool(options::sNormInferEq__option_t, std::string option, bool value);
#line 168 "../../../src/options/arith_options"
template <> const options::nlExt__option_t::type& Options::operator[](options::nlExt__option_t) const;
#line 168 "../../../src/options/arith_options"
template <> bool Options::wasSetByUser(options::nlExt__option_t) const;
#line 168 "../../../src/options/arith_options"
template <> void Options::assignBool(options::nlExt__option_t, std::string option, bool value);
#line 171 "../../../src/options/arith_options"
template <> const options::nlExtResBound__option_t::type& Options::operator[](options::nlExtResBound__option_t) const;
#line 171 "../../../src/options/arith_options"
template <> bool Options::wasSetByUser(options::nlExtResBound__option_t) const;
#line 171 "../../../src/options/arith_options"
template <> void Options::assignBool(options::nlExtResBound__option_t, std::string option, bool value);
#line 174 "../../../src/options/arith_options"
template <> const options::nlExtTangentPlanes__option_t::type& Options::operator[](options::nlExtTangentPlanes__option_t) const;
#line 174 "../../../src/options/arith_options"
template <> bool Options::wasSetByUser(options::nlExtTangentPlanes__option_t) const;
#line 174 "../../../src/options/arith_options"
template <> void Options::assignBool(options::nlExtTangentPlanes__option_t, std::string option, bool value);
#line 177 "../../../src/options/arith_options"
template <> const options::nlExtEntailConflicts__option_t::type& Options::operator[](options::nlExtEntailConflicts__option_t) const;
#line 177 "../../../src/options/arith_options"
template <> bool Options::wasSetByUser(options::nlExtEntailConflicts__option_t) const;
#line 177 "../../../src/options/arith_options"
template <> void Options::assignBool(options::nlExtEntailConflicts__option_t, std::string option, bool value);
#line 180 "../../../src/options/arith_options"
template <> const options::nlExtRewrites__option_t::type& Options::operator[](options::nlExtRewrites__option_t) const;
#line 180 "../../../src/options/arith_options"
template <> bool Options::wasSetByUser(options::nlExtRewrites__option_t) const;
#line 180 "../../../src/options/arith_options"
template <> void Options::assignBool(options::nlExtRewrites__option_t, std::string option, bool value);
#line 183 "../../../src/options/arith_options"
template <> const options::nlExtSolveSubs__option_t::type& Options::operator[](options::nlExtSolveSubs__option_t) const;
#line 183 "../../../src/options/arith_options"
template <> bool Options::wasSetByUser(options::nlExtSolveSubs__option_t) const;
#line 183 "../../../src/options/arith_options"
template <> void Options::assignBool(options::nlExtSolveSubs__option_t, std::string option, bool value);
#line 186 "../../../src/options/arith_options"
template <> const options::nlExtPurify__option_t::type& Options::operator[](options::nlExtPurify__option_t) const;
#line 186 "../../../src/options/arith_options"
template <> bool Options::wasSetByUser(options::nlExtPurify__option_t) const;
#line 186 "../../../src/options/arith_options"
template <> void Options::assignBool(options::nlExtPurify__option_t, std::string option, bool value);
#line 189 "../../../src/options/arith_options"
template <> const options::nlExtSplitZero__option_t::type& Options::operator[](options::nlExtSplitZero__option_t) const;
#line 189 "../../../src/options/arith_options"
template <> bool Options::wasSetByUser(options::nlExtSplitZero__option_t) const;
#line 189 "../../../src/options/arith_options"
template <> void Options::assignBool(options::nlExtSplitZero__option_t, std::string option, bool value);

#line 44 "../../../src/options/base_options_template.h"

namespace options {


#line 8 "../../../src/options/arith_options"
inline arithUnateLemmaMode__option_t::type arithUnateLemmaMode__option_t::operator()() const { return (*Options::current())[*this]; }
#line 8 "../../../src/options/arith_options"
inline bool arithUnateLemmaMode__option_t::wasSetByUser() const { return Options::current()->wasSetByUser(*this); }

#line 11 "../../../src/options/arith_options"
inline arithPropagationMode__option_t::type arithPropagationMode__option_t::operator()() const { return (*Options::current())[*this]; }
#line 11 "../../../src/options/arith_options"
inline bool arithPropagationMode__option_t::wasSetByUser() const { return Options::current()->wasSetByUser(*this); }

#line 18 "../../../src/options/arith_options"
inline arithHeuristicPivots__option_t::type arithHeuristicPivots__option_t::operator()() const { return (*Options::current())[*this]; }
#line 18 "../../../src/options/arith_options"
inline bool arithHeuristicPivots__option_t::wasSetByUser() const { return Options::current()->wasSetByUser(*this); }
#line 18 "../../../src/options/arith_options"
inline void arithHeuristicPivots__option_t::set(const arithHeuristicPivots__option_t::type& v) { Options::current()->set(*this, v); }

#line 25 "../../../src/options/arith_options"
inline arithStandardCheckVarOrderPivots__option_t::type arithStandardCheckVarOrderPivots__option_t::operator()() const { return (*Options::current())[*this]; }
#line 25 "../../../src/options/arith_options"
inline bool arithStandardCheckVarOrderPivots__option_t::wasSetByUser() const { return Options::current()->wasSetByUser(*this); }
#line 25 "../../../src/options/arith_options"
inline void arithStandardCheckVarOrderPivots__option_t::set(const arithStandardCheckVarOrderPivots__option_t::type& v) { Options::current()->set(*this, v); }

#line 28 "../../../src/options/arith_options"
inline arithErrorSelectionRule__option_t::type arithErrorSelectionRule__option_t::operator()() const { return (*Options::current())[*this]; }
#line 28 "../../../src/options/arith_options"
inline bool arithErrorSelectionRule__option_t::wasSetByUser() const { return Options::current()->wasSetByUser(*this); }

#line 32 "../../../src/options/arith_options"
inline arithSimplexCheckPeriod__option_t::type arithSimplexCheckPeriod__option_t::operator()() const { return (*Options::current())[*this]; }
#line 32 "../../../src/options/arith_options"
inline bool arithSimplexCheckPeriod__option_t::wasSetByUser() const { return Options::current()->wasSetByUser(*this); }

#line 39 "../../../src/options/arith_options"
inline arithPivotThreshold__option_t::type arithPivotThreshold__option_t::operator()() const { return (*Options::current())[*this]; }
#line 39 "../../../src/options/arith_options"
inline bool arithPivotThreshold__option_t::wasSetByUser() const { return Options::current()->wasSetByUser(*this); }
#line 39 "../../../src/options/arith_options"
inline void arithPivotThreshold__option_t::set(const arithPivotThreshold__option_t::type& v) { Options::current()->set(*this, v); }

#line 42 "../../../src/options/arith_options"
inline arithPropagateMaxLength__option_t::type arithPropagateMaxLength__option_t::operator()() const { return (*Options::current())[*this]; }
#line 42 "../../../src/options/arith_options"
inline bool arithPropagateMaxLength__option_t::wasSetByUser() const { return Options::current()->wasSetByUser(*this); }

#line 45 "../../../src/options/arith_options"
inline arithDioSolver__option_t::type arithDioSolver__option_t::operator()() const { return (*Options::current())[*this]; }
#line 45 "../../../src/options/arith_options"
inline bool arithDioSolver__option_t::wasSetByUser() const { return Options::current()->wasSetByUser(*this); }

#line 51 "../../../src/options/arith_options"
inline arithRewriteEq__option_t::type arithRewriteEq__option_t::operator()() const { return (*Options::current())[*this]; }
#line 51 "../../../src/options/arith_options"
inline bool arithRewriteEq__option_t::wasSetByUser() const { return Options::current()->wasSetByUser(*this); }
#line 51 "../../../src/options/arith_options"
inline void arithRewriteEq__option_t::set(const arithRewriteEq__option_t::type& v) { Options::current()->set(*this, v); }

#line 56 "../../../src/options/arith_options"
inline arithMLTrick__option_t::type arithMLTrick__option_t::operator()() const { return (*Options::current())[*this]; }
#line 56 "../../../src/options/arith_options"
inline bool arithMLTrick__option_t::wasSetByUser() const { return Options::current()->wasSetByUser(*this); }

#line 60 "../../../src/options/arith_options"
inline arithMLTrickSubstitutions__option_t::type arithMLTrickSubstitutions__option_t::operator()() const { return (*Options::current())[*this]; }
#line 60 "../../../src/options/arith_options"
inline bool arithMLTrickSubstitutions__option_t::wasSetByUser() const { return Options::current()->wasSetByUser(*this); }

#line 63 "../../../src/options/arith_options"
inline doCutAllBounded__option_t::type doCutAllBounded__option_t::operator()() const { return (*Options::current())[*this]; }
#line 63 "../../../src/options/arith_options"
inline bool doCutAllBounded__option_t::wasSetByUser() const { return Options::current()->wasSetByUser(*this); }
#line 63 "../../../src/options/arith_options"
inline void doCutAllBounded__option_t::set(const doCutAllBounded__option_t::type& v) { Options::current()->set(*this, v); }

#line 67 "../../../src/options/arith_options"
inline maxCutsInContext__option_t::type maxCutsInContext__option_t::operator()() const { return (*Options::current())[*this]; }
#line 67 "../../../src/options/arith_options"
inline bool maxCutsInContext__option_t::wasSetByUser() const { return Options::current()->wasSetByUser(*this); }

#line 70 "../../../src/options/arith_options"
inline revertArithModels__option_t::type revertArithModels__option_t::operator()() const { return (*Options::current())[*this]; }
#line 70 "../../../src/options/arith_options"
inline bool revertArithModels__option_t::wasSetByUser() const { return Options::current()->wasSetByUser(*this); }

#line 73 "../../../src/options/arith_options"
inline havePenalties__option_t::type havePenalties__option_t::operator()() const { return (*Options::current())[*this]; }
#line 73 "../../../src/options/arith_options"
inline bool havePenalties__option_t::wasSetByUser() const { return Options::current()->wasSetByUser(*this); }
#line 73 "../../../src/options/arith_options"
inline void havePenalties__option_t::set(const havePenalties__option_t::type& v) { Options::current()->set(*this, v); }

#line 77 "../../../src/options/arith_options"
inline useFC__option_t::type useFC__option_t::operator()() const { return (*Options::current())[*this]; }
#line 77 "../../../src/options/arith_options"
inline bool useFC__option_t::wasSetByUser() const { return Options::current()->wasSetByUser(*this); }
#line 77 "../../../src/options/arith_options"
inline void useFC__option_t::set(const useFC__option_t::type& v) { Options::current()->set(*this, v); }

#line 80 "../../../src/options/arith_options"
inline useSOI__option_t::type useSOI__option_t::operator()() const { return (*Options::current())[*this]; }
#line 80 "../../../src/options/arith_options"
inline bool useSOI__option_t::wasSetByUser() const { return Options::current()->wasSetByUser(*this); }
#line 80 "../../../src/options/arith_options"
inline void useSOI__option_t::set(const useSOI__option_t::type& v) { Options::current()->set(*this, v); }

#line 83 "../../../src/options/arith_options"
inline restrictedPivots__option_t::type restrictedPivots__option_t::operator()() const { return (*Options::current())[*this]; }
#line 83 "../../../src/options/arith_options"
inline bool restrictedPivots__option_t::wasSetByUser() const { return Options::current()->wasSetByUser(*this); }
#line 83 "../../../src/options/arith_options"
inline void restrictedPivots__option_t::set(const restrictedPivots__option_t::type& v) { Options::current()->set(*this, v); }

#line 86 "../../../src/options/arith_options"
inline collectPivots__option_t::type collectPivots__option_t::operator()() const { return (*Options::current())[*this]; }
#line 86 "../../../src/options/arith_options"
inline bool collectPivots__option_t::wasSetByUser() const { return Options::current()->wasSetByUser(*this); }
#line 86 "../../../src/options/arith_options"
inline void collectPivots__option_t::set(const collectPivots__option_t::type& v) { Options::current()->set(*this, v); }

#line 89 "../../../src/options/arith_options"
inline useApprox__option_t::type useApprox__option_t::operator()() const { return (*Options::current())[*this]; }
#line 89 "../../../src/options/arith_options"
inline bool useApprox__option_t::wasSetByUser() const { return Options::current()->wasSetByUser(*this); }
#line 89 "../../../src/options/arith_options"
inline void useApprox__option_t::set(const useApprox__option_t::type& v) { Options::current()->set(*this, v); }

#line 92 "../../../src/options/arith_options"
inline maxApproxDepth__option_t::type maxApproxDepth__option_t::operator()() const { return (*Options::current())[*this]; }
#line 92 "../../../src/options/arith_options"
inline bool maxApproxDepth__option_t::wasSetByUser() const { return Options::current()->wasSetByUser(*this); }
#line 92 "../../../src/options/arith_options"
inline void maxApproxDepth__option_t::set(const maxApproxDepth__option_t::type& v) { Options::current()->set(*this, v); }

#line 95 "../../../src/options/arith_options"
inline exportDioDecompositions__option_t::type exportDioDecompositions__option_t::operator()() const { return (*Options::current())[*this]; }
#line 95 "../../../src/options/arith_options"
inline bool exportDioDecompositions__option_t::wasSetByUser() const { return Options::current()->wasSetByUser(*this); }
#line 95 "../../../src/options/arith_options"
inline void exportDioDecompositions__option_t::set(const exportDioDecompositions__option_t::type& v) { Options::current()->set(*this, v); }

#line 98 "../../../src/options/arith_options"
inline newProp__option_t::type newProp__option_t::operator()() const { return (*Options::current())[*this]; }
#line 98 "../../../src/options/arith_options"
inline bool newProp__option_t::wasSetByUser() const { return Options::current()->wasSetByUser(*this); }
#line 98 "../../../src/options/arith_options"
inline void newProp__option_t::set(const newProp__option_t::type& v) { Options::current()->set(*this, v); }

#line 101 "../../../src/options/arith_options"
inline arithPropAsLemmaLength__option_t::type arithPropAsLemmaLength__option_t::operator()() const { return (*Options::current())[*this]; }
#line 101 "../../../src/options/arith_options"
inline bool arithPropAsLemmaLength__option_t::wasSetByUser() const { return Options::current()->wasSetByUser(*this); }
#line 101 "../../../src/options/arith_options"
inline void arithPropAsLemmaLength__option_t::set(const arithPropAsLemmaLength__option_t::type& v) { Options::current()->set(*this, v); }

#line 104 "../../../src/options/arith_options"
inline soiQuickExplain__option_t::type soiQuickExplain__option_t::operator()() const { return (*Options::current())[*this]; }
#line 104 "../../../src/options/arith_options"
inline bool soiQuickExplain__option_t::wasSetByUser() const { return Options::current()->wasSetByUser(*this); }
#line 104 "../../../src/options/arith_options"
inline void soiQuickExplain__option_t::set(const soiQuickExplain__option_t::type& v) { Options::current()->set(*this, v); }

#line 107 "../../../src/options/arith_options"
inline rewriteDivk__option_t::type rewriteDivk__option_t::operator()() const { return (*Options::current())[*this]; }
#line 107 "../../../src/options/arith_options"
inline bool rewriteDivk__option_t::wasSetByUser() const { return Options::current()->wasSetByUser(*this); }
#line 107 "../../../src/options/arith_options"
inline void rewriteDivk__option_t::set(const rewriteDivk__option_t::type& v) { Options::current()->set(*this, v); }

#line 110 "../../../src/options/arith_options"
inline trySolveIntStandardEffort__option_t::type trySolveIntStandardEffort__option_t::operator()() const { return (*Options::current())[*this]; }
#line 110 "../../../src/options/arith_options"
inline bool trySolveIntStandardEffort__option_t::wasSetByUser() const { return Options::current()->wasSetByUser(*this); }

#line 113 "../../../src/options/arith_options"
inline replayFailureLemma__option_t::type replayFailureLemma__option_t::operator()() const { return (*Options::current())[*this]; }
#line 113 "../../../src/options/arith_options"
inline bool replayFailureLemma__option_t::wasSetByUser() const { return Options::current()->wasSetByUser(*this); }

#line 116 "../../../src/options/arith_options"
inline dioSolverTurns__option_t::type dioSolverTurns__option_t::operator()() const { return (*Options::current())[*this]; }
#line 116 "../../../src/options/arith_options"
inline bool dioSolverTurns__option_t::wasSetByUser() const { return Options::current()->wasSetByUser(*this); }

#line 119 "../../../src/options/arith_options"
inline rrTurns__option_t::type rrTurns__option_t::operator()() const { return (*Options::current())[*this]; }
#line 119 "../../../src/options/arith_options"
inline bool rrTurns__option_t::wasSetByUser() const { return Options::current()->wasSetByUser(*this); }

#line 122 "../../../src/options/arith_options"
inline dioRepeat__option_t::type dioRepeat__option_t::operator()() const { return (*Options::current())[*this]; }
#line 122 "../../../src/options/arith_options"
inline bool dioRepeat__option_t::wasSetByUser() const { return Options::current()->wasSetByUser(*this); }

#line 125 "../../../src/options/arith_options"
inline replayEarlyCloseDepths__option_t::type replayEarlyCloseDepths__option_t::operator()() const { return (*Options::current())[*this]; }
#line 125 "../../../src/options/arith_options"
inline bool replayEarlyCloseDepths__option_t::wasSetByUser() const { return Options::current()->wasSetByUser(*this); }

#line 128 "../../../src/options/arith_options"
inline replayFailurePenalty__option_t::type replayFailurePenalty__option_t::operator()() const { return (*Options::current())[*this]; }
#line 128 "../../../src/options/arith_options"
inline bool replayFailurePenalty__option_t::wasSetByUser() const { return Options::current()->wasSetByUser(*this); }

#line 131 "../../../src/options/arith_options"
inline replayNumericFailurePenalty__option_t::type replayNumericFailurePenalty__option_t::operator()() const { return (*Options::current())[*this]; }
#line 131 "../../../src/options/arith_options"
inline bool replayNumericFailurePenalty__option_t::wasSetByUser() const { return Options::current()->wasSetByUser(*this); }

#line 134 "../../../src/options/arith_options"
inline replayRejectCutSize__option_t::type replayRejectCutSize__option_t::operator()() const { return (*Options::current())[*this]; }
#line 134 "../../../src/options/arith_options"
inline bool replayRejectCutSize__option_t::wasSetByUser() const { return Options::current()->wasSetByUser(*this); }

#line 137 "../../../src/options/arith_options"
inline lemmaRejectCutSize__option_t::type lemmaRejectCutSize__option_t::operator()() const { return (*Options::current())[*this]; }
#line 137 "../../../src/options/arith_options"
inline bool lemmaRejectCutSize__option_t::wasSetByUser() const { return Options::current()->wasSetByUser(*this); }

#line 140 "../../../src/options/arith_options"
inline soiApproxMajorFailure__option_t::type soiApproxMajorFailure__option_t::operator()() const { return (*Options::current())[*this]; }
#line 140 "../../../src/options/arith_options"
inline bool soiApproxMajorFailure__option_t::wasSetByUser() const { return Options::current()->wasSetByUser(*this); }

#line 143 "../../../src/options/arith_options"
inline soiApproxMajorFailurePen__option_t::type soiApproxMajorFailurePen__option_t::operator()() const { return (*Options::current())[*this]; }
#line 143 "../../../src/options/arith_options"
inline bool soiApproxMajorFailurePen__option_t::wasSetByUser() const { return Options::current()->wasSetByUser(*this); }

#line 146 "../../../src/options/arith_options"
inline soiApproxMinorFailure__option_t::type soiApproxMinorFailure__option_t::operator()() const { return (*Options::current())[*this]; }
#line 146 "../../../src/options/arith_options"
inline bool soiApproxMinorFailure__option_t::wasSetByUser() const { return Options::current()->wasSetByUser(*this); }

#line 149 "../../../src/options/arith_options"
inline soiApproxMinorFailurePen__option_t::type soiApproxMinorFailurePen__option_t::operator()() const { return (*Options::current())[*this]; }
#line 149 "../../../src/options/arith_options"
inline bool soiApproxMinorFailurePen__option_t::wasSetByUser() const { return Options::current()->wasSetByUser(*this); }

#line 152 "../../../src/options/arith_options"
inline ppAssertMaxSubSize__option_t::type ppAssertMaxSubSize__option_t::operator()() const { return (*Options::current())[*this]; }
#line 152 "../../../src/options/arith_options"
inline bool ppAssertMaxSubSize__option_t::wasSetByUser() const { return Options::current()->wasSetByUser(*this); }

#line 155 "../../../src/options/arith_options"
inline maxReplayTree__option_t::type maxReplayTree__option_t::operator()() const { return (*Options::current())[*this]; }
#line 155 "../../../src/options/arith_options"
inline bool maxReplayTree__option_t::wasSetByUser() const { return Options::current()->wasSetByUser(*this); }

#line 159 "../../../src/options/arith_options"
inline pbRewrites__option_t::type pbRewrites__option_t::operator()() const { return (*Options::current())[*this]; }
#line 159 "../../../src/options/arith_options"
inline bool pbRewrites__option_t::wasSetByUser() const { return Options::current()->wasSetByUser(*this); }

#line 162 "../../../src/options/arith_options"
inline pbRewriteThreshold__option_t::type pbRewriteThreshold__option_t::operator()() const { return (*Options::current())[*this]; }
#line 162 "../../../src/options/arith_options"
inline bool pbRewriteThreshold__option_t::wasSetByUser() const { return Options::current()->wasSetByUser(*this); }

#line 165 "../../../src/options/arith_options"
inline sNormInferEq__option_t::type sNormInferEq__option_t::operator()() const { return (*Options::current())[*this]; }
#line 165 "../../../src/options/arith_options"
inline bool sNormInferEq__option_t::wasSetByUser() const { return Options::current()->wasSetByUser(*this); }

#line 168 "../../../src/options/arith_options"
inline nlExt__option_t::type nlExt__option_t::operator()() const { return (*Options::current())[*this]; }
#line 168 "../../../src/options/arith_options"
inline bool nlExt__option_t::wasSetByUser() const { return Options::current()->wasSetByUser(*this); }

#line 171 "../../../src/options/arith_options"
inline nlExtResBound__option_t::type nlExtResBound__option_t::operator()() const { return (*Options::current())[*this]; }
#line 171 "../../../src/options/arith_options"
inline bool nlExtResBound__option_t::wasSetByUser() const { return Options::current()->wasSetByUser(*this); }

#line 174 "../../../src/options/arith_options"
inline nlExtTangentPlanes__option_t::type nlExtTangentPlanes__option_t::operator()() const { return (*Options::current())[*this]; }
#line 174 "../../../src/options/arith_options"
inline bool nlExtTangentPlanes__option_t::wasSetByUser() const { return Options::current()->wasSetByUser(*this); }

#line 177 "../../../src/options/arith_options"
inline nlExtEntailConflicts__option_t::type nlExtEntailConflicts__option_t::operator()() const { return (*Options::current())[*this]; }
#line 177 "../../../src/options/arith_options"
inline bool nlExtEntailConflicts__option_t::wasSetByUser() const { return Options::current()->wasSetByUser(*this); }

#line 180 "../../../src/options/arith_options"
inline nlExtRewrites__option_t::type nlExtRewrites__option_t::operator()() const { return (*Options::current())[*this]; }
#line 180 "../../../src/options/arith_options"
inline bool nlExtRewrites__option_t::wasSetByUser() const { return Options::current()->wasSetByUser(*this); }

#line 183 "../../../src/options/arith_options"
inline nlExtSolveSubs__option_t::type nlExtSolveSubs__option_t::operator()() const { return (*Options::current())[*this]; }
#line 183 "../../../src/options/arith_options"
inline bool nlExtSolveSubs__option_t::wasSetByUser() const { return Options::current()->wasSetByUser(*this); }

#line 186 "../../../src/options/arith_options"
inline nlExtPurify__option_t::type nlExtPurify__option_t::operator()() const { return (*Options::current())[*this]; }
#line 186 "../../../src/options/arith_options"
inline bool nlExtPurify__option_t::wasSetByUser() const { return Options::current()->wasSetByUser(*this); }

#line 189 "../../../src/options/arith_options"
inline nlExtSplitZero__option_t::type nlExtSplitZero__option_t::operator()() const { return (*Options::current())[*this]; }
#line 189 "../../../src/options/arith_options"
inline bool nlExtSplitZero__option_t::wasSetByUser() const { return Options::current()->wasSetByUser(*this); }

#line 50 "../../../src/options/base_options_template.h"

}/* CVC4::options namespace */

}/* CVC4 namespace */

#endif /* __CVC4__OPTIONS__ARITH_H */
