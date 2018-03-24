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

#ifndef __CVC4__OPTIONS__QUANTIFIERS_H
#define __CVC4__OPTIONS__QUANTIFIERS_H

#include "options/options.h"

#line 22 "../../../src/options/quantifiers_options"
#include "options/quantifiers_modes.h"
#line 36 "../../../src/options/quantifiers_options"
#include "options/quantifiers_modes.h"
#line 67 "../../../src/options/quantifiers_options"
#include "options/quantifiers_modes.h"
#line 98 "../../../src/options/quantifiers_options"
#include "options/quantifiers_modes.h"
#line 100 "../../../src/options/quantifiers_options"
#include "options/quantifiers_modes.h"
#line 102 "../../../src/options/quantifiers_options"
#include "options/quantifiers_modes.h"
#line 107 "../../../src/options/quantifiers_options"
#include "options/quantifiers_modes.h"
#line 122 "../../../src/options/quantifiers_options"
#include "options/quantifiers_modes.h"
#line 134 "../../../src/options/quantifiers_options"
#include "options/quantifiers_modes.h"
#line 151 "../../../src/options/quantifiers_options"
#include "options/quantifiers_modes.h"
#line 174 "../../../src/options/quantifiers_options"
#include "options/quantifiers_modes.h"
#line 181 "../../../src/options/quantifiers_options"
#include "options/quantifiers_modes.h"
#line 183 "../../../src/options/quantifiers_options"
#include "options/quantifiers_modes.h"
#line 248 "../../../src/options/quantifiers_options"
#include "options/quantifiers_modes.h"
#line 250 "../../../src/options/quantifiers_options"
#include "options/quantifiers_modes.h"
#line 278 "../../../src/options/quantifiers_options"
#include "options/quantifiers_modes.h"
#line 340 "../../../src/options/quantifiers_options"
#include "options/quantifiers_modes.h"
#line 342 "../../../src/options/quantifiers_options"
#include "options/quantifiers_modes.h"

#line 26 "../../../src/options/base_options_template.h"

#define CVC4_OPTIONS__QUANTIFIERS__FOR_OPTION_HOLDER \
  miniscopeQuant__option_t::type miniscopeQuant; \
  bool miniscopeQuant__setByUser__; \
  miniscopeQuantFreeVar__option_t::type miniscopeQuantFreeVar; \
  bool miniscopeQuantFreeVar__setByUser__; \
  quantSplit__option_t::type quantSplit; \
  bool quantSplit__setByUser__; \
  prenexQuant__option_t::type prenexQuant; \
  bool prenexQuant__setByUser__; \
  prenexQuantUser__option_t::type prenexQuantUser; \
  bool prenexQuantUser__setByUser__; \
  varElimQuant__option_t::type varElimQuant; \
  bool varElimQuant__setByUser__; \
  varIneqElimQuant__option_t::type varIneqElimQuant; \
  bool varIneqElimQuant__setByUser__; \
  dtVarExpandQuant__option_t::type dtVarExpandQuant; \
  bool dtVarExpandQuant__setByUser__; \
  iteLiftQuant__option_t::type iteLiftQuant; \
  bool iteLiftQuant__setByUser__; \
  condVarSplitQuant__option_t::type condVarSplitQuant; \
  bool condVarSplitQuant__setByUser__; \
  condVarSplitQuantAgg__option_t::type condVarSplitQuantAgg; \
  bool condVarSplitQuantAgg__setByUser__; \
  iteDtTesterSplitQuant__option_t::type iteDtTesterSplitQuant; \
  bool iteDtTesterSplitQuant__setByUser__; \
  preSkolemQuant__option_t::type preSkolemQuant; \
  bool preSkolemQuant__setByUser__; \
  preSkolemQuantNested__option_t::type preSkolemQuantNested; \
  bool preSkolemQuantNested__setByUser__; \
  preSkolemQuantAgg__option_t::type preSkolemQuantAgg; \
  bool preSkolemQuantAgg__setByUser__; \
  aggressiveMiniscopeQuant__option_t::type aggressiveMiniscopeQuant; \
  bool aggressiveMiniscopeQuant__setByUser__; \
  elimTautQuant__option_t::type elimTautQuant; \
  bool elimTautQuant__setByUser__; \
  elimExtArithQuant__option_t::type elimExtArithQuant; \
  bool elimExtArithQuant__setByUser__; \
  condRewriteQuant__option_t::type condRewriteQuant; \
  bool condRewriteQuant__setByUser__; \
  eMatching__option_t::type eMatching; \
  bool eMatching__setByUser__; \
  termDbMode__option_t::type termDbMode; \
  bool termDbMode__setByUser__; \
  registerQuantBodyTerms__option_t::type registerQuantBodyTerms; \
  bool registerQuantBodyTerms__setByUser__; \
  inferArithTriggerEq__option_t::type inferArithTriggerEq; \
  bool inferArithTriggerEq__setByUser__; \
  inferArithTriggerEqExp__option_t::type inferArithTriggerEqExp; \
  bool inferArithTriggerEqExp__setByUser__; \
  strictTriggers__option_t::type strictTriggers; \
  bool strictTriggers__setByUser__; \
  relevantTriggers__option_t::type relevantTriggers; \
  bool relevantTriggers__setByUser__; \
  relationalTriggers__option_t::type relationalTriggers; \
  bool relationalTriggers__setByUser__; \
  purifyTriggers__option_t::type purifyTriggers; \
  bool purifyTriggers__setByUser__; \
  purifyDtTriggers__option_t::type purifyDtTriggers; \
  bool purifyDtTriggers__setByUser__; \
  pureThTriggers__option_t::type pureThTriggers; \
  bool pureThTriggers__setByUser__; \
  partialTriggers__option_t::type partialTriggers; \
  bool partialTriggers__setByUser__; \
  multiTriggerWhenSingle__option_t::type multiTriggerWhenSingle; \
  bool multiTriggerWhenSingle__setByUser__; \
  multiTriggerPriority__option_t::type multiTriggerPriority; \
  bool multiTriggerPriority__setByUser__; \
  multiTriggerCache__option_t::type multiTriggerCache; \
  bool multiTriggerCache__setByUser__; \
  multiTriggerLinear__option_t::type multiTriggerLinear; \
  bool multiTriggerLinear__setByUser__; \
  triggerSelMode__option_t::type triggerSelMode; \
  bool triggerSelMode__setByUser__; \
  triggerActiveSelMode__option_t::type triggerActiveSelMode; \
  bool triggerActiveSelMode__setByUser__; \
  userPatternsQuant__option_t::type userPatternsQuant; \
  bool userPatternsQuant__setByUser__; \
  incrementTriggers__option_t::type incrementTriggers; \
  bool incrementTriggers__setByUser__; \
  instWhenMode__option_t::type instWhenMode; \
  bool instWhenMode__setByUser__; \
  instWhenStrictInterleave__option_t::type instWhenStrictInterleave; \
  bool instWhenStrictInterleave__setByUser__; \
  instWhenPhase__option_t::type instWhenPhase; \
  bool instWhenPhase__setByUser__; \
  instWhenTcFirst__option_t::type instWhenTcFirst; \
  bool instWhenTcFirst__setByUser__; \
  quantModelEe__option_t::type quantModelEe; \
  bool quantModelEe__setByUser__; \
  instMaxLevel__option_t::type instMaxLevel; \
  bool instMaxLevel__setByUser__; \
  instLevelInputOnly__option_t::type instLevelInputOnly; \
  bool instLevelInputOnly__setByUser__; \
  quantRepMode__option_t::type quantRepMode; \
  bool quantRepMode__setByUser__; \
  instRelevantCond__option_t::type instRelevantCond; \
  bool instRelevantCond__setByUser__; \
  fullSaturateQuant__option_t::type fullSaturateQuant; \
  bool fullSaturateQuant__setByUser__; \
  fullSaturateQuantRd__option_t::type fullSaturateQuantRd; \
  bool fullSaturateQuantRd__setByUser__; \
  fullSaturateInst__option_t::type fullSaturateInst; \
  bool fullSaturateInst__setByUser__; \
  literalMatchMode__option_t::type literalMatchMode; \
  bool literalMatchMode__setByUser__; \
  finiteModelFind__option_t::type finiteModelFind; \
  bool finiteModelFind__setByUser__; \
  quantFunWellDefined__option_t::type quantFunWellDefined; \
  bool quantFunWellDefined__setByUser__; \
  fmfFunWellDefined__option_t::type fmfFunWellDefined; \
  bool fmfFunWellDefined__setByUser__; \
  fmfFunWellDefinedRelevant__option_t::type fmfFunWellDefinedRelevant; \
  bool fmfFunWellDefinedRelevant__setByUser__; \
  fmfEmptySorts__option_t::type fmfEmptySorts; \
  bool fmfEmptySorts__setByUser__; \
  mbqiMode__option_t::type mbqiMode; \
  bool mbqiMode__setByUser__; \
  fmfOneInstPerRound__option_t::type fmfOneInstPerRound; \
  bool fmfOneInstPerRound__setByUser__; \
  fmfOneQuantPerRound__option_t::type fmfOneQuantPerRound; \
  bool fmfOneQuantPerRound__setByUser__; \
  fmfInstEngine__option_t::type fmfInstEngine; \
  bool fmfInstEngine__setByUser__; \
  fmfInstGen__option_t::type fmfInstGen; \
  bool fmfInstGen__setByUser__; \
  fmfInstGenOneQuantPerRound__option_t::type fmfInstGenOneQuantPerRound; \
  bool fmfInstGenOneQuantPerRound__setByUser__; \
  fmfFreshDistConst__option_t::type fmfFreshDistConst; \
  bool fmfFreshDistConst__setByUser__; \
  fmfFmcSimple__option_t::type fmfFmcSimple; \
  bool fmfFmcSimple__setByUser__; \
  fmfBoundInt__option_t::type fmfBoundInt; \
  bool fmfBoundInt__setByUser__; \
  fmfBound__option_t::type fmfBound; \
  bool fmfBound__setByUser__; \
  fmfBoundLazy__option_t::type fmfBoundLazy; \
  bool fmfBoundLazy__setByUser__; \
  fmfBoundMinMode__option_t::type fmfBoundMinMode; \
  bool fmfBoundMinMode__setByUser__; \
  quantConflictFind__option_t::type quantConflictFind; \
  bool quantConflictFind__setByUser__; \
  qcfMode__option_t::type qcfMode; \
  bool qcfMode__setByUser__; \
  qcfWhenMode__option_t::type qcfWhenMode; \
  bool qcfWhenMode__setByUser__; \
  qcfTConstraint__option_t::type qcfTConstraint; \
  bool qcfTConstraint__setByUser__; \
  qcfAllConflict__option_t::type qcfAllConflict; \
  bool qcfAllConflict__setByUser__; \
  qcfNestedConflict__option_t::type qcfNestedConflict; \
  bool qcfNestedConflict__setByUser__; \
  qcfVoExp__option_t::type qcfVoExp; \
  bool qcfVoExp__setByUser__; \
  instNoEntail__option_t::type instNoEntail; \
  bool instNoEntail__setByUser__; \
  instNoModelTrue__option_t::type instNoModelTrue; \
  bool instNoModelTrue__setByUser__; \
  instPropagate__option_t::type instPropagate; \
  bool instPropagate__setByUser__; \
  qcfEagerTest__option_t::type qcfEagerTest; \
  bool qcfEagerTest__setByUser__; \
  qcfEagerCheckRd__option_t::type qcfEagerCheckRd; \
  bool qcfEagerCheckRd__setByUser__; \
  qcfSkipRd__option_t::type qcfSkipRd; \
  bool qcfSkipRd__setByUser__; \
  quantRewriteRules__option_t::type quantRewriteRules; \
  bool quantRewriteRules__setByUser__; \
  rrOneInstPerRound__option_t::type rrOneInstPerRound; \
  bool rrOneInstPerRound__setByUser__; \
  quantInduction__option_t::type quantInduction; \
  bool quantInduction__setByUser__; \
  dtStcInduction__option_t::type dtStcInduction; \
  bool dtStcInduction__setByUser__; \
  intWfInduction__option_t::type intWfInduction; \
  bool intWfInduction__setByUser__; \
  conjectureGen__option_t::type conjectureGen; \
  bool conjectureGen__setByUser__; \
  conjectureGenPerRound__option_t::type conjectureGenPerRound; \
  bool conjectureGenPerRound__setByUser__; \
  conjectureNoFilter__option_t::type conjectureNoFilter; \
  bool conjectureNoFilter__setByUser__; \
  conjectureFilterActiveTerms__option_t::type conjectureFilterActiveTerms; \
  bool conjectureFilterActiveTerms__setByUser__; \
  conjectureFilterCanonical__option_t::type conjectureFilterCanonical; \
  bool conjectureFilterCanonical__setByUser__; \
  conjectureFilterModel__option_t::type conjectureFilterModel; \
  bool conjectureFilterModel__setByUser__; \
  conjectureGenGtEnum__option_t::type conjectureGenGtEnum; \
  bool conjectureGenGtEnum__setByUser__; \
  conjectureUeeIntro__option_t::type conjectureUeeIntro; \
  bool conjectureUeeIntro__setByUser__; \
  conjectureGenMaxDepth__option_t::type conjectureGenMaxDepth; \
  bool conjectureGenMaxDepth__setByUser__; \
  ceGuidedInst__option_t::type ceGuidedInst; \
  bool ceGuidedInst__setByUser__; \
  ceGuidedInstFair__option_t::type ceGuidedInstFair; \
  bool ceGuidedInstFair__setByUser__; \
  cegqiSingleInvMode__option_t::type cegqiSingleInvMode; \
  bool cegqiSingleInvMode__setByUser__; \
  cegqiSingleInvPartial__option_t::type cegqiSingleInvPartial; \
  bool cegqiSingleInvPartial__setByUser__; \
  cegqiSingleInvReconstruct__option_t::type cegqiSingleInvReconstruct; \
  bool cegqiSingleInvReconstruct__setByUser__; \
  cegqiSolMinCore__option_t::type cegqiSolMinCore; \
  bool cegqiSolMinCore__setByUser__; \
  cegqiSolMinInst__option_t::type cegqiSolMinInst; \
  bool cegqiSolMinInst__setByUser__; \
  cegqiSingleInvReconstructConst__option_t::type cegqiSingleInvReconstructConst; \
  bool cegqiSingleInvReconstructConst__setByUser__; \
  cegqiSingleInvAbort__option_t::type cegqiSingleInvAbort; \
  bool cegqiSingleInvAbort__setByUser__; \
  sygusNormalForm__option_t::type sygusNormalForm; \
  bool sygusNormalForm__setByUser__; \
  sygusNormalFormArg__option_t::type sygusNormalFormArg; \
  bool sygusNormalFormArg__setByUser__; \
  sygusNormalFormGlobal__option_t::type sygusNormalFormGlobal; \
  bool sygusNormalFormGlobal__setByUser__; \
  sygusNormalFormGlobalGen__option_t::type sygusNormalFormGlobalGen; \
  bool sygusNormalFormGlobalGen__setByUser__; \
  sygusNormalFormGlobalArg__option_t::type sygusNormalFormGlobalArg; \
  bool sygusNormalFormGlobalArg__setByUser__; \
  sygusNormalFormGlobalContent__option_t::type sygusNormalFormGlobalContent; \
  bool sygusNormalFormGlobalContent__setByUser__; \
  sygusInvTemplMode__option_t::type sygusInvTemplMode; \
  bool sygusInvTemplMode__setByUser__; \
  sygusUnifCondSol__option_t::type sygusUnifCondSol; \
  bool sygusUnifCondSol__setByUser__; \
  sygusDirectEval__option_t::type sygusDirectEval; \
  bool sygusDirectEval__setByUser__; \
  sygusCRefEval__option_t::type sygusCRefEval; \
  bool sygusCRefEval__setByUser__; \
  cbqi__option_t::type cbqi; \
  bool cbqi__setByUser__; \
  recurseCbqi__option_t::type recurseCbqi; \
  bool recurseCbqi__setByUser__; \
  cbqiSat__option_t::type cbqiSat; \
  bool cbqiSat__setByUser__; \
  cbqiModel__option_t::type cbqiModel; \
  bool cbqiModel__setByUser__; \
  cbqiAll__option_t::type cbqiAll; \
  bool cbqiAll__setByUser__; \
  cbqiUseInfInt__option_t::type cbqiUseInfInt; \
  bool cbqiUseInfInt__setByUser__; \
  cbqiUseInfReal__option_t::type cbqiUseInfReal; \
  bool cbqiUseInfReal__setByUser__; \
  cbqiPreRegInst__option_t::type cbqiPreRegInst; \
  bool cbqiPreRegInst__setByUser__; \
  cbqiMinBounds__option_t::type cbqiMinBounds; \
  bool cbqiMinBounds__setByUser__; \
  cbqiRoundUpLowerLia__option_t::type cbqiRoundUpLowerLia; \
  bool cbqiRoundUpLowerLia__setByUser__; \
  cbqiMidpoint__option_t::type cbqiMidpoint; \
  bool cbqiMidpoint__setByUser__; \
  cbqiNopt__option_t::type cbqiNopt; \
  bool cbqiNopt__setByUser__; \
  cbqiLitDepend__option_t::type cbqiLitDepend; \
  bool cbqiLitDepend__setByUser__; \
  cbqiInnermost__option_t::type cbqiInnermost; \
  bool cbqiInnermost__setByUser__; \
  cbqiNestedQE__option_t::type cbqiNestedQE; \
  bool cbqiNestedQE__setByUser__; \
  quantEpr__option_t::type quantEpr; \
  bool quantEpr__setByUser__; \
  quantEprMatching__option_t::type quantEprMatching; \
  bool quantEprMatching__setByUser__; \
  localTheoryExt__option_t::type localTheoryExt; \
  bool localTheoryExt__setByUser__; \
  ltePartialInst__option_t::type ltePartialInst; \
  bool ltePartialInst__setByUser__; \
  lteRestrictInstClosure__option_t::type lteRestrictInstClosure; \
  bool lteRestrictInstClosure__setByUser__; \
  quantAlphaEquiv__option_t::type quantAlphaEquiv; \
  bool quantAlphaEquiv__setByUser__; \
  macrosQuant__option_t::type macrosQuant; \
  bool macrosQuant__setByUser__; \
  macrosQuantMode__option_t::type macrosQuantMode; \
  bool macrosQuantMode__setByUser__; \
  quantDynamicSplit__option_t::type quantDynamicSplit; \
  bool quantDynamicSplit__setByUser__; \
  quantAntiSkolem__option_t::type quantAntiSkolem; \
  bool quantAntiSkolem__setByUser__; \
  quantEqualityEngine__option_t::type quantEqualityEngine; \
  bool quantEqualityEngine__setByUser__; \
  trackInstLemmas__option_t::type trackInstLemmas; \
  bool trackInstLemmas__setByUser__;

#line 30 "../../../src/options/base_options_template.h"

namespace CVC4 {

namespace options {


#line 13 "../../../src/options/quantifiers_options"
extern struct CVC4_PUBLIC miniscopeQuant__option_t { typedef bool type; type operator()() const; bool wasSetByUser() const; void set(const type& v); } miniscopeQuant CVC4_PUBLIC;
#line 18 "../../../src/options/quantifiers_options"
extern struct CVC4_PUBLIC miniscopeQuantFreeVar__option_t { typedef bool type; type operator()() const; bool wasSetByUser() const; void set(const type& v); } miniscopeQuantFreeVar CVC4_PUBLIC;
#line 20 "../../../src/options/quantifiers_options"
extern struct CVC4_PUBLIC quantSplit__option_t { typedef bool type; type operator()() const; bool wasSetByUser() const; void set(const type& v); } quantSplit CVC4_PUBLIC;
#line 22 "../../../src/options/quantifiers_options"
extern struct CVC4_PUBLIC prenexQuant__option_t { typedef CVC4::theory::quantifiers::PrenexQuantMode type; type operator()() const; bool wasSetByUser() const; void set(const type& v); } prenexQuant CVC4_PUBLIC;
#line 24 "../../../src/options/quantifiers_options"
extern struct CVC4_PUBLIC prenexQuantUser__option_t { typedef bool type; type operator()() const; bool wasSetByUser() const; void set(const type& v); } prenexQuantUser CVC4_PUBLIC;
#line 29 "../../../src/options/quantifiers_options"
extern struct CVC4_PUBLIC varElimQuant__option_t { typedef bool type; type operator()() const; bool wasSetByUser() const; } varElimQuant CVC4_PUBLIC;
#line 31 "../../../src/options/quantifiers_options"
extern struct CVC4_PUBLIC varIneqElimQuant__option_t { typedef bool type; type operator()() const; bool wasSetByUser() const; } varIneqElimQuant CVC4_PUBLIC;
#line 33 "../../../src/options/quantifiers_options"
extern struct CVC4_PUBLIC dtVarExpandQuant__option_t { typedef bool type; type operator()() const; bool wasSetByUser() const; } dtVarExpandQuant CVC4_PUBLIC;
#line 36 "../../../src/options/quantifiers_options"
extern struct CVC4_PUBLIC iteLiftQuant__option_t { typedef CVC4::theory::quantifiers::IteLiftQuantMode type; type operator()() const; bool wasSetByUser() const; void set(const type& v); } iteLiftQuant CVC4_PUBLIC;
#line 38 "../../../src/options/quantifiers_options"
extern struct CVC4_PUBLIC condVarSplitQuant__option_t { typedef bool type; type operator()() const; bool wasSetByUser() const; } condVarSplitQuant CVC4_PUBLIC;
#line 40 "../../../src/options/quantifiers_options"
extern struct CVC4_PUBLIC condVarSplitQuantAgg__option_t { typedef bool type; type operator()() const; bool wasSetByUser() const; } condVarSplitQuantAgg CVC4_PUBLIC;
#line 42 "../../../src/options/quantifiers_options"
extern struct CVC4_PUBLIC iteDtTesterSplitQuant__option_t { typedef bool type; type operator()() const; bool wasSetByUser() const; void set(const type& v); } iteDtTesterSplitQuant CVC4_PUBLIC;
#line 47 "../../../src/options/quantifiers_options"
extern struct CVC4_PUBLIC preSkolemQuant__option_t { typedef bool type; type operator()() const; bool wasSetByUser() const; void set(const type& v); } preSkolemQuant CVC4_PUBLIC;
#line 49 "../../../src/options/quantifiers_options"
extern struct CVC4_PUBLIC preSkolemQuantNested__option_t { typedef bool type; type operator()() const; bool wasSetByUser() const; void set(const type& v); } preSkolemQuantNested CVC4_PUBLIC;
#line 51 "../../../src/options/quantifiers_options"
extern struct CVC4_PUBLIC preSkolemQuantAgg__option_t { typedef bool type; type operator()() const; bool wasSetByUser() const; void set(const type& v); } preSkolemQuantAgg CVC4_PUBLIC;
#line 53 "../../../src/options/quantifiers_options"
extern struct CVC4_PUBLIC aggressiveMiniscopeQuant__option_t { typedef bool type; type operator()() const; bool wasSetByUser() const; } aggressiveMiniscopeQuant CVC4_PUBLIC;
#line 55 "../../../src/options/quantifiers_options"
extern struct CVC4_PUBLIC elimTautQuant__option_t { typedef bool type; type operator()() const; bool wasSetByUser() const; } elimTautQuant CVC4_PUBLIC;
#line 57 "../../../src/options/quantifiers_options"
extern struct CVC4_PUBLIC elimExtArithQuant__option_t { typedef bool type; type operator()() const; bool wasSetByUser() const; void set(const type& v); } elimExtArithQuant CVC4_PUBLIC;
#line 59 "../../../src/options/quantifiers_options"
extern struct CVC4_PUBLIC condRewriteQuant__option_t { typedef bool type; type operator()() const; bool wasSetByUser() const; } condRewriteQuant CVC4_PUBLIC;
#line 64 "../../../src/options/quantifiers_options"
extern struct CVC4_PUBLIC eMatching__option_t { typedef bool type; type operator()() const; bool wasSetByUser() const; void set(const type& v); } eMatching CVC4_PUBLIC;
#line 67 "../../../src/options/quantifiers_options"
extern struct CVC4_PUBLIC termDbMode__option_t { typedef CVC4::theory::quantifiers::TermDbMode type; type operator()() const; bool wasSetByUser() const; void set(const type& v); } termDbMode CVC4_PUBLIC;
#line 69 "../../../src/options/quantifiers_options"
extern struct CVC4_PUBLIC registerQuantBodyTerms__option_t { typedef bool type; type operator()() const; bool wasSetByUser() const; } registerQuantBodyTerms CVC4_PUBLIC;
#line 71 "../../../src/options/quantifiers_options"
extern struct CVC4_PUBLIC inferArithTriggerEq__option_t { typedef bool type; type operator()() const; bool wasSetByUser() const; } inferArithTriggerEq CVC4_PUBLIC;
#line 73 "../../../src/options/quantifiers_options"
extern struct CVC4_PUBLIC inferArithTriggerEqExp__option_t { typedef bool type; type operator()() const; bool wasSetByUser() const; } inferArithTriggerEqExp CVC4_PUBLIC;
#line 76 "../../../src/options/quantifiers_options"
extern struct CVC4_PUBLIC strictTriggers__option_t { typedef bool type; type operator()() const; bool wasSetByUser() const; } strictTriggers CVC4_PUBLIC;
#line 78 "../../../src/options/quantifiers_options"
extern struct CVC4_PUBLIC relevantTriggers__option_t { typedef bool type; type operator()() const; bool wasSetByUser() const; } relevantTriggers CVC4_PUBLIC;
#line 80 "../../../src/options/quantifiers_options"
extern struct CVC4_PUBLIC relationalTriggers__option_t { typedef bool type; type operator()() const; bool wasSetByUser() const; } relationalTriggers CVC4_PUBLIC;
#line 82 "../../../src/options/quantifiers_options"
extern struct CVC4_PUBLIC purifyTriggers__option_t { typedef bool type; type operator()() const; bool wasSetByUser() const; void set(const type& v); } purifyTriggers CVC4_PUBLIC;
#line 84 "../../../src/options/quantifiers_options"
extern struct CVC4_PUBLIC purifyDtTriggers__option_t { typedef bool type; type operator()() const; bool wasSetByUser() const; void set(const type& v); } purifyDtTriggers CVC4_PUBLIC;
#line 86 "../../../src/options/quantifiers_options"
extern struct CVC4_PUBLIC pureThTriggers__option_t { typedef bool type; type operator()() const; bool wasSetByUser() const; void set(const type& v); } pureThTriggers CVC4_PUBLIC;
#line 88 "../../../src/options/quantifiers_options"
extern struct CVC4_PUBLIC partialTriggers__option_t { typedef bool type; type operator()() const; bool wasSetByUser() const; void set(const type& v); } partialTriggers CVC4_PUBLIC;
#line 90 "../../../src/options/quantifiers_options"
extern struct CVC4_PUBLIC multiTriggerWhenSingle__option_t { typedef bool type; type operator()() const; bool wasSetByUser() const; } multiTriggerWhenSingle CVC4_PUBLIC;
#line 92 "../../../src/options/quantifiers_options"
extern struct CVC4_PUBLIC multiTriggerPriority__option_t { typedef bool type; type operator()() const; bool wasSetByUser() const; } multiTriggerPriority CVC4_PUBLIC;
#line 94 "../../../src/options/quantifiers_options"
extern struct CVC4_PUBLIC multiTriggerCache__option_t { typedef bool type; type operator()() const; bool wasSetByUser() const; } multiTriggerCache CVC4_PUBLIC;
#line 96 "../../../src/options/quantifiers_options"
extern struct CVC4_PUBLIC multiTriggerLinear__option_t { typedef bool type; type operator()() const; bool wasSetByUser() const; } multiTriggerLinear CVC4_PUBLIC;
#line 98 "../../../src/options/quantifiers_options"
extern struct CVC4_PUBLIC triggerSelMode__option_t { typedef CVC4::theory::quantifiers::TriggerSelMode type; type operator()() const; bool wasSetByUser() const; void set(const type& v); } triggerSelMode CVC4_PUBLIC;
#line 100 "../../../src/options/quantifiers_options"
extern struct CVC4_PUBLIC triggerActiveSelMode__option_t { typedef CVC4::theory::quantifiers::TriggerActiveSelMode type; type operator()() const; bool wasSetByUser() const; void set(const type& v); } triggerActiveSelMode CVC4_PUBLIC;
#line 102 "../../../src/options/quantifiers_options"
extern struct CVC4_PUBLIC userPatternsQuant__option_t { typedef CVC4::theory::quantifiers::UserPatMode type; type operator()() const; bool wasSetByUser() const; void set(const type& v); } userPatternsQuant CVC4_PUBLIC;
#line 104 "../../../src/options/quantifiers_options"
extern struct CVC4_PUBLIC incrementTriggers__option_t { typedef bool type; type operator()() const; bool wasSetByUser() const; } incrementTriggers CVC4_PUBLIC;
#line 107 "../../../src/options/quantifiers_options"
extern struct CVC4_PUBLIC instWhenMode__option_t { typedef CVC4::theory::quantifiers::InstWhenMode type; type operator()() const; bool wasSetByUser() const; void set(const type& v); } instWhenMode CVC4_PUBLIC;
#line 109 "../../../src/options/quantifiers_options"
extern struct CVC4_PUBLIC instWhenStrictInterleave__option_t { typedef bool type; type operator()() const; bool wasSetByUser() const; void set(const type& v); } instWhenStrictInterleave CVC4_PUBLIC;
#line 111 "../../../src/options/quantifiers_options"
extern struct CVC4_PUBLIC instWhenPhase__option_t { typedef int type; type operator()() const; bool wasSetByUser() const; void set(const type& v); } instWhenPhase CVC4_PUBLIC;
#line 113 "../../../src/options/quantifiers_options"
extern struct CVC4_PUBLIC instWhenTcFirst__option_t { typedef bool type; type operator()() const; bool wasSetByUser() const; void set(const type& v); } instWhenTcFirst CVC4_PUBLIC;
#line 115 "../../../src/options/quantifiers_options"
extern struct CVC4_PUBLIC quantModelEe__option_t { typedef bool type; type operator()() const; bool wasSetByUser() const; } quantModelEe CVC4_PUBLIC;
#line 118 "../../../src/options/quantifiers_options"
extern struct CVC4_PUBLIC instMaxLevel__option_t { typedef int type; type operator()() const; bool wasSetByUser() const; void set(const type& v); } instMaxLevel CVC4_PUBLIC;
#line 120 "../../../src/options/quantifiers_options"
extern struct CVC4_PUBLIC instLevelInputOnly__option_t { typedef bool type; type operator()() const; bool wasSetByUser() const; } instLevelInputOnly CVC4_PUBLIC;
#line 122 "../../../src/options/quantifiers_options"
extern struct CVC4_PUBLIC quantRepMode__option_t { typedef CVC4::theory::quantifiers::QuantRepMode type; type operator()() const; bool wasSetByUser() const; void set(const type& v); } quantRepMode CVC4_PUBLIC;
#line 124 "../../../src/options/quantifiers_options"
extern struct CVC4_PUBLIC instRelevantCond__option_t { typedef bool type; type operator()() const; bool wasSetByUser() const; } instRelevantCond CVC4_PUBLIC;
#line 127 "../../../src/options/quantifiers_options"
extern struct CVC4_PUBLIC fullSaturateQuant__option_t { typedef bool type; type operator()() const; bool wasSetByUser() const; void set(const type& v); } fullSaturateQuant CVC4_PUBLIC;
#line 129 "../../../src/options/quantifiers_options"
extern struct CVC4_PUBLIC fullSaturateQuantRd__option_t { typedef bool type; type operator()() const; bool wasSetByUser() const; } fullSaturateQuantRd CVC4_PUBLIC;
#line 131 "../../../src/options/quantifiers_options"
extern struct CVC4_PUBLIC fullSaturateInst__option_t { typedef bool type; type operator()() const; bool wasSetByUser() const; } fullSaturateInst CVC4_PUBLIC;
#line 134 "../../../src/options/quantifiers_options"
extern struct CVC4_PUBLIC literalMatchMode__option_t { typedef CVC4::theory::quantifiers::LiteralMatchMode type; type operator()() const; bool wasSetByUser() const; } literalMatchMode CVC4_PUBLIC;
#line 139 "../../../src/options/quantifiers_options"
extern struct CVC4_PUBLIC finiteModelFind__option_t { typedef bool type; type operator()() const; bool wasSetByUser() const; void set(const type& v); } finiteModelFind CVC4_PUBLIC;
#line 142 "../../../src/options/quantifiers_options"
extern struct CVC4_PUBLIC quantFunWellDefined__option_t { typedef bool type; type operator()() const; bool wasSetByUser() const; } quantFunWellDefined CVC4_PUBLIC;
#line 144 "../../../src/options/quantifiers_options"
extern struct CVC4_PUBLIC fmfFunWellDefined__option_t { typedef bool type; type operator()() const; bool wasSetByUser() const; void set(const type& v); } fmfFunWellDefined CVC4_PUBLIC;
#line 146 "../../../src/options/quantifiers_options"
extern struct CVC4_PUBLIC fmfFunWellDefinedRelevant__option_t { typedef bool type; type operator()() const; bool wasSetByUser() const; } fmfFunWellDefinedRelevant CVC4_PUBLIC;
#line 148 "../../../src/options/quantifiers_options"
extern struct CVC4_PUBLIC fmfEmptySorts__option_t { typedef bool type; type operator()() const; bool wasSetByUser() const; } fmfEmptySorts CVC4_PUBLIC;
#line 151 "../../../src/options/quantifiers_options"
extern struct CVC4_PUBLIC mbqiMode__option_t { typedef CVC4::theory::quantifiers::MbqiMode type; type operator()() const; bool wasSetByUser() const; void set(const type& v); } mbqiMode CVC4_PUBLIC;
#line 153 "../../../src/options/quantifiers_options"
extern struct CVC4_PUBLIC fmfOneInstPerRound__option_t { typedef bool type; type operator()() const; bool wasSetByUser() const; void set(const type& v); } fmfOneInstPerRound CVC4_PUBLIC;
#line 155 "../../../src/options/quantifiers_options"
extern struct CVC4_PUBLIC fmfOneQuantPerRound__option_t { typedef bool type; type operator()() const; bool wasSetByUser() const; } fmfOneQuantPerRound CVC4_PUBLIC;
#line 158 "../../../src/options/quantifiers_options"
extern struct CVC4_PUBLIC fmfInstEngine__option_t { typedef bool type; type operator()() const; bool wasSetByUser() const; void set(const type& v); } fmfInstEngine CVC4_PUBLIC;
#line 160 "../../../src/options/quantifiers_options"
extern struct CVC4_PUBLIC fmfInstGen__option_t { typedef bool type; type operator()() const; bool wasSetByUser() const; } fmfInstGen CVC4_PUBLIC;
#line 162 "../../../src/options/quantifiers_options"
extern struct CVC4_PUBLIC fmfInstGenOneQuantPerRound__option_t { typedef bool type; type operator()() const; bool wasSetByUser() const; } fmfInstGenOneQuantPerRound CVC4_PUBLIC;
#line 164 "../../../src/options/quantifiers_options"
extern struct CVC4_PUBLIC fmfFreshDistConst__option_t { typedef bool type; type operator()() const; bool wasSetByUser() const; } fmfFreshDistConst CVC4_PUBLIC;
#line 166 "../../../src/options/quantifiers_options"
extern struct CVC4_PUBLIC fmfFmcSimple__option_t { typedef bool type; type operator()() const; bool wasSetByUser() const; } fmfFmcSimple CVC4_PUBLIC;
#line 168 "../../../src/options/quantifiers_options"
extern struct CVC4_PUBLIC fmfBoundInt__option_t { typedef bool type; type operator()() const; bool wasSetByUser() const; void set(const type& v); } fmfBoundInt CVC4_PUBLIC;
#line 170 "../../../src/options/quantifiers_options"
extern struct CVC4_PUBLIC fmfBound__option_t { typedef bool type; type operator()() const; bool wasSetByUser() const; void set(const type& v); } fmfBound CVC4_PUBLIC;
#line 172 "../../../src/options/quantifiers_options"
extern struct CVC4_PUBLIC fmfBoundLazy__option_t { typedef bool type; type operator()() const; bool wasSetByUser() const; void set(const type& v); } fmfBoundLazy CVC4_PUBLIC;
#line 174 "../../../src/options/quantifiers_options"
extern struct CVC4_PUBLIC fmfBoundMinMode__option_t { typedef CVC4::theory::quantifiers::FmfBoundMinMode type; type operator()() const; bool wasSetByUser() const; } fmfBoundMinMode CVC4_PUBLIC;
#line 179 "../../../src/options/quantifiers_options"
extern struct CVC4_PUBLIC quantConflictFind__option_t { typedef bool type; type operator()() const; bool wasSetByUser() const; void set(const type& v); } quantConflictFind CVC4_PUBLIC;
#line 181 "../../../src/options/quantifiers_options"
extern struct CVC4_PUBLIC qcfMode__option_t { typedef CVC4::theory::quantifiers::QcfMode type; type operator()() const; bool wasSetByUser() const; } qcfMode CVC4_PUBLIC;
#line 183 "../../../src/options/quantifiers_options"
extern struct CVC4_PUBLIC qcfWhenMode__option_t { typedef CVC4::theory::quantifiers::QcfWhenMode type; type operator()() const; bool wasSetByUser() const; } qcfWhenMode CVC4_PUBLIC;
#line 185 "../../../src/options/quantifiers_options"
extern struct CVC4_PUBLIC qcfTConstraint__option_t { typedef bool type; type operator()() const; bool wasSetByUser() const; void set(const type& v); } qcfTConstraint CVC4_PUBLIC;
#line 187 "../../../src/options/quantifiers_options"
extern struct CVC4_PUBLIC qcfAllConflict__option_t { typedef bool type; type operator()() const; bool wasSetByUser() const; void set(const type& v); } qcfAllConflict CVC4_PUBLIC;
#line 189 "../../../src/options/quantifiers_options"
extern struct CVC4_PUBLIC qcfNestedConflict__option_t { typedef bool type; type operator()() const; bool wasSetByUser() const; } qcfNestedConflict CVC4_PUBLIC;
#line 191 "../../../src/options/quantifiers_options"
extern struct CVC4_PUBLIC qcfVoExp__option_t { typedef bool type; type operator()() const; bool wasSetByUser() const; } qcfVoExp CVC4_PUBLIC;
#line 194 "../../../src/options/quantifiers_options"
extern struct CVC4_PUBLIC instNoEntail__option_t { typedef bool type; type operator()() const; bool wasSetByUser() const; void set(const type& v); } instNoEntail CVC4_PUBLIC;
#line 196 "../../../src/options/quantifiers_options"
extern struct CVC4_PUBLIC instNoModelTrue__option_t { typedef bool type; type operator()() const; bool wasSetByUser() const; void set(const type& v); } instNoModelTrue CVC4_PUBLIC;
#line 199 "../../../src/options/quantifiers_options"
extern struct CVC4_PUBLIC instPropagate__option_t { typedef bool type; type operator()() const; bool wasSetByUser() const; void set(const type& v); } instPropagate CVC4_PUBLIC;
#line 202 "../../../src/options/quantifiers_options"
extern struct CVC4_PUBLIC qcfEagerTest__option_t { typedef bool type; type operator()() const; bool wasSetByUser() const; } qcfEagerTest CVC4_PUBLIC;
#line 204 "../../../src/options/quantifiers_options"
extern struct CVC4_PUBLIC qcfEagerCheckRd__option_t { typedef bool type; type operator()() const; bool wasSetByUser() const; } qcfEagerCheckRd CVC4_PUBLIC;
#line 206 "../../../src/options/quantifiers_options"
extern struct CVC4_PUBLIC qcfSkipRd__option_t { typedef bool type; type operator()() const; bool wasSetByUser() const; } qcfSkipRd CVC4_PUBLIC;
#line 211 "../../../src/options/quantifiers_options"
extern struct CVC4_PUBLIC quantRewriteRules__option_t { typedef bool type; type operator()() const; bool wasSetByUser() const; } quantRewriteRules CVC4_PUBLIC;
#line 213 "../../../src/options/quantifiers_options"
extern struct CVC4_PUBLIC rrOneInstPerRound__option_t { typedef bool type; type operator()() const; bool wasSetByUser() const; } rrOneInstPerRound CVC4_PUBLIC;
#line 218 "../../../src/options/quantifiers_options"
extern struct CVC4_PUBLIC quantInduction__option_t { typedef bool type; type operator()() const; bool wasSetByUser() const; } quantInduction CVC4_PUBLIC;
#line 220 "../../../src/options/quantifiers_options"
extern struct CVC4_PUBLIC dtStcInduction__option_t { typedef bool type; type operator()() const; bool wasSetByUser() const; void set(const type& v); } dtStcInduction CVC4_PUBLIC;
#line 222 "../../../src/options/quantifiers_options"
extern struct CVC4_PUBLIC intWfInduction__option_t { typedef bool type; type operator()() const; bool wasSetByUser() const; void set(const type& v); } intWfInduction CVC4_PUBLIC;
#line 224 "../../../src/options/quantifiers_options"
extern struct CVC4_PUBLIC conjectureGen__option_t { typedef bool type; type operator()() const; bool wasSetByUser() const; void set(const type& v); } conjectureGen CVC4_PUBLIC;
#line 227 "../../../src/options/quantifiers_options"
extern struct CVC4_PUBLIC conjectureGenPerRound__option_t { typedef int type; type operator()() const; bool wasSetByUser() const; } conjectureGenPerRound CVC4_PUBLIC;
#line 229 "../../../src/options/quantifiers_options"
extern struct CVC4_PUBLIC conjectureNoFilter__option_t { typedef bool type; type operator()() const; bool wasSetByUser() const; } conjectureNoFilter CVC4_PUBLIC;
#line 231 "../../../src/options/quantifiers_options"
extern struct CVC4_PUBLIC conjectureFilterActiveTerms__option_t { typedef bool type; type operator()() const; bool wasSetByUser() const; void set(const type& v); } conjectureFilterActiveTerms CVC4_PUBLIC;
#line 233 "../../../src/options/quantifiers_options"
extern struct CVC4_PUBLIC conjectureFilterCanonical__option_t { typedef bool type; type operator()() const; bool wasSetByUser() const; void set(const type& v); } conjectureFilterCanonical CVC4_PUBLIC;
#line 235 "../../../src/options/quantifiers_options"
extern struct CVC4_PUBLIC conjectureFilterModel__option_t { typedef bool type; type operator()() const; bool wasSetByUser() const; void set(const type& v); } conjectureFilterModel CVC4_PUBLIC;
#line 237 "../../../src/options/quantifiers_options"
extern struct CVC4_PUBLIC conjectureGenGtEnum__option_t { typedef int type; type operator()() const; bool wasSetByUser() const; } conjectureGenGtEnum CVC4_PUBLIC;
#line 239 "../../../src/options/quantifiers_options"
extern struct CVC4_PUBLIC conjectureUeeIntro__option_t { typedef bool type; type operator()() const; bool wasSetByUser() const; } conjectureUeeIntro CVC4_PUBLIC;
#line 241 "../../../src/options/quantifiers_options"
extern struct CVC4_PUBLIC conjectureGenMaxDepth__option_t { typedef int type; type operator()() const; bool wasSetByUser() const; } conjectureGenMaxDepth CVC4_PUBLIC;
#line 246 "../../../src/options/quantifiers_options"
extern struct CVC4_PUBLIC ceGuidedInst__option_t { typedef bool type; type operator()() const; bool wasSetByUser() const; void set(const type& v); } ceGuidedInst CVC4_PUBLIC;
#line 248 "../../../src/options/quantifiers_options"
extern struct CVC4_PUBLIC ceGuidedInstFair__option_t { typedef CVC4::theory::quantifiers::CegqiFairMode type; type operator()() const; bool wasSetByUser() const; } ceGuidedInstFair CVC4_PUBLIC;
#line 250 "../../../src/options/quantifiers_options"
extern struct CVC4_PUBLIC cegqiSingleInvMode__option_t { typedef CVC4::theory::quantifiers::CegqiSingleInvMode type; type operator()() const; bool wasSetByUser() const; void set(const type& v); } cegqiSingleInvMode CVC4_PUBLIC;
#line 252 "../../../src/options/quantifiers_options"
extern struct CVC4_PUBLIC cegqiSingleInvPartial__option_t { typedef bool type; type operator()() const; bool wasSetByUser() const; } cegqiSingleInvPartial CVC4_PUBLIC;
#line 254 "../../../src/options/quantifiers_options"
extern struct CVC4_PUBLIC cegqiSingleInvReconstruct__option_t { typedef bool type; type operator()() const; bool wasSetByUser() const; } cegqiSingleInvReconstruct CVC4_PUBLIC;
#line 256 "../../../src/options/quantifiers_options"
extern struct CVC4_PUBLIC cegqiSolMinCore__option_t { typedef bool type; type operator()() const; bool wasSetByUser() const; } cegqiSolMinCore CVC4_PUBLIC;
#line 258 "../../../src/options/quantifiers_options"
extern struct CVC4_PUBLIC cegqiSolMinInst__option_t { typedef bool type; type operator()() const; bool wasSetByUser() const; } cegqiSolMinInst CVC4_PUBLIC;
#line 260 "../../../src/options/quantifiers_options"
extern struct CVC4_PUBLIC cegqiSingleInvReconstructConst__option_t { typedef bool type; type operator()() const; bool wasSetByUser() const; } cegqiSingleInvReconstructConst CVC4_PUBLIC;
#line 262 "../../../src/options/quantifiers_options"
extern struct CVC4_PUBLIC cegqiSingleInvAbort__option_t { typedef bool type; type operator()() const; bool wasSetByUser() const; } cegqiSingleInvAbort CVC4_PUBLIC;
#line 265 "../../../src/options/quantifiers_options"
extern struct CVC4_PUBLIC sygusNormalForm__option_t { typedef bool type; type operator()() const; bool wasSetByUser() const; } sygusNormalForm CVC4_PUBLIC;
#line 267 "../../../src/options/quantifiers_options"
extern struct CVC4_PUBLIC sygusNormalFormArg__option_t { typedef bool type; type operator()() const; bool wasSetByUser() const; } sygusNormalFormArg CVC4_PUBLIC;
#line 269 "../../../src/options/quantifiers_options"
extern struct CVC4_PUBLIC sygusNormalFormGlobal__option_t { typedef bool type; type operator()() const; bool wasSetByUser() const; } sygusNormalFormGlobal CVC4_PUBLIC;
#line 271 "../../../src/options/quantifiers_options"
extern struct CVC4_PUBLIC sygusNormalFormGlobalGen__option_t { typedef bool type; type operator()() const; bool wasSetByUser() const; } sygusNormalFormGlobalGen CVC4_PUBLIC;
#line 273 "../../../src/options/quantifiers_options"
extern struct CVC4_PUBLIC sygusNormalFormGlobalArg__option_t { typedef bool type; type operator()() const; bool wasSetByUser() const; } sygusNormalFormGlobalArg CVC4_PUBLIC;
#line 275 "../../../src/options/quantifiers_options"
extern struct CVC4_PUBLIC sygusNormalFormGlobalContent__option_t { typedef bool type; type operator()() const; bool wasSetByUser() const; } sygusNormalFormGlobalContent CVC4_PUBLIC;
#line 278 "../../../src/options/quantifiers_options"
extern struct CVC4_PUBLIC sygusInvTemplMode__option_t { typedef CVC4::theory::quantifiers::SygusInvTemplMode type; type operator()() const; bool wasSetByUser() const; } sygusInvTemplMode CVC4_PUBLIC;
#line 280 "../../../src/options/quantifiers_options"
extern struct CVC4_PUBLIC sygusUnifCondSol__option_t { typedef bool type; type operator()() const; bool wasSetByUser() const; } sygusUnifCondSol CVC4_PUBLIC;
#line 283 "../../../src/options/quantifiers_options"
extern struct CVC4_PUBLIC sygusDirectEval__option_t { typedef bool type; type operator()() const; bool wasSetByUser() const; } sygusDirectEval CVC4_PUBLIC;
#line 285 "../../../src/options/quantifiers_options"
extern struct CVC4_PUBLIC sygusCRefEval__option_t { typedef bool type; type operator()() const; bool wasSetByUser() const; } sygusCRefEval CVC4_PUBLIC;
#line 289 "../../../src/options/quantifiers_options"
extern struct CVC4_PUBLIC cbqi__option_t { typedef bool type; type operator()() const; bool wasSetByUser() const; void set(const type& v); } cbqi CVC4_PUBLIC;
#line 291 "../../../src/options/quantifiers_options"
extern struct CVC4_PUBLIC recurseCbqi__option_t { typedef bool type; type operator()() const; bool wasSetByUser() const; } recurseCbqi CVC4_PUBLIC;
#line 293 "../../../src/options/quantifiers_options"
extern struct CVC4_PUBLIC cbqiSat__option_t { typedef bool type; type operator()() const; bool wasSetByUser() const; void set(const type& v); } cbqiSat CVC4_PUBLIC;
#line 295 "../../../src/options/quantifiers_options"
extern struct CVC4_PUBLIC cbqiModel__option_t { typedef bool type; type operator()() const; bool wasSetByUser() const; void set(const type& v); } cbqiModel CVC4_PUBLIC;
#line 297 "../../../src/options/quantifiers_options"
extern struct CVC4_PUBLIC cbqiAll__option_t { typedef bool type; type operator()() const; bool wasSetByUser() const; void set(const type& v); } cbqiAll CVC4_PUBLIC;
#line 299 "../../../src/options/quantifiers_options"
extern struct CVC4_PUBLIC cbqiUseInfInt__option_t { typedef bool type; type operator()() const; bool wasSetByUser() const; void set(const type& v); } cbqiUseInfInt CVC4_PUBLIC;
#line 301 "../../../src/options/quantifiers_options"
extern struct CVC4_PUBLIC cbqiUseInfReal__option_t { typedef bool type; type operator()() const; bool wasSetByUser() const; void set(const type& v); } cbqiUseInfReal CVC4_PUBLIC;
#line 303 "../../../src/options/quantifiers_options"
extern struct CVC4_PUBLIC cbqiPreRegInst__option_t { typedef bool type; type operator()() const; bool wasSetByUser() const; void set(const type& v); } cbqiPreRegInst CVC4_PUBLIC;
#line 305 "../../../src/options/quantifiers_options"
extern struct CVC4_PUBLIC cbqiMinBounds__option_t { typedef bool type; type operator()() const; bool wasSetByUser() const; } cbqiMinBounds CVC4_PUBLIC;
#line 307 "../../../src/options/quantifiers_options"
extern struct CVC4_PUBLIC cbqiRoundUpLowerLia__option_t { typedef bool type; type operator()() const; bool wasSetByUser() const; } cbqiRoundUpLowerLia CVC4_PUBLIC;
#line 309 "../../../src/options/quantifiers_options"
extern struct CVC4_PUBLIC cbqiMidpoint__option_t { typedef bool type; type operator()() const; bool wasSetByUser() const; } cbqiMidpoint CVC4_PUBLIC;
#line 311 "../../../src/options/quantifiers_options"
extern struct CVC4_PUBLIC cbqiNopt__option_t { typedef bool type; type operator()() const; bool wasSetByUser() const; } cbqiNopt CVC4_PUBLIC;
#line 313 "../../../src/options/quantifiers_options"
extern struct CVC4_PUBLIC cbqiLitDepend__option_t { typedef bool type; type operator()() const; bool wasSetByUser() const; } cbqiLitDepend CVC4_PUBLIC;
#line 315 "../../../src/options/quantifiers_options"
extern struct CVC4_PUBLIC cbqiInnermost__option_t { typedef bool type; type operator()() const; bool wasSetByUser() const; void set(const type& v); } cbqiInnermost CVC4_PUBLIC;
#line 317 "../../../src/options/quantifiers_options"
extern struct CVC4_PUBLIC cbqiNestedQE__option_t { typedef bool type; type operator()() const; bool wasSetByUser() const; void set(const type& v); } cbqiNestedQE CVC4_PUBLIC;
#line 320 "../../../src/options/quantifiers_options"
extern struct CVC4_PUBLIC quantEpr__option_t { typedef bool type; type operator()() const; bool wasSetByUser() const; void set(const type& v); } quantEpr CVC4_PUBLIC;
#line 322 "../../../src/options/quantifiers_options"
extern struct CVC4_PUBLIC quantEprMatching__option_t { typedef bool type; type operator()() const; bool wasSetByUser() const; } quantEprMatching CVC4_PUBLIC;
#line 327 "../../../src/options/quantifiers_options"
extern struct CVC4_PUBLIC localTheoryExt__option_t { typedef bool type; type operator()() const; bool wasSetByUser() const; } localTheoryExt CVC4_PUBLIC;
#line 329 "../../../src/options/quantifiers_options"
extern struct CVC4_PUBLIC ltePartialInst__option_t { typedef bool type; type operator()() const; bool wasSetByUser() const; } ltePartialInst CVC4_PUBLIC;
#line 331 "../../../src/options/quantifiers_options"
extern struct CVC4_PUBLIC lteRestrictInstClosure__option_t { typedef bool type; type operator()() const; bool wasSetByUser() const; } lteRestrictInstClosure CVC4_PUBLIC;
#line 336 "../../../src/options/quantifiers_options"
extern struct CVC4_PUBLIC quantAlphaEquiv__option_t { typedef bool type; type operator()() const; bool wasSetByUser() const; } quantAlphaEquiv CVC4_PUBLIC;
#line 338 "../../../src/options/quantifiers_options"
extern struct CVC4_PUBLIC macrosQuant__option_t { typedef bool type; type operator()() const; bool wasSetByUser() const; void set(const type& v); } macrosQuant CVC4_PUBLIC;
#line 340 "../../../src/options/quantifiers_options"
extern struct CVC4_PUBLIC macrosQuantMode__option_t { typedef CVC4::theory::quantifiers::MacrosQuantMode type; type operator()() const; bool wasSetByUser() const; } macrosQuantMode CVC4_PUBLIC;
#line 342 "../../../src/options/quantifiers_options"
extern struct CVC4_PUBLIC quantDynamicSplit__option_t { typedef CVC4::theory::quantifiers::QuantDSplitMode type; type operator()() const; bool wasSetByUser() const; void set(const type& v); } quantDynamicSplit CVC4_PUBLIC;
#line 344 "../../../src/options/quantifiers_options"
extern struct CVC4_PUBLIC quantAntiSkolem__option_t { typedef bool type; type operator()() const; bool wasSetByUser() const; void set(const type& v); } quantAntiSkolem CVC4_PUBLIC;
#line 354 "../../../src/options/quantifiers_options"
extern struct CVC4_PUBLIC quantEqualityEngine__option_t { typedef bool type; type operator()() const; bool wasSetByUser() const; } quantEqualityEngine CVC4_PUBLIC;
#line 359 "../../../src/options/quantifiers_options"
extern struct CVC4_PUBLIC trackInstLemmas__option_t { typedef bool type; type operator()() const; bool wasSetByUser() const; void set(const type& v); } trackInstLemmas CVC4_PUBLIC;

#line 38 "../../../src/options/base_options_template.h"

}/* CVC4::options namespace */


#line 13 "../../../src/options/quantifiers_options"
template <> void Options::set(options::miniscopeQuant__option_t, const options::miniscopeQuant__option_t::type& x);
#line 13 "../../../src/options/quantifiers_options"
template <> const options::miniscopeQuant__option_t::type& Options::operator[](options::miniscopeQuant__option_t) const;
#line 13 "../../../src/options/quantifiers_options"
template <> bool Options::wasSetByUser(options::miniscopeQuant__option_t) const;
#line 13 "../../../src/options/quantifiers_options"
template <> void Options::assignBool(options::miniscopeQuant__option_t, std::string option, bool value);
#line 18 "../../../src/options/quantifiers_options"
template <> void Options::set(options::miniscopeQuantFreeVar__option_t, const options::miniscopeQuantFreeVar__option_t::type& x);
#line 18 "../../../src/options/quantifiers_options"
template <> const options::miniscopeQuantFreeVar__option_t::type& Options::operator[](options::miniscopeQuantFreeVar__option_t) const;
#line 18 "../../../src/options/quantifiers_options"
template <> bool Options::wasSetByUser(options::miniscopeQuantFreeVar__option_t) const;
#line 18 "../../../src/options/quantifiers_options"
template <> void Options::assignBool(options::miniscopeQuantFreeVar__option_t, std::string option, bool value);
#line 20 "../../../src/options/quantifiers_options"
template <> void Options::set(options::quantSplit__option_t, const options::quantSplit__option_t::type& x);
#line 20 "../../../src/options/quantifiers_options"
template <> const options::quantSplit__option_t::type& Options::operator[](options::quantSplit__option_t) const;
#line 20 "../../../src/options/quantifiers_options"
template <> bool Options::wasSetByUser(options::quantSplit__option_t) const;
#line 20 "../../../src/options/quantifiers_options"
template <> void Options::assignBool(options::quantSplit__option_t, std::string option, bool value);
#line 22 "../../../src/options/quantifiers_options"
template <> void Options::set(options::prenexQuant__option_t, const options::prenexQuant__option_t::type& x);
#line 22 "../../../src/options/quantifiers_options"
template <> const options::prenexQuant__option_t::type& Options::operator[](options::prenexQuant__option_t) const;
#line 22 "../../../src/options/quantifiers_options"
template <> bool Options::wasSetByUser(options::prenexQuant__option_t) const;
#line 22 "../../../src/options/quantifiers_options"
template <> void Options::assign(options::prenexQuant__option_t, std::string option, std::string value);
#line 24 "../../../src/options/quantifiers_options"
template <> void Options::set(options::prenexQuantUser__option_t, const options::prenexQuantUser__option_t::type& x);
#line 24 "../../../src/options/quantifiers_options"
template <> const options::prenexQuantUser__option_t::type& Options::operator[](options::prenexQuantUser__option_t) const;
#line 24 "../../../src/options/quantifiers_options"
template <> bool Options::wasSetByUser(options::prenexQuantUser__option_t) const;
#line 24 "../../../src/options/quantifiers_options"
template <> void Options::assignBool(options::prenexQuantUser__option_t, std::string option, bool value);
#line 29 "../../../src/options/quantifiers_options"
template <> const options::varElimQuant__option_t::type& Options::operator[](options::varElimQuant__option_t) const;
#line 29 "../../../src/options/quantifiers_options"
template <> bool Options::wasSetByUser(options::varElimQuant__option_t) const;
#line 29 "../../../src/options/quantifiers_options"
template <> void Options::assignBool(options::varElimQuant__option_t, std::string option, bool value);
#line 31 "../../../src/options/quantifiers_options"
template <> const options::varIneqElimQuant__option_t::type& Options::operator[](options::varIneqElimQuant__option_t) const;
#line 31 "../../../src/options/quantifiers_options"
template <> bool Options::wasSetByUser(options::varIneqElimQuant__option_t) const;
#line 31 "../../../src/options/quantifiers_options"
template <> void Options::assignBool(options::varIneqElimQuant__option_t, std::string option, bool value);
#line 33 "../../../src/options/quantifiers_options"
template <> const options::dtVarExpandQuant__option_t::type& Options::operator[](options::dtVarExpandQuant__option_t) const;
#line 33 "../../../src/options/quantifiers_options"
template <> bool Options::wasSetByUser(options::dtVarExpandQuant__option_t) const;
#line 33 "../../../src/options/quantifiers_options"
template <> void Options::assignBool(options::dtVarExpandQuant__option_t, std::string option, bool value);
#line 36 "../../../src/options/quantifiers_options"
template <> void Options::set(options::iteLiftQuant__option_t, const options::iteLiftQuant__option_t::type& x);
#line 36 "../../../src/options/quantifiers_options"
template <> const options::iteLiftQuant__option_t::type& Options::operator[](options::iteLiftQuant__option_t) const;
#line 36 "../../../src/options/quantifiers_options"
template <> bool Options::wasSetByUser(options::iteLiftQuant__option_t) const;
#line 36 "../../../src/options/quantifiers_options"
template <> void Options::assign(options::iteLiftQuant__option_t, std::string option, std::string value);
#line 38 "../../../src/options/quantifiers_options"
template <> const options::condVarSplitQuant__option_t::type& Options::operator[](options::condVarSplitQuant__option_t) const;
#line 38 "../../../src/options/quantifiers_options"
template <> bool Options::wasSetByUser(options::condVarSplitQuant__option_t) const;
#line 38 "../../../src/options/quantifiers_options"
template <> void Options::assignBool(options::condVarSplitQuant__option_t, std::string option, bool value);
#line 40 "../../../src/options/quantifiers_options"
template <> const options::condVarSplitQuantAgg__option_t::type& Options::operator[](options::condVarSplitQuantAgg__option_t) const;
#line 40 "../../../src/options/quantifiers_options"
template <> bool Options::wasSetByUser(options::condVarSplitQuantAgg__option_t) const;
#line 40 "../../../src/options/quantifiers_options"
template <> void Options::assignBool(options::condVarSplitQuantAgg__option_t, std::string option, bool value);
#line 42 "../../../src/options/quantifiers_options"
template <> void Options::set(options::iteDtTesterSplitQuant__option_t, const options::iteDtTesterSplitQuant__option_t::type& x);
#line 42 "../../../src/options/quantifiers_options"
template <> const options::iteDtTesterSplitQuant__option_t::type& Options::operator[](options::iteDtTesterSplitQuant__option_t) const;
#line 42 "../../../src/options/quantifiers_options"
template <> bool Options::wasSetByUser(options::iteDtTesterSplitQuant__option_t) const;
#line 42 "../../../src/options/quantifiers_options"
template <> void Options::assignBool(options::iteDtTesterSplitQuant__option_t, std::string option, bool value);
#line 47 "../../../src/options/quantifiers_options"
template <> void Options::set(options::preSkolemQuant__option_t, const options::preSkolemQuant__option_t::type& x);
#line 47 "../../../src/options/quantifiers_options"
template <> const options::preSkolemQuant__option_t::type& Options::operator[](options::preSkolemQuant__option_t) const;
#line 47 "../../../src/options/quantifiers_options"
template <> bool Options::wasSetByUser(options::preSkolemQuant__option_t) const;
#line 47 "../../../src/options/quantifiers_options"
template <> void Options::assignBool(options::preSkolemQuant__option_t, std::string option, bool value);
#line 49 "../../../src/options/quantifiers_options"
template <> void Options::set(options::preSkolemQuantNested__option_t, const options::preSkolemQuantNested__option_t::type& x);
#line 49 "../../../src/options/quantifiers_options"
template <> const options::preSkolemQuantNested__option_t::type& Options::operator[](options::preSkolemQuantNested__option_t) const;
#line 49 "../../../src/options/quantifiers_options"
template <> bool Options::wasSetByUser(options::preSkolemQuantNested__option_t) const;
#line 49 "../../../src/options/quantifiers_options"
template <> void Options::assignBool(options::preSkolemQuantNested__option_t, std::string option, bool value);
#line 51 "../../../src/options/quantifiers_options"
template <> void Options::set(options::preSkolemQuantAgg__option_t, const options::preSkolemQuantAgg__option_t::type& x);
#line 51 "../../../src/options/quantifiers_options"
template <> const options::preSkolemQuantAgg__option_t::type& Options::operator[](options::preSkolemQuantAgg__option_t) const;
#line 51 "../../../src/options/quantifiers_options"
template <> bool Options::wasSetByUser(options::preSkolemQuantAgg__option_t) const;
#line 51 "../../../src/options/quantifiers_options"
template <> void Options::assignBool(options::preSkolemQuantAgg__option_t, std::string option, bool value);
#line 53 "../../../src/options/quantifiers_options"
template <> const options::aggressiveMiniscopeQuant__option_t::type& Options::operator[](options::aggressiveMiniscopeQuant__option_t) const;
#line 53 "../../../src/options/quantifiers_options"
template <> bool Options::wasSetByUser(options::aggressiveMiniscopeQuant__option_t) const;
#line 53 "../../../src/options/quantifiers_options"
template <> void Options::assignBool(options::aggressiveMiniscopeQuant__option_t, std::string option, bool value);
#line 55 "../../../src/options/quantifiers_options"
template <> const options::elimTautQuant__option_t::type& Options::operator[](options::elimTautQuant__option_t) const;
#line 55 "../../../src/options/quantifiers_options"
template <> bool Options::wasSetByUser(options::elimTautQuant__option_t) const;
#line 55 "../../../src/options/quantifiers_options"
template <> void Options::assignBool(options::elimTautQuant__option_t, std::string option, bool value);
#line 57 "../../../src/options/quantifiers_options"
template <> void Options::set(options::elimExtArithQuant__option_t, const options::elimExtArithQuant__option_t::type& x);
#line 57 "../../../src/options/quantifiers_options"
template <> const options::elimExtArithQuant__option_t::type& Options::operator[](options::elimExtArithQuant__option_t) const;
#line 57 "../../../src/options/quantifiers_options"
template <> bool Options::wasSetByUser(options::elimExtArithQuant__option_t) const;
#line 57 "../../../src/options/quantifiers_options"
template <> void Options::assignBool(options::elimExtArithQuant__option_t, std::string option, bool value);
#line 59 "../../../src/options/quantifiers_options"
template <> const options::condRewriteQuant__option_t::type& Options::operator[](options::condRewriteQuant__option_t) const;
#line 59 "../../../src/options/quantifiers_options"
template <> bool Options::wasSetByUser(options::condRewriteQuant__option_t) const;
#line 59 "../../../src/options/quantifiers_options"
template <> void Options::assignBool(options::condRewriteQuant__option_t, std::string option, bool value);
#line 64 "../../../src/options/quantifiers_options"
template <> void Options::set(options::eMatching__option_t, const options::eMatching__option_t::type& x);
#line 64 "../../../src/options/quantifiers_options"
template <> const options::eMatching__option_t::type& Options::operator[](options::eMatching__option_t) const;
#line 64 "../../../src/options/quantifiers_options"
template <> bool Options::wasSetByUser(options::eMatching__option_t) const;
#line 64 "../../../src/options/quantifiers_options"
template <> void Options::assignBool(options::eMatching__option_t, std::string option, bool value);
#line 67 "../../../src/options/quantifiers_options"
template <> void Options::set(options::termDbMode__option_t, const options::termDbMode__option_t::type& x);
#line 67 "../../../src/options/quantifiers_options"
template <> const options::termDbMode__option_t::type& Options::operator[](options::termDbMode__option_t) const;
#line 67 "../../../src/options/quantifiers_options"
template <> bool Options::wasSetByUser(options::termDbMode__option_t) const;
#line 67 "../../../src/options/quantifiers_options"
template <> void Options::assign(options::termDbMode__option_t, std::string option, std::string value);
#line 69 "../../../src/options/quantifiers_options"
template <> const options::registerQuantBodyTerms__option_t::type& Options::operator[](options::registerQuantBodyTerms__option_t) const;
#line 69 "../../../src/options/quantifiers_options"
template <> bool Options::wasSetByUser(options::registerQuantBodyTerms__option_t) const;
#line 69 "../../../src/options/quantifiers_options"
template <> void Options::assignBool(options::registerQuantBodyTerms__option_t, std::string option, bool value);
#line 71 "../../../src/options/quantifiers_options"
template <> const options::inferArithTriggerEq__option_t::type& Options::operator[](options::inferArithTriggerEq__option_t) const;
#line 71 "../../../src/options/quantifiers_options"
template <> bool Options::wasSetByUser(options::inferArithTriggerEq__option_t) const;
#line 71 "../../../src/options/quantifiers_options"
template <> void Options::assignBool(options::inferArithTriggerEq__option_t, std::string option, bool value);
#line 73 "../../../src/options/quantifiers_options"
template <> const options::inferArithTriggerEqExp__option_t::type& Options::operator[](options::inferArithTriggerEqExp__option_t) const;
#line 73 "../../../src/options/quantifiers_options"
template <> bool Options::wasSetByUser(options::inferArithTriggerEqExp__option_t) const;
#line 73 "../../../src/options/quantifiers_options"
template <> void Options::assignBool(options::inferArithTriggerEqExp__option_t, std::string option, bool value);
#line 76 "../../../src/options/quantifiers_options"
template <> const options::strictTriggers__option_t::type& Options::operator[](options::strictTriggers__option_t) const;
#line 76 "../../../src/options/quantifiers_options"
template <> bool Options::wasSetByUser(options::strictTriggers__option_t) const;
#line 76 "../../../src/options/quantifiers_options"
template <> void Options::assignBool(options::strictTriggers__option_t, std::string option, bool value);
#line 78 "../../../src/options/quantifiers_options"
template <> const options::relevantTriggers__option_t::type& Options::operator[](options::relevantTriggers__option_t) const;
#line 78 "../../../src/options/quantifiers_options"
template <> bool Options::wasSetByUser(options::relevantTriggers__option_t) const;
#line 78 "../../../src/options/quantifiers_options"
template <> void Options::assignBool(options::relevantTriggers__option_t, std::string option, bool value);
#line 80 "../../../src/options/quantifiers_options"
template <> const options::relationalTriggers__option_t::type& Options::operator[](options::relationalTriggers__option_t) const;
#line 80 "../../../src/options/quantifiers_options"
template <> bool Options::wasSetByUser(options::relationalTriggers__option_t) const;
#line 80 "../../../src/options/quantifiers_options"
template <> void Options::assignBool(options::relationalTriggers__option_t, std::string option, bool value);
#line 82 "../../../src/options/quantifiers_options"
template <> void Options::set(options::purifyTriggers__option_t, const options::purifyTriggers__option_t::type& x);
#line 82 "../../../src/options/quantifiers_options"
template <> const options::purifyTriggers__option_t::type& Options::operator[](options::purifyTriggers__option_t) const;
#line 82 "../../../src/options/quantifiers_options"
template <> bool Options::wasSetByUser(options::purifyTriggers__option_t) const;
#line 82 "../../../src/options/quantifiers_options"
template <> void Options::assignBool(options::purifyTriggers__option_t, std::string option, bool value);
#line 84 "../../../src/options/quantifiers_options"
template <> void Options::set(options::purifyDtTriggers__option_t, const options::purifyDtTriggers__option_t::type& x);
#line 84 "../../../src/options/quantifiers_options"
template <> const options::purifyDtTriggers__option_t::type& Options::operator[](options::purifyDtTriggers__option_t) const;
#line 84 "../../../src/options/quantifiers_options"
template <> bool Options::wasSetByUser(options::purifyDtTriggers__option_t) const;
#line 84 "../../../src/options/quantifiers_options"
template <> void Options::assignBool(options::purifyDtTriggers__option_t, std::string option, bool value);
#line 86 "../../../src/options/quantifiers_options"
template <> void Options::set(options::pureThTriggers__option_t, const options::pureThTriggers__option_t::type& x);
#line 86 "../../../src/options/quantifiers_options"
template <> const options::pureThTriggers__option_t::type& Options::operator[](options::pureThTriggers__option_t) const;
#line 86 "../../../src/options/quantifiers_options"
template <> bool Options::wasSetByUser(options::pureThTriggers__option_t) const;
#line 86 "../../../src/options/quantifiers_options"
template <> void Options::assignBool(options::pureThTriggers__option_t, std::string option, bool value);
#line 88 "../../../src/options/quantifiers_options"
template <> void Options::set(options::partialTriggers__option_t, const options::partialTriggers__option_t::type& x);
#line 88 "../../../src/options/quantifiers_options"
template <> const options::partialTriggers__option_t::type& Options::operator[](options::partialTriggers__option_t) const;
#line 88 "../../../src/options/quantifiers_options"
template <> bool Options::wasSetByUser(options::partialTriggers__option_t) const;
#line 88 "../../../src/options/quantifiers_options"
template <> void Options::assignBool(options::partialTriggers__option_t, std::string option, bool value);
#line 90 "../../../src/options/quantifiers_options"
template <> const options::multiTriggerWhenSingle__option_t::type& Options::operator[](options::multiTriggerWhenSingle__option_t) const;
#line 90 "../../../src/options/quantifiers_options"
template <> bool Options::wasSetByUser(options::multiTriggerWhenSingle__option_t) const;
#line 90 "../../../src/options/quantifiers_options"
template <> void Options::assignBool(options::multiTriggerWhenSingle__option_t, std::string option, bool value);
#line 92 "../../../src/options/quantifiers_options"
template <> const options::multiTriggerPriority__option_t::type& Options::operator[](options::multiTriggerPriority__option_t) const;
#line 92 "../../../src/options/quantifiers_options"
template <> bool Options::wasSetByUser(options::multiTriggerPriority__option_t) const;
#line 92 "../../../src/options/quantifiers_options"
template <> void Options::assignBool(options::multiTriggerPriority__option_t, std::string option, bool value);
#line 94 "../../../src/options/quantifiers_options"
template <> const options::multiTriggerCache__option_t::type& Options::operator[](options::multiTriggerCache__option_t) const;
#line 94 "../../../src/options/quantifiers_options"
template <> bool Options::wasSetByUser(options::multiTriggerCache__option_t) const;
#line 94 "../../../src/options/quantifiers_options"
template <> void Options::assignBool(options::multiTriggerCache__option_t, std::string option, bool value);
#line 96 "../../../src/options/quantifiers_options"
template <> const options::multiTriggerLinear__option_t::type& Options::operator[](options::multiTriggerLinear__option_t) const;
#line 96 "../../../src/options/quantifiers_options"
template <> bool Options::wasSetByUser(options::multiTriggerLinear__option_t) const;
#line 96 "../../../src/options/quantifiers_options"
template <> void Options::assignBool(options::multiTriggerLinear__option_t, std::string option, bool value);
#line 98 "../../../src/options/quantifiers_options"
template <> void Options::set(options::triggerSelMode__option_t, const options::triggerSelMode__option_t::type& x);
#line 98 "../../../src/options/quantifiers_options"
template <> const options::triggerSelMode__option_t::type& Options::operator[](options::triggerSelMode__option_t) const;
#line 98 "../../../src/options/quantifiers_options"
template <> bool Options::wasSetByUser(options::triggerSelMode__option_t) const;
#line 98 "../../../src/options/quantifiers_options"
template <> void Options::assign(options::triggerSelMode__option_t, std::string option, std::string value);
#line 100 "../../../src/options/quantifiers_options"
template <> void Options::set(options::triggerActiveSelMode__option_t, const options::triggerActiveSelMode__option_t::type& x);
#line 100 "../../../src/options/quantifiers_options"
template <> const options::triggerActiveSelMode__option_t::type& Options::operator[](options::triggerActiveSelMode__option_t) const;
#line 100 "../../../src/options/quantifiers_options"
template <> bool Options::wasSetByUser(options::triggerActiveSelMode__option_t) const;
#line 100 "../../../src/options/quantifiers_options"
template <> void Options::assign(options::triggerActiveSelMode__option_t, std::string option, std::string value);
#line 102 "../../../src/options/quantifiers_options"
template <> void Options::set(options::userPatternsQuant__option_t, const options::userPatternsQuant__option_t::type& x);
#line 102 "../../../src/options/quantifiers_options"
template <> const options::userPatternsQuant__option_t::type& Options::operator[](options::userPatternsQuant__option_t) const;
#line 102 "../../../src/options/quantifiers_options"
template <> bool Options::wasSetByUser(options::userPatternsQuant__option_t) const;
#line 102 "../../../src/options/quantifiers_options"
template <> void Options::assign(options::userPatternsQuant__option_t, std::string option, std::string value);
#line 104 "../../../src/options/quantifiers_options"
template <> const options::incrementTriggers__option_t::type& Options::operator[](options::incrementTriggers__option_t) const;
#line 104 "../../../src/options/quantifiers_options"
template <> bool Options::wasSetByUser(options::incrementTriggers__option_t) const;
#line 104 "../../../src/options/quantifiers_options"
template <> void Options::assignBool(options::incrementTriggers__option_t, std::string option, bool value);
#line 107 "../../../src/options/quantifiers_options"
template <> void Options::set(options::instWhenMode__option_t, const options::instWhenMode__option_t::type& x);
#line 107 "../../../src/options/quantifiers_options"
template <> const options::instWhenMode__option_t::type& Options::operator[](options::instWhenMode__option_t) const;
#line 107 "../../../src/options/quantifiers_options"
template <> bool Options::wasSetByUser(options::instWhenMode__option_t) const;
#line 107 "../../../src/options/quantifiers_options"
template <> void Options::assign(options::instWhenMode__option_t, std::string option, std::string value);
#line 109 "../../../src/options/quantifiers_options"
template <> void Options::set(options::instWhenStrictInterleave__option_t, const options::instWhenStrictInterleave__option_t::type& x);
#line 109 "../../../src/options/quantifiers_options"
template <> const options::instWhenStrictInterleave__option_t::type& Options::operator[](options::instWhenStrictInterleave__option_t) const;
#line 109 "../../../src/options/quantifiers_options"
template <> bool Options::wasSetByUser(options::instWhenStrictInterleave__option_t) const;
#line 109 "../../../src/options/quantifiers_options"
template <> void Options::assignBool(options::instWhenStrictInterleave__option_t, std::string option, bool value);
#line 111 "../../../src/options/quantifiers_options"
template <> void Options::set(options::instWhenPhase__option_t, const options::instWhenPhase__option_t::type& x);
#line 111 "../../../src/options/quantifiers_options"
template <> const options::instWhenPhase__option_t::type& Options::operator[](options::instWhenPhase__option_t) const;
#line 111 "../../../src/options/quantifiers_options"
template <> bool Options::wasSetByUser(options::instWhenPhase__option_t) const;
#line 111 "../../../src/options/quantifiers_options"
template <> void Options::assign(options::instWhenPhase__option_t, std::string option, std::string value);
#line 113 "../../../src/options/quantifiers_options"
template <> void Options::set(options::instWhenTcFirst__option_t, const options::instWhenTcFirst__option_t::type& x);
#line 113 "../../../src/options/quantifiers_options"
template <> const options::instWhenTcFirst__option_t::type& Options::operator[](options::instWhenTcFirst__option_t) const;
#line 113 "../../../src/options/quantifiers_options"
template <> bool Options::wasSetByUser(options::instWhenTcFirst__option_t) const;
#line 113 "../../../src/options/quantifiers_options"
template <> void Options::assignBool(options::instWhenTcFirst__option_t, std::string option, bool value);
#line 115 "../../../src/options/quantifiers_options"
template <> const options::quantModelEe__option_t::type& Options::operator[](options::quantModelEe__option_t) const;
#line 115 "../../../src/options/quantifiers_options"
template <> bool Options::wasSetByUser(options::quantModelEe__option_t) const;
#line 115 "../../../src/options/quantifiers_options"
template <> void Options::assignBool(options::quantModelEe__option_t, std::string option, bool value);
#line 118 "../../../src/options/quantifiers_options"
template <> void Options::set(options::instMaxLevel__option_t, const options::instMaxLevel__option_t::type& x);
#line 118 "../../../src/options/quantifiers_options"
template <> const options::instMaxLevel__option_t::type& Options::operator[](options::instMaxLevel__option_t) const;
#line 118 "../../../src/options/quantifiers_options"
template <> bool Options::wasSetByUser(options::instMaxLevel__option_t) const;
#line 118 "../../../src/options/quantifiers_options"
template <> void Options::assign(options::instMaxLevel__option_t, std::string option, std::string value);
#line 120 "../../../src/options/quantifiers_options"
template <> const options::instLevelInputOnly__option_t::type& Options::operator[](options::instLevelInputOnly__option_t) const;
#line 120 "../../../src/options/quantifiers_options"
template <> bool Options::wasSetByUser(options::instLevelInputOnly__option_t) const;
#line 120 "../../../src/options/quantifiers_options"
template <> void Options::assignBool(options::instLevelInputOnly__option_t, std::string option, bool value);
#line 122 "../../../src/options/quantifiers_options"
template <> void Options::set(options::quantRepMode__option_t, const options::quantRepMode__option_t::type& x);
#line 122 "../../../src/options/quantifiers_options"
template <> const options::quantRepMode__option_t::type& Options::operator[](options::quantRepMode__option_t) const;
#line 122 "../../../src/options/quantifiers_options"
template <> bool Options::wasSetByUser(options::quantRepMode__option_t) const;
#line 122 "../../../src/options/quantifiers_options"
template <> void Options::assign(options::quantRepMode__option_t, std::string option, std::string value);
#line 124 "../../../src/options/quantifiers_options"
template <> const options::instRelevantCond__option_t::type& Options::operator[](options::instRelevantCond__option_t) const;
#line 124 "../../../src/options/quantifiers_options"
template <> bool Options::wasSetByUser(options::instRelevantCond__option_t) const;
#line 124 "../../../src/options/quantifiers_options"
template <> void Options::assignBool(options::instRelevantCond__option_t, std::string option, bool value);
#line 127 "../../../src/options/quantifiers_options"
template <> void Options::set(options::fullSaturateQuant__option_t, const options::fullSaturateQuant__option_t::type& x);
#line 127 "../../../src/options/quantifiers_options"
template <> const options::fullSaturateQuant__option_t::type& Options::operator[](options::fullSaturateQuant__option_t) const;
#line 127 "../../../src/options/quantifiers_options"
template <> bool Options::wasSetByUser(options::fullSaturateQuant__option_t) const;
#line 127 "../../../src/options/quantifiers_options"
template <> void Options::assignBool(options::fullSaturateQuant__option_t, std::string option, bool value);
#line 129 "../../../src/options/quantifiers_options"
template <> const options::fullSaturateQuantRd__option_t::type& Options::operator[](options::fullSaturateQuantRd__option_t) const;
#line 129 "../../../src/options/quantifiers_options"
template <> bool Options::wasSetByUser(options::fullSaturateQuantRd__option_t) const;
#line 129 "../../../src/options/quantifiers_options"
template <> void Options::assignBool(options::fullSaturateQuantRd__option_t, std::string option, bool value);
#line 131 "../../../src/options/quantifiers_options"
template <> const options::fullSaturateInst__option_t::type& Options::operator[](options::fullSaturateInst__option_t) const;
#line 131 "../../../src/options/quantifiers_options"
template <> bool Options::wasSetByUser(options::fullSaturateInst__option_t) const;
#line 131 "../../../src/options/quantifiers_options"
template <> void Options::assignBool(options::fullSaturateInst__option_t, std::string option, bool value);
#line 134 "../../../src/options/quantifiers_options"
template <> const options::literalMatchMode__option_t::type& Options::operator[](options::literalMatchMode__option_t) const;
#line 134 "../../../src/options/quantifiers_options"
template <> bool Options::wasSetByUser(options::literalMatchMode__option_t) const;
#line 134 "../../../src/options/quantifiers_options"
template <> void Options::assign(options::literalMatchMode__option_t, std::string option, std::string value);
#line 139 "../../../src/options/quantifiers_options"
template <> void Options::set(options::finiteModelFind__option_t, const options::finiteModelFind__option_t::type& x);
#line 139 "../../../src/options/quantifiers_options"
template <> const options::finiteModelFind__option_t::type& Options::operator[](options::finiteModelFind__option_t) const;
#line 139 "../../../src/options/quantifiers_options"
template <> bool Options::wasSetByUser(options::finiteModelFind__option_t) const;
#line 139 "../../../src/options/quantifiers_options"
template <> void Options::assignBool(options::finiteModelFind__option_t, std::string option, bool value);
#line 142 "../../../src/options/quantifiers_options"
template <> const options::quantFunWellDefined__option_t::type& Options::operator[](options::quantFunWellDefined__option_t) const;
#line 142 "../../../src/options/quantifiers_options"
template <> bool Options::wasSetByUser(options::quantFunWellDefined__option_t) const;
#line 142 "../../../src/options/quantifiers_options"
template <> void Options::assignBool(options::quantFunWellDefined__option_t, std::string option, bool value);
#line 144 "../../../src/options/quantifiers_options"
template <> void Options::set(options::fmfFunWellDefined__option_t, const options::fmfFunWellDefined__option_t::type& x);
#line 144 "../../../src/options/quantifiers_options"
template <> const options::fmfFunWellDefined__option_t::type& Options::operator[](options::fmfFunWellDefined__option_t) const;
#line 144 "../../../src/options/quantifiers_options"
template <> bool Options::wasSetByUser(options::fmfFunWellDefined__option_t) const;
#line 144 "../../../src/options/quantifiers_options"
template <> void Options::assignBool(options::fmfFunWellDefined__option_t, std::string option, bool value);
#line 146 "../../../src/options/quantifiers_options"
template <> const options::fmfFunWellDefinedRelevant__option_t::type& Options::operator[](options::fmfFunWellDefinedRelevant__option_t) const;
#line 146 "../../../src/options/quantifiers_options"
template <> bool Options::wasSetByUser(options::fmfFunWellDefinedRelevant__option_t) const;
#line 146 "../../../src/options/quantifiers_options"
template <> void Options::assignBool(options::fmfFunWellDefinedRelevant__option_t, std::string option, bool value);
#line 148 "../../../src/options/quantifiers_options"
template <> const options::fmfEmptySorts__option_t::type& Options::operator[](options::fmfEmptySorts__option_t) const;
#line 148 "../../../src/options/quantifiers_options"
template <> bool Options::wasSetByUser(options::fmfEmptySorts__option_t) const;
#line 148 "../../../src/options/quantifiers_options"
template <> void Options::assignBool(options::fmfEmptySorts__option_t, std::string option, bool value);
#line 151 "../../../src/options/quantifiers_options"
template <> void Options::set(options::mbqiMode__option_t, const options::mbqiMode__option_t::type& x);
#line 151 "../../../src/options/quantifiers_options"
template <> const options::mbqiMode__option_t::type& Options::operator[](options::mbqiMode__option_t) const;
#line 151 "../../../src/options/quantifiers_options"
template <> bool Options::wasSetByUser(options::mbqiMode__option_t) const;
#line 151 "../../../src/options/quantifiers_options"
template <> void Options::assign(options::mbqiMode__option_t, std::string option, std::string value);
#line 153 "../../../src/options/quantifiers_options"
template <> void Options::set(options::fmfOneInstPerRound__option_t, const options::fmfOneInstPerRound__option_t::type& x);
#line 153 "../../../src/options/quantifiers_options"
template <> const options::fmfOneInstPerRound__option_t::type& Options::operator[](options::fmfOneInstPerRound__option_t) const;
#line 153 "../../../src/options/quantifiers_options"
template <> bool Options::wasSetByUser(options::fmfOneInstPerRound__option_t) const;
#line 153 "../../../src/options/quantifiers_options"
template <> void Options::assignBool(options::fmfOneInstPerRound__option_t, std::string option, bool value);
#line 155 "../../../src/options/quantifiers_options"
template <> const options::fmfOneQuantPerRound__option_t::type& Options::operator[](options::fmfOneQuantPerRound__option_t) const;
#line 155 "../../../src/options/quantifiers_options"
template <> bool Options::wasSetByUser(options::fmfOneQuantPerRound__option_t) const;
#line 155 "../../../src/options/quantifiers_options"
template <> void Options::assignBool(options::fmfOneQuantPerRound__option_t, std::string option, bool value);
#line 158 "../../../src/options/quantifiers_options"
template <> void Options::set(options::fmfInstEngine__option_t, const options::fmfInstEngine__option_t::type& x);
#line 158 "../../../src/options/quantifiers_options"
template <> const options::fmfInstEngine__option_t::type& Options::operator[](options::fmfInstEngine__option_t) const;
#line 158 "../../../src/options/quantifiers_options"
template <> bool Options::wasSetByUser(options::fmfInstEngine__option_t) const;
#line 158 "../../../src/options/quantifiers_options"
template <> void Options::assignBool(options::fmfInstEngine__option_t, std::string option, bool value);
#line 160 "../../../src/options/quantifiers_options"
template <> const options::fmfInstGen__option_t::type& Options::operator[](options::fmfInstGen__option_t) const;
#line 160 "../../../src/options/quantifiers_options"
template <> bool Options::wasSetByUser(options::fmfInstGen__option_t) const;
#line 160 "../../../src/options/quantifiers_options"
template <> void Options::assignBool(options::fmfInstGen__option_t, std::string option, bool value);
#line 162 "../../../src/options/quantifiers_options"
template <> const options::fmfInstGenOneQuantPerRound__option_t::type& Options::operator[](options::fmfInstGenOneQuantPerRound__option_t) const;
#line 162 "../../../src/options/quantifiers_options"
template <> bool Options::wasSetByUser(options::fmfInstGenOneQuantPerRound__option_t) const;
#line 162 "../../../src/options/quantifiers_options"
template <> void Options::assignBool(options::fmfInstGenOneQuantPerRound__option_t, std::string option, bool value);
#line 164 "../../../src/options/quantifiers_options"
template <> const options::fmfFreshDistConst__option_t::type& Options::operator[](options::fmfFreshDistConst__option_t) const;
#line 164 "../../../src/options/quantifiers_options"
template <> bool Options::wasSetByUser(options::fmfFreshDistConst__option_t) const;
#line 164 "../../../src/options/quantifiers_options"
template <> void Options::assignBool(options::fmfFreshDistConst__option_t, std::string option, bool value);
#line 166 "../../../src/options/quantifiers_options"
template <> const options::fmfFmcSimple__option_t::type& Options::operator[](options::fmfFmcSimple__option_t) const;
#line 166 "../../../src/options/quantifiers_options"
template <> bool Options::wasSetByUser(options::fmfFmcSimple__option_t) const;
#line 166 "../../../src/options/quantifiers_options"
template <> void Options::assignBool(options::fmfFmcSimple__option_t, std::string option, bool value);
#line 168 "../../../src/options/quantifiers_options"
template <> void Options::set(options::fmfBoundInt__option_t, const options::fmfBoundInt__option_t::type& x);
#line 168 "../../../src/options/quantifiers_options"
template <> const options::fmfBoundInt__option_t::type& Options::operator[](options::fmfBoundInt__option_t) const;
#line 168 "../../../src/options/quantifiers_options"
template <> bool Options::wasSetByUser(options::fmfBoundInt__option_t) const;
#line 168 "../../../src/options/quantifiers_options"
template <> void Options::assignBool(options::fmfBoundInt__option_t, std::string option, bool value);
#line 170 "../../../src/options/quantifiers_options"
template <> void Options::set(options::fmfBound__option_t, const options::fmfBound__option_t::type& x);
#line 170 "../../../src/options/quantifiers_options"
template <> const options::fmfBound__option_t::type& Options::operator[](options::fmfBound__option_t) const;
#line 170 "../../../src/options/quantifiers_options"
template <> bool Options::wasSetByUser(options::fmfBound__option_t) const;
#line 170 "../../../src/options/quantifiers_options"
template <> void Options::assignBool(options::fmfBound__option_t, std::string option, bool value);
#line 172 "../../../src/options/quantifiers_options"
template <> void Options::set(options::fmfBoundLazy__option_t, const options::fmfBoundLazy__option_t::type& x);
#line 172 "../../../src/options/quantifiers_options"
template <> const options::fmfBoundLazy__option_t::type& Options::operator[](options::fmfBoundLazy__option_t) const;
#line 172 "../../../src/options/quantifiers_options"
template <> bool Options::wasSetByUser(options::fmfBoundLazy__option_t) const;
#line 172 "../../../src/options/quantifiers_options"
template <> void Options::assignBool(options::fmfBoundLazy__option_t, std::string option, bool value);
#line 174 "../../../src/options/quantifiers_options"
template <> const options::fmfBoundMinMode__option_t::type& Options::operator[](options::fmfBoundMinMode__option_t) const;
#line 174 "../../../src/options/quantifiers_options"
template <> bool Options::wasSetByUser(options::fmfBoundMinMode__option_t) const;
#line 174 "../../../src/options/quantifiers_options"
template <> void Options::assign(options::fmfBoundMinMode__option_t, std::string option, std::string value);
#line 179 "../../../src/options/quantifiers_options"
template <> void Options::set(options::quantConflictFind__option_t, const options::quantConflictFind__option_t::type& x);
#line 179 "../../../src/options/quantifiers_options"
template <> const options::quantConflictFind__option_t::type& Options::operator[](options::quantConflictFind__option_t) const;
#line 179 "../../../src/options/quantifiers_options"
template <> bool Options::wasSetByUser(options::quantConflictFind__option_t) const;
#line 179 "../../../src/options/quantifiers_options"
template <> void Options::assignBool(options::quantConflictFind__option_t, std::string option, bool value);
#line 181 "../../../src/options/quantifiers_options"
template <> const options::qcfMode__option_t::type& Options::operator[](options::qcfMode__option_t) const;
#line 181 "../../../src/options/quantifiers_options"
template <> bool Options::wasSetByUser(options::qcfMode__option_t) const;
#line 181 "../../../src/options/quantifiers_options"
template <> void Options::assign(options::qcfMode__option_t, std::string option, std::string value);
#line 183 "../../../src/options/quantifiers_options"
template <> const options::qcfWhenMode__option_t::type& Options::operator[](options::qcfWhenMode__option_t) const;
#line 183 "../../../src/options/quantifiers_options"
template <> bool Options::wasSetByUser(options::qcfWhenMode__option_t) const;
#line 183 "../../../src/options/quantifiers_options"
template <> void Options::assign(options::qcfWhenMode__option_t, std::string option, std::string value);
#line 185 "../../../src/options/quantifiers_options"
template <> void Options::set(options::qcfTConstraint__option_t, const options::qcfTConstraint__option_t::type& x);
#line 185 "../../../src/options/quantifiers_options"
template <> const options::qcfTConstraint__option_t::type& Options::operator[](options::qcfTConstraint__option_t) const;
#line 185 "../../../src/options/quantifiers_options"
template <> bool Options::wasSetByUser(options::qcfTConstraint__option_t) const;
#line 185 "../../../src/options/quantifiers_options"
template <> void Options::assignBool(options::qcfTConstraint__option_t, std::string option, bool value);
#line 187 "../../../src/options/quantifiers_options"
template <> void Options::set(options::qcfAllConflict__option_t, const options::qcfAllConflict__option_t::type& x);
#line 187 "../../../src/options/quantifiers_options"
template <> const options::qcfAllConflict__option_t::type& Options::operator[](options::qcfAllConflict__option_t) const;
#line 187 "../../../src/options/quantifiers_options"
template <> bool Options::wasSetByUser(options::qcfAllConflict__option_t) const;
#line 187 "../../../src/options/quantifiers_options"
template <> void Options::assignBool(options::qcfAllConflict__option_t, std::string option, bool value);
#line 189 "../../../src/options/quantifiers_options"
template <> const options::qcfNestedConflict__option_t::type& Options::operator[](options::qcfNestedConflict__option_t) const;
#line 189 "../../../src/options/quantifiers_options"
template <> bool Options::wasSetByUser(options::qcfNestedConflict__option_t) const;
#line 189 "../../../src/options/quantifiers_options"
template <> void Options::assignBool(options::qcfNestedConflict__option_t, std::string option, bool value);
#line 191 "../../../src/options/quantifiers_options"
template <> const options::qcfVoExp__option_t::type& Options::operator[](options::qcfVoExp__option_t) const;
#line 191 "../../../src/options/quantifiers_options"
template <> bool Options::wasSetByUser(options::qcfVoExp__option_t) const;
#line 191 "../../../src/options/quantifiers_options"
template <> void Options::assignBool(options::qcfVoExp__option_t, std::string option, bool value);
#line 194 "../../../src/options/quantifiers_options"
template <> void Options::set(options::instNoEntail__option_t, const options::instNoEntail__option_t::type& x);
#line 194 "../../../src/options/quantifiers_options"
template <> const options::instNoEntail__option_t::type& Options::operator[](options::instNoEntail__option_t) const;
#line 194 "../../../src/options/quantifiers_options"
template <> bool Options::wasSetByUser(options::instNoEntail__option_t) const;
#line 194 "../../../src/options/quantifiers_options"
template <> void Options::assignBool(options::instNoEntail__option_t, std::string option, bool value);
#line 196 "../../../src/options/quantifiers_options"
template <> void Options::set(options::instNoModelTrue__option_t, const options::instNoModelTrue__option_t::type& x);
#line 196 "../../../src/options/quantifiers_options"
template <> const options::instNoModelTrue__option_t::type& Options::operator[](options::instNoModelTrue__option_t) const;
#line 196 "../../../src/options/quantifiers_options"
template <> bool Options::wasSetByUser(options::instNoModelTrue__option_t) const;
#line 196 "../../../src/options/quantifiers_options"
template <> void Options::assignBool(options::instNoModelTrue__option_t, std::string option, bool value);
#line 199 "../../../src/options/quantifiers_options"
template <> void Options::set(options::instPropagate__option_t, const options::instPropagate__option_t::type& x);
#line 199 "../../../src/options/quantifiers_options"
template <> const options::instPropagate__option_t::type& Options::operator[](options::instPropagate__option_t) const;
#line 199 "../../../src/options/quantifiers_options"
template <> bool Options::wasSetByUser(options::instPropagate__option_t) const;
#line 199 "../../../src/options/quantifiers_options"
template <> void Options::assignBool(options::instPropagate__option_t, std::string option, bool value);
#line 202 "../../../src/options/quantifiers_options"
template <> const options::qcfEagerTest__option_t::type& Options::operator[](options::qcfEagerTest__option_t) const;
#line 202 "../../../src/options/quantifiers_options"
template <> bool Options::wasSetByUser(options::qcfEagerTest__option_t) const;
#line 202 "../../../src/options/quantifiers_options"
template <> void Options::assignBool(options::qcfEagerTest__option_t, std::string option, bool value);
#line 204 "../../../src/options/quantifiers_options"
template <> const options::qcfEagerCheckRd__option_t::type& Options::operator[](options::qcfEagerCheckRd__option_t) const;
#line 204 "../../../src/options/quantifiers_options"
template <> bool Options::wasSetByUser(options::qcfEagerCheckRd__option_t) const;
#line 204 "../../../src/options/quantifiers_options"
template <> void Options::assignBool(options::qcfEagerCheckRd__option_t, std::string option, bool value);
#line 206 "../../../src/options/quantifiers_options"
template <> const options::qcfSkipRd__option_t::type& Options::operator[](options::qcfSkipRd__option_t) const;
#line 206 "../../../src/options/quantifiers_options"
template <> bool Options::wasSetByUser(options::qcfSkipRd__option_t) const;
#line 206 "../../../src/options/quantifiers_options"
template <> void Options::assignBool(options::qcfSkipRd__option_t, std::string option, bool value);
#line 211 "../../../src/options/quantifiers_options"
template <> const options::quantRewriteRules__option_t::type& Options::operator[](options::quantRewriteRules__option_t) const;
#line 211 "../../../src/options/quantifiers_options"
template <> bool Options::wasSetByUser(options::quantRewriteRules__option_t) const;
#line 211 "../../../src/options/quantifiers_options"
template <> void Options::assignBool(options::quantRewriteRules__option_t, std::string option, bool value);
#line 213 "../../../src/options/quantifiers_options"
template <> const options::rrOneInstPerRound__option_t::type& Options::operator[](options::rrOneInstPerRound__option_t) const;
#line 213 "../../../src/options/quantifiers_options"
template <> bool Options::wasSetByUser(options::rrOneInstPerRound__option_t) const;
#line 213 "../../../src/options/quantifiers_options"
template <> void Options::assignBool(options::rrOneInstPerRound__option_t, std::string option, bool value);
#line 218 "../../../src/options/quantifiers_options"
template <> const options::quantInduction__option_t::type& Options::operator[](options::quantInduction__option_t) const;
#line 218 "../../../src/options/quantifiers_options"
template <> bool Options::wasSetByUser(options::quantInduction__option_t) const;
#line 218 "../../../src/options/quantifiers_options"
template <> void Options::assignBool(options::quantInduction__option_t, std::string option, bool value);
#line 220 "../../../src/options/quantifiers_options"
template <> void Options::set(options::dtStcInduction__option_t, const options::dtStcInduction__option_t::type& x);
#line 220 "../../../src/options/quantifiers_options"
template <> const options::dtStcInduction__option_t::type& Options::operator[](options::dtStcInduction__option_t) const;
#line 220 "../../../src/options/quantifiers_options"
template <> bool Options::wasSetByUser(options::dtStcInduction__option_t) const;
#line 220 "../../../src/options/quantifiers_options"
template <> void Options::assignBool(options::dtStcInduction__option_t, std::string option, bool value);
#line 222 "../../../src/options/quantifiers_options"
template <> void Options::set(options::intWfInduction__option_t, const options::intWfInduction__option_t::type& x);
#line 222 "../../../src/options/quantifiers_options"
template <> const options::intWfInduction__option_t::type& Options::operator[](options::intWfInduction__option_t) const;
#line 222 "../../../src/options/quantifiers_options"
template <> bool Options::wasSetByUser(options::intWfInduction__option_t) const;
#line 222 "../../../src/options/quantifiers_options"
template <> void Options::assignBool(options::intWfInduction__option_t, std::string option, bool value);
#line 224 "../../../src/options/quantifiers_options"
template <> void Options::set(options::conjectureGen__option_t, const options::conjectureGen__option_t::type& x);
#line 224 "../../../src/options/quantifiers_options"
template <> const options::conjectureGen__option_t::type& Options::operator[](options::conjectureGen__option_t) const;
#line 224 "../../../src/options/quantifiers_options"
template <> bool Options::wasSetByUser(options::conjectureGen__option_t) const;
#line 224 "../../../src/options/quantifiers_options"
template <> void Options::assignBool(options::conjectureGen__option_t, std::string option, bool value);
#line 227 "../../../src/options/quantifiers_options"
template <> const options::conjectureGenPerRound__option_t::type& Options::operator[](options::conjectureGenPerRound__option_t) const;
#line 227 "../../../src/options/quantifiers_options"
template <> bool Options::wasSetByUser(options::conjectureGenPerRound__option_t) const;
#line 227 "../../../src/options/quantifiers_options"
template <> void Options::assign(options::conjectureGenPerRound__option_t, std::string option, std::string value);
#line 229 "../../../src/options/quantifiers_options"
template <> const options::conjectureNoFilter__option_t::type& Options::operator[](options::conjectureNoFilter__option_t) const;
#line 229 "../../../src/options/quantifiers_options"
template <> bool Options::wasSetByUser(options::conjectureNoFilter__option_t) const;
#line 229 "../../../src/options/quantifiers_options"
template <> void Options::assignBool(options::conjectureNoFilter__option_t, std::string option, bool value);
#line 231 "../../../src/options/quantifiers_options"
template <> void Options::set(options::conjectureFilterActiveTerms__option_t, const options::conjectureFilterActiveTerms__option_t::type& x);
#line 231 "../../../src/options/quantifiers_options"
template <> const options::conjectureFilterActiveTerms__option_t::type& Options::operator[](options::conjectureFilterActiveTerms__option_t) const;
#line 231 "../../../src/options/quantifiers_options"
template <> bool Options::wasSetByUser(options::conjectureFilterActiveTerms__option_t) const;
#line 231 "../../../src/options/quantifiers_options"
template <> void Options::assignBool(options::conjectureFilterActiveTerms__option_t, std::string option, bool value);
#line 233 "../../../src/options/quantifiers_options"
template <> void Options::set(options::conjectureFilterCanonical__option_t, const options::conjectureFilterCanonical__option_t::type& x);
#line 233 "../../../src/options/quantifiers_options"
template <> const options::conjectureFilterCanonical__option_t::type& Options::operator[](options::conjectureFilterCanonical__option_t) const;
#line 233 "../../../src/options/quantifiers_options"
template <> bool Options::wasSetByUser(options::conjectureFilterCanonical__option_t) const;
#line 233 "../../../src/options/quantifiers_options"
template <> void Options::assignBool(options::conjectureFilterCanonical__option_t, std::string option, bool value);
#line 235 "../../../src/options/quantifiers_options"
template <> void Options::set(options::conjectureFilterModel__option_t, const options::conjectureFilterModel__option_t::type& x);
#line 235 "../../../src/options/quantifiers_options"
template <> const options::conjectureFilterModel__option_t::type& Options::operator[](options::conjectureFilterModel__option_t) const;
#line 235 "../../../src/options/quantifiers_options"
template <> bool Options::wasSetByUser(options::conjectureFilterModel__option_t) const;
#line 235 "../../../src/options/quantifiers_options"
template <> void Options::assignBool(options::conjectureFilterModel__option_t, std::string option, bool value);
#line 237 "../../../src/options/quantifiers_options"
template <> const options::conjectureGenGtEnum__option_t::type& Options::operator[](options::conjectureGenGtEnum__option_t) const;
#line 237 "../../../src/options/quantifiers_options"
template <> bool Options::wasSetByUser(options::conjectureGenGtEnum__option_t) const;
#line 237 "../../../src/options/quantifiers_options"
template <> void Options::assign(options::conjectureGenGtEnum__option_t, std::string option, std::string value);
#line 239 "../../../src/options/quantifiers_options"
template <> const options::conjectureUeeIntro__option_t::type& Options::operator[](options::conjectureUeeIntro__option_t) const;
#line 239 "../../../src/options/quantifiers_options"
template <> bool Options::wasSetByUser(options::conjectureUeeIntro__option_t) const;
#line 239 "../../../src/options/quantifiers_options"
template <> void Options::assignBool(options::conjectureUeeIntro__option_t, std::string option, bool value);
#line 241 "../../../src/options/quantifiers_options"
template <> const options::conjectureGenMaxDepth__option_t::type& Options::operator[](options::conjectureGenMaxDepth__option_t) const;
#line 241 "../../../src/options/quantifiers_options"
template <> bool Options::wasSetByUser(options::conjectureGenMaxDepth__option_t) const;
#line 241 "../../../src/options/quantifiers_options"
template <> void Options::assign(options::conjectureGenMaxDepth__option_t, std::string option, std::string value);
#line 246 "../../../src/options/quantifiers_options"
template <> void Options::set(options::ceGuidedInst__option_t, const options::ceGuidedInst__option_t::type& x);
#line 246 "../../../src/options/quantifiers_options"
template <> const options::ceGuidedInst__option_t::type& Options::operator[](options::ceGuidedInst__option_t) const;
#line 246 "../../../src/options/quantifiers_options"
template <> bool Options::wasSetByUser(options::ceGuidedInst__option_t) const;
#line 246 "../../../src/options/quantifiers_options"
template <> void Options::assignBool(options::ceGuidedInst__option_t, std::string option, bool value);
#line 248 "../../../src/options/quantifiers_options"
template <> const options::ceGuidedInstFair__option_t::type& Options::operator[](options::ceGuidedInstFair__option_t) const;
#line 248 "../../../src/options/quantifiers_options"
template <> bool Options::wasSetByUser(options::ceGuidedInstFair__option_t) const;
#line 248 "../../../src/options/quantifiers_options"
template <> void Options::assign(options::ceGuidedInstFair__option_t, std::string option, std::string value);
#line 250 "../../../src/options/quantifiers_options"
template <> void Options::set(options::cegqiSingleInvMode__option_t, const options::cegqiSingleInvMode__option_t::type& x);
#line 250 "../../../src/options/quantifiers_options"
template <> const options::cegqiSingleInvMode__option_t::type& Options::operator[](options::cegqiSingleInvMode__option_t) const;
#line 250 "../../../src/options/quantifiers_options"
template <> bool Options::wasSetByUser(options::cegqiSingleInvMode__option_t) const;
#line 250 "../../../src/options/quantifiers_options"
template <> void Options::assign(options::cegqiSingleInvMode__option_t, std::string option, std::string value);
#line 252 "../../../src/options/quantifiers_options"
template <> const options::cegqiSingleInvPartial__option_t::type& Options::operator[](options::cegqiSingleInvPartial__option_t) const;
#line 252 "../../../src/options/quantifiers_options"
template <> bool Options::wasSetByUser(options::cegqiSingleInvPartial__option_t) const;
#line 252 "../../../src/options/quantifiers_options"
template <> void Options::assignBool(options::cegqiSingleInvPartial__option_t, std::string option, bool value);
#line 254 "../../../src/options/quantifiers_options"
template <> const options::cegqiSingleInvReconstruct__option_t::type& Options::operator[](options::cegqiSingleInvReconstruct__option_t) const;
#line 254 "../../../src/options/quantifiers_options"
template <> bool Options::wasSetByUser(options::cegqiSingleInvReconstruct__option_t) const;
#line 254 "../../../src/options/quantifiers_options"
template <> void Options::assignBool(options::cegqiSingleInvReconstruct__option_t, std::string option, bool value);
#line 256 "../../../src/options/quantifiers_options"
template <> const options::cegqiSolMinCore__option_t::type& Options::operator[](options::cegqiSolMinCore__option_t) const;
#line 256 "../../../src/options/quantifiers_options"
template <> bool Options::wasSetByUser(options::cegqiSolMinCore__option_t) const;
#line 256 "../../../src/options/quantifiers_options"
template <> void Options::assignBool(options::cegqiSolMinCore__option_t, std::string option, bool value);
#line 258 "../../../src/options/quantifiers_options"
template <> const options::cegqiSolMinInst__option_t::type& Options::operator[](options::cegqiSolMinInst__option_t) const;
#line 258 "../../../src/options/quantifiers_options"
template <> bool Options::wasSetByUser(options::cegqiSolMinInst__option_t) const;
#line 258 "../../../src/options/quantifiers_options"
template <> void Options::assignBool(options::cegqiSolMinInst__option_t, std::string option, bool value);
#line 260 "../../../src/options/quantifiers_options"
template <> const options::cegqiSingleInvReconstructConst__option_t::type& Options::operator[](options::cegqiSingleInvReconstructConst__option_t) const;
#line 260 "../../../src/options/quantifiers_options"
template <> bool Options::wasSetByUser(options::cegqiSingleInvReconstructConst__option_t) const;
#line 260 "../../../src/options/quantifiers_options"
template <> void Options::assignBool(options::cegqiSingleInvReconstructConst__option_t, std::string option, bool value);
#line 262 "../../../src/options/quantifiers_options"
template <> const options::cegqiSingleInvAbort__option_t::type& Options::operator[](options::cegqiSingleInvAbort__option_t) const;
#line 262 "../../../src/options/quantifiers_options"
template <> bool Options::wasSetByUser(options::cegqiSingleInvAbort__option_t) const;
#line 262 "../../../src/options/quantifiers_options"
template <> void Options::assignBool(options::cegqiSingleInvAbort__option_t, std::string option, bool value);
#line 265 "../../../src/options/quantifiers_options"
template <> const options::sygusNormalForm__option_t::type& Options::operator[](options::sygusNormalForm__option_t) const;
#line 265 "../../../src/options/quantifiers_options"
template <> bool Options::wasSetByUser(options::sygusNormalForm__option_t) const;
#line 265 "../../../src/options/quantifiers_options"
template <> void Options::assignBool(options::sygusNormalForm__option_t, std::string option, bool value);
#line 267 "../../../src/options/quantifiers_options"
template <> const options::sygusNormalFormArg__option_t::type& Options::operator[](options::sygusNormalFormArg__option_t) const;
#line 267 "../../../src/options/quantifiers_options"
template <> bool Options::wasSetByUser(options::sygusNormalFormArg__option_t) const;
#line 267 "../../../src/options/quantifiers_options"
template <> void Options::assignBool(options::sygusNormalFormArg__option_t, std::string option, bool value);
#line 269 "../../../src/options/quantifiers_options"
template <> const options::sygusNormalFormGlobal__option_t::type& Options::operator[](options::sygusNormalFormGlobal__option_t) const;
#line 269 "../../../src/options/quantifiers_options"
template <> bool Options::wasSetByUser(options::sygusNormalFormGlobal__option_t) const;
#line 269 "../../../src/options/quantifiers_options"
template <> void Options::assignBool(options::sygusNormalFormGlobal__option_t, std::string option, bool value);
#line 271 "../../../src/options/quantifiers_options"
template <> const options::sygusNormalFormGlobalGen__option_t::type& Options::operator[](options::sygusNormalFormGlobalGen__option_t) const;
#line 271 "../../../src/options/quantifiers_options"
template <> bool Options::wasSetByUser(options::sygusNormalFormGlobalGen__option_t) const;
#line 271 "../../../src/options/quantifiers_options"
template <> void Options::assignBool(options::sygusNormalFormGlobalGen__option_t, std::string option, bool value);
#line 273 "../../../src/options/quantifiers_options"
template <> const options::sygusNormalFormGlobalArg__option_t::type& Options::operator[](options::sygusNormalFormGlobalArg__option_t) const;
#line 273 "../../../src/options/quantifiers_options"
template <> bool Options::wasSetByUser(options::sygusNormalFormGlobalArg__option_t) const;
#line 273 "../../../src/options/quantifiers_options"
template <> void Options::assignBool(options::sygusNormalFormGlobalArg__option_t, std::string option, bool value);
#line 275 "../../../src/options/quantifiers_options"
template <> const options::sygusNormalFormGlobalContent__option_t::type& Options::operator[](options::sygusNormalFormGlobalContent__option_t) const;
#line 275 "../../../src/options/quantifiers_options"
template <> bool Options::wasSetByUser(options::sygusNormalFormGlobalContent__option_t) const;
#line 275 "../../../src/options/quantifiers_options"
template <> void Options::assignBool(options::sygusNormalFormGlobalContent__option_t, std::string option, bool value);
#line 278 "../../../src/options/quantifiers_options"
template <> const options::sygusInvTemplMode__option_t::type& Options::operator[](options::sygusInvTemplMode__option_t) const;
#line 278 "../../../src/options/quantifiers_options"
template <> bool Options::wasSetByUser(options::sygusInvTemplMode__option_t) const;
#line 278 "../../../src/options/quantifiers_options"
template <> void Options::assign(options::sygusInvTemplMode__option_t, std::string option, std::string value);
#line 280 "../../../src/options/quantifiers_options"
template <> const options::sygusUnifCondSol__option_t::type& Options::operator[](options::sygusUnifCondSol__option_t) const;
#line 280 "../../../src/options/quantifiers_options"
template <> bool Options::wasSetByUser(options::sygusUnifCondSol__option_t) const;
#line 280 "../../../src/options/quantifiers_options"
template <> void Options::assignBool(options::sygusUnifCondSol__option_t, std::string option, bool value);
#line 283 "../../../src/options/quantifiers_options"
template <> const options::sygusDirectEval__option_t::type& Options::operator[](options::sygusDirectEval__option_t) const;
#line 283 "../../../src/options/quantifiers_options"
template <> bool Options::wasSetByUser(options::sygusDirectEval__option_t) const;
#line 283 "../../../src/options/quantifiers_options"
template <> void Options::assignBool(options::sygusDirectEval__option_t, std::string option, bool value);
#line 285 "../../../src/options/quantifiers_options"
template <> const options::sygusCRefEval__option_t::type& Options::operator[](options::sygusCRefEval__option_t) const;
#line 285 "../../../src/options/quantifiers_options"
template <> bool Options::wasSetByUser(options::sygusCRefEval__option_t) const;
#line 285 "../../../src/options/quantifiers_options"
template <> void Options::assignBool(options::sygusCRefEval__option_t, std::string option, bool value);
#line 289 "../../../src/options/quantifiers_options"
template <> void Options::set(options::cbqi__option_t, const options::cbqi__option_t::type& x);
#line 289 "../../../src/options/quantifiers_options"
template <> const options::cbqi__option_t::type& Options::operator[](options::cbqi__option_t) const;
#line 289 "../../../src/options/quantifiers_options"
template <> bool Options::wasSetByUser(options::cbqi__option_t) const;
#line 289 "../../../src/options/quantifiers_options"
template <> void Options::assignBool(options::cbqi__option_t, std::string option, bool value);
#line 291 "../../../src/options/quantifiers_options"
template <> const options::recurseCbqi__option_t::type& Options::operator[](options::recurseCbqi__option_t) const;
#line 291 "../../../src/options/quantifiers_options"
template <> bool Options::wasSetByUser(options::recurseCbqi__option_t) const;
#line 291 "../../../src/options/quantifiers_options"
template <> void Options::assignBool(options::recurseCbqi__option_t, std::string option, bool value);
#line 293 "../../../src/options/quantifiers_options"
template <> void Options::set(options::cbqiSat__option_t, const options::cbqiSat__option_t::type& x);
#line 293 "../../../src/options/quantifiers_options"
template <> const options::cbqiSat__option_t::type& Options::operator[](options::cbqiSat__option_t) const;
#line 293 "../../../src/options/quantifiers_options"
template <> bool Options::wasSetByUser(options::cbqiSat__option_t) const;
#line 293 "../../../src/options/quantifiers_options"
template <> void Options::assignBool(options::cbqiSat__option_t, std::string option, bool value);
#line 295 "../../../src/options/quantifiers_options"
template <> void Options::set(options::cbqiModel__option_t, const options::cbqiModel__option_t::type& x);
#line 295 "../../../src/options/quantifiers_options"
template <> const options::cbqiModel__option_t::type& Options::operator[](options::cbqiModel__option_t) const;
#line 295 "../../../src/options/quantifiers_options"
template <> bool Options::wasSetByUser(options::cbqiModel__option_t) const;
#line 295 "../../../src/options/quantifiers_options"
template <> void Options::assignBool(options::cbqiModel__option_t, std::string option, bool value);
#line 297 "../../../src/options/quantifiers_options"
template <> void Options::set(options::cbqiAll__option_t, const options::cbqiAll__option_t::type& x);
#line 297 "../../../src/options/quantifiers_options"
template <> const options::cbqiAll__option_t::type& Options::operator[](options::cbqiAll__option_t) const;
#line 297 "../../../src/options/quantifiers_options"
template <> bool Options::wasSetByUser(options::cbqiAll__option_t) const;
#line 297 "../../../src/options/quantifiers_options"
template <> void Options::assignBool(options::cbqiAll__option_t, std::string option, bool value);
#line 299 "../../../src/options/quantifiers_options"
template <> void Options::set(options::cbqiUseInfInt__option_t, const options::cbqiUseInfInt__option_t::type& x);
#line 299 "../../../src/options/quantifiers_options"
template <> const options::cbqiUseInfInt__option_t::type& Options::operator[](options::cbqiUseInfInt__option_t) const;
#line 299 "../../../src/options/quantifiers_options"
template <> bool Options::wasSetByUser(options::cbqiUseInfInt__option_t) const;
#line 299 "../../../src/options/quantifiers_options"
template <> void Options::assignBool(options::cbqiUseInfInt__option_t, std::string option, bool value);
#line 301 "../../../src/options/quantifiers_options"
template <> void Options::set(options::cbqiUseInfReal__option_t, const options::cbqiUseInfReal__option_t::type& x);
#line 301 "../../../src/options/quantifiers_options"
template <> const options::cbqiUseInfReal__option_t::type& Options::operator[](options::cbqiUseInfReal__option_t) const;
#line 301 "../../../src/options/quantifiers_options"
template <> bool Options::wasSetByUser(options::cbqiUseInfReal__option_t) const;
#line 301 "../../../src/options/quantifiers_options"
template <> void Options::assignBool(options::cbqiUseInfReal__option_t, std::string option, bool value);
#line 303 "../../../src/options/quantifiers_options"
template <> void Options::set(options::cbqiPreRegInst__option_t, const options::cbqiPreRegInst__option_t::type& x);
#line 303 "../../../src/options/quantifiers_options"
template <> const options::cbqiPreRegInst__option_t::type& Options::operator[](options::cbqiPreRegInst__option_t) const;
#line 303 "../../../src/options/quantifiers_options"
template <> bool Options::wasSetByUser(options::cbqiPreRegInst__option_t) const;
#line 303 "../../../src/options/quantifiers_options"
template <> void Options::assignBool(options::cbqiPreRegInst__option_t, std::string option, bool value);
#line 305 "../../../src/options/quantifiers_options"
template <> const options::cbqiMinBounds__option_t::type& Options::operator[](options::cbqiMinBounds__option_t) const;
#line 305 "../../../src/options/quantifiers_options"
template <> bool Options::wasSetByUser(options::cbqiMinBounds__option_t) const;
#line 305 "../../../src/options/quantifiers_options"
template <> void Options::assignBool(options::cbqiMinBounds__option_t, std::string option, bool value);
#line 307 "../../../src/options/quantifiers_options"
template <> const options::cbqiRoundUpLowerLia__option_t::type& Options::operator[](options::cbqiRoundUpLowerLia__option_t) const;
#line 307 "../../../src/options/quantifiers_options"
template <> bool Options::wasSetByUser(options::cbqiRoundUpLowerLia__option_t) const;
#line 307 "../../../src/options/quantifiers_options"
template <> void Options::assignBool(options::cbqiRoundUpLowerLia__option_t, std::string option, bool value);
#line 309 "../../../src/options/quantifiers_options"
template <> const options::cbqiMidpoint__option_t::type& Options::operator[](options::cbqiMidpoint__option_t) const;
#line 309 "../../../src/options/quantifiers_options"
template <> bool Options::wasSetByUser(options::cbqiMidpoint__option_t) const;
#line 309 "../../../src/options/quantifiers_options"
template <> void Options::assignBool(options::cbqiMidpoint__option_t, std::string option, bool value);
#line 311 "../../../src/options/quantifiers_options"
template <> const options::cbqiNopt__option_t::type& Options::operator[](options::cbqiNopt__option_t) const;
#line 311 "../../../src/options/quantifiers_options"
template <> bool Options::wasSetByUser(options::cbqiNopt__option_t) const;
#line 311 "../../../src/options/quantifiers_options"
template <> void Options::assignBool(options::cbqiNopt__option_t, std::string option, bool value);
#line 313 "../../../src/options/quantifiers_options"
template <> const options::cbqiLitDepend__option_t::type& Options::operator[](options::cbqiLitDepend__option_t) const;
#line 313 "../../../src/options/quantifiers_options"
template <> bool Options::wasSetByUser(options::cbqiLitDepend__option_t) const;
#line 313 "../../../src/options/quantifiers_options"
template <> void Options::assignBool(options::cbqiLitDepend__option_t, std::string option, bool value);
#line 315 "../../../src/options/quantifiers_options"
template <> void Options::set(options::cbqiInnermost__option_t, const options::cbqiInnermost__option_t::type& x);
#line 315 "../../../src/options/quantifiers_options"
template <> const options::cbqiInnermost__option_t::type& Options::operator[](options::cbqiInnermost__option_t) const;
#line 315 "../../../src/options/quantifiers_options"
template <> bool Options::wasSetByUser(options::cbqiInnermost__option_t) const;
#line 315 "../../../src/options/quantifiers_options"
template <> void Options::assignBool(options::cbqiInnermost__option_t, std::string option, bool value);
#line 317 "../../../src/options/quantifiers_options"
template <> void Options::set(options::cbqiNestedQE__option_t, const options::cbqiNestedQE__option_t::type& x);
#line 317 "../../../src/options/quantifiers_options"
template <> const options::cbqiNestedQE__option_t::type& Options::operator[](options::cbqiNestedQE__option_t) const;
#line 317 "../../../src/options/quantifiers_options"
template <> bool Options::wasSetByUser(options::cbqiNestedQE__option_t) const;
#line 317 "../../../src/options/quantifiers_options"
template <> void Options::assignBool(options::cbqiNestedQE__option_t, std::string option, bool value);
#line 320 "../../../src/options/quantifiers_options"
template <> void Options::set(options::quantEpr__option_t, const options::quantEpr__option_t::type& x);
#line 320 "../../../src/options/quantifiers_options"
template <> const options::quantEpr__option_t::type& Options::operator[](options::quantEpr__option_t) const;
#line 320 "../../../src/options/quantifiers_options"
template <> bool Options::wasSetByUser(options::quantEpr__option_t) const;
#line 320 "../../../src/options/quantifiers_options"
template <> void Options::assignBool(options::quantEpr__option_t, std::string option, bool value);
#line 322 "../../../src/options/quantifiers_options"
template <> const options::quantEprMatching__option_t::type& Options::operator[](options::quantEprMatching__option_t) const;
#line 322 "../../../src/options/quantifiers_options"
template <> bool Options::wasSetByUser(options::quantEprMatching__option_t) const;
#line 322 "../../../src/options/quantifiers_options"
template <> void Options::assignBool(options::quantEprMatching__option_t, std::string option, bool value);
#line 327 "../../../src/options/quantifiers_options"
template <> const options::localTheoryExt__option_t::type& Options::operator[](options::localTheoryExt__option_t) const;
#line 327 "../../../src/options/quantifiers_options"
template <> bool Options::wasSetByUser(options::localTheoryExt__option_t) const;
#line 327 "../../../src/options/quantifiers_options"
template <> void Options::assignBool(options::localTheoryExt__option_t, std::string option, bool value);
#line 329 "../../../src/options/quantifiers_options"
template <> const options::ltePartialInst__option_t::type& Options::operator[](options::ltePartialInst__option_t) const;
#line 329 "../../../src/options/quantifiers_options"
template <> bool Options::wasSetByUser(options::ltePartialInst__option_t) const;
#line 329 "../../../src/options/quantifiers_options"
template <> void Options::assignBool(options::ltePartialInst__option_t, std::string option, bool value);
#line 331 "../../../src/options/quantifiers_options"
template <> const options::lteRestrictInstClosure__option_t::type& Options::operator[](options::lteRestrictInstClosure__option_t) const;
#line 331 "../../../src/options/quantifiers_options"
template <> bool Options::wasSetByUser(options::lteRestrictInstClosure__option_t) const;
#line 331 "../../../src/options/quantifiers_options"
template <> void Options::assignBool(options::lteRestrictInstClosure__option_t, std::string option, bool value);
#line 336 "../../../src/options/quantifiers_options"
template <> const options::quantAlphaEquiv__option_t::type& Options::operator[](options::quantAlphaEquiv__option_t) const;
#line 336 "../../../src/options/quantifiers_options"
template <> bool Options::wasSetByUser(options::quantAlphaEquiv__option_t) const;
#line 336 "../../../src/options/quantifiers_options"
template <> void Options::assignBool(options::quantAlphaEquiv__option_t, std::string option, bool value);
#line 338 "../../../src/options/quantifiers_options"
template <> void Options::set(options::macrosQuant__option_t, const options::macrosQuant__option_t::type& x);
#line 338 "../../../src/options/quantifiers_options"
template <> const options::macrosQuant__option_t::type& Options::operator[](options::macrosQuant__option_t) const;
#line 338 "../../../src/options/quantifiers_options"
template <> bool Options::wasSetByUser(options::macrosQuant__option_t) const;
#line 338 "../../../src/options/quantifiers_options"
template <> void Options::assignBool(options::macrosQuant__option_t, std::string option, bool value);
#line 340 "../../../src/options/quantifiers_options"
template <> const options::macrosQuantMode__option_t::type& Options::operator[](options::macrosQuantMode__option_t) const;
#line 340 "../../../src/options/quantifiers_options"
template <> bool Options::wasSetByUser(options::macrosQuantMode__option_t) const;
#line 340 "../../../src/options/quantifiers_options"
template <> void Options::assign(options::macrosQuantMode__option_t, std::string option, std::string value);
#line 342 "../../../src/options/quantifiers_options"
template <> void Options::set(options::quantDynamicSplit__option_t, const options::quantDynamicSplit__option_t::type& x);
#line 342 "../../../src/options/quantifiers_options"
template <> const options::quantDynamicSplit__option_t::type& Options::operator[](options::quantDynamicSplit__option_t) const;
#line 342 "../../../src/options/quantifiers_options"
template <> bool Options::wasSetByUser(options::quantDynamicSplit__option_t) const;
#line 342 "../../../src/options/quantifiers_options"
template <> void Options::assign(options::quantDynamicSplit__option_t, std::string option, std::string value);
#line 344 "../../../src/options/quantifiers_options"
template <> void Options::set(options::quantAntiSkolem__option_t, const options::quantAntiSkolem__option_t::type& x);
#line 344 "../../../src/options/quantifiers_options"
template <> const options::quantAntiSkolem__option_t::type& Options::operator[](options::quantAntiSkolem__option_t) const;
#line 344 "../../../src/options/quantifiers_options"
template <> bool Options::wasSetByUser(options::quantAntiSkolem__option_t) const;
#line 344 "../../../src/options/quantifiers_options"
template <> void Options::assignBool(options::quantAntiSkolem__option_t, std::string option, bool value);
#line 354 "../../../src/options/quantifiers_options"
template <> const options::quantEqualityEngine__option_t::type& Options::operator[](options::quantEqualityEngine__option_t) const;
#line 354 "../../../src/options/quantifiers_options"
template <> bool Options::wasSetByUser(options::quantEqualityEngine__option_t) const;
#line 354 "../../../src/options/quantifiers_options"
template <> void Options::assignBool(options::quantEqualityEngine__option_t, std::string option, bool value);
#line 359 "../../../src/options/quantifiers_options"
template <> void Options::set(options::trackInstLemmas__option_t, const options::trackInstLemmas__option_t::type& x);
#line 359 "../../../src/options/quantifiers_options"
template <> const options::trackInstLemmas__option_t::type& Options::operator[](options::trackInstLemmas__option_t) const;
#line 359 "../../../src/options/quantifiers_options"
template <> bool Options::wasSetByUser(options::trackInstLemmas__option_t) const;
#line 359 "../../../src/options/quantifiers_options"
template <> void Options::assignBool(options::trackInstLemmas__option_t, std::string option, bool value);

#line 44 "../../../src/options/base_options_template.h"

namespace options {


#line 13 "../../../src/options/quantifiers_options"
inline miniscopeQuant__option_t::type miniscopeQuant__option_t::operator()() const { return (*Options::current())[*this]; }
#line 13 "../../../src/options/quantifiers_options"
inline bool miniscopeQuant__option_t::wasSetByUser() const { return Options::current()->wasSetByUser(*this); }
#line 13 "../../../src/options/quantifiers_options"
inline void miniscopeQuant__option_t::set(const miniscopeQuant__option_t::type& v) { Options::current()->set(*this, v); }

#line 18 "../../../src/options/quantifiers_options"
inline miniscopeQuantFreeVar__option_t::type miniscopeQuantFreeVar__option_t::operator()() const { return (*Options::current())[*this]; }
#line 18 "../../../src/options/quantifiers_options"
inline bool miniscopeQuantFreeVar__option_t::wasSetByUser() const { return Options::current()->wasSetByUser(*this); }
#line 18 "../../../src/options/quantifiers_options"
inline void miniscopeQuantFreeVar__option_t::set(const miniscopeQuantFreeVar__option_t::type& v) { Options::current()->set(*this, v); }

#line 20 "../../../src/options/quantifiers_options"
inline quantSplit__option_t::type quantSplit__option_t::operator()() const { return (*Options::current())[*this]; }
#line 20 "../../../src/options/quantifiers_options"
inline bool quantSplit__option_t::wasSetByUser() const { return Options::current()->wasSetByUser(*this); }
#line 20 "../../../src/options/quantifiers_options"
inline void quantSplit__option_t::set(const quantSplit__option_t::type& v) { Options::current()->set(*this, v); }

#line 22 "../../../src/options/quantifiers_options"
inline prenexQuant__option_t::type prenexQuant__option_t::operator()() const { return (*Options::current())[*this]; }
#line 22 "../../../src/options/quantifiers_options"
inline bool prenexQuant__option_t::wasSetByUser() const { return Options::current()->wasSetByUser(*this); }
#line 22 "../../../src/options/quantifiers_options"
inline void prenexQuant__option_t::set(const prenexQuant__option_t::type& v) { Options::current()->set(*this, v); }

#line 24 "../../../src/options/quantifiers_options"
inline prenexQuantUser__option_t::type prenexQuantUser__option_t::operator()() const { return (*Options::current())[*this]; }
#line 24 "../../../src/options/quantifiers_options"
inline bool prenexQuantUser__option_t::wasSetByUser() const { return Options::current()->wasSetByUser(*this); }
#line 24 "../../../src/options/quantifiers_options"
inline void prenexQuantUser__option_t::set(const prenexQuantUser__option_t::type& v) { Options::current()->set(*this, v); }

#line 29 "../../../src/options/quantifiers_options"
inline varElimQuant__option_t::type varElimQuant__option_t::operator()() const { return (*Options::current())[*this]; }
#line 29 "../../../src/options/quantifiers_options"
inline bool varElimQuant__option_t::wasSetByUser() const { return Options::current()->wasSetByUser(*this); }

#line 31 "../../../src/options/quantifiers_options"
inline varIneqElimQuant__option_t::type varIneqElimQuant__option_t::operator()() const { return (*Options::current())[*this]; }
#line 31 "../../../src/options/quantifiers_options"
inline bool varIneqElimQuant__option_t::wasSetByUser() const { return Options::current()->wasSetByUser(*this); }

#line 33 "../../../src/options/quantifiers_options"
inline dtVarExpandQuant__option_t::type dtVarExpandQuant__option_t::operator()() const { return (*Options::current())[*this]; }
#line 33 "../../../src/options/quantifiers_options"
inline bool dtVarExpandQuant__option_t::wasSetByUser() const { return Options::current()->wasSetByUser(*this); }

#line 36 "../../../src/options/quantifiers_options"
inline iteLiftQuant__option_t::type iteLiftQuant__option_t::operator()() const { return (*Options::current())[*this]; }
#line 36 "../../../src/options/quantifiers_options"
inline bool iteLiftQuant__option_t::wasSetByUser() const { return Options::current()->wasSetByUser(*this); }
#line 36 "../../../src/options/quantifiers_options"
inline void iteLiftQuant__option_t::set(const iteLiftQuant__option_t::type& v) { Options::current()->set(*this, v); }

#line 38 "../../../src/options/quantifiers_options"
inline condVarSplitQuant__option_t::type condVarSplitQuant__option_t::operator()() const { return (*Options::current())[*this]; }
#line 38 "../../../src/options/quantifiers_options"
inline bool condVarSplitQuant__option_t::wasSetByUser() const { return Options::current()->wasSetByUser(*this); }

#line 40 "../../../src/options/quantifiers_options"
inline condVarSplitQuantAgg__option_t::type condVarSplitQuantAgg__option_t::operator()() const { return (*Options::current())[*this]; }
#line 40 "../../../src/options/quantifiers_options"
inline bool condVarSplitQuantAgg__option_t::wasSetByUser() const { return Options::current()->wasSetByUser(*this); }

#line 42 "../../../src/options/quantifiers_options"
inline iteDtTesterSplitQuant__option_t::type iteDtTesterSplitQuant__option_t::operator()() const { return (*Options::current())[*this]; }
#line 42 "../../../src/options/quantifiers_options"
inline bool iteDtTesterSplitQuant__option_t::wasSetByUser() const { return Options::current()->wasSetByUser(*this); }
#line 42 "../../../src/options/quantifiers_options"
inline void iteDtTesterSplitQuant__option_t::set(const iteDtTesterSplitQuant__option_t::type& v) { Options::current()->set(*this, v); }

#line 47 "../../../src/options/quantifiers_options"
inline preSkolemQuant__option_t::type preSkolemQuant__option_t::operator()() const { return (*Options::current())[*this]; }
#line 47 "../../../src/options/quantifiers_options"
inline bool preSkolemQuant__option_t::wasSetByUser() const { return Options::current()->wasSetByUser(*this); }
#line 47 "../../../src/options/quantifiers_options"
inline void preSkolemQuant__option_t::set(const preSkolemQuant__option_t::type& v) { Options::current()->set(*this, v); }

#line 49 "../../../src/options/quantifiers_options"
inline preSkolemQuantNested__option_t::type preSkolemQuantNested__option_t::operator()() const { return (*Options::current())[*this]; }
#line 49 "../../../src/options/quantifiers_options"
inline bool preSkolemQuantNested__option_t::wasSetByUser() const { return Options::current()->wasSetByUser(*this); }
#line 49 "../../../src/options/quantifiers_options"
inline void preSkolemQuantNested__option_t::set(const preSkolemQuantNested__option_t::type& v) { Options::current()->set(*this, v); }

#line 51 "../../../src/options/quantifiers_options"
inline preSkolemQuantAgg__option_t::type preSkolemQuantAgg__option_t::operator()() const { return (*Options::current())[*this]; }
#line 51 "../../../src/options/quantifiers_options"
inline bool preSkolemQuantAgg__option_t::wasSetByUser() const { return Options::current()->wasSetByUser(*this); }
#line 51 "../../../src/options/quantifiers_options"
inline void preSkolemQuantAgg__option_t::set(const preSkolemQuantAgg__option_t::type& v) { Options::current()->set(*this, v); }

#line 53 "../../../src/options/quantifiers_options"
inline aggressiveMiniscopeQuant__option_t::type aggressiveMiniscopeQuant__option_t::operator()() const { return (*Options::current())[*this]; }
#line 53 "../../../src/options/quantifiers_options"
inline bool aggressiveMiniscopeQuant__option_t::wasSetByUser() const { return Options::current()->wasSetByUser(*this); }

#line 55 "../../../src/options/quantifiers_options"
inline elimTautQuant__option_t::type elimTautQuant__option_t::operator()() const { return (*Options::current())[*this]; }
#line 55 "../../../src/options/quantifiers_options"
inline bool elimTautQuant__option_t::wasSetByUser() const { return Options::current()->wasSetByUser(*this); }

#line 57 "../../../src/options/quantifiers_options"
inline elimExtArithQuant__option_t::type elimExtArithQuant__option_t::operator()() const { return (*Options::current())[*this]; }
#line 57 "../../../src/options/quantifiers_options"
inline bool elimExtArithQuant__option_t::wasSetByUser() const { return Options::current()->wasSetByUser(*this); }
#line 57 "../../../src/options/quantifiers_options"
inline void elimExtArithQuant__option_t::set(const elimExtArithQuant__option_t::type& v) { Options::current()->set(*this, v); }

#line 59 "../../../src/options/quantifiers_options"
inline condRewriteQuant__option_t::type condRewriteQuant__option_t::operator()() const { return (*Options::current())[*this]; }
#line 59 "../../../src/options/quantifiers_options"
inline bool condRewriteQuant__option_t::wasSetByUser() const { return Options::current()->wasSetByUser(*this); }

#line 64 "../../../src/options/quantifiers_options"
inline eMatching__option_t::type eMatching__option_t::operator()() const { return (*Options::current())[*this]; }
#line 64 "../../../src/options/quantifiers_options"
inline bool eMatching__option_t::wasSetByUser() const { return Options::current()->wasSetByUser(*this); }
#line 64 "../../../src/options/quantifiers_options"
inline void eMatching__option_t::set(const eMatching__option_t::type& v) { Options::current()->set(*this, v); }

#line 67 "../../../src/options/quantifiers_options"
inline termDbMode__option_t::type termDbMode__option_t::operator()() const { return (*Options::current())[*this]; }
#line 67 "../../../src/options/quantifiers_options"
inline bool termDbMode__option_t::wasSetByUser() const { return Options::current()->wasSetByUser(*this); }
#line 67 "../../../src/options/quantifiers_options"
inline void termDbMode__option_t::set(const termDbMode__option_t::type& v) { Options::current()->set(*this, v); }

#line 69 "../../../src/options/quantifiers_options"
inline registerQuantBodyTerms__option_t::type registerQuantBodyTerms__option_t::operator()() const { return (*Options::current())[*this]; }
#line 69 "../../../src/options/quantifiers_options"
inline bool registerQuantBodyTerms__option_t::wasSetByUser() const { return Options::current()->wasSetByUser(*this); }

#line 71 "../../../src/options/quantifiers_options"
inline inferArithTriggerEq__option_t::type inferArithTriggerEq__option_t::operator()() const { return (*Options::current())[*this]; }
#line 71 "../../../src/options/quantifiers_options"
inline bool inferArithTriggerEq__option_t::wasSetByUser() const { return Options::current()->wasSetByUser(*this); }

#line 73 "../../../src/options/quantifiers_options"
inline inferArithTriggerEqExp__option_t::type inferArithTriggerEqExp__option_t::operator()() const { return (*Options::current())[*this]; }
#line 73 "../../../src/options/quantifiers_options"
inline bool inferArithTriggerEqExp__option_t::wasSetByUser() const { return Options::current()->wasSetByUser(*this); }

#line 76 "../../../src/options/quantifiers_options"
inline strictTriggers__option_t::type strictTriggers__option_t::operator()() const { return (*Options::current())[*this]; }
#line 76 "../../../src/options/quantifiers_options"
inline bool strictTriggers__option_t::wasSetByUser() const { return Options::current()->wasSetByUser(*this); }

#line 78 "../../../src/options/quantifiers_options"
inline relevantTriggers__option_t::type relevantTriggers__option_t::operator()() const { return (*Options::current())[*this]; }
#line 78 "../../../src/options/quantifiers_options"
inline bool relevantTriggers__option_t::wasSetByUser() const { return Options::current()->wasSetByUser(*this); }

#line 80 "../../../src/options/quantifiers_options"
inline relationalTriggers__option_t::type relationalTriggers__option_t::operator()() const { return (*Options::current())[*this]; }
#line 80 "../../../src/options/quantifiers_options"
inline bool relationalTriggers__option_t::wasSetByUser() const { return Options::current()->wasSetByUser(*this); }

#line 82 "../../../src/options/quantifiers_options"
inline purifyTriggers__option_t::type purifyTriggers__option_t::operator()() const { return (*Options::current())[*this]; }
#line 82 "../../../src/options/quantifiers_options"
inline bool purifyTriggers__option_t::wasSetByUser() const { return Options::current()->wasSetByUser(*this); }
#line 82 "../../../src/options/quantifiers_options"
inline void purifyTriggers__option_t::set(const purifyTriggers__option_t::type& v) { Options::current()->set(*this, v); }

#line 84 "../../../src/options/quantifiers_options"
inline purifyDtTriggers__option_t::type purifyDtTriggers__option_t::operator()() const { return (*Options::current())[*this]; }
#line 84 "../../../src/options/quantifiers_options"
inline bool purifyDtTriggers__option_t::wasSetByUser() const { return Options::current()->wasSetByUser(*this); }
#line 84 "../../../src/options/quantifiers_options"
inline void purifyDtTriggers__option_t::set(const purifyDtTriggers__option_t::type& v) { Options::current()->set(*this, v); }

#line 86 "../../../src/options/quantifiers_options"
inline pureThTriggers__option_t::type pureThTriggers__option_t::operator()() const { return (*Options::current())[*this]; }
#line 86 "../../../src/options/quantifiers_options"
inline bool pureThTriggers__option_t::wasSetByUser() const { return Options::current()->wasSetByUser(*this); }
#line 86 "../../../src/options/quantifiers_options"
inline void pureThTriggers__option_t::set(const pureThTriggers__option_t::type& v) { Options::current()->set(*this, v); }

#line 88 "../../../src/options/quantifiers_options"
inline partialTriggers__option_t::type partialTriggers__option_t::operator()() const { return (*Options::current())[*this]; }
#line 88 "../../../src/options/quantifiers_options"
inline bool partialTriggers__option_t::wasSetByUser() const { return Options::current()->wasSetByUser(*this); }
#line 88 "../../../src/options/quantifiers_options"
inline void partialTriggers__option_t::set(const partialTriggers__option_t::type& v) { Options::current()->set(*this, v); }

#line 90 "../../../src/options/quantifiers_options"
inline multiTriggerWhenSingle__option_t::type multiTriggerWhenSingle__option_t::operator()() const { return (*Options::current())[*this]; }
#line 90 "../../../src/options/quantifiers_options"
inline bool multiTriggerWhenSingle__option_t::wasSetByUser() const { return Options::current()->wasSetByUser(*this); }

#line 92 "../../../src/options/quantifiers_options"
inline multiTriggerPriority__option_t::type multiTriggerPriority__option_t::operator()() const { return (*Options::current())[*this]; }
#line 92 "../../../src/options/quantifiers_options"
inline bool multiTriggerPriority__option_t::wasSetByUser() const { return Options::current()->wasSetByUser(*this); }

#line 94 "../../../src/options/quantifiers_options"
inline multiTriggerCache__option_t::type multiTriggerCache__option_t::operator()() const { return (*Options::current())[*this]; }
#line 94 "../../../src/options/quantifiers_options"
inline bool multiTriggerCache__option_t::wasSetByUser() const { return Options::current()->wasSetByUser(*this); }

#line 96 "../../../src/options/quantifiers_options"
inline multiTriggerLinear__option_t::type multiTriggerLinear__option_t::operator()() const { return (*Options::current())[*this]; }
#line 96 "../../../src/options/quantifiers_options"
inline bool multiTriggerLinear__option_t::wasSetByUser() const { return Options::current()->wasSetByUser(*this); }

#line 98 "../../../src/options/quantifiers_options"
inline triggerSelMode__option_t::type triggerSelMode__option_t::operator()() const { return (*Options::current())[*this]; }
#line 98 "../../../src/options/quantifiers_options"
inline bool triggerSelMode__option_t::wasSetByUser() const { return Options::current()->wasSetByUser(*this); }
#line 98 "../../../src/options/quantifiers_options"
inline void triggerSelMode__option_t::set(const triggerSelMode__option_t::type& v) { Options::current()->set(*this, v); }

#line 100 "../../../src/options/quantifiers_options"
inline triggerActiveSelMode__option_t::type triggerActiveSelMode__option_t::operator()() const { return (*Options::current())[*this]; }
#line 100 "../../../src/options/quantifiers_options"
inline bool triggerActiveSelMode__option_t::wasSetByUser() const { return Options::current()->wasSetByUser(*this); }
#line 100 "../../../src/options/quantifiers_options"
inline void triggerActiveSelMode__option_t::set(const triggerActiveSelMode__option_t::type& v) { Options::current()->set(*this, v); }

#line 102 "../../../src/options/quantifiers_options"
inline userPatternsQuant__option_t::type userPatternsQuant__option_t::operator()() const { return (*Options::current())[*this]; }
#line 102 "../../../src/options/quantifiers_options"
inline bool userPatternsQuant__option_t::wasSetByUser() const { return Options::current()->wasSetByUser(*this); }
#line 102 "../../../src/options/quantifiers_options"
inline void userPatternsQuant__option_t::set(const userPatternsQuant__option_t::type& v) { Options::current()->set(*this, v); }

#line 104 "../../../src/options/quantifiers_options"
inline incrementTriggers__option_t::type incrementTriggers__option_t::operator()() const { return (*Options::current())[*this]; }
#line 104 "../../../src/options/quantifiers_options"
inline bool incrementTriggers__option_t::wasSetByUser() const { return Options::current()->wasSetByUser(*this); }

#line 107 "../../../src/options/quantifiers_options"
inline instWhenMode__option_t::type instWhenMode__option_t::operator()() const { return (*Options::current())[*this]; }
#line 107 "../../../src/options/quantifiers_options"
inline bool instWhenMode__option_t::wasSetByUser() const { return Options::current()->wasSetByUser(*this); }
#line 107 "../../../src/options/quantifiers_options"
inline void instWhenMode__option_t::set(const instWhenMode__option_t::type& v) { Options::current()->set(*this, v); }

#line 109 "../../../src/options/quantifiers_options"
inline instWhenStrictInterleave__option_t::type instWhenStrictInterleave__option_t::operator()() const { return (*Options::current())[*this]; }
#line 109 "../../../src/options/quantifiers_options"
inline bool instWhenStrictInterleave__option_t::wasSetByUser() const { return Options::current()->wasSetByUser(*this); }
#line 109 "../../../src/options/quantifiers_options"
inline void instWhenStrictInterleave__option_t::set(const instWhenStrictInterleave__option_t::type& v) { Options::current()->set(*this, v); }

#line 111 "../../../src/options/quantifiers_options"
inline instWhenPhase__option_t::type instWhenPhase__option_t::operator()() const { return (*Options::current())[*this]; }
#line 111 "../../../src/options/quantifiers_options"
inline bool instWhenPhase__option_t::wasSetByUser() const { return Options::current()->wasSetByUser(*this); }
#line 111 "../../../src/options/quantifiers_options"
inline void instWhenPhase__option_t::set(const instWhenPhase__option_t::type& v) { Options::current()->set(*this, v); }

#line 113 "../../../src/options/quantifiers_options"
inline instWhenTcFirst__option_t::type instWhenTcFirst__option_t::operator()() const { return (*Options::current())[*this]; }
#line 113 "../../../src/options/quantifiers_options"
inline bool instWhenTcFirst__option_t::wasSetByUser() const { return Options::current()->wasSetByUser(*this); }
#line 113 "../../../src/options/quantifiers_options"
inline void instWhenTcFirst__option_t::set(const instWhenTcFirst__option_t::type& v) { Options::current()->set(*this, v); }

#line 115 "../../../src/options/quantifiers_options"
inline quantModelEe__option_t::type quantModelEe__option_t::operator()() const { return (*Options::current())[*this]; }
#line 115 "../../../src/options/quantifiers_options"
inline bool quantModelEe__option_t::wasSetByUser() const { return Options::current()->wasSetByUser(*this); }

#line 118 "../../../src/options/quantifiers_options"
inline instMaxLevel__option_t::type instMaxLevel__option_t::operator()() const { return (*Options::current())[*this]; }
#line 118 "../../../src/options/quantifiers_options"
inline bool instMaxLevel__option_t::wasSetByUser() const { return Options::current()->wasSetByUser(*this); }
#line 118 "../../../src/options/quantifiers_options"
inline void instMaxLevel__option_t::set(const instMaxLevel__option_t::type& v) { Options::current()->set(*this, v); }

#line 120 "../../../src/options/quantifiers_options"
inline instLevelInputOnly__option_t::type instLevelInputOnly__option_t::operator()() const { return (*Options::current())[*this]; }
#line 120 "../../../src/options/quantifiers_options"
inline bool instLevelInputOnly__option_t::wasSetByUser() const { return Options::current()->wasSetByUser(*this); }

#line 122 "../../../src/options/quantifiers_options"
inline quantRepMode__option_t::type quantRepMode__option_t::operator()() const { return (*Options::current())[*this]; }
#line 122 "../../../src/options/quantifiers_options"
inline bool quantRepMode__option_t::wasSetByUser() const { return Options::current()->wasSetByUser(*this); }
#line 122 "../../../src/options/quantifiers_options"
inline void quantRepMode__option_t::set(const quantRepMode__option_t::type& v) { Options::current()->set(*this, v); }

#line 124 "../../../src/options/quantifiers_options"
inline instRelevantCond__option_t::type instRelevantCond__option_t::operator()() const { return (*Options::current())[*this]; }
#line 124 "../../../src/options/quantifiers_options"
inline bool instRelevantCond__option_t::wasSetByUser() const { return Options::current()->wasSetByUser(*this); }

#line 127 "../../../src/options/quantifiers_options"
inline fullSaturateQuant__option_t::type fullSaturateQuant__option_t::operator()() const { return (*Options::current())[*this]; }
#line 127 "../../../src/options/quantifiers_options"
inline bool fullSaturateQuant__option_t::wasSetByUser() const { return Options::current()->wasSetByUser(*this); }
#line 127 "../../../src/options/quantifiers_options"
inline void fullSaturateQuant__option_t::set(const fullSaturateQuant__option_t::type& v) { Options::current()->set(*this, v); }

#line 129 "../../../src/options/quantifiers_options"
inline fullSaturateQuantRd__option_t::type fullSaturateQuantRd__option_t::operator()() const { return (*Options::current())[*this]; }
#line 129 "../../../src/options/quantifiers_options"
inline bool fullSaturateQuantRd__option_t::wasSetByUser() const { return Options::current()->wasSetByUser(*this); }

#line 131 "../../../src/options/quantifiers_options"
inline fullSaturateInst__option_t::type fullSaturateInst__option_t::operator()() const { return (*Options::current())[*this]; }
#line 131 "../../../src/options/quantifiers_options"
inline bool fullSaturateInst__option_t::wasSetByUser() const { return Options::current()->wasSetByUser(*this); }

#line 134 "../../../src/options/quantifiers_options"
inline literalMatchMode__option_t::type literalMatchMode__option_t::operator()() const { return (*Options::current())[*this]; }
#line 134 "../../../src/options/quantifiers_options"
inline bool literalMatchMode__option_t::wasSetByUser() const { return Options::current()->wasSetByUser(*this); }

#line 139 "../../../src/options/quantifiers_options"
inline finiteModelFind__option_t::type finiteModelFind__option_t::operator()() const { return (*Options::current())[*this]; }
#line 139 "../../../src/options/quantifiers_options"
inline bool finiteModelFind__option_t::wasSetByUser() const { return Options::current()->wasSetByUser(*this); }
#line 139 "../../../src/options/quantifiers_options"
inline void finiteModelFind__option_t::set(const finiteModelFind__option_t::type& v) { Options::current()->set(*this, v); }

#line 142 "../../../src/options/quantifiers_options"
inline quantFunWellDefined__option_t::type quantFunWellDefined__option_t::operator()() const { return (*Options::current())[*this]; }
#line 142 "../../../src/options/quantifiers_options"
inline bool quantFunWellDefined__option_t::wasSetByUser() const { return Options::current()->wasSetByUser(*this); }

#line 144 "../../../src/options/quantifiers_options"
inline fmfFunWellDefined__option_t::type fmfFunWellDefined__option_t::operator()() const { return (*Options::current())[*this]; }
#line 144 "../../../src/options/quantifiers_options"
inline bool fmfFunWellDefined__option_t::wasSetByUser() const { return Options::current()->wasSetByUser(*this); }
#line 144 "../../../src/options/quantifiers_options"
inline void fmfFunWellDefined__option_t::set(const fmfFunWellDefined__option_t::type& v) { Options::current()->set(*this, v); }

#line 146 "../../../src/options/quantifiers_options"
inline fmfFunWellDefinedRelevant__option_t::type fmfFunWellDefinedRelevant__option_t::operator()() const { return (*Options::current())[*this]; }
#line 146 "../../../src/options/quantifiers_options"
inline bool fmfFunWellDefinedRelevant__option_t::wasSetByUser() const { return Options::current()->wasSetByUser(*this); }

#line 148 "../../../src/options/quantifiers_options"
inline fmfEmptySorts__option_t::type fmfEmptySorts__option_t::operator()() const { return (*Options::current())[*this]; }
#line 148 "../../../src/options/quantifiers_options"
inline bool fmfEmptySorts__option_t::wasSetByUser() const { return Options::current()->wasSetByUser(*this); }

#line 151 "../../../src/options/quantifiers_options"
inline mbqiMode__option_t::type mbqiMode__option_t::operator()() const { return (*Options::current())[*this]; }
#line 151 "../../../src/options/quantifiers_options"
inline bool mbqiMode__option_t::wasSetByUser() const { return Options::current()->wasSetByUser(*this); }
#line 151 "../../../src/options/quantifiers_options"
inline void mbqiMode__option_t::set(const mbqiMode__option_t::type& v) { Options::current()->set(*this, v); }

#line 153 "../../../src/options/quantifiers_options"
inline fmfOneInstPerRound__option_t::type fmfOneInstPerRound__option_t::operator()() const { return (*Options::current())[*this]; }
#line 153 "../../../src/options/quantifiers_options"
inline bool fmfOneInstPerRound__option_t::wasSetByUser() const { return Options::current()->wasSetByUser(*this); }
#line 153 "../../../src/options/quantifiers_options"
inline void fmfOneInstPerRound__option_t::set(const fmfOneInstPerRound__option_t::type& v) { Options::current()->set(*this, v); }

#line 155 "../../../src/options/quantifiers_options"
inline fmfOneQuantPerRound__option_t::type fmfOneQuantPerRound__option_t::operator()() const { return (*Options::current())[*this]; }
#line 155 "../../../src/options/quantifiers_options"
inline bool fmfOneQuantPerRound__option_t::wasSetByUser() const { return Options::current()->wasSetByUser(*this); }

#line 158 "../../../src/options/quantifiers_options"
inline fmfInstEngine__option_t::type fmfInstEngine__option_t::operator()() const { return (*Options::current())[*this]; }
#line 158 "../../../src/options/quantifiers_options"
inline bool fmfInstEngine__option_t::wasSetByUser() const { return Options::current()->wasSetByUser(*this); }
#line 158 "../../../src/options/quantifiers_options"
inline void fmfInstEngine__option_t::set(const fmfInstEngine__option_t::type& v) { Options::current()->set(*this, v); }

#line 160 "../../../src/options/quantifiers_options"
inline fmfInstGen__option_t::type fmfInstGen__option_t::operator()() const { return (*Options::current())[*this]; }
#line 160 "../../../src/options/quantifiers_options"
inline bool fmfInstGen__option_t::wasSetByUser() const { return Options::current()->wasSetByUser(*this); }

#line 162 "../../../src/options/quantifiers_options"
inline fmfInstGenOneQuantPerRound__option_t::type fmfInstGenOneQuantPerRound__option_t::operator()() const { return (*Options::current())[*this]; }
#line 162 "../../../src/options/quantifiers_options"
inline bool fmfInstGenOneQuantPerRound__option_t::wasSetByUser() const { return Options::current()->wasSetByUser(*this); }

#line 164 "../../../src/options/quantifiers_options"
inline fmfFreshDistConst__option_t::type fmfFreshDistConst__option_t::operator()() const { return (*Options::current())[*this]; }
#line 164 "../../../src/options/quantifiers_options"
inline bool fmfFreshDistConst__option_t::wasSetByUser() const { return Options::current()->wasSetByUser(*this); }

#line 166 "../../../src/options/quantifiers_options"
inline fmfFmcSimple__option_t::type fmfFmcSimple__option_t::operator()() const { return (*Options::current())[*this]; }
#line 166 "../../../src/options/quantifiers_options"
inline bool fmfFmcSimple__option_t::wasSetByUser() const { return Options::current()->wasSetByUser(*this); }

#line 168 "../../../src/options/quantifiers_options"
inline fmfBoundInt__option_t::type fmfBoundInt__option_t::operator()() const { return (*Options::current())[*this]; }
#line 168 "../../../src/options/quantifiers_options"
inline bool fmfBoundInt__option_t::wasSetByUser() const { return Options::current()->wasSetByUser(*this); }
#line 168 "../../../src/options/quantifiers_options"
inline void fmfBoundInt__option_t::set(const fmfBoundInt__option_t::type& v) { Options::current()->set(*this, v); }

#line 170 "../../../src/options/quantifiers_options"
inline fmfBound__option_t::type fmfBound__option_t::operator()() const { return (*Options::current())[*this]; }
#line 170 "../../../src/options/quantifiers_options"
inline bool fmfBound__option_t::wasSetByUser() const { return Options::current()->wasSetByUser(*this); }
#line 170 "../../../src/options/quantifiers_options"
inline void fmfBound__option_t::set(const fmfBound__option_t::type& v) { Options::current()->set(*this, v); }

#line 172 "../../../src/options/quantifiers_options"
inline fmfBoundLazy__option_t::type fmfBoundLazy__option_t::operator()() const { return (*Options::current())[*this]; }
#line 172 "../../../src/options/quantifiers_options"
inline bool fmfBoundLazy__option_t::wasSetByUser() const { return Options::current()->wasSetByUser(*this); }
#line 172 "../../../src/options/quantifiers_options"
inline void fmfBoundLazy__option_t::set(const fmfBoundLazy__option_t::type& v) { Options::current()->set(*this, v); }

#line 174 "../../../src/options/quantifiers_options"
inline fmfBoundMinMode__option_t::type fmfBoundMinMode__option_t::operator()() const { return (*Options::current())[*this]; }
#line 174 "../../../src/options/quantifiers_options"
inline bool fmfBoundMinMode__option_t::wasSetByUser() const { return Options::current()->wasSetByUser(*this); }

#line 179 "../../../src/options/quantifiers_options"
inline quantConflictFind__option_t::type quantConflictFind__option_t::operator()() const { return (*Options::current())[*this]; }
#line 179 "../../../src/options/quantifiers_options"
inline bool quantConflictFind__option_t::wasSetByUser() const { return Options::current()->wasSetByUser(*this); }
#line 179 "../../../src/options/quantifiers_options"
inline void quantConflictFind__option_t::set(const quantConflictFind__option_t::type& v) { Options::current()->set(*this, v); }

#line 181 "../../../src/options/quantifiers_options"
inline qcfMode__option_t::type qcfMode__option_t::operator()() const { return (*Options::current())[*this]; }
#line 181 "../../../src/options/quantifiers_options"
inline bool qcfMode__option_t::wasSetByUser() const { return Options::current()->wasSetByUser(*this); }

#line 183 "../../../src/options/quantifiers_options"
inline qcfWhenMode__option_t::type qcfWhenMode__option_t::operator()() const { return (*Options::current())[*this]; }
#line 183 "../../../src/options/quantifiers_options"
inline bool qcfWhenMode__option_t::wasSetByUser() const { return Options::current()->wasSetByUser(*this); }

#line 185 "../../../src/options/quantifiers_options"
inline qcfTConstraint__option_t::type qcfTConstraint__option_t::operator()() const { return (*Options::current())[*this]; }
#line 185 "../../../src/options/quantifiers_options"
inline bool qcfTConstraint__option_t::wasSetByUser() const { return Options::current()->wasSetByUser(*this); }
#line 185 "../../../src/options/quantifiers_options"
inline void qcfTConstraint__option_t::set(const qcfTConstraint__option_t::type& v) { Options::current()->set(*this, v); }

#line 187 "../../../src/options/quantifiers_options"
inline qcfAllConflict__option_t::type qcfAllConflict__option_t::operator()() const { return (*Options::current())[*this]; }
#line 187 "../../../src/options/quantifiers_options"
inline bool qcfAllConflict__option_t::wasSetByUser() const { return Options::current()->wasSetByUser(*this); }
#line 187 "../../../src/options/quantifiers_options"
inline void qcfAllConflict__option_t::set(const qcfAllConflict__option_t::type& v) { Options::current()->set(*this, v); }

#line 189 "../../../src/options/quantifiers_options"
inline qcfNestedConflict__option_t::type qcfNestedConflict__option_t::operator()() const { return (*Options::current())[*this]; }
#line 189 "../../../src/options/quantifiers_options"
inline bool qcfNestedConflict__option_t::wasSetByUser() const { return Options::current()->wasSetByUser(*this); }

#line 191 "../../../src/options/quantifiers_options"
inline qcfVoExp__option_t::type qcfVoExp__option_t::operator()() const { return (*Options::current())[*this]; }
#line 191 "../../../src/options/quantifiers_options"
inline bool qcfVoExp__option_t::wasSetByUser() const { return Options::current()->wasSetByUser(*this); }

#line 194 "../../../src/options/quantifiers_options"
inline instNoEntail__option_t::type instNoEntail__option_t::operator()() const { return (*Options::current())[*this]; }
#line 194 "../../../src/options/quantifiers_options"
inline bool instNoEntail__option_t::wasSetByUser() const { return Options::current()->wasSetByUser(*this); }
#line 194 "../../../src/options/quantifiers_options"
inline void instNoEntail__option_t::set(const instNoEntail__option_t::type& v) { Options::current()->set(*this, v); }

#line 196 "../../../src/options/quantifiers_options"
inline instNoModelTrue__option_t::type instNoModelTrue__option_t::operator()() const { return (*Options::current())[*this]; }
#line 196 "../../../src/options/quantifiers_options"
inline bool instNoModelTrue__option_t::wasSetByUser() const { return Options::current()->wasSetByUser(*this); }
#line 196 "../../../src/options/quantifiers_options"
inline void instNoModelTrue__option_t::set(const instNoModelTrue__option_t::type& v) { Options::current()->set(*this, v); }

#line 199 "../../../src/options/quantifiers_options"
inline instPropagate__option_t::type instPropagate__option_t::operator()() const { return (*Options::current())[*this]; }
#line 199 "../../../src/options/quantifiers_options"
inline bool instPropagate__option_t::wasSetByUser() const { return Options::current()->wasSetByUser(*this); }
#line 199 "../../../src/options/quantifiers_options"
inline void instPropagate__option_t::set(const instPropagate__option_t::type& v) { Options::current()->set(*this, v); }

#line 202 "../../../src/options/quantifiers_options"
inline qcfEagerTest__option_t::type qcfEagerTest__option_t::operator()() const { return (*Options::current())[*this]; }
#line 202 "../../../src/options/quantifiers_options"
inline bool qcfEagerTest__option_t::wasSetByUser() const { return Options::current()->wasSetByUser(*this); }

#line 204 "../../../src/options/quantifiers_options"
inline qcfEagerCheckRd__option_t::type qcfEagerCheckRd__option_t::operator()() const { return (*Options::current())[*this]; }
#line 204 "../../../src/options/quantifiers_options"
inline bool qcfEagerCheckRd__option_t::wasSetByUser() const { return Options::current()->wasSetByUser(*this); }

#line 206 "../../../src/options/quantifiers_options"
inline qcfSkipRd__option_t::type qcfSkipRd__option_t::operator()() const { return (*Options::current())[*this]; }
#line 206 "../../../src/options/quantifiers_options"
inline bool qcfSkipRd__option_t::wasSetByUser() const { return Options::current()->wasSetByUser(*this); }

#line 211 "../../../src/options/quantifiers_options"
inline quantRewriteRules__option_t::type quantRewriteRules__option_t::operator()() const { return (*Options::current())[*this]; }
#line 211 "../../../src/options/quantifiers_options"
inline bool quantRewriteRules__option_t::wasSetByUser() const { return Options::current()->wasSetByUser(*this); }

#line 213 "../../../src/options/quantifiers_options"
inline rrOneInstPerRound__option_t::type rrOneInstPerRound__option_t::operator()() const { return (*Options::current())[*this]; }
#line 213 "../../../src/options/quantifiers_options"
inline bool rrOneInstPerRound__option_t::wasSetByUser() const { return Options::current()->wasSetByUser(*this); }

#line 218 "../../../src/options/quantifiers_options"
inline quantInduction__option_t::type quantInduction__option_t::operator()() const { return (*Options::current())[*this]; }
#line 218 "../../../src/options/quantifiers_options"
inline bool quantInduction__option_t::wasSetByUser() const { return Options::current()->wasSetByUser(*this); }

#line 220 "../../../src/options/quantifiers_options"
inline dtStcInduction__option_t::type dtStcInduction__option_t::operator()() const { return (*Options::current())[*this]; }
#line 220 "../../../src/options/quantifiers_options"
inline bool dtStcInduction__option_t::wasSetByUser() const { return Options::current()->wasSetByUser(*this); }
#line 220 "../../../src/options/quantifiers_options"
inline void dtStcInduction__option_t::set(const dtStcInduction__option_t::type& v) { Options::current()->set(*this, v); }

#line 222 "../../../src/options/quantifiers_options"
inline intWfInduction__option_t::type intWfInduction__option_t::operator()() const { return (*Options::current())[*this]; }
#line 222 "../../../src/options/quantifiers_options"
inline bool intWfInduction__option_t::wasSetByUser() const { return Options::current()->wasSetByUser(*this); }
#line 222 "../../../src/options/quantifiers_options"
inline void intWfInduction__option_t::set(const intWfInduction__option_t::type& v) { Options::current()->set(*this, v); }

#line 224 "../../../src/options/quantifiers_options"
inline conjectureGen__option_t::type conjectureGen__option_t::operator()() const { return (*Options::current())[*this]; }
#line 224 "../../../src/options/quantifiers_options"
inline bool conjectureGen__option_t::wasSetByUser() const { return Options::current()->wasSetByUser(*this); }
#line 224 "../../../src/options/quantifiers_options"
inline void conjectureGen__option_t::set(const conjectureGen__option_t::type& v) { Options::current()->set(*this, v); }

#line 227 "../../../src/options/quantifiers_options"
inline conjectureGenPerRound__option_t::type conjectureGenPerRound__option_t::operator()() const { return (*Options::current())[*this]; }
#line 227 "../../../src/options/quantifiers_options"
inline bool conjectureGenPerRound__option_t::wasSetByUser() const { return Options::current()->wasSetByUser(*this); }

#line 229 "../../../src/options/quantifiers_options"
inline conjectureNoFilter__option_t::type conjectureNoFilter__option_t::operator()() const { return (*Options::current())[*this]; }
#line 229 "../../../src/options/quantifiers_options"
inline bool conjectureNoFilter__option_t::wasSetByUser() const { return Options::current()->wasSetByUser(*this); }

#line 231 "../../../src/options/quantifiers_options"
inline conjectureFilterActiveTerms__option_t::type conjectureFilterActiveTerms__option_t::operator()() const { return (*Options::current())[*this]; }
#line 231 "../../../src/options/quantifiers_options"
inline bool conjectureFilterActiveTerms__option_t::wasSetByUser() const { return Options::current()->wasSetByUser(*this); }
#line 231 "../../../src/options/quantifiers_options"
inline void conjectureFilterActiveTerms__option_t::set(const conjectureFilterActiveTerms__option_t::type& v) { Options::current()->set(*this, v); }

#line 233 "../../../src/options/quantifiers_options"
inline conjectureFilterCanonical__option_t::type conjectureFilterCanonical__option_t::operator()() const { return (*Options::current())[*this]; }
#line 233 "../../../src/options/quantifiers_options"
inline bool conjectureFilterCanonical__option_t::wasSetByUser() const { return Options::current()->wasSetByUser(*this); }
#line 233 "../../../src/options/quantifiers_options"
inline void conjectureFilterCanonical__option_t::set(const conjectureFilterCanonical__option_t::type& v) { Options::current()->set(*this, v); }

#line 235 "../../../src/options/quantifiers_options"
inline conjectureFilterModel__option_t::type conjectureFilterModel__option_t::operator()() const { return (*Options::current())[*this]; }
#line 235 "../../../src/options/quantifiers_options"
inline bool conjectureFilterModel__option_t::wasSetByUser() const { return Options::current()->wasSetByUser(*this); }
#line 235 "../../../src/options/quantifiers_options"
inline void conjectureFilterModel__option_t::set(const conjectureFilterModel__option_t::type& v) { Options::current()->set(*this, v); }

#line 237 "../../../src/options/quantifiers_options"
inline conjectureGenGtEnum__option_t::type conjectureGenGtEnum__option_t::operator()() const { return (*Options::current())[*this]; }
#line 237 "../../../src/options/quantifiers_options"
inline bool conjectureGenGtEnum__option_t::wasSetByUser() const { return Options::current()->wasSetByUser(*this); }

#line 239 "../../../src/options/quantifiers_options"
inline conjectureUeeIntro__option_t::type conjectureUeeIntro__option_t::operator()() const { return (*Options::current())[*this]; }
#line 239 "../../../src/options/quantifiers_options"
inline bool conjectureUeeIntro__option_t::wasSetByUser() const { return Options::current()->wasSetByUser(*this); }

#line 241 "../../../src/options/quantifiers_options"
inline conjectureGenMaxDepth__option_t::type conjectureGenMaxDepth__option_t::operator()() const { return (*Options::current())[*this]; }
#line 241 "../../../src/options/quantifiers_options"
inline bool conjectureGenMaxDepth__option_t::wasSetByUser() const { return Options::current()->wasSetByUser(*this); }

#line 246 "../../../src/options/quantifiers_options"
inline ceGuidedInst__option_t::type ceGuidedInst__option_t::operator()() const { return (*Options::current())[*this]; }
#line 246 "../../../src/options/quantifiers_options"
inline bool ceGuidedInst__option_t::wasSetByUser() const { return Options::current()->wasSetByUser(*this); }
#line 246 "../../../src/options/quantifiers_options"
inline void ceGuidedInst__option_t::set(const ceGuidedInst__option_t::type& v) { Options::current()->set(*this, v); }

#line 248 "../../../src/options/quantifiers_options"
inline ceGuidedInstFair__option_t::type ceGuidedInstFair__option_t::operator()() const { return (*Options::current())[*this]; }
#line 248 "../../../src/options/quantifiers_options"
inline bool ceGuidedInstFair__option_t::wasSetByUser() const { return Options::current()->wasSetByUser(*this); }

#line 250 "../../../src/options/quantifiers_options"
inline cegqiSingleInvMode__option_t::type cegqiSingleInvMode__option_t::operator()() const { return (*Options::current())[*this]; }
#line 250 "../../../src/options/quantifiers_options"
inline bool cegqiSingleInvMode__option_t::wasSetByUser() const { return Options::current()->wasSetByUser(*this); }
#line 250 "../../../src/options/quantifiers_options"
inline void cegqiSingleInvMode__option_t::set(const cegqiSingleInvMode__option_t::type& v) { Options::current()->set(*this, v); }

#line 252 "../../../src/options/quantifiers_options"
inline cegqiSingleInvPartial__option_t::type cegqiSingleInvPartial__option_t::operator()() const { return (*Options::current())[*this]; }
#line 252 "../../../src/options/quantifiers_options"
inline bool cegqiSingleInvPartial__option_t::wasSetByUser() const { return Options::current()->wasSetByUser(*this); }

#line 254 "../../../src/options/quantifiers_options"
inline cegqiSingleInvReconstruct__option_t::type cegqiSingleInvReconstruct__option_t::operator()() const { return (*Options::current())[*this]; }
#line 254 "../../../src/options/quantifiers_options"
inline bool cegqiSingleInvReconstruct__option_t::wasSetByUser() const { return Options::current()->wasSetByUser(*this); }

#line 256 "../../../src/options/quantifiers_options"
inline cegqiSolMinCore__option_t::type cegqiSolMinCore__option_t::operator()() const { return (*Options::current())[*this]; }
#line 256 "../../../src/options/quantifiers_options"
inline bool cegqiSolMinCore__option_t::wasSetByUser() const { return Options::current()->wasSetByUser(*this); }

#line 258 "../../../src/options/quantifiers_options"
inline cegqiSolMinInst__option_t::type cegqiSolMinInst__option_t::operator()() const { return (*Options::current())[*this]; }
#line 258 "../../../src/options/quantifiers_options"
inline bool cegqiSolMinInst__option_t::wasSetByUser() const { return Options::current()->wasSetByUser(*this); }

#line 260 "../../../src/options/quantifiers_options"
inline cegqiSingleInvReconstructConst__option_t::type cegqiSingleInvReconstructConst__option_t::operator()() const { return (*Options::current())[*this]; }
#line 260 "../../../src/options/quantifiers_options"
inline bool cegqiSingleInvReconstructConst__option_t::wasSetByUser() const { return Options::current()->wasSetByUser(*this); }

#line 262 "../../../src/options/quantifiers_options"
inline cegqiSingleInvAbort__option_t::type cegqiSingleInvAbort__option_t::operator()() const { return (*Options::current())[*this]; }
#line 262 "../../../src/options/quantifiers_options"
inline bool cegqiSingleInvAbort__option_t::wasSetByUser() const { return Options::current()->wasSetByUser(*this); }

#line 265 "../../../src/options/quantifiers_options"
inline sygusNormalForm__option_t::type sygusNormalForm__option_t::operator()() const { return (*Options::current())[*this]; }
#line 265 "../../../src/options/quantifiers_options"
inline bool sygusNormalForm__option_t::wasSetByUser() const { return Options::current()->wasSetByUser(*this); }

#line 267 "../../../src/options/quantifiers_options"
inline sygusNormalFormArg__option_t::type sygusNormalFormArg__option_t::operator()() const { return (*Options::current())[*this]; }
#line 267 "../../../src/options/quantifiers_options"
inline bool sygusNormalFormArg__option_t::wasSetByUser() const { return Options::current()->wasSetByUser(*this); }

#line 269 "../../../src/options/quantifiers_options"
inline sygusNormalFormGlobal__option_t::type sygusNormalFormGlobal__option_t::operator()() const { return (*Options::current())[*this]; }
#line 269 "../../../src/options/quantifiers_options"
inline bool sygusNormalFormGlobal__option_t::wasSetByUser() const { return Options::current()->wasSetByUser(*this); }

#line 271 "../../../src/options/quantifiers_options"
inline sygusNormalFormGlobalGen__option_t::type sygusNormalFormGlobalGen__option_t::operator()() const { return (*Options::current())[*this]; }
#line 271 "../../../src/options/quantifiers_options"
inline bool sygusNormalFormGlobalGen__option_t::wasSetByUser() const { return Options::current()->wasSetByUser(*this); }

#line 273 "../../../src/options/quantifiers_options"
inline sygusNormalFormGlobalArg__option_t::type sygusNormalFormGlobalArg__option_t::operator()() const { return (*Options::current())[*this]; }
#line 273 "../../../src/options/quantifiers_options"
inline bool sygusNormalFormGlobalArg__option_t::wasSetByUser() const { return Options::current()->wasSetByUser(*this); }

#line 275 "../../../src/options/quantifiers_options"
inline sygusNormalFormGlobalContent__option_t::type sygusNormalFormGlobalContent__option_t::operator()() const { return (*Options::current())[*this]; }
#line 275 "../../../src/options/quantifiers_options"
inline bool sygusNormalFormGlobalContent__option_t::wasSetByUser() const { return Options::current()->wasSetByUser(*this); }

#line 278 "../../../src/options/quantifiers_options"
inline sygusInvTemplMode__option_t::type sygusInvTemplMode__option_t::operator()() const { return (*Options::current())[*this]; }
#line 278 "../../../src/options/quantifiers_options"
inline bool sygusInvTemplMode__option_t::wasSetByUser() const { return Options::current()->wasSetByUser(*this); }

#line 280 "../../../src/options/quantifiers_options"
inline sygusUnifCondSol__option_t::type sygusUnifCondSol__option_t::operator()() const { return (*Options::current())[*this]; }
#line 280 "../../../src/options/quantifiers_options"
inline bool sygusUnifCondSol__option_t::wasSetByUser() const { return Options::current()->wasSetByUser(*this); }

#line 283 "../../../src/options/quantifiers_options"
inline sygusDirectEval__option_t::type sygusDirectEval__option_t::operator()() const { return (*Options::current())[*this]; }
#line 283 "../../../src/options/quantifiers_options"
inline bool sygusDirectEval__option_t::wasSetByUser() const { return Options::current()->wasSetByUser(*this); }

#line 285 "../../../src/options/quantifiers_options"
inline sygusCRefEval__option_t::type sygusCRefEval__option_t::operator()() const { return (*Options::current())[*this]; }
#line 285 "../../../src/options/quantifiers_options"
inline bool sygusCRefEval__option_t::wasSetByUser() const { return Options::current()->wasSetByUser(*this); }

#line 289 "../../../src/options/quantifiers_options"
inline cbqi__option_t::type cbqi__option_t::operator()() const { return (*Options::current())[*this]; }
#line 289 "../../../src/options/quantifiers_options"
inline bool cbqi__option_t::wasSetByUser() const { return Options::current()->wasSetByUser(*this); }
#line 289 "../../../src/options/quantifiers_options"
inline void cbqi__option_t::set(const cbqi__option_t::type& v) { Options::current()->set(*this, v); }

#line 291 "../../../src/options/quantifiers_options"
inline recurseCbqi__option_t::type recurseCbqi__option_t::operator()() const { return (*Options::current())[*this]; }
#line 291 "../../../src/options/quantifiers_options"
inline bool recurseCbqi__option_t::wasSetByUser() const { return Options::current()->wasSetByUser(*this); }

#line 293 "../../../src/options/quantifiers_options"
inline cbqiSat__option_t::type cbqiSat__option_t::operator()() const { return (*Options::current())[*this]; }
#line 293 "../../../src/options/quantifiers_options"
inline bool cbqiSat__option_t::wasSetByUser() const { return Options::current()->wasSetByUser(*this); }
#line 293 "../../../src/options/quantifiers_options"
inline void cbqiSat__option_t::set(const cbqiSat__option_t::type& v) { Options::current()->set(*this, v); }

#line 295 "../../../src/options/quantifiers_options"
inline cbqiModel__option_t::type cbqiModel__option_t::operator()() const { return (*Options::current())[*this]; }
#line 295 "../../../src/options/quantifiers_options"
inline bool cbqiModel__option_t::wasSetByUser() const { return Options::current()->wasSetByUser(*this); }
#line 295 "../../../src/options/quantifiers_options"
inline void cbqiModel__option_t::set(const cbqiModel__option_t::type& v) { Options::current()->set(*this, v); }

#line 297 "../../../src/options/quantifiers_options"
inline cbqiAll__option_t::type cbqiAll__option_t::operator()() const { return (*Options::current())[*this]; }
#line 297 "../../../src/options/quantifiers_options"
inline bool cbqiAll__option_t::wasSetByUser() const { return Options::current()->wasSetByUser(*this); }
#line 297 "../../../src/options/quantifiers_options"
inline void cbqiAll__option_t::set(const cbqiAll__option_t::type& v) { Options::current()->set(*this, v); }

#line 299 "../../../src/options/quantifiers_options"
inline cbqiUseInfInt__option_t::type cbqiUseInfInt__option_t::operator()() const { return (*Options::current())[*this]; }
#line 299 "../../../src/options/quantifiers_options"
inline bool cbqiUseInfInt__option_t::wasSetByUser() const { return Options::current()->wasSetByUser(*this); }
#line 299 "../../../src/options/quantifiers_options"
inline void cbqiUseInfInt__option_t::set(const cbqiUseInfInt__option_t::type& v) { Options::current()->set(*this, v); }

#line 301 "../../../src/options/quantifiers_options"
inline cbqiUseInfReal__option_t::type cbqiUseInfReal__option_t::operator()() const { return (*Options::current())[*this]; }
#line 301 "../../../src/options/quantifiers_options"
inline bool cbqiUseInfReal__option_t::wasSetByUser() const { return Options::current()->wasSetByUser(*this); }
#line 301 "../../../src/options/quantifiers_options"
inline void cbqiUseInfReal__option_t::set(const cbqiUseInfReal__option_t::type& v) { Options::current()->set(*this, v); }

#line 303 "../../../src/options/quantifiers_options"
inline cbqiPreRegInst__option_t::type cbqiPreRegInst__option_t::operator()() const { return (*Options::current())[*this]; }
#line 303 "../../../src/options/quantifiers_options"
inline bool cbqiPreRegInst__option_t::wasSetByUser() const { return Options::current()->wasSetByUser(*this); }
#line 303 "../../../src/options/quantifiers_options"
inline void cbqiPreRegInst__option_t::set(const cbqiPreRegInst__option_t::type& v) { Options::current()->set(*this, v); }

#line 305 "../../../src/options/quantifiers_options"
inline cbqiMinBounds__option_t::type cbqiMinBounds__option_t::operator()() const { return (*Options::current())[*this]; }
#line 305 "../../../src/options/quantifiers_options"
inline bool cbqiMinBounds__option_t::wasSetByUser() const { return Options::current()->wasSetByUser(*this); }

#line 307 "../../../src/options/quantifiers_options"
inline cbqiRoundUpLowerLia__option_t::type cbqiRoundUpLowerLia__option_t::operator()() const { return (*Options::current())[*this]; }
#line 307 "../../../src/options/quantifiers_options"
inline bool cbqiRoundUpLowerLia__option_t::wasSetByUser() const { return Options::current()->wasSetByUser(*this); }

#line 309 "../../../src/options/quantifiers_options"
inline cbqiMidpoint__option_t::type cbqiMidpoint__option_t::operator()() const { return (*Options::current())[*this]; }
#line 309 "../../../src/options/quantifiers_options"
inline bool cbqiMidpoint__option_t::wasSetByUser() const { return Options::current()->wasSetByUser(*this); }

#line 311 "../../../src/options/quantifiers_options"
inline cbqiNopt__option_t::type cbqiNopt__option_t::operator()() const { return (*Options::current())[*this]; }
#line 311 "../../../src/options/quantifiers_options"
inline bool cbqiNopt__option_t::wasSetByUser() const { return Options::current()->wasSetByUser(*this); }

#line 313 "../../../src/options/quantifiers_options"
inline cbqiLitDepend__option_t::type cbqiLitDepend__option_t::operator()() const { return (*Options::current())[*this]; }
#line 313 "../../../src/options/quantifiers_options"
inline bool cbqiLitDepend__option_t::wasSetByUser() const { return Options::current()->wasSetByUser(*this); }

#line 315 "../../../src/options/quantifiers_options"
inline cbqiInnermost__option_t::type cbqiInnermost__option_t::operator()() const { return (*Options::current())[*this]; }
#line 315 "../../../src/options/quantifiers_options"
inline bool cbqiInnermost__option_t::wasSetByUser() const { return Options::current()->wasSetByUser(*this); }
#line 315 "../../../src/options/quantifiers_options"
inline void cbqiInnermost__option_t::set(const cbqiInnermost__option_t::type& v) { Options::current()->set(*this, v); }

#line 317 "../../../src/options/quantifiers_options"
inline cbqiNestedQE__option_t::type cbqiNestedQE__option_t::operator()() const { return (*Options::current())[*this]; }
#line 317 "../../../src/options/quantifiers_options"
inline bool cbqiNestedQE__option_t::wasSetByUser() const { return Options::current()->wasSetByUser(*this); }
#line 317 "../../../src/options/quantifiers_options"
inline void cbqiNestedQE__option_t::set(const cbqiNestedQE__option_t::type& v) { Options::current()->set(*this, v); }

#line 320 "../../../src/options/quantifiers_options"
inline quantEpr__option_t::type quantEpr__option_t::operator()() const { return (*Options::current())[*this]; }
#line 320 "../../../src/options/quantifiers_options"
inline bool quantEpr__option_t::wasSetByUser() const { return Options::current()->wasSetByUser(*this); }
#line 320 "../../../src/options/quantifiers_options"
inline void quantEpr__option_t::set(const quantEpr__option_t::type& v) { Options::current()->set(*this, v); }

#line 322 "../../../src/options/quantifiers_options"
inline quantEprMatching__option_t::type quantEprMatching__option_t::operator()() const { return (*Options::current())[*this]; }
#line 322 "../../../src/options/quantifiers_options"
inline bool quantEprMatching__option_t::wasSetByUser() const { return Options::current()->wasSetByUser(*this); }

#line 327 "../../../src/options/quantifiers_options"
inline localTheoryExt__option_t::type localTheoryExt__option_t::operator()() const { return (*Options::current())[*this]; }
#line 327 "../../../src/options/quantifiers_options"
inline bool localTheoryExt__option_t::wasSetByUser() const { return Options::current()->wasSetByUser(*this); }

#line 329 "../../../src/options/quantifiers_options"
inline ltePartialInst__option_t::type ltePartialInst__option_t::operator()() const { return (*Options::current())[*this]; }
#line 329 "../../../src/options/quantifiers_options"
inline bool ltePartialInst__option_t::wasSetByUser() const { return Options::current()->wasSetByUser(*this); }

#line 331 "../../../src/options/quantifiers_options"
inline lteRestrictInstClosure__option_t::type lteRestrictInstClosure__option_t::operator()() const { return (*Options::current())[*this]; }
#line 331 "../../../src/options/quantifiers_options"
inline bool lteRestrictInstClosure__option_t::wasSetByUser() const { return Options::current()->wasSetByUser(*this); }

#line 336 "../../../src/options/quantifiers_options"
inline quantAlphaEquiv__option_t::type quantAlphaEquiv__option_t::operator()() const { return (*Options::current())[*this]; }
#line 336 "../../../src/options/quantifiers_options"
inline bool quantAlphaEquiv__option_t::wasSetByUser() const { return Options::current()->wasSetByUser(*this); }

#line 338 "../../../src/options/quantifiers_options"
inline macrosQuant__option_t::type macrosQuant__option_t::operator()() const { return (*Options::current())[*this]; }
#line 338 "../../../src/options/quantifiers_options"
inline bool macrosQuant__option_t::wasSetByUser() const { return Options::current()->wasSetByUser(*this); }
#line 338 "../../../src/options/quantifiers_options"
inline void macrosQuant__option_t::set(const macrosQuant__option_t::type& v) { Options::current()->set(*this, v); }

#line 340 "../../../src/options/quantifiers_options"
inline macrosQuantMode__option_t::type macrosQuantMode__option_t::operator()() const { return (*Options::current())[*this]; }
#line 340 "../../../src/options/quantifiers_options"
inline bool macrosQuantMode__option_t::wasSetByUser() const { return Options::current()->wasSetByUser(*this); }

#line 342 "../../../src/options/quantifiers_options"
inline quantDynamicSplit__option_t::type quantDynamicSplit__option_t::operator()() const { return (*Options::current())[*this]; }
#line 342 "../../../src/options/quantifiers_options"
inline bool quantDynamicSplit__option_t::wasSetByUser() const { return Options::current()->wasSetByUser(*this); }
#line 342 "../../../src/options/quantifiers_options"
inline void quantDynamicSplit__option_t::set(const quantDynamicSplit__option_t::type& v) { Options::current()->set(*this, v); }

#line 344 "../../../src/options/quantifiers_options"
inline quantAntiSkolem__option_t::type quantAntiSkolem__option_t::operator()() const { return (*Options::current())[*this]; }
#line 344 "../../../src/options/quantifiers_options"
inline bool quantAntiSkolem__option_t::wasSetByUser() const { return Options::current()->wasSetByUser(*this); }
#line 344 "../../../src/options/quantifiers_options"
inline void quantAntiSkolem__option_t::set(const quantAntiSkolem__option_t::type& v) { Options::current()->set(*this, v); }

#line 354 "../../../src/options/quantifiers_options"
inline quantEqualityEngine__option_t::type quantEqualityEngine__option_t::operator()() const { return (*Options::current())[*this]; }
#line 354 "../../../src/options/quantifiers_options"
inline bool quantEqualityEngine__option_t::wasSetByUser() const { return Options::current()->wasSetByUser(*this); }

#line 359 "../../../src/options/quantifiers_options"
inline trackInstLemmas__option_t::type trackInstLemmas__option_t::operator()() const { return (*Options::current())[*this]; }
#line 359 "../../../src/options/quantifiers_options"
inline bool trackInstLemmas__option_t::wasSetByUser() const { return Options::current()->wasSetByUser(*this); }
#line 359 "../../../src/options/quantifiers_options"
inline void trackInstLemmas__option_t::set(const trackInstLemmas__option_t::type& v) { Options::current()->set(*this, v); }

#line 50 "../../../src/options/base_options_template.h"

}/* CVC4::options namespace */

}/* CVC4 namespace */

#endif /* __CVC4__OPTIONS__QUANTIFIERS_H */
