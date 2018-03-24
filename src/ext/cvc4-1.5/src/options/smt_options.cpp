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


#line 8 "../../../src/options/smt_options"
template <> const options::dumpModeString__option_t::type& Options::operator[](options::dumpModeString__option_t) const { return d_holder->dumpModeString; }
#line 8 "../../../src/options/smt_options"
template <> bool Options::wasSetByUser(options::dumpModeString__option_t) const { return d_holder->dumpModeString__setByUser__; }
#line 10 "../../../src/options/smt_options"
template <> const options::dumpToFileName__option_t::type& Options::operator[](options::dumpToFileName__option_t) const { return d_holder->dumpToFileName; }
#line 10 "../../../src/options/smt_options"
template <> bool Options::wasSetByUser(options::dumpToFileName__option_t) const { return d_holder->dumpToFileName__setByUser__; }
#line 13 "../../../src/options/smt_options"
template <> const options::forceLogicString__option_t::type& Options::operator[](options::forceLogicString__option_t) const { return d_holder->forceLogicString; }
#line 13 "../../../src/options/smt_options"
template <> bool Options::wasSetByUser(options::forceLogicString__option_t) const { return d_holder->forceLogicString__setByUser__; }
#line 16 "../../../src/options/smt_options"
template <> void Options::set(options::simplificationMode__option_t, const options::simplificationMode__option_t::type& x) { d_holder->simplificationMode = x; }
#line 16 "../../../src/options/smt_options"
template <> const options::simplificationMode__option_t::type& Options::operator[](options::simplificationMode__option_t) const { return d_holder->simplificationMode; }
#line 16 "../../../src/options/smt_options"
template <> bool Options::wasSetByUser(options::simplificationMode__option_t) const { return d_holder->simplificationMode__setByUser__; }
#line 21 "../../../src/options/smt_options"
template <> const options::doStaticLearning__option_t::type& Options::operator[](options::doStaticLearning__option_t) const { return d_holder->doStaticLearning; }
#line 21 "../../../src/options/smt_options"
template <> bool Options::wasSetByUser(options::doStaticLearning__option_t) const { return d_holder->doStaticLearning__setByUser__; }
#line 24 "../../../src/options/smt_options"
template <> const options::expandDefinitions__option_t::type& Options::operator[](options::expandDefinitions__option_t) const { return d_holder->expandDefinitions; }
#line 24 "../../../src/options/smt_options"
template <> bool Options::wasSetByUser(options::expandDefinitions__option_t) const { return d_holder->expandDefinitions__setByUser__; }
#line 26 "../../../src/options/smt_options"
template <> const options::produceModels__option_t::type& Options::operator[](options::produceModels__option_t) const { return d_holder->produceModels; }
#line 26 "../../../src/options/smt_options"
template <> bool Options::wasSetByUser(options::produceModels__option_t) const { return d_holder->produceModels__setByUser__; }
#line 28 "../../../src/options/smt_options"
template <> const options::checkModels__option_t::type& Options::operator[](options::checkModels__option_t) const { return d_holder->checkModels; }
#line 28 "../../../src/options/smt_options"
template <> bool Options::wasSetByUser(options::checkModels__option_t) const { return d_holder->checkModels__setByUser__; }
#line 30 "../../../src/options/smt_options"
template <> const options::dumpModels__option_t::type& Options::operator[](options::dumpModels__option_t) const { return d_holder->dumpModels; }
#line 30 "../../../src/options/smt_options"
template <> bool Options::wasSetByUser(options::dumpModels__option_t) const { return d_holder->dumpModels__setByUser__; }
#line 32 "../../../src/options/smt_options"
template <> const options::omitDontCares__option_t::type& Options::operator[](options::omitDontCares__option_t) const { return d_holder->omitDontCares; }
#line 32 "../../../src/options/smt_options"
template <> bool Options::wasSetByUser(options::omitDontCares__option_t) const { return d_holder->omitDontCares__setByUser__; }
#line 34 "../../../src/options/smt_options"
template <> const options::proof__option_t::type& Options::operator[](options::proof__option_t) const { return d_holder->proof; }
#line 34 "../../../src/options/smt_options"
template <> bool Options::wasSetByUser(options::proof__option_t) const { return d_holder->proof__setByUser__; }
#line 36 "../../../src/options/smt_options"
template <> void Options::set(options::checkProofs__option_t, const options::checkProofs__option_t::type& x) { d_holder->checkProofs = x; }
#line 36 "../../../src/options/smt_options"
template <> const options::checkProofs__option_t::type& Options::operator[](options::checkProofs__option_t) const { return d_holder->checkProofs; }
#line 36 "../../../src/options/smt_options"
template <> bool Options::wasSetByUser(options::checkProofs__option_t) const { return d_holder->checkProofs__setByUser__; }
#line 38 "../../../src/options/smt_options"
template <> const options::dumpProofs__option_t::type& Options::operator[](options::dumpProofs__option_t) const { return d_holder->dumpProofs; }
#line 38 "../../../src/options/smt_options"
template <> bool Options::wasSetByUser(options::dumpProofs__option_t) const { return d_holder->dumpProofs__setByUser__; }
#line 40 "../../../src/options/smt_options"
template <> const options::dumpInstantiations__option_t::type& Options::operator[](options::dumpInstantiations__option_t) const { return d_holder->dumpInstantiations; }
#line 40 "../../../src/options/smt_options"
template <> bool Options::wasSetByUser(options::dumpInstantiations__option_t) const { return d_holder->dumpInstantiations__setByUser__; }
#line 42 "../../../src/options/smt_options"
template <> void Options::set(options::dumpSynth__option_t, const options::dumpSynth__option_t::type& x) { d_holder->dumpSynth = x; }
#line 42 "../../../src/options/smt_options"
template <> const options::dumpSynth__option_t::type& Options::operator[](options::dumpSynth__option_t) const { return d_holder->dumpSynth; }
#line 42 "../../../src/options/smt_options"
template <> bool Options::wasSetByUser(options::dumpSynth__option_t) const { return d_holder->dumpSynth__setByUser__; }
#line 44 "../../../src/options/smt_options"
template <> const options::unsatCores__option_t::type& Options::operator[](options::unsatCores__option_t) const { return d_holder->unsatCores; }
#line 44 "../../../src/options/smt_options"
template <> bool Options::wasSetByUser(options::unsatCores__option_t) const { return d_holder->unsatCores__setByUser__; }
#line 46 "../../../src/options/smt_options"
template <> void Options::set(options::checkUnsatCores__option_t, const options::checkUnsatCores__option_t::type& x) { d_holder->checkUnsatCores = x; }
#line 46 "../../../src/options/smt_options"
template <> const options::checkUnsatCores__option_t::type& Options::operator[](options::checkUnsatCores__option_t) const { return d_holder->checkUnsatCores; }
#line 46 "../../../src/options/smt_options"
template <> bool Options::wasSetByUser(options::checkUnsatCores__option_t) const { return d_holder->checkUnsatCores__setByUser__; }
#line 48 "../../../src/options/smt_options"
template <> const options::dumpUnsatCores__option_t::type& Options::operator[](options::dumpUnsatCores__option_t) const { return d_holder->dumpUnsatCores; }
#line 48 "../../../src/options/smt_options"
template <> bool Options::wasSetByUser(options::dumpUnsatCores__option_t) const { return d_holder->dumpUnsatCores__setByUser__; }
#line 50 "../../../src/options/smt_options"
template <> const options::dumpUnsatCoresFull__option_t::type& Options::operator[](options::dumpUnsatCoresFull__option_t) const { return d_holder->dumpUnsatCoresFull; }
#line 50 "../../../src/options/smt_options"
template <> bool Options::wasSetByUser(options::dumpUnsatCoresFull__option_t) const { return d_holder->dumpUnsatCoresFull__setByUser__; }
#line 53 "../../../src/options/smt_options"
template <> const options::produceAssignments__option_t::type& Options::operator[](options::produceAssignments__option_t) const { return d_holder->produceAssignments; }
#line 53 "../../../src/options/smt_options"
template <> bool Options::wasSetByUser(options::produceAssignments__option_t) const { return d_holder->produceAssignments__setByUser__; }
#line 56 "../../../src/options/smt_options"
template <> void Options::set(options::interactiveMode__option_t, const options::interactiveMode__option_t::type& x) { d_holder->interactiveMode = x; }
#line 56 "../../../src/options/smt_options"
template <> const options::interactiveMode__option_t::type& Options::operator[](options::interactiveMode__option_t) const { return d_holder->interactiveMode; }
#line 56 "../../../src/options/smt_options"
template <> bool Options::wasSetByUser(options::interactiveMode__option_t) const { return d_holder->interactiveMode__setByUser__; }
#line 58 "../../../src/options/smt_options"
template <> void Options::set(options::produceAssertions__option_t, const options::produceAssertions__option_t::type& x) { d_holder->produceAssertions = x; }
#line 58 "../../../src/options/smt_options"
template <> const options::produceAssertions__option_t::type& Options::operator[](options::produceAssertions__option_t) const { return d_holder->produceAssertions; }
#line 58 "../../../src/options/smt_options"
template <> bool Options::wasSetByUser(options::produceAssertions__option_t) const { return d_holder->produceAssertions__setByUser__; }
#line 61 "../../../src/options/smt_options"
template <> void Options::set(options::doITESimp__option_t, const options::doITESimp__option_t::type& x) { d_holder->doITESimp = x; }
#line 61 "../../../src/options/smt_options"
template <> const options::doITESimp__option_t::type& Options::operator[](options::doITESimp__option_t) const { return d_holder->doITESimp; }
#line 61 "../../../src/options/smt_options"
template <> bool Options::wasSetByUser(options::doITESimp__option_t) const { return d_holder->doITESimp__setByUser__; }
#line 64 "../../../src/options/smt_options"
template <> void Options::set(options::doITESimpOnRepeat__option_t, const options::doITESimpOnRepeat__option_t::type& x) { d_holder->doITESimpOnRepeat = x; }
#line 64 "../../../src/options/smt_options"
template <> const options::doITESimpOnRepeat__option_t::type& Options::operator[](options::doITESimpOnRepeat__option_t) const { return d_holder->doITESimpOnRepeat; }
#line 64 "../../../src/options/smt_options"
template <> bool Options::wasSetByUser(options::doITESimpOnRepeat__option_t) const { return d_holder->doITESimpOnRepeat__setByUser__; }
#line 67 "../../../src/options/smt_options"
template <> void Options::set(options::simplifyWithCareEnabled__option_t, const options::simplifyWithCareEnabled__option_t::type& x) { d_holder->simplifyWithCareEnabled = x; }
#line 67 "../../../src/options/smt_options"
template <> const options::simplifyWithCareEnabled__option_t::type& Options::operator[](options::simplifyWithCareEnabled__option_t) const { return d_holder->simplifyWithCareEnabled; }
#line 67 "../../../src/options/smt_options"
template <> bool Options::wasSetByUser(options::simplifyWithCareEnabled__option_t) const { return d_holder->simplifyWithCareEnabled__setByUser__; }
#line 70 "../../../src/options/smt_options"
template <> void Options::set(options::compressItes__option_t, const options::compressItes__option_t::type& x) { d_holder->compressItes = x; }
#line 70 "../../../src/options/smt_options"
template <> const options::compressItes__option_t::type& Options::operator[](options::compressItes__option_t) const { return d_holder->compressItes; }
#line 70 "../../../src/options/smt_options"
template <> bool Options::wasSetByUser(options::compressItes__option_t) const { return d_holder->compressItes__setByUser__; }
#line 73 "../../../src/options/smt_options"
template <> void Options::set(options::unconstrainedSimp__option_t, const options::unconstrainedSimp__option_t::type& x) { d_holder->unconstrainedSimp = x; }
#line 73 "../../../src/options/smt_options"
template <> const options::unconstrainedSimp__option_t::type& Options::operator[](options::unconstrainedSimp__option_t) const { return d_holder->unconstrainedSimp; }
#line 73 "../../../src/options/smt_options"
template <> bool Options::wasSetByUser(options::unconstrainedSimp__option_t) const { return d_holder->unconstrainedSimp__setByUser__; }
#line 76 "../../../src/options/smt_options"
template <> void Options::set(options::repeatSimp__option_t, const options::repeatSimp__option_t::type& x) { d_holder->repeatSimp = x; }
#line 76 "../../../src/options/smt_options"
template <> const options::repeatSimp__option_t::type& Options::operator[](options::repeatSimp__option_t) const { return d_holder->repeatSimp; }
#line 76 "../../../src/options/smt_options"
template <> bool Options::wasSetByUser(options::repeatSimp__option_t) const { return d_holder->repeatSimp__setByUser__; }
#line 79 "../../../src/options/smt_options"
template <> const options::zombieHuntThreshold__option_t::type& Options::operator[](options::zombieHuntThreshold__option_t) const { return d_holder->zombieHuntThreshold; }
#line 79 "../../../src/options/smt_options"
template <> bool Options::wasSetByUser(options::zombieHuntThreshold__option_t) const { return d_holder->zombieHuntThreshold__setByUser__; }
#line 82 "../../../src/options/smt_options"
template <> void Options::set(options::sortInference__option_t, const options::sortInference__option_t::type& x) { d_holder->sortInference = x; }
#line 82 "../../../src/options/smt_options"
template <> const options::sortInference__option_t::type& Options::operator[](options::sortInference__option_t) const { return d_holder->sortInference; }
#line 82 "../../../src/options/smt_options"
template <> bool Options::wasSetByUser(options::sortInference__option_t) const { return d_holder->sortInference__setByUser__; }
#line 85 "../../../src/options/smt_options"
template <> const options::incrementalSolving__option_t::type& Options::operator[](options::incrementalSolving__option_t) const { return d_holder->incrementalSolving; }
#line 85 "../../../src/options/smt_options"
template <> bool Options::wasSetByUser(options::incrementalSolving__option_t) const { return d_holder->incrementalSolving__setByUser__; }
#line 88 "../../../src/options/smt_options"
template <> const options::abstractValues__option_t::type& Options::operator[](options::abstractValues__option_t) const { return d_holder->abstractValues; }
#line 88 "../../../src/options/smt_options"
template <> bool Options::wasSetByUser(options::abstractValues__option_t) const { return d_holder->abstractValues__setByUser__; }
#line 90 "../../../src/options/smt_options"
template <> const options::modelUninterpDtEnum__option_t::type& Options::operator[](options::modelUninterpDtEnum__option_t) const { return d_holder->modelUninterpDtEnum; }
#line 90 "../../../src/options/smt_options"
template <> bool Options::wasSetByUser(options::modelUninterpDtEnum__option_t) const { return d_holder->modelUninterpDtEnum__setByUser__; }
#line 93 "../../../src/options/smt_options"
template <> const options::regularChannelName__option_t::type& Options::operator[](options::regularChannelName__option_t) const { return d_holder->regularChannelName; }
#line 93 "../../../src/options/smt_options"
template <> bool Options::wasSetByUser(options::regularChannelName__option_t) const { return d_holder->regularChannelName__setByUser__; }
#line 95 "../../../src/options/smt_options"
template <> const options::diagnosticChannelName__option_t::type& Options::operator[](options::diagnosticChannelName__option_t) const { return d_holder->diagnosticChannelName; }
#line 95 "../../../src/options/smt_options"
template <> bool Options::wasSetByUser(options::diagnosticChannelName__option_t) const { return d_holder->diagnosticChannelName__setByUser__; }
#line 98 "../../../src/options/smt_options"
template <> const options::cumulativeMillisecondLimit__option_t::type& Options::operator[](options::cumulativeMillisecondLimit__option_t) const { return d_holder->cumulativeMillisecondLimit; }
#line 98 "../../../src/options/smt_options"
template <> bool Options::wasSetByUser(options::cumulativeMillisecondLimit__option_t) const { return d_holder->cumulativeMillisecondLimit__setByUser__; }
#line 100 "../../../src/options/smt_options"
template <> const options::perCallMillisecondLimit__option_t::type& Options::operator[](options::perCallMillisecondLimit__option_t) const { return d_holder->perCallMillisecondLimit; }
#line 100 "../../../src/options/smt_options"
template <> bool Options::wasSetByUser(options::perCallMillisecondLimit__option_t) const { return d_holder->perCallMillisecondLimit__setByUser__; }
#line 102 "../../../src/options/smt_options"
template <> const options::cumulativeResourceLimit__option_t::type& Options::operator[](options::cumulativeResourceLimit__option_t) const { return d_holder->cumulativeResourceLimit; }
#line 102 "../../../src/options/smt_options"
template <> bool Options::wasSetByUser(options::cumulativeResourceLimit__option_t) const { return d_holder->cumulativeResourceLimit__setByUser__; }
#line 104 "../../../src/options/smt_options"
template <> const options::perCallResourceLimit__option_t::type& Options::operator[](options::perCallResourceLimit__option_t) const { return d_holder->perCallResourceLimit; }
#line 104 "../../../src/options/smt_options"
template <> bool Options::wasSetByUser(options::perCallResourceLimit__option_t) const { return d_holder->perCallResourceLimit__setByUser__; }
#line 106 "../../../src/options/smt_options"
template <> const options::hardLimit__option_t::type& Options::operator[](options::hardLimit__option_t) const { return d_holder->hardLimit; }
#line 106 "../../../src/options/smt_options"
template <> bool Options::wasSetByUser(options::hardLimit__option_t) const { return d_holder->hardLimit__setByUser__; }
#line 108 "../../../src/options/smt_options"
template <> const options::cpuTime__option_t::type& Options::operator[](options::cpuTime__option_t) const { return d_holder->cpuTime; }
#line 108 "../../../src/options/smt_options"
template <> bool Options::wasSetByUser(options::cpuTime__option_t) const { return d_holder->cpuTime__setByUser__; }
#line 112 "../../../src/options/smt_options"
template <> const options::rewriteStep__option_t::type& Options::operator[](options::rewriteStep__option_t) const { return d_holder->rewriteStep; }
#line 112 "../../../src/options/smt_options"
template <> bool Options::wasSetByUser(options::rewriteStep__option_t) const { return d_holder->rewriteStep__setByUser__; }
#line 115 "../../../src/options/smt_options"
template <> const options::theoryCheckStep__option_t::type& Options::operator[](options::theoryCheckStep__option_t) const { return d_holder->theoryCheckStep; }
#line 115 "../../../src/options/smt_options"
template <> bool Options::wasSetByUser(options::theoryCheckStep__option_t) const { return d_holder->theoryCheckStep__setByUser__; }
#line 118 "../../../src/options/smt_options"
template <> const options::decisionStep__option_t::type& Options::operator[](options::decisionStep__option_t) const { return d_holder->decisionStep; }
#line 118 "../../../src/options/smt_options"
template <> bool Options::wasSetByUser(options::decisionStep__option_t) const { return d_holder->decisionStep__setByUser__; }
#line 121 "../../../src/options/smt_options"
template <> const options::bitblastStep__option_t::type& Options::operator[](options::bitblastStep__option_t) const { return d_holder->bitblastStep; }
#line 121 "../../../src/options/smt_options"
template <> bool Options::wasSetByUser(options::bitblastStep__option_t) const { return d_holder->bitblastStep__setByUser__; }
#line 124 "../../../src/options/smt_options"
template <> const options::parseStep__option_t::type& Options::operator[](options::parseStep__option_t) const { return d_holder->parseStep; }
#line 124 "../../../src/options/smt_options"
template <> bool Options::wasSetByUser(options::parseStep__option_t) const { return d_holder->parseStep__setByUser__; }
#line 127 "../../../src/options/smt_options"
template <> const options::lemmaStep__option_t::type& Options::operator[](options::lemmaStep__option_t) const { return d_holder->lemmaStep; }
#line 127 "../../../src/options/smt_options"
template <> bool Options::wasSetByUser(options::lemmaStep__option_t) const { return d_holder->lemmaStep__setByUser__; }
#line 130 "../../../src/options/smt_options"
template <> const options::restartStep__option_t::type& Options::operator[](options::restartStep__option_t) const { return d_holder->restartStep; }
#line 130 "../../../src/options/smt_options"
template <> bool Options::wasSetByUser(options::restartStep__option_t) const { return d_holder->restartStep__setByUser__; }
#line 133 "../../../src/options/smt_options"
template <> const options::cnfStep__option_t::type& Options::operator[](options::cnfStep__option_t) const { return d_holder->cnfStep; }
#line 133 "../../../src/options/smt_options"
template <> bool Options::wasSetByUser(options::cnfStep__option_t) const { return d_holder->cnfStep__setByUser__; }
#line 136 "../../../src/options/smt_options"
template <> const options::preprocessStep__option_t::type& Options::operator[](options::preprocessStep__option_t) const { return d_holder->preprocessStep; }
#line 136 "../../../src/options/smt_options"
template <> bool Options::wasSetByUser(options::preprocessStep__option_t) const { return d_holder->preprocessStep__setByUser__; }
#line 139 "../../../src/options/smt_options"
template <> const options::quantifierStep__option_t::type& Options::operator[](options::quantifierStep__option_t) const { return d_holder->quantifierStep; }
#line 139 "../../../src/options/smt_options"
template <> bool Options::wasSetByUser(options::quantifierStep__option_t) const { return d_holder->quantifierStep__setByUser__; }
#line 142 "../../../src/options/smt_options"
template <> const options::satConflictStep__option_t::type& Options::operator[](options::satConflictStep__option_t) const { return d_holder->satConflictStep; }
#line 142 "../../../src/options/smt_options"
template <> bool Options::wasSetByUser(options::satConflictStep__option_t) const { return d_holder->satConflictStep__setByUser__; }
#line 145 "../../../src/options/smt_options"
template <> const options::bvSatConflictStep__option_t::type& Options::operator[](options::bvSatConflictStep__option_t) const { return d_holder->bvSatConflictStep; }
#line 145 "../../../src/options/smt_options"
template <> bool Options::wasSetByUser(options::bvSatConflictStep__option_t) const { return d_holder->bvSatConflictStep__setByUser__; }
#line 149 "../../../src/options/smt_options"
template <> const options::rewriteApplyToConst__option_t::type& Options::operator[](options::rewriteApplyToConst__option_t) const { return d_holder->rewriteApplyToConst; }
#line 149 "../../../src/options/smt_options"
template <> bool Options::wasSetByUser(options::rewriteApplyToConst__option_t) const { return d_holder->rewriteApplyToConst__setByUser__; }
#line 154 "../../../src/options/smt_options"
template <> const options::replayInputFilename__option_t::type& Options::operator[](options::replayInputFilename__option_t) const { return d_holder->replayInputFilename; }
#line 154 "../../../src/options/smt_options"
template <> bool Options::wasSetByUser(options::replayInputFilename__option_t) const { return d_holder->replayInputFilename__setByUser__; }
#line 158 "../../../src/options/smt_options"
template <> const options::replayLogFilename__option_t::type& Options::operator[](options::replayLogFilename__option_t) const { return d_holder->replayLogFilename; }
#line 158 "../../../src/options/smt_options"
template <> bool Options::wasSetByUser(options::replayLogFilename__option_t) const { return d_holder->replayLogFilename__setByUser__; }
#line 161 "../../../src/options/smt_options"
template <> const options::forceNoLimitCpuWhileDump__option_t::type& Options::operator[](options::forceNoLimitCpuWhileDump__option_t) const { return d_holder->forceNoLimitCpuWhileDump; }
#line 161 "../../../src/options/smt_options"
template <> bool Options::wasSetByUser(options::forceNoLimitCpuWhileDump__option_t) const { return d_holder->forceNoLimitCpuWhileDump__setByUser__; }
#line 164 "../../../src/options/smt_options"
template <> const options::solveIntAsBV__option_t::type& Options::operator[](options::solveIntAsBV__option_t) const { return d_holder->solveIntAsBV; }
#line 164 "../../../src/options/smt_options"
template <> bool Options::wasSetByUser(options::solveIntAsBV__option_t) const { return d_holder->solveIntAsBV__setByUser__; }
#line 167 "../../../src/options/smt_options"
template <> const options::solveRealAsInt__option_t::type& Options::operator[](options::solveRealAsInt__option_t) const { return d_holder->solveRealAsInt; }
#line 167 "../../../src/options/smt_options"
template <> bool Options::wasSetByUser(options::solveRealAsInt__option_t) const { return d_holder->solveRealAsInt__setByUser__; }

#line 24 "../../../src/options/base_options_template.cpp"

namespace options {


#line 8 "../../../src/options/smt_options"
struct dumpModeString__option_t dumpModeString;
#line 10 "../../../src/options/smt_options"
struct dumpToFileName__option_t dumpToFileName;
#line 13 "../../../src/options/smt_options"
struct forceLogicString__option_t forceLogicString;
#line 16 "../../../src/options/smt_options"
struct simplificationMode__option_t simplificationMode;
#line 21 "../../../src/options/smt_options"
struct doStaticLearning__option_t doStaticLearning;
#line 24 "../../../src/options/smt_options"
struct expandDefinitions__option_t expandDefinitions;
#line 26 "../../../src/options/smt_options"
struct produceModels__option_t produceModels;
#line 28 "../../../src/options/smt_options"
struct checkModels__option_t checkModels;
#line 30 "../../../src/options/smt_options"
struct dumpModels__option_t dumpModels;
#line 32 "../../../src/options/smt_options"
struct omitDontCares__option_t omitDontCares;
#line 34 "../../../src/options/smt_options"
struct proof__option_t proof;
#line 36 "../../../src/options/smt_options"
struct checkProofs__option_t checkProofs;
#line 38 "../../../src/options/smt_options"
struct dumpProofs__option_t dumpProofs;
#line 40 "../../../src/options/smt_options"
struct dumpInstantiations__option_t dumpInstantiations;
#line 42 "../../../src/options/smt_options"
struct dumpSynth__option_t dumpSynth;
#line 44 "../../../src/options/smt_options"
struct unsatCores__option_t unsatCores;
#line 46 "../../../src/options/smt_options"
struct checkUnsatCores__option_t checkUnsatCores;
#line 48 "../../../src/options/smt_options"
struct dumpUnsatCores__option_t dumpUnsatCores;
#line 50 "../../../src/options/smt_options"
struct dumpUnsatCoresFull__option_t dumpUnsatCoresFull;
#line 53 "../../../src/options/smt_options"
struct produceAssignments__option_t produceAssignments;
#line 56 "../../../src/options/smt_options"
struct interactiveMode__option_t interactiveMode;
#line 58 "../../../src/options/smt_options"
struct produceAssertions__option_t produceAssertions;
#line 61 "../../../src/options/smt_options"
struct doITESimp__option_t doITESimp;
#line 64 "../../../src/options/smt_options"
struct doITESimpOnRepeat__option_t doITESimpOnRepeat;
#line 67 "../../../src/options/smt_options"
struct simplifyWithCareEnabled__option_t simplifyWithCareEnabled;
#line 70 "../../../src/options/smt_options"
struct compressItes__option_t compressItes;
#line 73 "../../../src/options/smt_options"
struct unconstrainedSimp__option_t unconstrainedSimp;
#line 76 "../../../src/options/smt_options"
struct repeatSimp__option_t repeatSimp;
#line 79 "../../../src/options/smt_options"
struct zombieHuntThreshold__option_t zombieHuntThreshold;
#line 82 "../../../src/options/smt_options"
struct sortInference__option_t sortInference;
#line 85 "../../../src/options/smt_options"
struct incrementalSolving__option_t incrementalSolving;
#line 88 "../../../src/options/smt_options"
struct abstractValues__option_t abstractValues;
#line 90 "../../../src/options/smt_options"
struct modelUninterpDtEnum__option_t modelUninterpDtEnum;
#line 93 "../../../src/options/smt_options"
struct regularChannelName__option_t regularChannelName;
#line 95 "../../../src/options/smt_options"
struct diagnosticChannelName__option_t diagnosticChannelName;
#line 98 "../../../src/options/smt_options"
struct cumulativeMillisecondLimit__option_t cumulativeMillisecondLimit;
#line 100 "../../../src/options/smt_options"
struct perCallMillisecondLimit__option_t perCallMillisecondLimit;
#line 102 "../../../src/options/smt_options"
struct cumulativeResourceLimit__option_t cumulativeResourceLimit;
#line 104 "../../../src/options/smt_options"
struct perCallResourceLimit__option_t perCallResourceLimit;
#line 106 "../../../src/options/smt_options"
struct hardLimit__option_t hardLimit;
#line 108 "../../../src/options/smt_options"
struct cpuTime__option_t cpuTime;
#line 112 "../../../src/options/smt_options"
struct rewriteStep__option_t rewriteStep;
#line 115 "../../../src/options/smt_options"
struct theoryCheckStep__option_t theoryCheckStep;
#line 118 "../../../src/options/smt_options"
struct decisionStep__option_t decisionStep;
#line 121 "../../../src/options/smt_options"
struct bitblastStep__option_t bitblastStep;
#line 124 "../../../src/options/smt_options"
struct parseStep__option_t parseStep;
#line 127 "../../../src/options/smt_options"
struct lemmaStep__option_t lemmaStep;
#line 130 "../../../src/options/smt_options"
struct restartStep__option_t restartStep;
#line 133 "../../../src/options/smt_options"
struct cnfStep__option_t cnfStep;
#line 136 "../../../src/options/smt_options"
struct preprocessStep__option_t preprocessStep;
#line 139 "../../../src/options/smt_options"
struct quantifierStep__option_t quantifierStep;
#line 142 "../../../src/options/smt_options"
struct satConflictStep__option_t satConflictStep;
#line 145 "../../../src/options/smt_options"
struct bvSatConflictStep__option_t bvSatConflictStep;
#line 149 "../../../src/options/smt_options"
struct rewriteApplyToConst__option_t rewriteApplyToConst;
#line 154 "../../../src/options/smt_options"
struct replayInputFilename__option_t replayInputFilename;
#line 158 "../../../src/options/smt_options"
struct replayLogFilename__option_t replayLogFilename;
#line 161 "../../../src/options/smt_options"
struct forceNoLimitCpuWhileDump__option_t forceNoLimitCpuWhileDump;
#line 164 "../../../src/options/smt_options"
struct solveIntAsBV__option_t solveIntAsBV;
#line 167 "../../../src/options/smt_options"
struct solveRealAsInt__option_t solveRealAsInt;

#line 30 "../../../src/options/base_options_template.cpp"

}/* CVC4::options namespace */

}/* CVC4 namespace */
