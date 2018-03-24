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

#ifndef __CVC4__OPTIONS__SMT_H
#define __CVC4__OPTIONS__SMT_H

#include "options/options.h"

#line 16 "../../../src/options/smt_options"
#include "options/simplification_mode.h"

#line 26 "../../../src/options/base_options_template.h"

#define CVC4_OPTIONS__SMT__FOR_OPTION_HOLDER \
  dumpModeString__option_t::type dumpModeString; \
  bool dumpModeString__setByUser__; \
  dumpToFileName__option_t::type dumpToFileName; \
  bool dumpToFileName__setByUser__; \
  forceLogicString__option_t::type forceLogicString; \
  bool forceLogicString__setByUser__; \
  simplificationMode__option_t::type simplificationMode; \
  bool simplificationMode__setByUser__; \
  doStaticLearning__option_t::type doStaticLearning; \
  bool doStaticLearning__setByUser__; \
  expandDefinitions__option_t::type expandDefinitions; \
  bool expandDefinitions__setByUser__; \
  produceModels__option_t::type produceModels; \
  bool produceModels__setByUser__; \
  checkModels__option_t::type checkModels; \
  bool checkModels__setByUser__; \
  dumpModels__option_t::type dumpModels; \
  bool dumpModels__setByUser__; \
  omitDontCares__option_t::type omitDontCares; \
  bool omitDontCares__setByUser__; \
  proof__option_t::type proof; \
  bool proof__setByUser__; \
  checkProofs__option_t::type checkProofs; \
  bool checkProofs__setByUser__; \
  dumpProofs__option_t::type dumpProofs; \
  bool dumpProofs__setByUser__; \
  dumpInstantiations__option_t::type dumpInstantiations; \
  bool dumpInstantiations__setByUser__; \
  dumpSynth__option_t::type dumpSynth; \
  bool dumpSynth__setByUser__; \
  unsatCores__option_t::type unsatCores; \
  bool unsatCores__setByUser__; \
  checkUnsatCores__option_t::type checkUnsatCores; \
  bool checkUnsatCores__setByUser__; \
  dumpUnsatCores__option_t::type dumpUnsatCores; \
  bool dumpUnsatCores__setByUser__; \
  dumpUnsatCoresFull__option_t::type dumpUnsatCoresFull; \
  bool dumpUnsatCoresFull__setByUser__; \
  produceAssignments__option_t::type produceAssignments; \
  bool produceAssignments__setByUser__; \
  interactiveMode__option_t::type interactiveMode; \
  bool interactiveMode__setByUser__; \
  produceAssertions__option_t::type produceAssertions; \
  bool produceAssertions__setByUser__; \
  doITESimp__option_t::type doITESimp; \
  bool doITESimp__setByUser__; \
  doITESimpOnRepeat__option_t::type doITESimpOnRepeat; \
  bool doITESimpOnRepeat__setByUser__; \
  simplifyWithCareEnabled__option_t::type simplifyWithCareEnabled; \
  bool simplifyWithCareEnabled__setByUser__; \
  compressItes__option_t::type compressItes; \
  bool compressItes__setByUser__; \
  unconstrainedSimp__option_t::type unconstrainedSimp; \
  bool unconstrainedSimp__setByUser__; \
  repeatSimp__option_t::type repeatSimp; \
  bool repeatSimp__setByUser__; \
  zombieHuntThreshold__option_t::type zombieHuntThreshold; \
  bool zombieHuntThreshold__setByUser__; \
  sortInference__option_t::type sortInference; \
  bool sortInference__setByUser__; \
  incrementalSolving__option_t::type incrementalSolving; \
  bool incrementalSolving__setByUser__; \
  abstractValues__option_t::type abstractValues; \
  bool abstractValues__setByUser__; \
  modelUninterpDtEnum__option_t::type modelUninterpDtEnum; \
  bool modelUninterpDtEnum__setByUser__; \
  regularChannelName__option_t::type regularChannelName; \
  bool regularChannelName__setByUser__; \
  diagnosticChannelName__option_t::type diagnosticChannelName; \
  bool diagnosticChannelName__setByUser__; \
  cumulativeMillisecondLimit__option_t::type cumulativeMillisecondLimit; \
  bool cumulativeMillisecondLimit__setByUser__; \
  perCallMillisecondLimit__option_t::type perCallMillisecondLimit; \
  bool perCallMillisecondLimit__setByUser__; \
  cumulativeResourceLimit__option_t::type cumulativeResourceLimit; \
  bool cumulativeResourceLimit__setByUser__; \
  perCallResourceLimit__option_t::type perCallResourceLimit; \
  bool perCallResourceLimit__setByUser__; \
  hardLimit__option_t::type hardLimit; \
  bool hardLimit__setByUser__; \
  cpuTime__option_t::type cpuTime; \
  bool cpuTime__setByUser__; \
  rewriteStep__option_t::type rewriteStep; \
  bool rewriteStep__setByUser__; \
  theoryCheckStep__option_t::type theoryCheckStep; \
  bool theoryCheckStep__setByUser__; \
  decisionStep__option_t::type decisionStep; \
  bool decisionStep__setByUser__; \
  bitblastStep__option_t::type bitblastStep; \
  bool bitblastStep__setByUser__; \
  parseStep__option_t::type parseStep; \
  bool parseStep__setByUser__; \
  lemmaStep__option_t::type lemmaStep; \
  bool lemmaStep__setByUser__; \
  restartStep__option_t::type restartStep; \
  bool restartStep__setByUser__; \
  cnfStep__option_t::type cnfStep; \
  bool cnfStep__setByUser__; \
  preprocessStep__option_t::type preprocessStep; \
  bool preprocessStep__setByUser__; \
  quantifierStep__option_t::type quantifierStep; \
  bool quantifierStep__setByUser__; \
  satConflictStep__option_t::type satConflictStep; \
  bool satConflictStep__setByUser__; \
  bvSatConflictStep__option_t::type bvSatConflictStep; \
  bool bvSatConflictStep__setByUser__; \
  rewriteApplyToConst__option_t::type rewriteApplyToConst; \
  bool rewriteApplyToConst__setByUser__; \
  replayInputFilename__option_t::type replayInputFilename; \
  bool replayInputFilename__setByUser__; \
  replayLogFilename__option_t::type replayLogFilename; \
  bool replayLogFilename__setByUser__; \
  forceNoLimitCpuWhileDump__option_t::type forceNoLimitCpuWhileDump; \
  bool forceNoLimitCpuWhileDump__setByUser__; \
  solveIntAsBV__option_t::type solveIntAsBV; \
  bool solveIntAsBV__setByUser__; \
  solveRealAsInt__option_t::type solveRealAsInt; \
  bool solveRealAsInt__setByUser__;

#line 30 "../../../src/options/base_options_template.h"

namespace CVC4 {

namespace options {


#line 8 "../../../src/options/smt_options"
extern struct CVC4_PUBLIC dumpModeString__option_t { typedef std::string type; type operator()() const; bool wasSetByUser() const; } dumpModeString CVC4_PUBLIC;
#line 10 "../../../src/options/smt_options"
extern struct CVC4_PUBLIC dumpToFileName__option_t { typedef std::string type; type operator()() const; bool wasSetByUser() const; } dumpToFileName CVC4_PUBLIC;
#line 13 "../../../src/options/smt_options"
extern struct CVC4_PUBLIC forceLogicString__option_t { typedef std::string type; type operator()() const; bool wasSetByUser() const; } forceLogicString CVC4_PUBLIC;
#line 16 "../../../src/options/smt_options"
extern struct CVC4_PUBLIC simplificationMode__option_t { typedef SimplificationMode type; type operator()() const; bool wasSetByUser() const; void set(const type& v); } simplificationMode CVC4_PUBLIC;
#line 21 "../../../src/options/smt_options"
extern struct CVC4_PUBLIC doStaticLearning__option_t { typedef bool type; type operator()() const; bool wasSetByUser() const; } doStaticLearning CVC4_PUBLIC;
#line 24 "../../../src/options/smt_options"
extern struct CVC4_PUBLIC expandDefinitions__option_t { typedef bool type; type operator()() const; bool wasSetByUser() const; } expandDefinitions CVC4_PUBLIC;
#line 26 "../../../src/options/smt_options"
extern struct CVC4_PUBLIC produceModels__option_t { typedef bool type; type operator()() const; bool wasSetByUser() const; } produceModels CVC4_PUBLIC;
#line 28 "../../../src/options/smt_options"
extern struct CVC4_PUBLIC checkModels__option_t { typedef bool type; type operator()() const; bool wasSetByUser() const; } checkModels CVC4_PUBLIC;
#line 30 "../../../src/options/smt_options"
extern struct CVC4_PUBLIC dumpModels__option_t { typedef bool type; type operator()() const; bool wasSetByUser() const; } dumpModels CVC4_PUBLIC;
#line 32 "../../../src/options/smt_options"
extern struct CVC4_PUBLIC omitDontCares__option_t { typedef bool type; type operator()() const; bool wasSetByUser() const; } omitDontCares CVC4_PUBLIC;
#line 34 "../../../src/options/smt_options"
extern struct CVC4_PUBLIC proof__option_t { typedef bool type; type operator()() const; bool wasSetByUser() const; } proof CVC4_PUBLIC;
#line 36 "../../../src/options/smt_options"
extern struct CVC4_PUBLIC checkProofs__option_t { typedef bool type; type operator()() const; bool wasSetByUser() const; void set(const type& v); } checkProofs CVC4_PUBLIC;
#line 38 "../../../src/options/smt_options"
extern struct CVC4_PUBLIC dumpProofs__option_t { typedef bool type; type operator()() const; bool wasSetByUser() const; } dumpProofs CVC4_PUBLIC;
#line 40 "../../../src/options/smt_options"
extern struct CVC4_PUBLIC dumpInstantiations__option_t { typedef bool type; type operator()() const; bool wasSetByUser() const; } dumpInstantiations CVC4_PUBLIC;
#line 42 "../../../src/options/smt_options"
extern struct CVC4_PUBLIC dumpSynth__option_t { typedef bool type; type operator()() const; bool wasSetByUser() const; void set(const type& v); } dumpSynth CVC4_PUBLIC;
#line 44 "../../../src/options/smt_options"
extern struct CVC4_PUBLIC unsatCores__option_t { typedef bool type; type operator()() const; bool wasSetByUser() const; } unsatCores CVC4_PUBLIC;
#line 46 "../../../src/options/smt_options"
extern struct CVC4_PUBLIC checkUnsatCores__option_t { typedef bool type; type operator()() const; bool wasSetByUser() const; void set(const type& v); } checkUnsatCores CVC4_PUBLIC;
#line 48 "../../../src/options/smt_options"
extern struct CVC4_PUBLIC dumpUnsatCores__option_t { typedef bool type; type operator()() const; bool wasSetByUser() const; } dumpUnsatCores CVC4_PUBLIC;
#line 50 "../../../src/options/smt_options"
extern struct CVC4_PUBLIC dumpUnsatCoresFull__option_t { typedef bool type; type operator()() const; bool wasSetByUser() const; } dumpUnsatCoresFull CVC4_PUBLIC;
#line 53 "../../../src/options/smt_options"
extern struct CVC4_PUBLIC produceAssignments__option_t { typedef bool type; type operator()() const; bool wasSetByUser() const; } produceAssignments CVC4_PUBLIC;
#line 56 "../../../src/options/smt_options"
extern struct CVC4_PUBLIC interactiveMode__option_t { typedef bool type; type operator()() const; bool wasSetByUser() const; void set(const type& v); } interactiveMode CVC4_PUBLIC;
#line 58 "../../../src/options/smt_options"
extern struct CVC4_PUBLIC produceAssertions__option_t { typedef bool type; type operator()() const; bool wasSetByUser() const; void set(const type& v); } produceAssertions CVC4_PUBLIC;
#line 61 "../../../src/options/smt_options"
extern struct CVC4_PUBLIC doITESimp__option_t { typedef bool type; type operator()() const; bool wasSetByUser() const; void set(const type& v); } doITESimp CVC4_PUBLIC;
#line 64 "../../../src/options/smt_options"
extern struct CVC4_PUBLIC doITESimpOnRepeat__option_t { typedef bool type; type operator()() const; bool wasSetByUser() const; void set(const type& v); } doITESimpOnRepeat CVC4_PUBLIC;
#line 67 "../../../src/options/smt_options"
extern struct CVC4_PUBLIC simplifyWithCareEnabled__option_t { typedef bool type; type operator()() const; bool wasSetByUser() const; void set(const type& v); } simplifyWithCareEnabled CVC4_PUBLIC;
#line 70 "../../../src/options/smt_options"
extern struct CVC4_PUBLIC compressItes__option_t { typedef bool type; type operator()() const; bool wasSetByUser() const; void set(const type& v); } compressItes CVC4_PUBLIC;
#line 73 "../../../src/options/smt_options"
extern struct CVC4_PUBLIC unconstrainedSimp__option_t { typedef bool type; type operator()() const; bool wasSetByUser() const; void set(const type& v); } unconstrainedSimp CVC4_PUBLIC;
#line 76 "../../../src/options/smt_options"
extern struct CVC4_PUBLIC repeatSimp__option_t { typedef bool type; type operator()() const; bool wasSetByUser() const; void set(const type& v); } repeatSimp CVC4_PUBLIC;
#line 79 "../../../src/options/smt_options"
extern struct CVC4_PUBLIC zombieHuntThreshold__option_t { typedef uint32_t type; type operator()() const; bool wasSetByUser() const; } zombieHuntThreshold CVC4_PUBLIC;
#line 82 "../../../src/options/smt_options"
extern struct CVC4_PUBLIC sortInference__option_t { typedef bool type; type operator()() const; bool wasSetByUser() const; void set(const type& v); } sortInference CVC4_PUBLIC;
#line 85 "../../../src/options/smt_options"
extern struct CVC4_PUBLIC incrementalSolving__option_t { typedef bool type; type operator()() const; bool wasSetByUser() const; } incrementalSolving CVC4_PUBLIC;
#line 88 "../../../src/options/smt_options"
extern struct CVC4_PUBLIC abstractValues__option_t { typedef bool type; type operator()() const; bool wasSetByUser() const; } abstractValues CVC4_PUBLIC;
#line 90 "../../../src/options/smt_options"
extern struct CVC4_PUBLIC modelUninterpDtEnum__option_t { typedef bool type; type operator()() const; bool wasSetByUser() const; } modelUninterpDtEnum CVC4_PUBLIC;
#line 93 "../../../src/options/smt_options"
extern struct CVC4_PUBLIC regularChannelName__option_t { typedef std::string type; type operator()() const; bool wasSetByUser() const; } regularChannelName CVC4_PUBLIC;
#line 95 "../../../src/options/smt_options"
extern struct CVC4_PUBLIC diagnosticChannelName__option_t { typedef std::string type; type operator()() const; bool wasSetByUser() const; } diagnosticChannelName CVC4_PUBLIC;
#line 98 "../../../src/options/smt_options"
extern struct CVC4_PUBLIC cumulativeMillisecondLimit__option_t { typedef unsigned long type; type operator()() const; bool wasSetByUser() const; } cumulativeMillisecondLimit CVC4_PUBLIC;
#line 100 "../../../src/options/smt_options"
extern struct CVC4_PUBLIC perCallMillisecondLimit__option_t { typedef unsigned long type; type operator()() const; bool wasSetByUser() const; } perCallMillisecondLimit CVC4_PUBLIC;
#line 102 "../../../src/options/smt_options"
extern struct CVC4_PUBLIC cumulativeResourceLimit__option_t { typedef unsigned long type; type operator()() const; bool wasSetByUser() const; } cumulativeResourceLimit CVC4_PUBLIC;
#line 104 "../../../src/options/smt_options"
extern struct CVC4_PUBLIC perCallResourceLimit__option_t { typedef unsigned long type; type operator()() const; bool wasSetByUser() const; } perCallResourceLimit CVC4_PUBLIC;
#line 106 "../../../src/options/smt_options"
extern struct CVC4_PUBLIC hardLimit__option_t { typedef bool type; type operator()() const; bool wasSetByUser() const; } hardLimit CVC4_PUBLIC;
#line 108 "../../../src/options/smt_options"
extern struct CVC4_PUBLIC cpuTime__option_t { typedef bool type; type operator()() const; bool wasSetByUser() const; } cpuTime CVC4_PUBLIC;
#line 112 "../../../src/options/smt_options"
extern struct CVC4_PUBLIC rewriteStep__option_t { typedef unsigned type; type operator()() const; bool wasSetByUser() const; } rewriteStep CVC4_PUBLIC;
#line 115 "../../../src/options/smt_options"
extern struct CVC4_PUBLIC theoryCheckStep__option_t { typedef unsigned type; type operator()() const; bool wasSetByUser() const; } theoryCheckStep CVC4_PUBLIC;
#line 118 "../../../src/options/smt_options"
extern struct CVC4_PUBLIC decisionStep__option_t { typedef unsigned type; type operator()() const; bool wasSetByUser() const; } decisionStep CVC4_PUBLIC;
#line 121 "../../../src/options/smt_options"
extern struct CVC4_PUBLIC bitblastStep__option_t { typedef unsigned type; type operator()() const; bool wasSetByUser() const; } bitblastStep CVC4_PUBLIC;
#line 124 "../../../src/options/smt_options"
extern struct CVC4_PUBLIC parseStep__option_t { typedef unsigned type; type operator()() const; bool wasSetByUser() const; } parseStep CVC4_PUBLIC;
#line 127 "../../../src/options/smt_options"
extern struct CVC4_PUBLIC lemmaStep__option_t { typedef unsigned type; type operator()() const; bool wasSetByUser() const; } lemmaStep CVC4_PUBLIC;
#line 130 "../../../src/options/smt_options"
extern struct CVC4_PUBLIC restartStep__option_t { typedef unsigned type; type operator()() const; bool wasSetByUser() const; } restartStep CVC4_PUBLIC;
#line 133 "../../../src/options/smt_options"
extern struct CVC4_PUBLIC cnfStep__option_t { typedef unsigned type; type operator()() const; bool wasSetByUser() const; } cnfStep CVC4_PUBLIC;
#line 136 "../../../src/options/smt_options"
extern struct CVC4_PUBLIC preprocessStep__option_t { typedef unsigned type; type operator()() const; bool wasSetByUser() const; } preprocessStep CVC4_PUBLIC;
#line 139 "../../../src/options/smt_options"
extern struct CVC4_PUBLIC quantifierStep__option_t { typedef unsigned type; type operator()() const; bool wasSetByUser() const; } quantifierStep CVC4_PUBLIC;
#line 142 "../../../src/options/smt_options"
extern struct CVC4_PUBLIC satConflictStep__option_t { typedef unsigned type; type operator()() const; bool wasSetByUser() const; } satConflictStep CVC4_PUBLIC;
#line 145 "../../../src/options/smt_options"
extern struct CVC4_PUBLIC bvSatConflictStep__option_t { typedef unsigned type; type operator()() const; bool wasSetByUser() const; } bvSatConflictStep CVC4_PUBLIC;
#line 149 "../../../src/options/smt_options"
extern struct CVC4_PUBLIC rewriteApplyToConst__option_t { typedef bool type; type operator()() const; bool wasSetByUser() const; } rewriteApplyToConst CVC4_PUBLIC;
#line 154 "../../../src/options/smt_options"
extern struct CVC4_PUBLIC replayInputFilename__option_t { typedef std::string type; type operator()() const; bool wasSetByUser() const; } replayInputFilename CVC4_PUBLIC;
#line 158 "../../../src/options/smt_options"
extern struct CVC4_PUBLIC replayLogFilename__option_t { typedef std::string type; type operator()() const; bool wasSetByUser() const; } replayLogFilename CVC4_PUBLIC;
#line 161 "../../../src/options/smt_options"
extern struct CVC4_PUBLIC forceNoLimitCpuWhileDump__option_t { typedef bool type; type operator()() const; bool wasSetByUser() const; } forceNoLimitCpuWhileDump CVC4_PUBLIC;
#line 164 "../../../src/options/smt_options"
extern struct CVC4_PUBLIC solveIntAsBV__option_t { typedef uint32_t type; type operator()() const; bool wasSetByUser() const; } solveIntAsBV CVC4_PUBLIC;
#line 167 "../../../src/options/smt_options"
extern struct CVC4_PUBLIC solveRealAsInt__option_t { typedef bool type; type operator()() const; bool wasSetByUser() const; } solveRealAsInt CVC4_PUBLIC;

#line 38 "../../../src/options/base_options_template.h"

}/* CVC4::options namespace */


#line 8 "../../../src/options/smt_options"
template <> const options::dumpModeString__option_t::type& Options::operator[](options::dumpModeString__option_t) const;
#line 8 "../../../src/options/smt_options"
template <> bool Options::wasSetByUser(options::dumpModeString__option_t) const;
#line 8 "../../../src/options/smt_options"
template <> void Options::assign(options::dumpModeString__option_t, std::string option, std::string value);
#line 10 "../../../src/options/smt_options"
template <> const options::dumpToFileName__option_t::type& Options::operator[](options::dumpToFileName__option_t) const;
#line 10 "../../../src/options/smt_options"
template <> bool Options::wasSetByUser(options::dumpToFileName__option_t) const;
#line 10 "../../../src/options/smt_options"
template <> void Options::assign(options::dumpToFileName__option_t, std::string option, std::string value);
#line 13 "../../../src/options/smt_options"
template <> const options::forceLogicString__option_t::type& Options::operator[](options::forceLogicString__option_t) const;
#line 13 "../../../src/options/smt_options"
template <> bool Options::wasSetByUser(options::forceLogicString__option_t) const;
#line 13 "../../../src/options/smt_options"
template <> void Options::assign(options::forceLogicString__option_t, std::string option, std::string value);
#line 16 "../../../src/options/smt_options"
template <> void Options::set(options::simplificationMode__option_t, const options::simplificationMode__option_t::type& x);
#line 16 "../../../src/options/smt_options"
template <> const options::simplificationMode__option_t::type& Options::operator[](options::simplificationMode__option_t) const;
#line 16 "../../../src/options/smt_options"
template <> bool Options::wasSetByUser(options::simplificationMode__option_t) const;
#line 16 "../../../src/options/smt_options"
template <> void Options::assign(options::simplificationMode__option_t, std::string option, std::string value);
#line 21 "../../../src/options/smt_options"
template <> const options::doStaticLearning__option_t::type& Options::operator[](options::doStaticLearning__option_t) const;
#line 21 "../../../src/options/smt_options"
template <> bool Options::wasSetByUser(options::doStaticLearning__option_t) const;
#line 21 "../../../src/options/smt_options"
template <> void Options::assignBool(options::doStaticLearning__option_t, std::string option, bool value);
#line 24 "../../../src/options/smt_options"
template <> const options::expandDefinitions__option_t::type& Options::operator[](options::expandDefinitions__option_t) const;
#line 24 "../../../src/options/smt_options"
template <> bool Options::wasSetByUser(options::expandDefinitions__option_t) const;
#line 24 "../../../src/options/smt_options"
template <> void Options::assignBool(options::expandDefinitions__option_t, std::string option, bool value);
#line 26 "../../../src/options/smt_options"
template <> const options::produceModels__option_t::type& Options::operator[](options::produceModels__option_t) const;
#line 26 "../../../src/options/smt_options"
template <> bool Options::wasSetByUser(options::produceModels__option_t) const;
#line 26 "../../../src/options/smt_options"
template <> void Options::assignBool(options::produceModels__option_t, std::string option, bool value);
#line 28 "../../../src/options/smt_options"
template <> const options::checkModels__option_t::type& Options::operator[](options::checkModels__option_t) const;
#line 28 "../../../src/options/smt_options"
template <> bool Options::wasSetByUser(options::checkModels__option_t) const;
#line 28 "../../../src/options/smt_options"
template <> void Options::assignBool(options::checkModels__option_t, std::string option, bool value);
#line 30 "../../../src/options/smt_options"
template <> const options::dumpModels__option_t::type& Options::operator[](options::dumpModels__option_t) const;
#line 30 "../../../src/options/smt_options"
template <> bool Options::wasSetByUser(options::dumpModels__option_t) const;
#line 30 "../../../src/options/smt_options"
template <> void Options::assignBool(options::dumpModels__option_t, std::string option, bool value);
#line 32 "../../../src/options/smt_options"
template <> const options::omitDontCares__option_t::type& Options::operator[](options::omitDontCares__option_t) const;
#line 32 "../../../src/options/smt_options"
template <> bool Options::wasSetByUser(options::omitDontCares__option_t) const;
#line 32 "../../../src/options/smt_options"
template <> void Options::assignBool(options::omitDontCares__option_t, std::string option, bool value);
#line 34 "../../../src/options/smt_options"
template <> const options::proof__option_t::type& Options::operator[](options::proof__option_t) const;
#line 34 "../../../src/options/smt_options"
template <> bool Options::wasSetByUser(options::proof__option_t) const;
#line 34 "../../../src/options/smt_options"
template <> void Options::assignBool(options::proof__option_t, std::string option, bool value);
#line 36 "../../../src/options/smt_options"
template <> void Options::set(options::checkProofs__option_t, const options::checkProofs__option_t::type& x);
#line 36 "../../../src/options/smt_options"
template <> const options::checkProofs__option_t::type& Options::operator[](options::checkProofs__option_t) const;
#line 36 "../../../src/options/smt_options"
template <> bool Options::wasSetByUser(options::checkProofs__option_t) const;
#line 36 "../../../src/options/smt_options"
template <> void Options::assignBool(options::checkProofs__option_t, std::string option, bool value);
#line 38 "../../../src/options/smt_options"
template <> const options::dumpProofs__option_t::type& Options::operator[](options::dumpProofs__option_t) const;
#line 38 "../../../src/options/smt_options"
template <> bool Options::wasSetByUser(options::dumpProofs__option_t) const;
#line 38 "../../../src/options/smt_options"
template <> void Options::assignBool(options::dumpProofs__option_t, std::string option, bool value);
#line 40 "../../../src/options/smt_options"
template <> const options::dumpInstantiations__option_t::type& Options::operator[](options::dumpInstantiations__option_t) const;
#line 40 "../../../src/options/smt_options"
template <> bool Options::wasSetByUser(options::dumpInstantiations__option_t) const;
#line 40 "../../../src/options/smt_options"
template <> void Options::assignBool(options::dumpInstantiations__option_t, std::string option, bool value);
#line 42 "../../../src/options/smt_options"
template <> void Options::set(options::dumpSynth__option_t, const options::dumpSynth__option_t::type& x);
#line 42 "../../../src/options/smt_options"
template <> const options::dumpSynth__option_t::type& Options::operator[](options::dumpSynth__option_t) const;
#line 42 "../../../src/options/smt_options"
template <> bool Options::wasSetByUser(options::dumpSynth__option_t) const;
#line 42 "../../../src/options/smt_options"
template <> void Options::assignBool(options::dumpSynth__option_t, std::string option, bool value);
#line 44 "../../../src/options/smt_options"
template <> const options::unsatCores__option_t::type& Options::operator[](options::unsatCores__option_t) const;
#line 44 "../../../src/options/smt_options"
template <> bool Options::wasSetByUser(options::unsatCores__option_t) const;
#line 44 "../../../src/options/smt_options"
template <> void Options::assignBool(options::unsatCores__option_t, std::string option, bool value);
#line 46 "../../../src/options/smt_options"
template <> void Options::set(options::checkUnsatCores__option_t, const options::checkUnsatCores__option_t::type& x);
#line 46 "../../../src/options/smt_options"
template <> const options::checkUnsatCores__option_t::type& Options::operator[](options::checkUnsatCores__option_t) const;
#line 46 "../../../src/options/smt_options"
template <> bool Options::wasSetByUser(options::checkUnsatCores__option_t) const;
#line 46 "../../../src/options/smt_options"
template <> void Options::assignBool(options::checkUnsatCores__option_t, std::string option, bool value);
#line 48 "../../../src/options/smt_options"
template <> const options::dumpUnsatCores__option_t::type& Options::operator[](options::dumpUnsatCores__option_t) const;
#line 48 "../../../src/options/smt_options"
template <> bool Options::wasSetByUser(options::dumpUnsatCores__option_t) const;
#line 48 "../../../src/options/smt_options"
template <> void Options::assignBool(options::dumpUnsatCores__option_t, std::string option, bool value);
#line 50 "../../../src/options/smt_options"
template <> const options::dumpUnsatCoresFull__option_t::type& Options::operator[](options::dumpUnsatCoresFull__option_t) const;
#line 50 "../../../src/options/smt_options"
template <> bool Options::wasSetByUser(options::dumpUnsatCoresFull__option_t) const;
#line 50 "../../../src/options/smt_options"
template <> void Options::assignBool(options::dumpUnsatCoresFull__option_t, std::string option, bool value);
#line 53 "../../../src/options/smt_options"
template <> const options::produceAssignments__option_t::type& Options::operator[](options::produceAssignments__option_t) const;
#line 53 "../../../src/options/smt_options"
template <> bool Options::wasSetByUser(options::produceAssignments__option_t) const;
#line 53 "../../../src/options/smt_options"
template <> void Options::assignBool(options::produceAssignments__option_t, std::string option, bool value);
#line 56 "../../../src/options/smt_options"
template <> void Options::set(options::interactiveMode__option_t, const options::interactiveMode__option_t::type& x);
#line 56 "../../../src/options/smt_options"
template <> const options::interactiveMode__option_t::type& Options::operator[](options::interactiveMode__option_t) const;
#line 56 "../../../src/options/smt_options"
template <> bool Options::wasSetByUser(options::interactiveMode__option_t) const;
#line 56 "../../../src/options/smt_options"
template <> void Options::assignBool(options::interactiveMode__option_t, std::string option, bool value);
#line 58 "../../../src/options/smt_options"
template <> void Options::set(options::produceAssertions__option_t, const options::produceAssertions__option_t::type& x);
#line 58 "../../../src/options/smt_options"
template <> const options::produceAssertions__option_t::type& Options::operator[](options::produceAssertions__option_t) const;
#line 58 "../../../src/options/smt_options"
template <> bool Options::wasSetByUser(options::produceAssertions__option_t) const;
#line 58 "../../../src/options/smt_options"
template <> void Options::assignBool(options::produceAssertions__option_t, std::string option, bool value);
#line 61 "../../../src/options/smt_options"
template <> void Options::set(options::doITESimp__option_t, const options::doITESimp__option_t::type& x);
#line 61 "../../../src/options/smt_options"
template <> const options::doITESimp__option_t::type& Options::operator[](options::doITESimp__option_t) const;
#line 61 "../../../src/options/smt_options"
template <> bool Options::wasSetByUser(options::doITESimp__option_t) const;
#line 61 "../../../src/options/smt_options"
template <> void Options::assignBool(options::doITESimp__option_t, std::string option, bool value);
#line 64 "../../../src/options/smt_options"
template <> void Options::set(options::doITESimpOnRepeat__option_t, const options::doITESimpOnRepeat__option_t::type& x);
#line 64 "../../../src/options/smt_options"
template <> const options::doITESimpOnRepeat__option_t::type& Options::operator[](options::doITESimpOnRepeat__option_t) const;
#line 64 "../../../src/options/smt_options"
template <> bool Options::wasSetByUser(options::doITESimpOnRepeat__option_t) const;
#line 64 "../../../src/options/smt_options"
template <> void Options::assignBool(options::doITESimpOnRepeat__option_t, std::string option, bool value);
#line 67 "../../../src/options/smt_options"
template <> void Options::set(options::simplifyWithCareEnabled__option_t, const options::simplifyWithCareEnabled__option_t::type& x);
#line 67 "../../../src/options/smt_options"
template <> const options::simplifyWithCareEnabled__option_t::type& Options::operator[](options::simplifyWithCareEnabled__option_t) const;
#line 67 "../../../src/options/smt_options"
template <> bool Options::wasSetByUser(options::simplifyWithCareEnabled__option_t) const;
#line 67 "../../../src/options/smt_options"
template <> void Options::assignBool(options::simplifyWithCareEnabled__option_t, std::string option, bool value);
#line 70 "../../../src/options/smt_options"
template <> void Options::set(options::compressItes__option_t, const options::compressItes__option_t::type& x);
#line 70 "../../../src/options/smt_options"
template <> const options::compressItes__option_t::type& Options::operator[](options::compressItes__option_t) const;
#line 70 "../../../src/options/smt_options"
template <> bool Options::wasSetByUser(options::compressItes__option_t) const;
#line 70 "../../../src/options/smt_options"
template <> void Options::assignBool(options::compressItes__option_t, std::string option, bool value);
#line 73 "../../../src/options/smt_options"
template <> void Options::set(options::unconstrainedSimp__option_t, const options::unconstrainedSimp__option_t::type& x);
#line 73 "../../../src/options/smt_options"
template <> const options::unconstrainedSimp__option_t::type& Options::operator[](options::unconstrainedSimp__option_t) const;
#line 73 "../../../src/options/smt_options"
template <> bool Options::wasSetByUser(options::unconstrainedSimp__option_t) const;
#line 73 "../../../src/options/smt_options"
template <> void Options::assignBool(options::unconstrainedSimp__option_t, std::string option, bool value);
#line 76 "../../../src/options/smt_options"
template <> void Options::set(options::repeatSimp__option_t, const options::repeatSimp__option_t::type& x);
#line 76 "../../../src/options/smt_options"
template <> const options::repeatSimp__option_t::type& Options::operator[](options::repeatSimp__option_t) const;
#line 76 "../../../src/options/smt_options"
template <> bool Options::wasSetByUser(options::repeatSimp__option_t) const;
#line 76 "../../../src/options/smt_options"
template <> void Options::assignBool(options::repeatSimp__option_t, std::string option, bool value);
#line 79 "../../../src/options/smt_options"
template <> const options::zombieHuntThreshold__option_t::type& Options::operator[](options::zombieHuntThreshold__option_t) const;
#line 79 "../../../src/options/smt_options"
template <> bool Options::wasSetByUser(options::zombieHuntThreshold__option_t) const;
#line 79 "../../../src/options/smt_options"
template <> void Options::assign(options::zombieHuntThreshold__option_t, std::string option, std::string value);
#line 82 "../../../src/options/smt_options"
template <> void Options::set(options::sortInference__option_t, const options::sortInference__option_t::type& x);
#line 82 "../../../src/options/smt_options"
template <> const options::sortInference__option_t::type& Options::operator[](options::sortInference__option_t) const;
#line 82 "../../../src/options/smt_options"
template <> bool Options::wasSetByUser(options::sortInference__option_t) const;
#line 82 "../../../src/options/smt_options"
template <> void Options::assignBool(options::sortInference__option_t, std::string option, bool value);
#line 85 "../../../src/options/smt_options"
template <> const options::incrementalSolving__option_t::type& Options::operator[](options::incrementalSolving__option_t) const;
#line 85 "../../../src/options/smt_options"
template <> bool Options::wasSetByUser(options::incrementalSolving__option_t) const;
#line 85 "../../../src/options/smt_options"
template <> void Options::assignBool(options::incrementalSolving__option_t, std::string option, bool value);
#line 88 "../../../src/options/smt_options"
template <> const options::abstractValues__option_t::type& Options::operator[](options::abstractValues__option_t) const;
#line 88 "../../../src/options/smt_options"
template <> bool Options::wasSetByUser(options::abstractValues__option_t) const;
#line 88 "../../../src/options/smt_options"
template <> void Options::assignBool(options::abstractValues__option_t, std::string option, bool value);
#line 90 "../../../src/options/smt_options"
template <> const options::modelUninterpDtEnum__option_t::type& Options::operator[](options::modelUninterpDtEnum__option_t) const;
#line 90 "../../../src/options/smt_options"
template <> bool Options::wasSetByUser(options::modelUninterpDtEnum__option_t) const;
#line 90 "../../../src/options/smt_options"
template <> void Options::assignBool(options::modelUninterpDtEnum__option_t, std::string option, bool value);
#line 93 "../../../src/options/smt_options"
template <> const options::regularChannelName__option_t::type& Options::operator[](options::regularChannelName__option_t) const;
#line 93 "../../../src/options/smt_options"
template <> bool Options::wasSetByUser(options::regularChannelName__option_t) const;
#line 93 "../../../src/options/smt_options"
template <> void Options::assign(options::regularChannelName__option_t, std::string option, std::string value);
#line 95 "../../../src/options/smt_options"
template <> const options::diagnosticChannelName__option_t::type& Options::operator[](options::diagnosticChannelName__option_t) const;
#line 95 "../../../src/options/smt_options"
template <> bool Options::wasSetByUser(options::diagnosticChannelName__option_t) const;
#line 95 "../../../src/options/smt_options"
template <> void Options::assign(options::diagnosticChannelName__option_t, std::string option, std::string value);
#line 98 "../../../src/options/smt_options"
template <> const options::cumulativeMillisecondLimit__option_t::type& Options::operator[](options::cumulativeMillisecondLimit__option_t) const;
#line 98 "../../../src/options/smt_options"
template <> bool Options::wasSetByUser(options::cumulativeMillisecondLimit__option_t) const;
#line 98 "../../../src/options/smt_options"
template <> void Options::assign(options::cumulativeMillisecondLimit__option_t, std::string option, std::string value);
#line 100 "../../../src/options/smt_options"
template <> const options::perCallMillisecondLimit__option_t::type& Options::operator[](options::perCallMillisecondLimit__option_t) const;
#line 100 "../../../src/options/smt_options"
template <> bool Options::wasSetByUser(options::perCallMillisecondLimit__option_t) const;
#line 100 "../../../src/options/smt_options"
template <> void Options::assign(options::perCallMillisecondLimit__option_t, std::string option, std::string value);
#line 102 "../../../src/options/smt_options"
template <> const options::cumulativeResourceLimit__option_t::type& Options::operator[](options::cumulativeResourceLimit__option_t) const;
#line 102 "../../../src/options/smt_options"
template <> bool Options::wasSetByUser(options::cumulativeResourceLimit__option_t) const;
#line 102 "../../../src/options/smt_options"
template <> void Options::assign(options::cumulativeResourceLimit__option_t, std::string option, std::string value);
#line 104 "../../../src/options/smt_options"
template <> const options::perCallResourceLimit__option_t::type& Options::operator[](options::perCallResourceLimit__option_t) const;
#line 104 "../../../src/options/smt_options"
template <> bool Options::wasSetByUser(options::perCallResourceLimit__option_t) const;
#line 104 "../../../src/options/smt_options"
template <> void Options::assign(options::perCallResourceLimit__option_t, std::string option, std::string value);
#line 106 "../../../src/options/smt_options"
template <> const options::hardLimit__option_t::type& Options::operator[](options::hardLimit__option_t) const;
#line 106 "../../../src/options/smt_options"
template <> bool Options::wasSetByUser(options::hardLimit__option_t) const;
#line 106 "../../../src/options/smt_options"
template <> void Options::assignBool(options::hardLimit__option_t, std::string option, bool value);
#line 108 "../../../src/options/smt_options"
template <> const options::cpuTime__option_t::type& Options::operator[](options::cpuTime__option_t) const;
#line 108 "../../../src/options/smt_options"
template <> bool Options::wasSetByUser(options::cpuTime__option_t) const;
#line 108 "../../../src/options/smt_options"
template <> void Options::assignBool(options::cpuTime__option_t, std::string option, bool value);
#line 112 "../../../src/options/smt_options"
template <> const options::rewriteStep__option_t::type& Options::operator[](options::rewriteStep__option_t) const;
#line 112 "../../../src/options/smt_options"
template <> bool Options::wasSetByUser(options::rewriteStep__option_t) const;
#line 112 "../../../src/options/smt_options"
template <> void Options::assign(options::rewriteStep__option_t, std::string option, std::string value);
#line 115 "../../../src/options/smt_options"
template <> const options::theoryCheckStep__option_t::type& Options::operator[](options::theoryCheckStep__option_t) const;
#line 115 "../../../src/options/smt_options"
template <> bool Options::wasSetByUser(options::theoryCheckStep__option_t) const;
#line 115 "../../../src/options/smt_options"
template <> void Options::assign(options::theoryCheckStep__option_t, std::string option, std::string value);
#line 118 "../../../src/options/smt_options"
template <> const options::decisionStep__option_t::type& Options::operator[](options::decisionStep__option_t) const;
#line 118 "../../../src/options/smt_options"
template <> bool Options::wasSetByUser(options::decisionStep__option_t) const;
#line 118 "../../../src/options/smt_options"
template <> void Options::assign(options::decisionStep__option_t, std::string option, std::string value);
#line 121 "../../../src/options/smt_options"
template <> const options::bitblastStep__option_t::type& Options::operator[](options::bitblastStep__option_t) const;
#line 121 "../../../src/options/smt_options"
template <> bool Options::wasSetByUser(options::bitblastStep__option_t) const;
#line 121 "../../../src/options/smt_options"
template <> void Options::assign(options::bitblastStep__option_t, std::string option, std::string value);
#line 124 "../../../src/options/smt_options"
template <> const options::parseStep__option_t::type& Options::operator[](options::parseStep__option_t) const;
#line 124 "../../../src/options/smt_options"
template <> bool Options::wasSetByUser(options::parseStep__option_t) const;
#line 124 "../../../src/options/smt_options"
template <> void Options::assign(options::parseStep__option_t, std::string option, std::string value);
#line 127 "../../../src/options/smt_options"
template <> const options::lemmaStep__option_t::type& Options::operator[](options::lemmaStep__option_t) const;
#line 127 "../../../src/options/smt_options"
template <> bool Options::wasSetByUser(options::lemmaStep__option_t) const;
#line 127 "../../../src/options/smt_options"
template <> void Options::assign(options::lemmaStep__option_t, std::string option, std::string value);
#line 130 "../../../src/options/smt_options"
template <> const options::restartStep__option_t::type& Options::operator[](options::restartStep__option_t) const;
#line 130 "../../../src/options/smt_options"
template <> bool Options::wasSetByUser(options::restartStep__option_t) const;
#line 130 "../../../src/options/smt_options"
template <> void Options::assign(options::restartStep__option_t, std::string option, std::string value);
#line 133 "../../../src/options/smt_options"
template <> const options::cnfStep__option_t::type& Options::operator[](options::cnfStep__option_t) const;
#line 133 "../../../src/options/smt_options"
template <> bool Options::wasSetByUser(options::cnfStep__option_t) const;
#line 133 "../../../src/options/smt_options"
template <> void Options::assign(options::cnfStep__option_t, std::string option, std::string value);
#line 136 "../../../src/options/smt_options"
template <> const options::preprocessStep__option_t::type& Options::operator[](options::preprocessStep__option_t) const;
#line 136 "../../../src/options/smt_options"
template <> bool Options::wasSetByUser(options::preprocessStep__option_t) const;
#line 136 "../../../src/options/smt_options"
template <> void Options::assign(options::preprocessStep__option_t, std::string option, std::string value);
#line 139 "../../../src/options/smt_options"
template <> const options::quantifierStep__option_t::type& Options::operator[](options::quantifierStep__option_t) const;
#line 139 "../../../src/options/smt_options"
template <> bool Options::wasSetByUser(options::quantifierStep__option_t) const;
#line 139 "../../../src/options/smt_options"
template <> void Options::assign(options::quantifierStep__option_t, std::string option, std::string value);
#line 142 "../../../src/options/smt_options"
template <> const options::satConflictStep__option_t::type& Options::operator[](options::satConflictStep__option_t) const;
#line 142 "../../../src/options/smt_options"
template <> bool Options::wasSetByUser(options::satConflictStep__option_t) const;
#line 142 "../../../src/options/smt_options"
template <> void Options::assign(options::satConflictStep__option_t, std::string option, std::string value);
#line 145 "../../../src/options/smt_options"
template <> const options::bvSatConflictStep__option_t::type& Options::operator[](options::bvSatConflictStep__option_t) const;
#line 145 "../../../src/options/smt_options"
template <> bool Options::wasSetByUser(options::bvSatConflictStep__option_t) const;
#line 145 "../../../src/options/smt_options"
template <> void Options::assign(options::bvSatConflictStep__option_t, std::string option, std::string value);
#line 149 "../../../src/options/smt_options"
template <> const options::rewriteApplyToConst__option_t::type& Options::operator[](options::rewriteApplyToConst__option_t) const;
#line 149 "../../../src/options/smt_options"
template <> bool Options::wasSetByUser(options::rewriteApplyToConst__option_t) const;
#line 149 "../../../src/options/smt_options"
template <> void Options::assignBool(options::rewriteApplyToConst__option_t, std::string option, bool value);
#line 154 "../../../src/options/smt_options"
template <> const options::replayInputFilename__option_t::type& Options::operator[](options::replayInputFilename__option_t) const;
#line 154 "../../../src/options/smt_options"
template <> bool Options::wasSetByUser(options::replayInputFilename__option_t) const;
#line 154 "../../../src/options/smt_options"
template <> void Options::assign(options::replayInputFilename__option_t, std::string option, std::string value);
#line 158 "../../../src/options/smt_options"
template <> const options::replayLogFilename__option_t::type& Options::operator[](options::replayLogFilename__option_t) const;
#line 158 "../../../src/options/smt_options"
template <> bool Options::wasSetByUser(options::replayLogFilename__option_t) const;
#line 158 "../../../src/options/smt_options"
template <> void Options::assign(options::replayLogFilename__option_t, std::string option, std::string value);
#line 161 "../../../src/options/smt_options"
template <> const options::forceNoLimitCpuWhileDump__option_t::type& Options::operator[](options::forceNoLimitCpuWhileDump__option_t) const;
#line 161 "../../../src/options/smt_options"
template <> bool Options::wasSetByUser(options::forceNoLimitCpuWhileDump__option_t) const;
#line 161 "../../../src/options/smt_options"
template <> void Options::assignBool(options::forceNoLimitCpuWhileDump__option_t, std::string option, bool value);
#line 164 "../../../src/options/smt_options"
template <> const options::solveIntAsBV__option_t::type& Options::operator[](options::solveIntAsBV__option_t) const;
#line 164 "../../../src/options/smt_options"
template <> bool Options::wasSetByUser(options::solveIntAsBV__option_t) const;
#line 164 "../../../src/options/smt_options"
template <> void Options::assign(options::solveIntAsBV__option_t, std::string option, std::string value);
#line 167 "../../../src/options/smt_options"
template <> const options::solveRealAsInt__option_t::type& Options::operator[](options::solveRealAsInt__option_t) const;
#line 167 "../../../src/options/smt_options"
template <> bool Options::wasSetByUser(options::solveRealAsInt__option_t) const;
#line 167 "../../../src/options/smt_options"
template <> void Options::assignBool(options::solveRealAsInt__option_t, std::string option, bool value);

#line 44 "../../../src/options/base_options_template.h"

namespace options {


#line 8 "../../../src/options/smt_options"
inline dumpModeString__option_t::type dumpModeString__option_t::operator()() const { return (*Options::current())[*this]; }
#line 8 "../../../src/options/smt_options"
inline bool dumpModeString__option_t::wasSetByUser() const { return Options::current()->wasSetByUser(*this); }

#line 10 "../../../src/options/smt_options"
inline dumpToFileName__option_t::type dumpToFileName__option_t::operator()() const { return (*Options::current())[*this]; }
#line 10 "../../../src/options/smt_options"
inline bool dumpToFileName__option_t::wasSetByUser() const { return Options::current()->wasSetByUser(*this); }

#line 13 "../../../src/options/smt_options"
inline forceLogicString__option_t::type forceLogicString__option_t::operator()() const { return (*Options::current())[*this]; }
#line 13 "../../../src/options/smt_options"
inline bool forceLogicString__option_t::wasSetByUser() const { return Options::current()->wasSetByUser(*this); }

#line 16 "../../../src/options/smt_options"
inline simplificationMode__option_t::type simplificationMode__option_t::operator()() const { return (*Options::current())[*this]; }
#line 16 "../../../src/options/smt_options"
inline bool simplificationMode__option_t::wasSetByUser() const { return Options::current()->wasSetByUser(*this); }
#line 16 "../../../src/options/smt_options"
inline void simplificationMode__option_t::set(const simplificationMode__option_t::type& v) { Options::current()->set(*this, v); }

#line 21 "../../../src/options/smt_options"
inline doStaticLearning__option_t::type doStaticLearning__option_t::operator()() const { return (*Options::current())[*this]; }
#line 21 "../../../src/options/smt_options"
inline bool doStaticLearning__option_t::wasSetByUser() const { return Options::current()->wasSetByUser(*this); }

#line 24 "../../../src/options/smt_options"
inline expandDefinitions__option_t::type expandDefinitions__option_t::operator()() const { return (*Options::current())[*this]; }
#line 24 "../../../src/options/smt_options"
inline bool expandDefinitions__option_t::wasSetByUser() const { return Options::current()->wasSetByUser(*this); }

#line 26 "../../../src/options/smt_options"
inline produceModels__option_t::type produceModels__option_t::operator()() const { return (*Options::current())[*this]; }
#line 26 "../../../src/options/smt_options"
inline bool produceModels__option_t::wasSetByUser() const { return Options::current()->wasSetByUser(*this); }

#line 28 "../../../src/options/smt_options"
inline checkModels__option_t::type checkModels__option_t::operator()() const { return (*Options::current())[*this]; }
#line 28 "../../../src/options/smt_options"
inline bool checkModels__option_t::wasSetByUser() const { return Options::current()->wasSetByUser(*this); }

#line 30 "../../../src/options/smt_options"
inline dumpModels__option_t::type dumpModels__option_t::operator()() const { return (*Options::current())[*this]; }
#line 30 "../../../src/options/smt_options"
inline bool dumpModels__option_t::wasSetByUser() const { return Options::current()->wasSetByUser(*this); }

#line 32 "../../../src/options/smt_options"
inline omitDontCares__option_t::type omitDontCares__option_t::operator()() const { return (*Options::current())[*this]; }
#line 32 "../../../src/options/smt_options"
inline bool omitDontCares__option_t::wasSetByUser() const { return Options::current()->wasSetByUser(*this); }

#line 34 "../../../src/options/smt_options"
inline proof__option_t::type proof__option_t::operator()() const { return (*Options::current())[*this]; }
#line 34 "../../../src/options/smt_options"
inline bool proof__option_t::wasSetByUser() const { return Options::current()->wasSetByUser(*this); }

#line 36 "../../../src/options/smt_options"
inline checkProofs__option_t::type checkProofs__option_t::operator()() const { return (*Options::current())[*this]; }
#line 36 "../../../src/options/smt_options"
inline bool checkProofs__option_t::wasSetByUser() const { return Options::current()->wasSetByUser(*this); }
#line 36 "../../../src/options/smt_options"
inline void checkProofs__option_t::set(const checkProofs__option_t::type& v) { Options::current()->set(*this, v); }

#line 38 "../../../src/options/smt_options"
inline dumpProofs__option_t::type dumpProofs__option_t::operator()() const { return (*Options::current())[*this]; }
#line 38 "../../../src/options/smt_options"
inline bool dumpProofs__option_t::wasSetByUser() const { return Options::current()->wasSetByUser(*this); }

#line 40 "../../../src/options/smt_options"
inline dumpInstantiations__option_t::type dumpInstantiations__option_t::operator()() const { return (*Options::current())[*this]; }
#line 40 "../../../src/options/smt_options"
inline bool dumpInstantiations__option_t::wasSetByUser() const { return Options::current()->wasSetByUser(*this); }

#line 42 "../../../src/options/smt_options"
inline dumpSynth__option_t::type dumpSynth__option_t::operator()() const { return (*Options::current())[*this]; }
#line 42 "../../../src/options/smt_options"
inline bool dumpSynth__option_t::wasSetByUser() const { return Options::current()->wasSetByUser(*this); }
#line 42 "../../../src/options/smt_options"
inline void dumpSynth__option_t::set(const dumpSynth__option_t::type& v) { Options::current()->set(*this, v); }

#line 44 "../../../src/options/smt_options"
inline unsatCores__option_t::type unsatCores__option_t::operator()() const { return (*Options::current())[*this]; }
#line 44 "../../../src/options/smt_options"
inline bool unsatCores__option_t::wasSetByUser() const { return Options::current()->wasSetByUser(*this); }

#line 46 "../../../src/options/smt_options"
inline checkUnsatCores__option_t::type checkUnsatCores__option_t::operator()() const { return (*Options::current())[*this]; }
#line 46 "../../../src/options/smt_options"
inline bool checkUnsatCores__option_t::wasSetByUser() const { return Options::current()->wasSetByUser(*this); }
#line 46 "../../../src/options/smt_options"
inline void checkUnsatCores__option_t::set(const checkUnsatCores__option_t::type& v) { Options::current()->set(*this, v); }

#line 48 "../../../src/options/smt_options"
inline dumpUnsatCores__option_t::type dumpUnsatCores__option_t::operator()() const { return (*Options::current())[*this]; }
#line 48 "../../../src/options/smt_options"
inline bool dumpUnsatCores__option_t::wasSetByUser() const { return Options::current()->wasSetByUser(*this); }

#line 50 "../../../src/options/smt_options"
inline dumpUnsatCoresFull__option_t::type dumpUnsatCoresFull__option_t::operator()() const { return (*Options::current())[*this]; }
#line 50 "../../../src/options/smt_options"
inline bool dumpUnsatCoresFull__option_t::wasSetByUser() const { return Options::current()->wasSetByUser(*this); }

#line 53 "../../../src/options/smt_options"
inline produceAssignments__option_t::type produceAssignments__option_t::operator()() const { return (*Options::current())[*this]; }
#line 53 "../../../src/options/smt_options"
inline bool produceAssignments__option_t::wasSetByUser() const { return Options::current()->wasSetByUser(*this); }

#line 56 "../../../src/options/smt_options"
inline interactiveMode__option_t::type interactiveMode__option_t::operator()() const { return (*Options::current())[*this]; }
#line 56 "../../../src/options/smt_options"
inline bool interactiveMode__option_t::wasSetByUser() const { return Options::current()->wasSetByUser(*this); }
#line 56 "../../../src/options/smt_options"
inline void interactiveMode__option_t::set(const interactiveMode__option_t::type& v) { Options::current()->set(*this, v); }

#line 58 "../../../src/options/smt_options"
inline produceAssertions__option_t::type produceAssertions__option_t::operator()() const { return (*Options::current())[*this]; }
#line 58 "../../../src/options/smt_options"
inline bool produceAssertions__option_t::wasSetByUser() const { return Options::current()->wasSetByUser(*this); }
#line 58 "../../../src/options/smt_options"
inline void produceAssertions__option_t::set(const produceAssertions__option_t::type& v) { Options::current()->set(*this, v); }

#line 61 "../../../src/options/smt_options"
inline doITESimp__option_t::type doITESimp__option_t::operator()() const { return (*Options::current())[*this]; }
#line 61 "../../../src/options/smt_options"
inline bool doITESimp__option_t::wasSetByUser() const { return Options::current()->wasSetByUser(*this); }
#line 61 "../../../src/options/smt_options"
inline void doITESimp__option_t::set(const doITESimp__option_t::type& v) { Options::current()->set(*this, v); }

#line 64 "../../../src/options/smt_options"
inline doITESimpOnRepeat__option_t::type doITESimpOnRepeat__option_t::operator()() const { return (*Options::current())[*this]; }
#line 64 "../../../src/options/smt_options"
inline bool doITESimpOnRepeat__option_t::wasSetByUser() const { return Options::current()->wasSetByUser(*this); }
#line 64 "../../../src/options/smt_options"
inline void doITESimpOnRepeat__option_t::set(const doITESimpOnRepeat__option_t::type& v) { Options::current()->set(*this, v); }

#line 67 "../../../src/options/smt_options"
inline simplifyWithCareEnabled__option_t::type simplifyWithCareEnabled__option_t::operator()() const { return (*Options::current())[*this]; }
#line 67 "../../../src/options/smt_options"
inline bool simplifyWithCareEnabled__option_t::wasSetByUser() const { return Options::current()->wasSetByUser(*this); }
#line 67 "../../../src/options/smt_options"
inline void simplifyWithCareEnabled__option_t::set(const simplifyWithCareEnabled__option_t::type& v) { Options::current()->set(*this, v); }

#line 70 "../../../src/options/smt_options"
inline compressItes__option_t::type compressItes__option_t::operator()() const { return (*Options::current())[*this]; }
#line 70 "../../../src/options/smt_options"
inline bool compressItes__option_t::wasSetByUser() const { return Options::current()->wasSetByUser(*this); }
#line 70 "../../../src/options/smt_options"
inline void compressItes__option_t::set(const compressItes__option_t::type& v) { Options::current()->set(*this, v); }

#line 73 "../../../src/options/smt_options"
inline unconstrainedSimp__option_t::type unconstrainedSimp__option_t::operator()() const { return (*Options::current())[*this]; }
#line 73 "../../../src/options/smt_options"
inline bool unconstrainedSimp__option_t::wasSetByUser() const { return Options::current()->wasSetByUser(*this); }
#line 73 "../../../src/options/smt_options"
inline void unconstrainedSimp__option_t::set(const unconstrainedSimp__option_t::type& v) { Options::current()->set(*this, v); }

#line 76 "../../../src/options/smt_options"
inline repeatSimp__option_t::type repeatSimp__option_t::operator()() const { return (*Options::current())[*this]; }
#line 76 "../../../src/options/smt_options"
inline bool repeatSimp__option_t::wasSetByUser() const { return Options::current()->wasSetByUser(*this); }
#line 76 "../../../src/options/smt_options"
inline void repeatSimp__option_t::set(const repeatSimp__option_t::type& v) { Options::current()->set(*this, v); }

#line 79 "../../../src/options/smt_options"
inline zombieHuntThreshold__option_t::type zombieHuntThreshold__option_t::operator()() const { return (*Options::current())[*this]; }
#line 79 "../../../src/options/smt_options"
inline bool zombieHuntThreshold__option_t::wasSetByUser() const { return Options::current()->wasSetByUser(*this); }

#line 82 "../../../src/options/smt_options"
inline sortInference__option_t::type sortInference__option_t::operator()() const { return (*Options::current())[*this]; }
#line 82 "../../../src/options/smt_options"
inline bool sortInference__option_t::wasSetByUser() const { return Options::current()->wasSetByUser(*this); }
#line 82 "../../../src/options/smt_options"
inline void sortInference__option_t::set(const sortInference__option_t::type& v) { Options::current()->set(*this, v); }

#line 85 "../../../src/options/smt_options"
inline incrementalSolving__option_t::type incrementalSolving__option_t::operator()() const { return (*Options::current())[*this]; }
#line 85 "../../../src/options/smt_options"
inline bool incrementalSolving__option_t::wasSetByUser() const { return Options::current()->wasSetByUser(*this); }

#line 88 "../../../src/options/smt_options"
inline abstractValues__option_t::type abstractValues__option_t::operator()() const { return (*Options::current())[*this]; }
#line 88 "../../../src/options/smt_options"
inline bool abstractValues__option_t::wasSetByUser() const { return Options::current()->wasSetByUser(*this); }

#line 90 "../../../src/options/smt_options"
inline modelUninterpDtEnum__option_t::type modelUninterpDtEnum__option_t::operator()() const { return (*Options::current())[*this]; }
#line 90 "../../../src/options/smt_options"
inline bool modelUninterpDtEnum__option_t::wasSetByUser() const { return Options::current()->wasSetByUser(*this); }

#line 93 "../../../src/options/smt_options"
inline regularChannelName__option_t::type regularChannelName__option_t::operator()() const { return (*Options::current())[*this]; }
#line 93 "../../../src/options/smt_options"
inline bool regularChannelName__option_t::wasSetByUser() const { return Options::current()->wasSetByUser(*this); }

#line 95 "../../../src/options/smt_options"
inline diagnosticChannelName__option_t::type diagnosticChannelName__option_t::operator()() const { return (*Options::current())[*this]; }
#line 95 "../../../src/options/smt_options"
inline bool diagnosticChannelName__option_t::wasSetByUser() const { return Options::current()->wasSetByUser(*this); }

#line 98 "../../../src/options/smt_options"
inline cumulativeMillisecondLimit__option_t::type cumulativeMillisecondLimit__option_t::operator()() const { return (*Options::current())[*this]; }
#line 98 "../../../src/options/smt_options"
inline bool cumulativeMillisecondLimit__option_t::wasSetByUser() const { return Options::current()->wasSetByUser(*this); }

#line 100 "../../../src/options/smt_options"
inline perCallMillisecondLimit__option_t::type perCallMillisecondLimit__option_t::operator()() const { return (*Options::current())[*this]; }
#line 100 "../../../src/options/smt_options"
inline bool perCallMillisecondLimit__option_t::wasSetByUser() const { return Options::current()->wasSetByUser(*this); }

#line 102 "../../../src/options/smt_options"
inline cumulativeResourceLimit__option_t::type cumulativeResourceLimit__option_t::operator()() const { return (*Options::current())[*this]; }
#line 102 "../../../src/options/smt_options"
inline bool cumulativeResourceLimit__option_t::wasSetByUser() const { return Options::current()->wasSetByUser(*this); }

#line 104 "../../../src/options/smt_options"
inline perCallResourceLimit__option_t::type perCallResourceLimit__option_t::operator()() const { return (*Options::current())[*this]; }
#line 104 "../../../src/options/smt_options"
inline bool perCallResourceLimit__option_t::wasSetByUser() const { return Options::current()->wasSetByUser(*this); }

#line 106 "../../../src/options/smt_options"
inline hardLimit__option_t::type hardLimit__option_t::operator()() const { return (*Options::current())[*this]; }
#line 106 "../../../src/options/smt_options"
inline bool hardLimit__option_t::wasSetByUser() const { return Options::current()->wasSetByUser(*this); }

#line 108 "../../../src/options/smt_options"
inline cpuTime__option_t::type cpuTime__option_t::operator()() const { return (*Options::current())[*this]; }
#line 108 "../../../src/options/smt_options"
inline bool cpuTime__option_t::wasSetByUser() const { return Options::current()->wasSetByUser(*this); }

#line 112 "../../../src/options/smt_options"
inline rewriteStep__option_t::type rewriteStep__option_t::operator()() const { return (*Options::current())[*this]; }
#line 112 "../../../src/options/smt_options"
inline bool rewriteStep__option_t::wasSetByUser() const { return Options::current()->wasSetByUser(*this); }

#line 115 "../../../src/options/smt_options"
inline theoryCheckStep__option_t::type theoryCheckStep__option_t::operator()() const { return (*Options::current())[*this]; }
#line 115 "../../../src/options/smt_options"
inline bool theoryCheckStep__option_t::wasSetByUser() const { return Options::current()->wasSetByUser(*this); }

#line 118 "../../../src/options/smt_options"
inline decisionStep__option_t::type decisionStep__option_t::operator()() const { return (*Options::current())[*this]; }
#line 118 "../../../src/options/smt_options"
inline bool decisionStep__option_t::wasSetByUser() const { return Options::current()->wasSetByUser(*this); }

#line 121 "../../../src/options/smt_options"
inline bitblastStep__option_t::type bitblastStep__option_t::operator()() const { return (*Options::current())[*this]; }
#line 121 "../../../src/options/smt_options"
inline bool bitblastStep__option_t::wasSetByUser() const { return Options::current()->wasSetByUser(*this); }

#line 124 "../../../src/options/smt_options"
inline parseStep__option_t::type parseStep__option_t::operator()() const { return (*Options::current())[*this]; }
#line 124 "../../../src/options/smt_options"
inline bool parseStep__option_t::wasSetByUser() const { return Options::current()->wasSetByUser(*this); }

#line 127 "../../../src/options/smt_options"
inline lemmaStep__option_t::type lemmaStep__option_t::operator()() const { return (*Options::current())[*this]; }
#line 127 "../../../src/options/smt_options"
inline bool lemmaStep__option_t::wasSetByUser() const { return Options::current()->wasSetByUser(*this); }

#line 130 "../../../src/options/smt_options"
inline restartStep__option_t::type restartStep__option_t::operator()() const { return (*Options::current())[*this]; }
#line 130 "../../../src/options/smt_options"
inline bool restartStep__option_t::wasSetByUser() const { return Options::current()->wasSetByUser(*this); }

#line 133 "../../../src/options/smt_options"
inline cnfStep__option_t::type cnfStep__option_t::operator()() const { return (*Options::current())[*this]; }
#line 133 "../../../src/options/smt_options"
inline bool cnfStep__option_t::wasSetByUser() const { return Options::current()->wasSetByUser(*this); }

#line 136 "../../../src/options/smt_options"
inline preprocessStep__option_t::type preprocessStep__option_t::operator()() const { return (*Options::current())[*this]; }
#line 136 "../../../src/options/smt_options"
inline bool preprocessStep__option_t::wasSetByUser() const { return Options::current()->wasSetByUser(*this); }

#line 139 "../../../src/options/smt_options"
inline quantifierStep__option_t::type quantifierStep__option_t::operator()() const { return (*Options::current())[*this]; }
#line 139 "../../../src/options/smt_options"
inline bool quantifierStep__option_t::wasSetByUser() const { return Options::current()->wasSetByUser(*this); }

#line 142 "../../../src/options/smt_options"
inline satConflictStep__option_t::type satConflictStep__option_t::operator()() const { return (*Options::current())[*this]; }
#line 142 "../../../src/options/smt_options"
inline bool satConflictStep__option_t::wasSetByUser() const { return Options::current()->wasSetByUser(*this); }

#line 145 "../../../src/options/smt_options"
inline bvSatConflictStep__option_t::type bvSatConflictStep__option_t::operator()() const { return (*Options::current())[*this]; }
#line 145 "../../../src/options/smt_options"
inline bool bvSatConflictStep__option_t::wasSetByUser() const { return Options::current()->wasSetByUser(*this); }

#line 149 "../../../src/options/smt_options"
inline rewriteApplyToConst__option_t::type rewriteApplyToConst__option_t::operator()() const { return (*Options::current())[*this]; }
#line 149 "../../../src/options/smt_options"
inline bool rewriteApplyToConst__option_t::wasSetByUser() const { return Options::current()->wasSetByUser(*this); }

#line 154 "../../../src/options/smt_options"
inline replayInputFilename__option_t::type replayInputFilename__option_t::operator()() const { return (*Options::current())[*this]; }
#line 154 "../../../src/options/smt_options"
inline bool replayInputFilename__option_t::wasSetByUser() const { return Options::current()->wasSetByUser(*this); }

#line 158 "../../../src/options/smt_options"
inline replayLogFilename__option_t::type replayLogFilename__option_t::operator()() const { return (*Options::current())[*this]; }
#line 158 "../../../src/options/smt_options"
inline bool replayLogFilename__option_t::wasSetByUser() const { return Options::current()->wasSetByUser(*this); }

#line 161 "../../../src/options/smt_options"
inline forceNoLimitCpuWhileDump__option_t::type forceNoLimitCpuWhileDump__option_t::operator()() const { return (*Options::current())[*this]; }
#line 161 "../../../src/options/smt_options"
inline bool forceNoLimitCpuWhileDump__option_t::wasSetByUser() const { return Options::current()->wasSetByUser(*this); }

#line 164 "../../../src/options/smt_options"
inline solveIntAsBV__option_t::type solveIntAsBV__option_t::operator()() const { return (*Options::current())[*this]; }
#line 164 "../../../src/options/smt_options"
inline bool solveIntAsBV__option_t::wasSetByUser() const { return Options::current()->wasSetByUser(*this); }

#line 167 "../../../src/options/smt_options"
inline solveRealAsInt__option_t::type solveRealAsInt__option_t::operator()() const { return (*Options::current())[*this]; }
#line 167 "../../../src/options/smt_options"
inline bool solveRealAsInt__option_t::wasSetByUser() const { return Options::current()->wasSetByUser(*this); }

#line 50 "../../../src/options/base_options_template.h"

}/* CVC4::options namespace */

}/* CVC4 namespace */

#endif /* __CVC4__OPTIONS__SMT_H */
