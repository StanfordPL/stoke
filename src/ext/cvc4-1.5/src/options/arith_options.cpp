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


#line 8 "../../../src/options/arith_options"
template <> const options::arithUnateLemmaMode__option_t::type& Options::operator[](options::arithUnateLemmaMode__option_t) const { return d_holder->arithUnateLemmaMode; }
#line 8 "../../../src/options/arith_options"
template <> bool Options::wasSetByUser(options::arithUnateLemmaMode__option_t) const { return d_holder->arithUnateLemmaMode__setByUser__; }
#line 11 "../../../src/options/arith_options"
template <> const options::arithPropagationMode__option_t::type& Options::operator[](options::arithPropagationMode__option_t) const { return d_holder->arithPropagationMode; }
#line 11 "../../../src/options/arith_options"
template <> bool Options::wasSetByUser(options::arithPropagationMode__option_t) const { return d_holder->arithPropagationMode__setByUser__; }
#line 18 "../../../src/options/arith_options"
template <> void Options::set(options::arithHeuristicPivots__option_t, const options::arithHeuristicPivots__option_t::type& x) { d_holder->arithHeuristicPivots = x; }
#line 18 "../../../src/options/arith_options"
template <> const options::arithHeuristicPivots__option_t::type& Options::operator[](options::arithHeuristicPivots__option_t) const { return d_holder->arithHeuristicPivots; }
#line 18 "../../../src/options/arith_options"
template <> bool Options::wasSetByUser(options::arithHeuristicPivots__option_t) const { return d_holder->arithHeuristicPivots__setByUser__; }
#line 25 "../../../src/options/arith_options"
template <> void Options::set(options::arithStandardCheckVarOrderPivots__option_t, const options::arithStandardCheckVarOrderPivots__option_t::type& x) { d_holder->arithStandardCheckVarOrderPivots = x; }
#line 25 "../../../src/options/arith_options"
template <> const options::arithStandardCheckVarOrderPivots__option_t::type& Options::operator[](options::arithStandardCheckVarOrderPivots__option_t) const { return d_holder->arithStandardCheckVarOrderPivots; }
#line 25 "../../../src/options/arith_options"
template <> bool Options::wasSetByUser(options::arithStandardCheckVarOrderPivots__option_t) const { return d_holder->arithStandardCheckVarOrderPivots__setByUser__; }
#line 28 "../../../src/options/arith_options"
template <> const options::arithErrorSelectionRule__option_t::type& Options::operator[](options::arithErrorSelectionRule__option_t) const { return d_holder->arithErrorSelectionRule; }
#line 28 "../../../src/options/arith_options"
template <> bool Options::wasSetByUser(options::arithErrorSelectionRule__option_t) const { return d_holder->arithErrorSelectionRule__setByUser__; }
#line 32 "../../../src/options/arith_options"
template <> const options::arithSimplexCheckPeriod__option_t::type& Options::operator[](options::arithSimplexCheckPeriod__option_t) const { return d_holder->arithSimplexCheckPeriod; }
#line 32 "../../../src/options/arith_options"
template <> bool Options::wasSetByUser(options::arithSimplexCheckPeriod__option_t) const { return d_holder->arithSimplexCheckPeriod__setByUser__; }
#line 39 "../../../src/options/arith_options"
template <> void Options::set(options::arithPivotThreshold__option_t, const options::arithPivotThreshold__option_t::type& x) { d_holder->arithPivotThreshold = x; }
#line 39 "../../../src/options/arith_options"
template <> const options::arithPivotThreshold__option_t::type& Options::operator[](options::arithPivotThreshold__option_t) const { return d_holder->arithPivotThreshold; }
#line 39 "../../../src/options/arith_options"
template <> bool Options::wasSetByUser(options::arithPivotThreshold__option_t) const { return d_holder->arithPivotThreshold__setByUser__; }
#line 42 "../../../src/options/arith_options"
template <> const options::arithPropagateMaxLength__option_t::type& Options::operator[](options::arithPropagateMaxLength__option_t) const { return d_holder->arithPropagateMaxLength; }
#line 42 "../../../src/options/arith_options"
template <> bool Options::wasSetByUser(options::arithPropagateMaxLength__option_t) const { return d_holder->arithPropagateMaxLength__setByUser__; }
#line 45 "../../../src/options/arith_options"
template <> const options::arithDioSolver__option_t::type& Options::operator[](options::arithDioSolver__option_t) const { return d_holder->arithDioSolver; }
#line 45 "../../../src/options/arith_options"
template <> bool Options::wasSetByUser(options::arithDioSolver__option_t) const { return d_holder->arithDioSolver__setByUser__; }
#line 51 "../../../src/options/arith_options"
template <> void Options::set(options::arithRewriteEq__option_t, const options::arithRewriteEq__option_t::type& x) { d_holder->arithRewriteEq = x; }
#line 51 "../../../src/options/arith_options"
template <> const options::arithRewriteEq__option_t::type& Options::operator[](options::arithRewriteEq__option_t) const { return d_holder->arithRewriteEq; }
#line 51 "../../../src/options/arith_options"
template <> bool Options::wasSetByUser(options::arithRewriteEq__option_t) const { return d_holder->arithRewriteEq__setByUser__; }
#line 56 "../../../src/options/arith_options"
template <> const options::arithMLTrick__option_t::type& Options::operator[](options::arithMLTrick__option_t) const { return d_holder->arithMLTrick; }
#line 56 "../../../src/options/arith_options"
template <> bool Options::wasSetByUser(options::arithMLTrick__option_t) const { return d_holder->arithMLTrick__setByUser__; }
#line 60 "../../../src/options/arith_options"
template <> const options::arithMLTrickSubstitutions__option_t::type& Options::operator[](options::arithMLTrickSubstitutions__option_t) const { return d_holder->arithMLTrickSubstitutions; }
#line 60 "../../../src/options/arith_options"
template <> bool Options::wasSetByUser(options::arithMLTrickSubstitutions__option_t) const { return d_holder->arithMLTrickSubstitutions__setByUser__; }
#line 63 "../../../src/options/arith_options"
template <> void Options::set(options::doCutAllBounded__option_t, const options::doCutAllBounded__option_t::type& x) { d_holder->doCutAllBounded = x; }
#line 63 "../../../src/options/arith_options"
template <> const options::doCutAllBounded__option_t::type& Options::operator[](options::doCutAllBounded__option_t) const { return d_holder->doCutAllBounded; }
#line 63 "../../../src/options/arith_options"
template <> bool Options::wasSetByUser(options::doCutAllBounded__option_t) const { return d_holder->doCutAllBounded__setByUser__; }
#line 67 "../../../src/options/arith_options"
template <> const options::maxCutsInContext__option_t::type& Options::operator[](options::maxCutsInContext__option_t) const { return d_holder->maxCutsInContext; }
#line 67 "../../../src/options/arith_options"
template <> bool Options::wasSetByUser(options::maxCutsInContext__option_t) const { return d_holder->maxCutsInContext__setByUser__; }
#line 70 "../../../src/options/arith_options"
template <> const options::revertArithModels__option_t::type& Options::operator[](options::revertArithModels__option_t) const { return d_holder->revertArithModels; }
#line 70 "../../../src/options/arith_options"
template <> bool Options::wasSetByUser(options::revertArithModels__option_t) const { return d_holder->revertArithModels__setByUser__; }
#line 73 "../../../src/options/arith_options"
template <> void Options::set(options::havePenalties__option_t, const options::havePenalties__option_t::type& x) { d_holder->havePenalties = x; }
#line 73 "../../../src/options/arith_options"
template <> const options::havePenalties__option_t::type& Options::operator[](options::havePenalties__option_t) const { return d_holder->havePenalties; }
#line 73 "../../../src/options/arith_options"
template <> bool Options::wasSetByUser(options::havePenalties__option_t) const { return d_holder->havePenalties__setByUser__; }
#line 77 "../../../src/options/arith_options"
template <> void Options::set(options::useFC__option_t, const options::useFC__option_t::type& x) { d_holder->useFC = x; }
#line 77 "../../../src/options/arith_options"
template <> const options::useFC__option_t::type& Options::operator[](options::useFC__option_t) const { return d_holder->useFC; }
#line 77 "../../../src/options/arith_options"
template <> bool Options::wasSetByUser(options::useFC__option_t) const { return d_holder->useFC__setByUser__; }
#line 80 "../../../src/options/arith_options"
template <> void Options::set(options::useSOI__option_t, const options::useSOI__option_t::type& x) { d_holder->useSOI = x; }
#line 80 "../../../src/options/arith_options"
template <> const options::useSOI__option_t::type& Options::operator[](options::useSOI__option_t) const { return d_holder->useSOI; }
#line 80 "../../../src/options/arith_options"
template <> bool Options::wasSetByUser(options::useSOI__option_t) const { return d_holder->useSOI__setByUser__; }
#line 83 "../../../src/options/arith_options"
template <> void Options::set(options::restrictedPivots__option_t, const options::restrictedPivots__option_t::type& x) { d_holder->restrictedPivots = x; }
#line 83 "../../../src/options/arith_options"
template <> const options::restrictedPivots__option_t::type& Options::operator[](options::restrictedPivots__option_t) const { return d_holder->restrictedPivots; }
#line 83 "../../../src/options/arith_options"
template <> bool Options::wasSetByUser(options::restrictedPivots__option_t) const { return d_holder->restrictedPivots__setByUser__; }
#line 86 "../../../src/options/arith_options"
template <> void Options::set(options::collectPivots__option_t, const options::collectPivots__option_t::type& x) { d_holder->collectPivots = x; }
#line 86 "../../../src/options/arith_options"
template <> const options::collectPivots__option_t::type& Options::operator[](options::collectPivots__option_t) const { return d_holder->collectPivots; }
#line 86 "../../../src/options/arith_options"
template <> bool Options::wasSetByUser(options::collectPivots__option_t) const { return d_holder->collectPivots__setByUser__; }
#line 89 "../../../src/options/arith_options"
template <> void Options::set(options::useApprox__option_t, const options::useApprox__option_t::type& x) { d_holder->useApprox = x; }
#line 89 "../../../src/options/arith_options"
template <> const options::useApprox__option_t::type& Options::operator[](options::useApprox__option_t) const { return d_holder->useApprox; }
#line 89 "../../../src/options/arith_options"
template <> bool Options::wasSetByUser(options::useApprox__option_t) const { return d_holder->useApprox__setByUser__; }
#line 92 "../../../src/options/arith_options"
template <> void Options::set(options::maxApproxDepth__option_t, const options::maxApproxDepth__option_t::type& x) { d_holder->maxApproxDepth = x; }
#line 92 "../../../src/options/arith_options"
template <> const options::maxApproxDepth__option_t::type& Options::operator[](options::maxApproxDepth__option_t) const { return d_holder->maxApproxDepth; }
#line 92 "../../../src/options/arith_options"
template <> bool Options::wasSetByUser(options::maxApproxDepth__option_t) const { return d_holder->maxApproxDepth__setByUser__; }
#line 95 "../../../src/options/arith_options"
template <> void Options::set(options::exportDioDecompositions__option_t, const options::exportDioDecompositions__option_t::type& x) { d_holder->exportDioDecompositions = x; }
#line 95 "../../../src/options/arith_options"
template <> const options::exportDioDecompositions__option_t::type& Options::operator[](options::exportDioDecompositions__option_t) const { return d_holder->exportDioDecompositions; }
#line 95 "../../../src/options/arith_options"
template <> bool Options::wasSetByUser(options::exportDioDecompositions__option_t) const { return d_holder->exportDioDecompositions__setByUser__; }
#line 98 "../../../src/options/arith_options"
template <> void Options::set(options::newProp__option_t, const options::newProp__option_t::type& x) { d_holder->newProp = x; }
#line 98 "../../../src/options/arith_options"
template <> const options::newProp__option_t::type& Options::operator[](options::newProp__option_t) const { return d_holder->newProp; }
#line 98 "../../../src/options/arith_options"
template <> bool Options::wasSetByUser(options::newProp__option_t) const { return d_holder->newProp__setByUser__; }
#line 101 "../../../src/options/arith_options"
template <> void Options::set(options::arithPropAsLemmaLength__option_t, const options::arithPropAsLemmaLength__option_t::type& x) { d_holder->arithPropAsLemmaLength = x; }
#line 101 "../../../src/options/arith_options"
template <> const options::arithPropAsLemmaLength__option_t::type& Options::operator[](options::arithPropAsLemmaLength__option_t) const { return d_holder->arithPropAsLemmaLength; }
#line 101 "../../../src/options/arith_options"
template <> bool Options::wasSetByUser(options::arithPropAsLemmaLength__option_t) const { return d_holder->arithPropAsLemmaLength__setByUser__; }
#line 104 "../../../src/options/arith_options"
template <> void Options::set(options::soiQuickExplain__option_t, const options::soiQuickExplain__option_t::type& x) { d_holder->soiQuickExplain = x; }
#line 104 "../../../src/options/arith_options"
template <> const options::soiQuickExplain__option_t::type& Options::operator[](options::soiQuickExplain__option_t) const { return d_holder->soiQuickExplain; }
#line 104 "../../../src/options/arith_options"
template <> bool Options::wasSetByUser(options::soiQuickExplain__option_t) const { return d_holder->soiQuickExplain__setByUser__; }
#line 107 "../../../src/options/arith_options"
template <> void Options::set(options::rewriteDivk__option_t, const options::rewriteDivk__option_t::type& x) { d_holder->rewriteDivk = x; }
#line 107 "../../../src/options/arith_options"
template <> const options::rewriteDivk__option_t::type& Options::operator[](options::rewriteDivk__option_t) const { return d_holder->rewriteDivk; }
#line 107 "../../../src/options/arith_options"
template <> bool Options::wasSetByUser(options::rewriteDivk__option_t) const { return d_holder->rewriteDivk__setByUser__; }
#line 110 "../../../src/options/arith_options"
template <> const options::trySolveIntStandardEffort__option_t::type& Options::operator[](options::trySolveIntStandardEffort__option_t) const { return d_holder->trySolveIntStandardEffort; }
#line 110 "../../../src/options/arith_options"
template <> bool Options::wasSetByUser(options::trySolveIntStandardEffort__option_t) const { return d_holder->trySolveIntStandardEffort__setByUser__; }
#line 113 "../../../src/options/arith_options"
template <> const options::replayFailureLemma__option_t::type& Options::operator[](options::replayFailureLemma__option_t) const { return d_holder->replayFailureLemma; }
#line 113 "../../../src/options/arith_options"
template <> bool Options::wasSetByUser(options::replayFailureLemma__option_t) const { return d_holder->replayFailureLemma__setByUser__; }
#line 116 "../../../src/options/arith_options"
template <> const options::dioSolverTurns__option_t::type& Options::operator[](options::dioSolverTurns__option_t) const { return d_holder->dioSolverTurns; }
#line 116 "../../../src/options/arith_options"
template <> bool Options::wasSetByUser(options::dioSolverTurns__option_t) const { return d_holder->dioSolverTurns__setByUser__; }
#line 119 "../../../src/options/arith_options"
template <> const options::rrTurns__option_t::type& Options::operator[](options::rrTurns__option_t) const { return d_holder->rrTurns; }
#line 119 "../../../src/options/arith_options"
template <> bool Options::wasSetByUser(options::rrTurns__option_t) const { return d_holder->rrTurns__setByUser__; }
#line 122 "../../../src/options/arith_options"
template <> const options::dioRepeat__option_t::type& Options::operator[](options::dioRepeat__option_t) const { return d_holder->dioRepeat; }
#line 122 "../../../src/options/arith_options"
template <> bool Options::wasSetByUser(options::dioRepeat__option_t) const { return d_holder->dioRepeat__setByUser__; }
#line 125 "../../../src/options/arith_options"
template <> const options::replayEarlyCloseDepths__option_t::type& Options::operator[](options::replayEarlyCloseDepths__option_t) const { return d_holder->replayEarlyCloseDepths; }
#line 125 "../../../src/options/arith_options"
template <> bool Options::wasSetByUser(options::replayEarlyCloseDepths__option_t) const { return d_holder->replayEarlyCloseDepths__setByUser__; }
#line 128 "../../../src/options/arith_options"
template <> const options::replayFailurePenalty__option_t::type& Options::operator[](options::replayFailurePenalty__option_t) const { return d_holder->replayFailurePenalty; }
#line 128 "../../../src/options/arith_options"
template <> bool Options::wasSetByUser(options::replayFailurePenalty__option_t) const { return d_holder->replayFailurePenalty__setByUser__; }
#line 131 "../../../src/options/arith_options"
template <> const options::replayNumericFailurePenalty__option_t::type& Options::operator[](options::replayNumericFailurePenalty__option_t) const { return d_holder->replayNumericFailurePenalty; }
#line 131 "../../../src/options/arith_options"
template <> bool Options::wasSetByUser(options::replayNumericFailurePenalty__option_t) const { return d_holder->replayNumericFailurePenalty__setByUser__; }
#line 134 "../../../src/options/arith_options"
template <> const options::replayRejectCutSize__option_t::type& Options::operator[](options::replayRejectCutSize__option_t) const { return d_holder->replayRejectCutSize; }
#line 134 "../../../src/options/arith_options"
template <> bool Options::wasSetByUser(options::replayRejectCutSize__option_t) const { return d_holder->replayRejectCutSize__setByUser__; }
#line 137 "../../../src/options/arith_options"
template <> const options::lemmaRejectCutSize__option_t::type& Options::operator[](options::lemmaRejectCutSize__option_t) const { return d_holder->lemmaRejectCutSize; }
#line 137 "../../../src/options/arith_options"
template <> bool Options::wasSetByUser(options::lemmaRejectCutSize__option_t) const { return d_holder->lemmaRejectCutSize__setByUser__; }
#line 140 "../../../src/options/arith_options"
template <> const options::soiApproxMajorFailure__option_t::type& Options::operator[](options::soiApproxMajorFailure__option_t) const { return d_holder->soiApproxMajorFailure; }
#line 140 "../../../src/options/arith_options"
template <> bool Options::wasSetByUser(options::soiApproxMajorFailure__option_t) const { return d_holder->soiApproxMajorFailure__setByUser__; }
#line 143 "../../../src/options/arith_options"
template <> const options::soiApproxMajorFailurePen__option_t::type& Options::operator[](options::soiApproxMajorFailurePen__option_t) const { return d_holder->soiApproxMajorFailurePen; }
#line 143 "../../../src/options/arith_options"
template <> bool Options::wasSetByUser(options::soiApproxMajorFailurePen__option_t) const { return d_holder->soiApproxMajorFailurePen__setByUser__; }
#line 146 "../../../src/options/arith_options"
template <> const options::soiApproxMinorFailure__option_t::type& Options::operator[](options::soiApproxMinorFailure__option_t) const { return d_holder->soiApproxMinorFailure; }
#line 146 "../../../src/options/arith_options"
template <> bool Options::wasSetByUser(options::soiApproxMinorFailure__option_t) const { return d_holder->soiApproxMinorFailure__setByUser__; }
#line 149 "../../../src/options/arith_options"
template <> const options::soiApproxMinorFailurePen__option_t::type& Options::operator[](options::soiApproxMinorFailurePen__option_t) const { return d_holder->soiApproxMinorFailurePen; }
#line 149 "../../../src/options/arith_options"
template <> bool Options::wasSetByUser(options::soiApproxMinorFailurePen__option_t) const { return d_holder->soiApproxMinorFailurePen__setByUser__; }
#line 152 "../../../src/options/arith_options"
template <> const options::ppAssertMaxSubSize__option_t::type& Options::operator[](options::ppAssertMaxSubSize__option_t) const { return d_holder->ppAssertMaxSubSize; }
#line 152 "../../../src/options/arith_options"
template <> bool Options::wasSetByUser(options::ppAssertMaxSubSize__option_t) const { return d_holder->ppAssertMaxSubSize__setByUser__; }
#line 155 "../../../src/options/arith_options"
template <> const options::maxReplayTree__option_t::type& Options::operator[](options::maxReplayTree__option_t) const { return d_holder->maxReplayTree; }
#line 155 "../../../src/options/arith_options"
template <> bool Options::wasSetByUser(options::maxReplayTree__option_t) const { return d_holder->maxReplayTree__setByUser__; }
#line 159 "../../../src/options/arith_options"
template <> const options::pbRewrites__option_t::type& Options::operator[](options::pbRewrites__option_t) const { return d_holder->pbRewrites; }
#line 159 "../../../src/options/arith_options"
template <> bool Options::wasSetByUser(options::pbRewrites__option_t) const { return d_holder->pbRewrites__setByUser__; }
#line 162 "../../../src/options/arith_options"
template <> const options::pbRewriteThreshold__option_t::type& Options::operator[](options::pbRewriteThreshold__option_t) const { return d_holder->pbRewriteThreshold; }
#line 162 "../../../src/options/arith_options"
template <> bool Options::wasSetByUser(options::pbRewriteThreshold__option_t) const { return d_holder->pbRewriteThreshold__setByUser__; }
#line 165 "../../../src/options/arith_options"
template <> const options::sNormInferEq__option_t::type& Options::operator[](options::sNormInferEq__option_t) const { return d_holder->sNormInferEq; }
#line 165 "../../../src/options/arith_options"
template <> bool Options::wasSetByUser(options::sNormInferEq__option_t) const { return d_holder->sNormInferEq__setByUser__; }
#line 168 "../../../src/options/arith_options"
template <> const options::nlExt__option_t::type& Options::operator[](options::nlExt__option_t) const { return d_holder->nlExt; }
#line 168 "../../../src/options/arith_options"
template <> bool Options::wasSetByUser(options::nlExt__option_t) const { return d_holder->nlExt__setByUser__; }
#line 171 "../../../src/options/arith_options"
template <> const options::nlExtResBound__option_t::type& Options::operator[](options::nlExtResBound__option_t) const { return d_holder->nlExtResBound; }
#line 171 "../../../src/options/arith_options"
template <> bool Options::wasSetByUser(options::nlExtResBound__option_t) const { return d_holder->nlExtResBound__setByUser__; }
#line 174 "../../../src/options/arith_options"
template <> const options::nlExtTangentPlanes__option_t::type& Options::operator[](options::nlExtTangentPlanes__option_t) const { return d_holder->nlExtTangentPlanes; }
#line 174 "../../../src/options/arith_options"
template <> bool Options::wasSetByUser(options::nlExtTangentPlanes__option_t) const { return d_holder->nlExtTangentPlanes__setByUser__; }
#line 177 "../../../src/options/arith_options"
template <> const options::nlExtEntailConflicts__option_t::type& Options::operator[](options::nlExtEntailConflicts__option_t) const { return d_holder->nlExtEntailConflicts; }
#line 177 "../../../src/options/arith_options"
template <> bool Options::wasSetByUser(options::nlExtEntailConflicts__option_t) const { return d_holder->nlExtEntailConflicts__setByUser__; }
#line 180 "../../../src/options/arith_options"
template <> const options::nlExtRewrites__option_t::type& Options::operator[](options::nlExtRewrites__option_t) const { return d_holder->nlExtRewrites; }
#line 180 "../../../src/options/arith_options"
template <> bool Options::wasSetByUser(options::nlExtRewrites__option_t) const { return d_holder->nlExtRewrites__setByUser__; }
#line 183 "../../../src/options/arith_options"
template <> const options::nlExtSolveSubs__option_t::type& Options::operator[](options::nlExtSolveSubs__option_t) const { return d_holder->nlExtSolveSubs; }
#line 183 "../../../src/options/arith_options"
template <> bool Options::wasSetByUser(options::nlExtSolveSubs__option_t) const { return d_holder->nlExtSolveSubs__setByUser__; }
#line 186 "../../../src/options/arith_options"
template <> const options::nlExtPurify__option_t::type& Options::operator[](options::nlExtPurify__option_t) const { return d_holder->nlExtPurify; }
#line 186 "../../../src/options/arith_options"
template <> bool Options::wasSetByUser(options::nlExtPurify__option_t) const { return d_holder->nlExtPurify__setByUser__; }
#line 189 "../../../src/options/arith_options"
template <> const options::nlExtSplitZero__option_t::type& Options::operator[](options::nlExtSplitZero__option_t) const { return d_holder->nlExtSplitZero; }
#line 189 "../../../src/options/arith_options"
template <> bool Options::wasSetByUser(options::nlExtSplitZero__option_t) const { return d_holder->nlExtSplitZero__setByUser__; }

#line 24 "../../../src/options/base_options_template.cpp"

namespace options {


#line 8 "../../../src/options/arith_options"
struct arithUnateLemmaMode__option_t arithUnateLemmaMode;
#line 11 "../../../src/options/arith_options"
struct arithPropagationMode__option_t arithPropagationMode;
#line 18 "../../../src/options/arith_options"
struct arithHeuristicPivots__option_t arithHeuristicPivots;
#line 25 "../../../src/options/arith_options"
struct arithStandardCheckVarOrderPivots__option_t arithStandardCheckVarOrderPivots;
#line 28 "../../../src/options/arith_options"
struct arithErrorSelectionRule__option_t arithErrorSelectionRule;
#line 32 "../../../src/options/arith_options"
struct arithSimplexCheckPeriod__option_t arithSimplexCheckPeriod;
#line 39 "../../../src/options/arith_options"
struct arithPivotThreshold__option_t arithPivotThreshold;
#line 42 "../../../src/options/arith_options"
struct arithPropagateMaxLength__option_t arithPropagateMaxLength;
#line 45 "../../../src/options/arith_options"
struct arithDioSolver__option_t arithDioSolver;
#line 51 "../../../src/options/arith_options"
struct arithRewriteEq__option_t arithRewriteEq;
#line 56 "../../../src/options/arith_options"
struct arithMLTrick__option_t arithMLTrick;
#line 60 "../../../src/options/arith_options"
struct arithMLTrickSubstitutions__option_t arithMLTrickSubstitutions;
#line 63 "../../../src/options/arith_options"
struct doCutAllBounded__option_t doCutAllBounded;
#line 67 "../../../src/options/arith_options"
struct maxCutsInContext__option_t maxCutsInContext;
#line 70 "../../../src/options/arith_options"
struct revertArithModels__option_t revertArithModels;
#line 73 "../../../src/options/arith_options"
struct havePenalties__option_t havePenalties;
#line 77 "../../../src/options/arith_options"
struct useFC__option_t useFC;
#line 80 "../../../src/options/arith_options"
struct useSOI__option_t useSOI;
#line 83 "../../../src/options/arith_options"
struct restrictedPivots__option_t restrictedPivots;
#line 86 "../../../src/options/arith_options"
struct collectPivots__option_t collectPivots;
#line 89 "../../../src/options/arith_options"
struct useApprox__option_t useApprox;
#line 92 "../../../src/options/arith_options"
struct maxApproxDepth__option_t maxApproxDepth;
#line 95 "../../../src/options/arith_options"
struct exportDioDecompositions__option_t exportDioDecompositions;
#line 98 "../../../src/options/arith_options"
struct newProp__option_t newProp;
#line 101 "../../../src/options/arith_options"
struct arithPropAsLemmaLength__option_t arithPropAsLemmaLength;
#line 104 "../../../src/options/arith_options"
struct soiQuickExplain__option_t soiQuickExplain;
#line 107 "../../../src/options/arith_options"
struct rewriteDivk__option_t rewriteDivk;
#line 110 "../../../src/options/arith_options"
struct trySolveIntStandardEffort__option_t trySolveIntStandardEffort;
#line 113 "../../../src/options/arith_options"
struct replayFailureLemma__option_t replayFailureLemma;
#line 116 "../../../src/options/arith_options"
struct dioSolverTurns__option_t dioSolverTurns;
#line 119 "../../../src/options/arith_options"
struct rrTurns__option_t rrTurns;
#line 122 "../../../src/options/arith_options"
struct dioRepeat__option_t dioRepeat;
#line 125 "../../../src/options/arith_options"
struct replayEarlyCloseDepths__option_t replayEarlyCloseDepths;
#line 128 "../../../src/options/arith_options"
struct replayFailurePenalty__option_t replayFailurePenalty;
#line 131 "../../../src/options/arith_options"
struct replayNumericFailurePenalty__option_t replayNumericFailurePenalty;
#line 134 "../../../src/options/arith_options"
struct replayRejectCutSize__option_t replayRejectCutSize;
#line 137 "../../../src/options/arith_options"
struct lemmaRejectCutSize__option_t lemmaRejectCutSize;
#line 140 "../../../src/options/arith_options"
struct soiApproxMajorFailure__option_t soiApproxMajorFailure;
#line 143 "../../../src/options/arith_options"
struct soiApproxMajorFailurePen__option_t soiApproxMajorFailurePen;
#line 146 "../../../src/options/arith_options"
struct soiApproxMinorFailure__option_t soiApproxMinorFailure;
#line 149 "../../../src/options/arith_options"
struct soiApproxMinorFailurePen__option_t soiApproxMinorFailurePen;
#line 152 "../../../src/options/arith_options"
struct ppAssertMaxSubSize__option_t ppAssertMaxSubSize;
#line 155 "../../../src/options/arith_options"
struct maxReplayTree__option_t maxReplayTree;
#line 159 "../../../src/options/arith_options"
struct pbRewrites__option_t pbRewrites;
#line 162 "../../../src/options/arith_options"
struct pbRewriteThreshold__option_t pbRewriteThreshold;
#line 165 "../../../src/options/arith_options"
struct sNormInferEq__option_t sNormInferEq;
#line 168 "../../../src/options/arith_options"
struct nlExt__option_t nlExt;
#line 171 "../../../src/options/arith_options"
struct nlExtResBound__option_t nlExtResBound;
#line 174 "../../../src/options/arith_options"
struct nlExtTangentPlanes__option_t nlExtTangentPlanes;
#line 177 "../../../src/options/arith_options"
struct nlExtEntailConflicts__option_t nlExtEntailConflicts;
#line 180 "../../../src/options/arith_options"
struct nlExtRewrites__option_t nlExtRewrites;
#line 183 "../../../src/options/arith_options"
struct nlExtSolveSubs__option_t nlExtSolveSubs;
#line 186 "../../../src/options/arith_options"
struct nlExtPurify__option_t nlExtPurify;
#line 189 "../../../src/options/arith_options"
struct nlExtSplitZero__option_t nlExtSplitZero;

#line 30 "../../../src/options/base_options_template.cpp"

}/* CVC4::options namespace */

}/* CVC4 namespace */
