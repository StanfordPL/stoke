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


#line 13 "../../../src/options/quantifiers_options"
template <> void Options::set(options::miniscopeQuant__option_t, const options::miniscopeQuant__option_t::type& x) { d_holder->miniscopeQuant = x; }
#line 13 "../../../src/options/quantifiers_options"
template <> const options::miniscopeQuant__option_t::type& Options::operator[](options::miniscopeQuant__option_t) const { return d_holder->miniscopeQuant; }
#line 13 "../../../src/options/quantifiers_options"
template <> bool Options::wasSetByUser(options::miniscopeQuant__option_t) const { return d_holder->miniscopeQuant__setByUser__; }
#line 18 "../../../src/options/quantifiers_options"
template <> void Options::set(options::miniscopeQuantFreeVar__option_t, const options::miniscopeQuantFreeVar__option_t::type& x) { d_holder->miniscopeQuantFreeVar = x; }
#line 18 "../../../src/options/quantifiers_options"
template <> const options::miniscopeQuantFreeVar__option_t::type& Options::operator[](options::miniscopeQuantFreeVar__option_t) const { return d_holder->miniscopeQuantFreeVar; }
#line 18 "../../../src/options/quantifiers_options"
template <> bool Options::wasSetByUser(options::miniscopeQuantFreeVar__option_t) const { return d_holder->miniscopeQuantFreeVar__setByUser__; }
#line 20 "../../../src/options/quantifiers_options"
template <> void Options::set(options::quantSplit__option_t, const options::quantSplit__option_t::type& x) { d_holder->quantSplit = x; }
#line 20 "../../../src/options/quantifiers_options"
template <> const options::quantSplit__option_t::type& Options::operator[](options::quantSplit__option_t) const { return d_holder->quantSplit; }
#line 20 "../../../src/options/quantifiers_options"
template <> bool Options::wasSetByUser(options::quantSplit__option_t) const { return d_holder->quantSplit__setByUser__; }
#line 22 "../../../src/options/quantifiers_options"
template <> void Options::set(options::prenexQuant__option_t, const options::prenexQuant__option_t::type& x) { d_holder->prenexQuant = x; }
#line 22 "../../../src/options/quantifiers_options"
template <> const options::prenexQuant__option_t::type& Options::operator[](options::prenexQuant__option_t) const { return d_holder->prenexQuant; }
#line 22 "../../../src/options/quantifiers_options"
template <> bool Options::wasSetByUser(options::prenexQuant__option_t) const { return d_holder->prenexQuant__setByUser__; }
#line 24 "../../../src/options/quantifiers_options"
template <> void Options::set(options::prenexQuantUser__option_t, const options::prenexQuantUser__option_t::type& x) { d_holder->prenexQuantUser = x; }
#line 24 "../../../src/options/quantifiers_options"
template <> const options::prenexQuantUser__option_t::type& Options::operator[](options::prenexQuantUser__option_t) const { return d_holder->prenexQuantUser; }
#line 24 "../../../src/options/quantifiers_options"
template <> bool Options::wasSetByUser(options::prenexQuantUser__option_t) const { return d_holder->prenexQuantUser__setByUser__; }
#line 29 "../../../src/options/quantifiers_options"
template <> const options::varElimQuant__option_t::type& Options::operator[](options::varElimQuant__option_t) const { return d_holder->varElimQuant; }
#line 29 "../../../src/options/quantifiers_options"
template <> bool Options::wasSetByUser(options::varElimQuant__option_t) const { return d_holder->varElimQuant__setByUser__; }
#line 31 "../../../src/options/quantifiers_options"
template <> const options::varIneqElimQuant__option_t::type& Options::operator[](options::varIneqElimQuant__option_t) const { return d_holder->varIneqElimQuant; }
#line 31 "../../../src/options/quantifiers_options"
template <> bool Options::wasSetByUser(options::varIneqElimQuant__option_t) const { return d_holder->varIneqElimQuant__setByUser__; }
#line 33 "../../../src/options/quantifiers_options"
template <> const options::dtVarExpandQuant__option_t::type& Options::operator[](options::dtVarExpandQuant__option_t) const { return d_holder->dtVarExpandQuant; }
#line 33 "../../../src/options/quantifiers_options"
template <> bool Options::wasSetByUser(options::dtVarExpandQuant__option_t) const { return d_holder->dtVarExpandQuant__setByUser__; }
#line 36 "../../../src/options/quantifiers_options"
template <> void Options::set(options::iteLiftQuant__option_t, const options::iteLiftQuant__option_t::type& x) { d_holder->iteLiftQuant = x; }
#line 36 "../../../src/options/quantifiers_options"
template <> const options::iteLiftQuant__option_t::type& Options::operator[](options::iteLiftQuant__option_t) const { return d_holder->iteLiftQuant; }
#line 36 "../../../src/options/quantifiers_options"
template <> bool Options::wasSetByUser(options::iteLiftQuant__option_t) const { return d_holder->iteLiftQuant__setByUser__; }
#line 38 "../../../src/options/quantifiers_options"
template <> const options::condVarSplitQuant__option_t::type& Options::operator[](options::condVarSplitQuant__option_t) const { return d_holder->condVarSplitQuant; }
#line 38 "../../../src/options/quantifiers_options"
template <> bool Options::wasSetByUser(options::condVarSplitQuant__option_t) const { return d_holder->condVarSplitQuant__setByUser__; }
#line 40 "../../../src/options/quantifiers_options"
template <> const options::condVarSplitQuantAgg__option_t::type& Options::operator[](options::condVarSplitQuantAgg__option_t) const { return d_holder->condVarSplitQuantAgg; }
#line 40 "../../../src/options/quantifiers_options"
template <> bool Options::wasSetByUser(options::condVarSplitQuantAgg__option_t) const { return d_holder->condVarSplitQuantAgg__setByUser__; }
#line 42 "../../../src/options/quantifiers_options"
template <> void Options::set(options::iteDtTesterSplitQuant__option_t, const options::iteDtTesterSplitQuant__option_t::type& x) { d_holder->iteDtTesterSplitQuant = x; }
#line 42 "../../../src/options/quantifiers_options"
template <> const options::iteDtTesterSplitQuant__option_t::type& Options::operator[](options::iteDtTesterSplitQuant__option_t) const { return d_holder->iteDtTesterSplitQuant; }
#line 42 "../../../src/options/quantifiers_options"
template <> bool Options::wasSetByUser(options::iteDtTesterSplitQuant__option_t) const { return d_holder->iteDtTesterSplitQuant__setByUser__; }
#line 47 "../../../src/options/quantifiers_options"
template <> void Options::set(options::preSkolemQuant__option_t, const options::preSkolemQuant__option_t::type& x) { d_holder->preSkolemQuant = x; }
#line 47 "../../../src/options/quantifiers_options"
template <> const options::preSkolemQuant__option_t::type& Options::operator[](options::preSkolemQuant__option_t) const { return d_holder->preSkolemQuant; }
#line 47 "../../../src/options/quantifiers_options"
template <> bool Options::wasSetByUser(options::preSkolemQuant__option_t) const { return d_holder->preSkolemQuant__setByUser__; }
#line 49 "../../../src/options/quantifiers_options"
template <> void Options::set(options::preSkolemQuantNested__option_t, const options::preSkolemQuantNested__option_t::type& x) { d_holder->preSkolemQuantNested = x; }
#line 49 "../../../src/options/quantifiers_options"
template <> const options::preSkolemQuantNested__option_t::type& Options::operator[](options::preSkolemQuantNested__option_t) const { return d_holder->preSkolemQuantNested; }
#line 49 "../../../src/options/quantifiers_options"
template <> bool Options::wasSetByUser(options::preSkolemQuantNested__option_t) const { return d_holder->preSkolemQuantNested__setByUser__; }
#line 51 "../../../src/options/quantifiers_options"
template <> void Options::set(options::preSkolemQuantAgg__option_t, const options::preSkolemQuantAgg__option_t::type& x) { d_holder->preSkolemQuantAgg = x; }
#line 51 "../../../src/options/quantifiers_options"
template <> const options::preSkolemQuantAgg__option_t::type& Options::operator[](options::preSkolemQuantAgg__option_t) const { return d_holder->preSkolemQuantAgg; }
#line 51 "../../../src/options/quantifiers_options"
template <> bool Options::wasSetByUser(options::preSkolemQuantAgg__option_t) const { return d_holder->preSkolemQuantAgg__setByUser__; }
#line 53 "../../../src/options/quantifiers_options"
template <> const options::aggressiveMiniscopeQuant__option_t::type& Options::operator[](options::aggressiveMiniscopeQuant__option_t) const { return d_holder->aggressiveMiniscopeQuant; }
#line 53 "../../../src/options/quantifiers_options"
template <> bool Options::wasSetByUser(options::aggressiveMiniscopeQuant__option_t) const { return d_holder->aggressiveMiniscopeQuant__setByUser__; }
#line 55 "../../../src/options/quantifiers_options"
template <> const options::elimTautQuant__option_t::type& Options::operator[](options::elimTautQuant__option_t) const { return d_holder->elimTautQuant; }
#line 55 "../../../src/options/quantifiers_options"
template <> bool Options::wasSetByUser(options::elimTautQuant__option_t) const { return d_holder->elimTautQuant__setByUser__; }
#line 57 "../../../src/options/quantifiers_options"
template <> void Options::set(options::elimExtArithQuant__option_t, const options::elimExtArithQuant__option_t::type& x) { d_holder->elimExtArithQuant = x; }
#line 57 "../../../src/options/quantifiers_options"
template <> const options::elimExtArithQuant__option_t::type& Options::operator[](options::elimExtArithQuant__option_t) const { return d_holder->elimExtArithQuant; }
#line 57 "../../../src/options/quantifiers_options"
template <> bool Options::wasSetByUser(options::elimExtArithQuant__option_t) const { return d_holder->elimExtArithQuant__setByUser__; }
#line 59 "../../../src/options/quantifiers_options"
template <> const options::condRewriteQuant__option_t::type& Options::operator[](options::condRewriteQuant__option_t) const { return d_holder->condRewriteQuant; }
#line 59 "../../../src/options/quantifiers_options"
template <> bool Options::wasSetByUser(options::condRewriteQuant__option_t) const { return d_holder->condRewriteQuant__setByUser__; }
#line 64 "../../../src/options/quantifiers_options"
template <> void Options::set(options::eMatching__option_t, const options::eMatching__option_t::type& x) { d_holder->eMatching = x; }
#line 64 "../../../src/options/quantifiers_options"
template <> const options::eMatching__option_t::type& Options::operator[](options::eMatching__option_t) const { return d_holder->eMatching; }
#line 64 "../../../src/options/quantifiers_options"
template <> bool Options::wasSetByUser(options::eMatching__option_t) const { return d_holder->eMatching__setByUser__; }
#line 67 "../../../src/options/quantifiers_options"
template <> void Options::set(options::termDbMode__option_t, const options::termDbMode__option_t::type& x) { d_holder->termDbMode = x; }
#line 67 "../../../src/options/quantifiers_options"
template <> const options::termDbMode__option_t::type& Options::operator[](options::termDbMode__option_t) const { return d_holder->termDbMode; }
#line 67 "../../../src/options/quantifiers_options"
template <> bool Options::wasSetByUser(options::termDbMode__option_t) const { return d_holder->termDbMode__setByUser__; }
#line 69 "../../../src/options/quantifiers_options"
template <> const options::registerQuantBodyTerms__option_t::type& Options::operator[](options::registerQuantBodyTerms__option_t) const { return d_holder->registerQuantBodyTerms; }
#line 69 "../../../src/options/quantifiers_options"
template <> bool Options::wasSetByUser(options::registerQuantBodyTerms__option_t) const { return d_holder->registerQuantBodyTerms__setByUser__; }
#line 71 "../../../src/options/quantifiers_options"
template <> const options::inferArithTriggerEq__option_t::type& Options::operator[](options::inferArithTriggerEq__option_t) const { return d_holder->inferArithTriggerEq; }
#line 71 "../../../src/options/quantifiers_options"
template <> bool Options::wasSetByUser(options::inferArithTriggerEq__option_t) const { return d_holder->inferArithTriggerEq__setByUser__; }
#line 73 "../../../src/options/quantifiers_options"
template <> const options::inferArithTriggerEqExp__option_t::type& Options::operator[](options::inferArithTriggerEqExp__option_t) const { return d_holder->inferArithTriggerEqExp; }
#line 73 "../../../src/options/quantifiers_options"
template <> bool Options::wasSetByUser(options::inferArithTriggerEqExp__option_t) const { return d_holder->inferArithTriggerEqExp__setByUser__; }
#line 76 "../../../src/options/quantifiers_options"
template <> const options::strictTriggers__option_t::type& Options::operator[](options::strictTriggers__option_t) const { return d_holder->strictTriggers; }
#line 76 "../../../src/options/quantifiers_options"
template <> bool Options::wasSetByUser(options::strictTriggers__option_t) const { return d_holder->strictTriggers__setByUser__; }
#line 78 "../../../src/options/quantifiers_options"
template <> const options::relevantTriggers__option_t::type& Options::operator[](options::relevantTriggers__option_t) const { return d_holder->relevantTriggers; }
#line 78 "../../../src/options/quantifiers_options"
template <> bool Options::wasSetByUser(options::relevantTriggers__option_t) const { return d_holder->relevantTriggers__setByUser__; }
#line 80 "../../../src/options/quantifiers_options"
template <> const options::relationalTriggers__option_t::type& Options::operator[](options::relationalTriggers__option_t) const { return d_holder->relationalTriggers; }
#line 80 "../../../src/options/quantifiers_options"
template <> bool Options::wasSetByUser(options::relationalTriggers__option_t) const { return d_holder->relationalTriggers__setByUser__; }
#line 82 "../../../src/options/quantifiers_options"
template <> void Options::set(options::purifyTriggers__option_t, const options::purifyTriggers__option_t::type& x) { d_holder->purifyTriggers = x; }
#line 82 "../../../src/options/quantifiers_options"
template <> const options::purifyTriggers__option_t::type& Options::operator[](options::purifyTriggers__option_t) const { return d_holder->purifyTriggers; }
#line 82 "../../../src/options/quantifiers_options"
template <> bool Options::wasSetByUser(options::purifyTriggers__option_t) const { return d_holder->purifyTriggers__setByUser__; }
#line 84 "../../../src/options/quantifiers_options"
template <> void Options::set(options::purifyDtTriggers__option_t, const options::purifyDtTriggers__option_t::type& x) { d_holder->purifyDtTriggers = x; }
#line 84 "../../../src/options/quantifiers_options"
template <> const options::purifyDtTriggers__option_t::type& Options::operator[](options::purifyDtTriggers__option_t) const { return d_holder->purifyDtTriggers; }
#line 84 "../../../src/options/quantifiers_options"
template <> bool Options::wasSetByUser(options::purifyDtTriggers__option_t) const { return d_holder->purifyDtTriggers__setByUser__; }
#line 86 "../../../src/options/quantifiers_options"
template <> void Options::set(options::pureThTriggers__option_t, const options::pureThTriggers__option_t::type& x) { d_holder->pureThTriggers = x; }
#line 86 "../../../src/options/quantifiers_options"
template <> const options::pureThTriggers__option_t::type& Options::operator[](options::pureThTriggers__option_t) const { return d_holder->pureThTriggers; }
#line 86 "../../../src/options/quantifiers_options"
template <> bool Options::wasSetByUser(options::pureThTriggers__option_t) const { return d_holder->pureThTriggers__setByUser__; }
#line 88 "../../../src/options/quantifiers_options"
template <> void Options::set(options::partialTriggers__option_t, const options::partialTriggers__option_t::type& x) { d_holder->partialTriggers = x; }
#line 88 "../../../src/options/quantifiers_options"
template <> const options::partialTriggers__option_t::type& Options::operator[](options::partialTriggers__option_t) const { return d_holder->partialTriggers; }
#line 88 "../../../src/options/quantifiers_options"
template <> bool Options::wasSetByUser(options::partialTriggers__option_t) const { return d_holder->partialTriggers__setByUser__; }
#line 90 "../../../src/options/quantifiers_options"
template <> const options::multiTriggerWhenSingle__option_t::type& Options::operator[](options::multiTriggerWhenSingle__option_t) const { return d_holder->multiTriggerWhenSingle; }
#line 90 "../../../src/options/quantifiers_options"
template <> bool Options::wasSetByUser(options::multiTriggerWhenSingle__option_t) const { return d_holder->multiTriggerWhenSingle__setByUser__; }
#line 92 "../../../src/options/quantifiers_options"
template <> const options::multiTriggerPriority__option_t::type& Options::operator[](options::multiTriggerPriority__option_t) const { return d_holder->multiTriggerPriority; }
#line 92 "../../../src/options/quantifiers_options"
template <> bool Options::wasSetByUser(options::multiTriggerPriority__option_t) const { return d_holder->multiTriggerPriority__setByUser__; }
#line 94 "../../../src/options/quantifiers_options"
template <> const options::multiTriggerCache__option_t::type& Options::operator[](options::multiTriggerCache__option_t) const { return d_holder->multiTriggerCache; }
#line 94 "../../../src/options/quantifiers_options"
template <> bool Options::wasSetByUser(options::multiTriggerCache__option_t) const { return d_holder->multiTriggerCache__setByUser__; }
#line 96 "../../../src/options/quantifiers_options"
template <> const options::multiTriggerLinear__option_t::type& Options::operator[](options::multiTriggerLinear__option_t) const { return d_holder->multiTriggerLinear; }
#line 96 "../../../src/options/quantifiers_options"
template <> bool Options::wasSetByUser(options::multiTriggerLinear__option_t) const { return d_holder->multiTriggerLinear__setByUser__; }
#line 98 "../../../src/options/quantifiers_options"
template <> void Options::set(options::triggerSelMode__option_t, const options::triggerSelMode__option_t::type& x) { d_holder->triggerSelMode = x; }
#line 98 "../../../src/options/quantifiers_options"
template <> const options::triggerSelMode__option_t::type& Options::operator[](options::triggerSelMode__option_t) const { return d_holder->triggerSelMode; }
#line 98 "../../../src/options/quantifiers_options"
template <> bool Options::wasSetByUser(options::triggerSelMode__option_t) const { return d_holder->triggerSelMode__setByUser__; }
#line 100 "../../../src/options/quantifiers_options"
template <> void Options::set(options::triggerActiveSelMode__option_t, const options::triggerActiveSelMode__option_t::type& x) { d_holder->triggerActiveSelMode = x; }
#line 100 "../../../src/options/quantifiers_options"
template <> const options::triggerActiveSelMode__option_t::type& Options::operator[](options::triggerActiveSelMode__option_t) const { return d_holder->triggerActiveSelMode; }
#line 100 "../../../src/options/quantifiers_options"
template <> bool Options::wasSetByUser(options::triggerActiveSelMode__option_t) const { return d_holder->triggerActiveSelMode__setByUser__; }
#line 102 "../../../src/options/quantifiers_options"
template <> void Options::set(options::userPatternsQuant__option_t, const options::userPatternsQuant__option_t::type& x) { d_holder->userPatternsQuant = x; }
#line 102 "../../../src/options/quantifiers_options"
template <> const options::userPatternsQuant__option_t::type& Options::operator[](options::userPatternsQuant__option_t) const { return d_holder->userPatternsQuant; }
#line 102 "../../../src/options/quantifiers_options"
template <> bool Options::wasSetByUser(options::userPatternsQuant__option_t) const { return d_holder->userPatternsQuant__setByUser__; }
#line 104 "../../../src/options/quantifiers_options"
template <> const options::incrementTriggers__option_t::type& Options::operator[](options::incrementTriggers__option_t) const { return d_holder->incrementTriggers; }
#line 104 "../../../src/options/quantifiers_options"
template <> bool Options::wasSetByUser(options::incrementTriggers__option_t) const { return d_holder->incrementTriggers__setByUser__; }
#line 107 "../../../src/options/quantifiers_options"
template <> void Options::set(options::instWhenMode__option_t, const options::instWhenMode__option_t::type& x) { d_holder->instWhenMode = x; }
#line 107 "../../../src/options/quantifiers_options"
template <> const options::instWhenMode__option_t::type& Options::operator[](options::instWhenMode__option_t) const { return d_holder->instWhenMode; }
#line 107 "../../../src/options/quantifiers_options"
template <> bool Options::wasSetByUser(options::instWhenMode__option_t) const { return d_holder->instWhenMode__setByUser__; }
#line 109 "../../../src/options/quantifiers_options"
template <> void Options::set(options::instWhenStrictInterleave__option_t, const options::instWhenStrictInterleave__option_t::type& x) { d_holder->instWhenStrictInterleave = x; }
#line 109 "../../../src/options/quantifiers_options"
template <> const options::instWhenStrictInterleave__option_t::type& Options::operator[](options::instWhenStrictInterleave__option_t) const { return d_holder->instWhenStrictInterleave; }
#line 109 "../../../src/options/quantifiers_options"
template <> bool Options::wasSetByUser(options::instWhenStrictInterleave__option_t) const { return d_holder->instWhenStrictInterleave__setByUser__; }
#line 111 "../../../src/options/quantifiers_options"
template <> void Options::set(options::instWhenPhase__option_t, const options::instWhenPhase__option_t::type& x) { d_holder->instWhenPhase = x; }
#line 111 "../../../src/options/quantifiers_options"
template <> const options::instWhenPhase__option_t::type& Options::operator[](options::instWhenPhase__option_t) const { return d_holder->instWhenPhase; }
#line 111 "../../../src/options/quantifiers_options"
template <> bool Options::wasSetByUser(options::instWhenPhase__option_t) const { return d_holder->instWhenPhase__setByUser__; }
#line 113 "../../../src/options/quantifiers_options"
template <> void Options::set(options::instWhenTcFirst__option_t, const options::instWhenTcFirst__option_t::type& x) { d_holder->instWhenTcFirst = x; }
#line 113 "../../../src/options/quantifiers_options"
template <> const options::instWhenTcFirst__option_t::type& Options::operator[](options::instWhenTcFirst__option_t) const { return d_holder->instWhenTcFirst; }
#line 113 "../../../src/options/quantifiers_options"
template <> bool Options::wasSetByUser(options::instWhenTcFirst__option_t) const { return d_holder->instWhenTcFirst__setByUser__; }
#line 115 "../../../src/options/quantifiers_options"
template <> const options::quantModelEe__option_t::type& Options::operator[](options::quantModelEe__option_t) const { return d_holder->quantModelEe; }
#line 115 "../../../src/options/quantifiers_options"
template <> bool Options::wasSetByUser(options::quantModelEe__option_t) const { return d_holder->quantModelEe__setByUser__; }
#line 118 "../../../src/options/quantifiers_options"
template <> void Options::set(options::instMaxLevel__option_t, const options::instMaxLevel__option_t::type& x) { d_holder->instMaxLevel = x; }
#line 118 "../../../src/options/quantifiers_options"
template <> const options::instMaxLevel__option_t::type& Options::operator[](options::instMaxLevel__option_t) const { return d_holder->instMaxLevel; }
#line 118 "../../../src/options/quantifiers_options"
template <> bool Options::wasSetByUser(options::instMaxLevel__option_t) const { return d_holder->instMaxLevel__setByUser__; }
#line 120 "../../../src/options/quantifiers_options"
template <> const options::instLevelInputOnly__option_t::type& Options::operator[](options::instLevelInputOnly__option_t) const { return d_holder->instLevelInputOnly; }
#line 120 "../../../src/options/quantifiers_options"
template <> bool Options::wasSetByUser(options::instLevelInputOnly__option_t) const { return d_holder->instLevelInputOnly__setByUser__; }
#line 122 "../../../src/options/quantifiers_options"
template <> void Options::set(options::quantRepMode__option_t, const options::quantRepMode__option_t::type& x) { d_holder->quantRepMode = x; }
#line 122 "../../../src/options/quantifiers_options"
template <> const options::quantRepMode__option_t::type& Options::operator[](options::quantRepMode__option_t) const { return d_holder->quantRepMode; }
#line 122 "../../../src/options/quantifiers_options"
template <> bool Options::wasSetByUser(options::quantRepMode__option_t) const { return d_holder->quantRepMode__setByUser__; }
#line 124 "../../../src/options/quantifiers_options"
template <> const options::instRelevantCond__option_t::type& Options::operator[](options::instRelevantCond__option_t) const { return d_holder->instRelevantCond; }
#line 124 "../../../src/options/quantifiers_options"
template <> bool Options::wasSetByUser(options::instRelevantCond__option_t) const { return d_holder->instRelevantCond__setByUser__; }
#line 127 "../../../src/options/quantifiers_options"
template <> void Options::set(options::fullSaturateQuant__option_t, const options::fullSaturateQuant__option_t::type& x) { d_holder->fullSaturateQuant = x; }
#line 127 "../../../src/options/quantifiers_options"
template <> const options::fullSaturateQuant__option_t::type& Options::operator[](options::fullSaturateQuant__option_t) const { return d_holder->fullSaturateQuant; }
#line 127 "../../../src/options/quantifiers_options"
template <> bool Options::wasSetByUser(options::fullSaturateQuant__option_t) const { return d_holder->fullSaturateQuant__setByUser__; }
#line 129 "../../../src/options/quantifiers_options"
template <> const options::fullSaturateQuantRd__option_t::type& Options::operator[](options::fullSaturateQuantRd__option_t) const { return d_holder->fullSaturateQuantRd; }
#line 129 "../../../src/options/quantifiers_options"
template <> bool Options::wasSetByUser(options::fullSaturateQuantRd__option_t) const { return d_holder->fullSaturateQuantRd__setByUser__; }
#line 131 "../../../src/options/quantifiers_options"
template <> const options::fullSaturateInst__option_t::type& Options::operator[](options::fullSaturateInst__option_t) const { return d_holder->fullSaturateInst; }
#line 131 "../../../src/options/quantifiers_options"
template <> bool Options::wasSetByUser(options::fullSaturateInst__option_t) const { return d_holder->fullSaturateInst__setByUser__; }
#line 134 "../../../src/options/quantifiers_options"
template <> const options::literalMatchMode__option_t::type& Options::operator[](options::literalMatchMode__option_t) const { return d_holder->literalMatchMode; }
#line 134 "../../../src/options/quantifiers_options"
template <> bool Options::wasSetByUser(options::literalMatchMode__option_t) const { return d_holder->literalMatchMode__setByUser__; }
#line 139 "../../../src/options/quantifiers_options"
template <> void Options::set(options::finiteModelFind__option_t, const options::finiteModelFind__option_t::type& x) { d_holder->finiteModelFind = x; }
#line 139 "../../../src/options/quantifiers_options"
template <> const options::finiteModelFind__option_t::type& Options::operator[](options::finiteModelFind__option_t) const { return d_holder->finiteModelFind; }
#line 139 "../../../src/options/quantifiers_options"
template <> bool Options::wasSetByUser(options::finiteModelFind__option_t) const { return d_holder->finiteModelFind__setByUser__; }
#line 142 "../../../src/options/quantifiers_options"
template <> const options::quantFunWellDefined__option_t::type& Options::operator[](options::quantFunWellDefined__option_t) const { return d_holder->quantFunWellDefined; }
#line 142 "../../../src/options/quantifiers_options"
template <> bool Options::wasSetByUser(options::quantFunWellDefined__option_t) const { return d_holder->quantFunWellDefined__setByUser__; }
#line 144 "../../../src/options/quantifiers_options"
template <> void Options::set(options::fmfFunWellDefined__option_t, const options::fmfFunWellDefined__option_t::type& x) { d_holder->fmfFunWellDefined = x; }
#line 144 "../../../src/options/quantifiers_options"
template <> const options::fmfFunWellDefined__option_t::type& Options::operator[](options::fmfFunWellDefined__option_t) const { return d_holder->fmfFunWellDefined; }
#line 144 "../../../src/options/quantifiers_options"
template <> bool Options::wasSetByUser(options::fmfFunWellDefined__option_t) const { return d_holder->fmfFunWellDefined__setByUser__; }
#line 146 "../../../src/options/quantifiers_options"
template <> const options::fmfFunWellDefinedRelevant__option_t::type& Options::operator[](options::fmfFunWellDefinedRelevant__option_t) const { return d_holder->fmfFunWellDefinedRelevant; }
#line 146 "../../../src/options/quantifiers_options"
template <> bool Options::wasSetByUser(options::fmfFunWellDefinedRelevant__option_t) const { return d_holder->fmfFunWellDefinedRelevant__setByUser__; }
#line 148 "../../../src/options/quantifiers_options"
template <> const options::fmfEmptySorts__option_t::type& Options::operator[](options::fmfEmptySorts__option_t) const { return d_holder->fmfEmptySorts; }
#line 148 "../../../src/options/quantifiers_options"
template <> bool Options::wasSetByUser(options::fmfEmptySorts__option_t) const { return d_holder->fmfEmptySorts__setByUser__; }
#line 151 "../../../src/options/quantifiers_options"
template <> void Options::set(options::mbqiMode__option_t, const options::mbqiMode__option_t::type& x) { d_holder->mbqiMode = x; }
#line 151 "../../../src/options/quantifiers_options"
template <> const options::mbqiMode__option_t::type& Options::operator[](options::mbqiMode__option_t) const { return d_holder->mbqiMode; }
#line 151 "../../../src/options/quantifiers_options"
template <> bool Options::wasSetByUser(options::mbqiMode__option_t) const { return d_holder->mbqiMode__setByUser__; }
#line 153 "../../../src/options/quantifiers_options"
template <> void Options::set(options::fmfOneInstPerRound__option_t, const options::fmfOneInstPerRound__option_t::type& x) { d_holder->fmfOneInstPerRound = x; }
#line 153 "../../../src/options/quantifiers_options"
template <> const options::fmfOneInstPerRound__option_t::type& Options::operator[](options::fmfOneInstPerRound__option_t) const { return d_holder->fmfOneInstPerRound; }
#line 153 "../../../src/options/quantifiers_options"
template <> bool Options::wasSetByUser(options::fmfOneInstPerRound__option_t) const { return d_holder->fmfOneInstPerRound__setByUser__; }
#line 155 "../../../src/options/quantifiers_options"
template <> const options::fmfOneQuantPerRound__option_t::type& Options::operator[](options::fmfOneQuantPerRound__option_t) const { return d_holder->fmfOneQuantPerRound; }
#line 155 "../../../src/options/quantifiers_options"
template <> bool Options::wasSetByUser(options::fmfOneQuantPerRound__option_t) const { return d_holder->fmfOneQuantPerRound__setByUser__; }
#line 158 "../../../src/options/quantifiers_options"
template <> void Options::set(options::fmfInstEngine__option_t, const options::fmfInstEngine__option_t::type& x) { d_holder->fmfInstEngine = x; }
#line 158 "../../../src/options/quantifiers_options"
template <> const options::fmfInstEngine__option_t::type& Options::operator[](options::fmfInstEngine__option_t) const { return d_holder->fmfInstEngine; }
#line 158 "../../../src/options/quantifiers_options"
template <> bool Options::wasSetByUser(options::fmfInstEngine__option_t) const { return d_holder->fmfInstEngine__setByUser__; }
#line 160 "../../../src/options/quantifiers_options"
template <> const options::fmfInstGen__option_t::type& Options::operator[](options::fmfInstGen__option_t) const { return d_holder->fmfInstGen; }
#line 160 "../../../src/options/quantifiers_options"
template <> bool Options::wasSetByUser(options::fmfInstGen__option_t) const { return d_holder->fmfInstGen__setByUser__; }
#line 162 "../../../src/options/quantifiers_options"
template <> const options::fmfInstGenOneQuantPerRound__option_t::type& Options::operator[](options::fmfInstGenOneQuantPerRound__option_t) const { return d_holder->fmfInstGenOneQuantPerRound; }
#line 162 "../../../src/options/quantifiers_options"
template <> bool Options::wasSetByUser(options::fmfInstGenOneQuantPerRound__option_t) const { return d_holder->fmfInstGenOneQuantPerRound__setByUser__; }
#line 164 "../../../src/options/quantifiers_options"
template <> const options::fmfFreshDistConst__option_t::type& Options::operator[](options::fmfFreshDistConst__option_t) const { return d_holder->fmfFreshDistConst; }
#line 164 "../../../src/options/quantifiers_options"
template <> bool Options::wasSetByUser(options::fmfFreshDistConst__option_t) const { return d_holder->fmfFreshDistConst__setByUser__; }
#line 166 "../../../src/options/quantifiers_options"
template <> const options::fmfFmcSimple__option_t::type& Options::operator[](options::fmfFmcSimple__option_t) const { return d_holder->fmfFmcSimple; }
#line 166 "../../../src/options/quantifiers_options"
template <> bool Options::wasSetByUser(options::fmfFmcSimple__option_t) const { return d_holder->fmfFmcSimple__setByUser__; }
#line 168 "../../../src/options/quantifiers_options"
template <> void Options::set(options::fmfBoundInt__option_t, const options::fmfBoundInt__option_t::type& x) { d_holder->fmfBoundInt = x; }
#line 168 "../../../src/options/quantifiers_options"
template <> const options::fmfBoundInt__option_t::type& Options::operator[](options::fmfBoundInt__option_t) const { return d_holder->fmfBoundInt; }
#line 168 "../../../src/options/quantifiers_options"
template <> bool Options::wasSetByUser(options::fmfBoundInt__option_t) const { return d_holder->fmfBoundInt__setByUser__; }
#line 170 "../../../src/options/quantifiers_options"
template <> void Options::set(options::fmfBound__option_t, const options::fmfBound__option_t::type& x) { d_holder->fmfBound = x; }
#line 170 "../../../src/options/quantifiers_options"
template <> const options::fmfBound__option_t::type& Options::operator[](options::fmfBound__option_t) const { return d_holder->fmfBound; }
#line 170 "../../../src/options/quantifiers_options"
template <> bool Options::wasSetByUser(options::fmfBound__option_t) const { return d_holder->fmfBound__setByUser__; }
#line 172 "../../../src/options/quantifiers_options"
template <> void Options::set(options::fmfBoundLazy__option_t, const options::fmfBoundLazy__option_t::type& x) { d_holder->fmfBoundLazy = x; }
#line 172 "../../../src/options/quantifiers_options"
template <> const options::fmfBoundLazy__option_t::type& Options::operator[](options::fmfBoundLazy__option_t) const { return d_holder->fmfBoundLazy; }
#line 172 "../../../src/options/quantifiers_options"
template <> bool Options::wasSetByUser(options::fmfBoundLazy__option_t) const { return d_holder->fmfBoundLazy__setByUser__; }
#line 174 "../../../src/options/quantifiers_options"
template <> const options::fmfBoundMinMode__option_t::type& Options::operator[](options::fmfBoundMinMode__option_t) const { return d_holder->fmfBoundMinMode; }
#line 174 "../../../src/options/quantifiers_options"
template <> bool Options::wasSetByUser(options::fmfBoundMinMode__option_t) const { return d_holder->fmfBoundMinMode__setByUser__; }
#line 179 "../../../src/options/quantifiers_options"
template <> void Options::set(options::quantConflictFind__option_t, const options::quantConflictFind__option_t::type& x) { d_holder->quantConflictFind = x; }
#line 179 "../../../src/options/quantifiers_options"
template <> const options::quantConflictFind__option_t::type& Options::operator[](options::quantConflictFind__option_t) const { return d_holder->quantConflictFind; }
#line 179 "../../../src/options/quantifiers_options"
template <> bool Options::wasSetByUser(options::quantConflictFind__option_t) const { return d_holder->quantConflictFind__setByUser__; }
#line 181 "../../../src/options/quantifiers_options"
template <> const options::qcfMode__option_t::type& Options::operator[](options::qcfMode__option_t) const { return d_holder->qcfMode; }
#line 181 "../../../src/options/quantifiers_options"
template <> bool Options::wasSetByUser(options::qcfMode__option_t) const { return d_holder->qcfMode__setByUser__; }
#line 183 "../../../src/options/quantifiers_options"
template <> const options::qcfWhenMode__option_t::type& Options::operator[](options::qcfWhenMode__option_t) const { return d_holder->qcfWhenMode; }
#line 183 "../../../src/options/quantifiers_options"
template <> bool Options::wasSetByUser(options::qcfWhenMode__option_t) const { return d_holder->qcfWhenMode__setByUser__; }
#line 185 "../../../src/options/quantifiers_options"
template <> void Options::set(options::qcfTConstraint__option_t, const options::qcfTConstraint__option_t::type& x) { d_holder->qcfTConstraint = x; }
#line 185 "../../../src/options/quantifiers_options"
template <> const options::qcfTConstraint__option_t::type& Options::operator[](options::qcfTConstraint__option_t) const { return d_holder->qcfTConstraint; }
#line 185 "../../../src/options/quantifiers_options"
template <> bool Options::wasSetByUser(options::qcfTConstraint__option_t) const { return d_holder->qcfTConstraint__setByUser__; }
#line 187 "../../../src/options/quantifiers_options"
template <> void Options::set(options::qcfAllConflict__option_t, const options::qcfAllConflict__option_t::type& x) { d_holder->qcfAllConflict = x; }
#line 187 "../../../src/options/quantifiers_options"
template <> const options::qcfAllConflict__option_t::type& Options::operator[](options::qcfAllConflict__option_t) const { return d_holder->qcfAllConflict; }
#line 187 "../../../src/options/quantifiers_options"
template <> bool Options::wasSetByUser(options::qcfAllConflict__option_t) const { return d_holder->qcfAllConflict__setByUser__; }
#line 189 "../../../src/options/quantifiers_options"
template <> const options::qcfNestedConflict__option_t::type& Options::operator[](options::qcfNestedConflict__option_t) const { return d_holder->qcfNestedConflict; }
#line 189 "../../../src/options/quantifiers_options"
template <> bool Options::wasSetByUser(options::qcfNestedConflict__option_t) const { return d_holder->qcfNestedConflict__setByUser__; }
#line 191 "../../../src/options/quantifiers_options"
template <> const options::qcfVoExp__option_t::type& Options::operator[](options::qcfVoExp__option_t) const { return d_holder->qcfVoExp; }
#line 191 "../../../src/options/quantifiers_options"
template <> bool Options::wasSetByUser(options::qcfVoExp__option_t) const { return d_holder->qcfVoExp__setByUser__; }
#line 194 "../../../src/options/quantifiers_options"
template <> void Options::set(options::instNoEntail__option_t, const options::instNoEntail__option_t::type& x) { d_holder->instNoEntail = x; }
#line 194 "../../../src/options/quantifiers_options"
template <> const options::instNoEntail__option_t::type& Options::operator[](options::instNoEntail__option_t) const { return d_holder->instNoEntail; }
#line 194 "../../../src/options/quantifiers_options"
template <> bool Options::wasSetByUser(options::instNoEntail__option_t) const { return d_holder->instNoEntail__setByUser__; }
#line 196 "../../../src/options/quantifiers_options"
template <> void Options::set(options::instNoModelTrue__option_t, const options::instNoModelTrue__option_t::type& x) { d_holder->instNoModelTrue = x; }
#line 196 "../../../src/options/quantifiers_options"
template <> const options::instNoModelTrue__option_t::type& Options::operator[](options::instNoModelTrue__option_t) const { return d_holder->instNoModelTrue; }
#line 196 "../../../src/options/quantifiers_options"
template <> bool Options::wasSetByUser(options::instNoModelTrue__option_t) const { return d_holder->instNoModelTrue__setByUser__; }
#line 199 "../../../src/options/quantifiers_options"
template <> void Options::set(options::instPropagate__option_t, const options::instPropagate__option_t::type& x) { d_holder->instPropagate = x; }
#line 199 "../../../src/options/quantifiers_options"
template <> const options::instPropagate__option_t::type& Options::operator[](options::instPropagate__option_t) const { return d_holder->instPropagate; }
#line 199 "../../../src/options/quantifiers_options"
template <> bool Options::wasSetByUser(options::instPropagate__option_t) const { return d_holder->instPropagate__setByUser__; }
#line 202 "../../../src/options/quantifiers_options"
template <> const options::qcfEagerTest__option_t::type& Options::operator[](options::qcfEagerTest__option_t) const { return d_holder->qcfEagerTest; }
#line 202 "../../../src/options/quantifiers_options"
template <> bool Options::wasSetByUser(options::qcfEagerTest__option_t) const { return d_holder->qcfEagerTest__setByUser__; }
#line 204 "../../../src/options/quantifiers_options"
template <> const options::qcfEagerCheckRd__option_t::type& Options::operator[](options::qcfEagerCheckRd__option_t) const { return d_holder->qcfEagerCheckRd; }
#line 204 "../../../src/options/quantifiers_options"
template <> bool Options::wasSetByUser(options::qcfEagerCheckRd__option_t) const { return d_holder->qcfEagerCheckRd__setByUser__; }
#line 206 "../../../src/options/quantifiers_options"
template <> const options::qcfSkipRd__option_t::type& Options::operator[](options::qcfSkipRd__option_t) const { return d_holder->qcfSkipRd; }
#line 206 "../../../src/options/quantifiers_options"
template <> bool Options::wasSetByUser(options::qcfSkipRd__option_t) const { return d_holder->qcfSkipRd__setByUser__; }
#line 211 "../../../src/options/quantifiers_options"
template <> const options::quantRewriteRules__option_t::type& Options::operator[](options::quantRewriteRules__option_t) const { return d_holder->quantRewriteRules; }
#line 211 "../../../src/options/quantifiers_options"
template <> bool Options::wasSetByUser(options::quantRewriteRules__option_t) const { return d_holder->quantRewriteRules__setByUser__; }
#line 213 "../../../src/options/quantifiers_options"
template <> const options::rrOneInstPerRound__option_t::type& Options::operator[](options::rrOneInstPerRound__option_t) const { return d_holder->rrOneInstPerRound; }
#line 213 "../../../src/options/quantifiers_options"
template <> bool Options::wasSetByUser(options::rrOneInstPerRound__option_t) const { return d_holder->rrOneInstPerRound__setByUser__; }
#line 218 "../../../src/options/quantifiers_options"
template <> const options::quantInduction__option_t::type& Options::operator[](options::quantInduction__option_t) const { return d_holder->quantInduction; }
#line 218 "../../../src/options/quantifiers_options"
template <> bool Options::wasSetByUser(options::quantInduction__option_t) const { return d_holder->quantInduction__setByUser__; }
#line 220 "../../../src/options/quantifiers_options"
template <> void Options::set(options::dtStcInduction__option_t, const options::dtStcInduction__option_t::type& x) { d_holder->dtStcInduction = x; }
#line 220 "../../../src/options/quantifiers_options"
template <> const options::dtStcInduction__option_t::type& Options::operator[](options::dtStcInduction__option_t) const { return d_holder->dtStcInduction; }
#line 220 "../../../src/options/quantifiers_options"
template <> bool Options::wasSetByUser(options::dtStcInduction__option_t) const { return d_holder->dtStcInduction__setByUser__; }
#line 222 "../../../src/options/quantifiers_options"
template <> void Options::set(options::intWfInduction__option_t, const options::intWfInduction__option_t::type& x) { d_holder->intWfInduction = x; }
#line 222 "../../../src/options/quantifiers_options"
template <> const options::intWfInduction__option_t::type& Options::operator[](options::intWfInduction__option_t) const { return d_holder->intWfInduction; }
#line 222 "../../../src/options/quantifiers_options"
template <> bool Options::wasSetByUser(options::intWfInduction__option_t) const { return d_holder->intWfInduction__setByUser__; }
#line 224 "../../../src/options/quantifiers_options"
template <> void Options::set(options::conjectureGen__option_t, const options::conjectureGen__option_t::type& x) { d_holder->conjectureGen = x; }
#line 224 "../../../src/options/quantifiers_options"
template <> const options::conjectureGen__option_t::type& Options::operator[](options::conjectureGen__option_t) const { return d_holder->conjectureGen; }
#line 224 "../../../src/options/quantifiers_options"
template <> bool Options::wasSetByUser(options::conjectureGen__option_t) const { return d_holder->conjectureGen__setByUser__; }
#line 227 "../../../src/options/quantifiers_options"
template <> const options::conjectureGenPerRound__option_t::type& Options::operator[](options::conjectureGenPerRound__option_t) const { return d_holder->conjectureGenPerRound; }
#line 227 "../../../src/options/quantifiers_options"
template <> bool Options::wasSetByUser(options::conjectureGenPerRound__option_t) const { return d_holder->conjectureGenPerRound__setByUser__; }
#line 229 "../../../src/options/quantifiers_options"
template <> const options::conjectureNoFilter__option_t::type& Options::operator[](options::conjectureNoFilter__option_t) const { return d_holder->conjectureNoFilter; }
#line 229 "../../../src/options/quantifiers_options"
template <> bool Options::wasSetByUser(options::conjectureNoFilter__option_t) const { return d_holder->conjectureNoFilter__setByUser__; }
#line 231 "../../../src/options/quantifiers_options"
template <> void Options::set(options::conjectureFilterActiveTerms__option_t, const options::conjectureFilterActiveTerms__option_t::type& x) { d_holder->conjectureFilterActiveTerms = x; }
#line 231 "../../../src/options/quantifiers_options"
template <> const options::conjectureFilterActiveTerms__option_t::type& Options::operator[](options::conjectureFilterActiveTerms__option_t) const { return d_holder->conjectureFilterActiveTerms; }
#line 231 "../../../src/options/quantifiers_options"
template <> bool Options::wasSetByUser(options::conjectureFilterActiveTerms__option_t) const { return d_holder->conjectureFilterActiveTerms__setByUser__; }
#line 233 "../../../src/options/quantifiers_options"
template <> void Options::set(options::conjectureFilterCanonical__option_t, const options::conjectureFilterCanonical__option_t::type& x) { d_holder->conjectureFilterCanonical = x; }
#line 233 "../../../src/options/quantifiers_options"
template <> const options::conjectureFilterCanonical__option_t::type& Options::operator[](options::conjectureFilterCanonical__option_t) const { return d_holder->conjectureFilterCanonical; }
#line 233 "../../../src/options/quantifiers_options"
template <> bool Options::wasSetByUser(options::conjectureFilterCanonical__option_t) const { return d_holder->conjectureFilterCanonical__setByUser__; }
#line 235 "../../../src/options/quantifiers_options"
template <> void Options::set(options::conjectureFilterModel__option_t, const options::conjectureFilterModel__option_t::type& x) { d_holder->conjectureFilterModel = x; }
#line 235 "../../../src/options/quantifiers_options"
template <> const options::conjectureFilterModel__option_t::type& Options::operator[](options::conjectureFilterModel__option_t) const { return d_holder->conjectureFilterModel; }
#line 235 "../../../src/options/quantifiers_options"
template <> bool Options::wasSetByUser(options::conjectureFilterModel__option_t) const { return d_holder->conjectureFilterModel__setByUser__; }
#line 237 "../../../src/options/quantifiers_options"
template <> const options::conjectureGenGtEnum__option_t::type& Options::operator[](options::conjectureGenGtEnum__option_t) const { return d_holder->conjectureGenGtEnum; }
#line 237 "../../../src/options/quantifiers_options"
template <> bool Options::wasSetByUser(options::conjectureGenGtEnum__option_t) const { return d_holder->conjectureGenGtEnum__setByUser__; }
#line 239 "../../../src/options/quantifiers_options"
template <> const options::conjectureUeeIntro__option_t::type& Options::operator[](options::conjectureUeeIntro__option_t) const { return d_holder->conjectureUeeIntro; }
#line 239 "../../../src/options/quantifiers_options"
template <> bool Options::wasSetByUser(options::conjectureUeeIntro__option_t) const { return d_holder->conjectureUeeIntro__setByUser__; }
#line 241 "../../../src/options/quantifiers_options"
template <> const options::conjectureGenMaxDepth__option_t::type& Options::operator[](options::conjectureGenMaxDepth__option_t) const { return d_holder->conjectureGenMaxDepth; }
#line 241 "../../../src/options/quantifiers_options"
template <> bool Options::wasSetByUser(options::conjectureGenMaxDepth__option_t) const { return d_holder->conjectureGenMaxDepth__setByUser__; }
#line 246 "../../../src/options/quantifiers_options"
template <> void Options::set(options::ceGuidedInst__option_t, const options::ceGuidedInst__option_t::type& x) { d_holder->ceGuidedInst = x; }
#line 246 "../../../src/options/quantifiers_options"
template <> const options::ceGuidedInst__option_t::type& Options::operator[](options::ceGuidedInst__option_t) const { return d_holder->ceGuidedInst; }
#line 246 "../../../src/options/quantifiers_options"
template <> bool Options::wasSetByUser(options::ceGuidedInst__option_t) const { return d_holder->ceGuidedInst__setByUser__; }
#line 248 "../../../src/options/quantifiers_options"
template <> const options::ceGuidedInstFair__option_t::type& Options::operator[](options::ceGuidedInstFair__option_t) const { return d_holder->ceGuidedInstFair; }
#line 248 "../../../src/options/quantifiers_options"
template <> bool Options::wasSetByUser(options::ceGuidedInstFair__option_t) const { return d_holder->ceGuidedInstFair__setByUser__; }
#line 250 "../../../src/options/quantifiers_options"
template <> void Options::set(options::cegqiSingleInvMode__option_t, const options::cegqiSingleInvMode__option_t::type& x) { d_holder->cegqiSingleInvMode = x; }
#line 250 "../../../src/options/quantifiers_options"
template <> const options::cegqiSingleInvMode__option_t::type& Options::operator[](options::cegqiSingleInvMode__option_t) const { return d_holder->cegqiSingleInvMode; }
#line 250 "../../../src/options/quantifiers_options"
template <> bool Options::wasSetByUser(options::cegqiSingleInvMode__option_t) const { return d_holder->cegqiSingleInvMode__setByUser__; }
#line 252 "../../../src/options/quantifiers_options"
template <> const options::cegqiSingleInvPartial__option_t::type& Options::operator[](options::cegqiSingleInvPartial__option_t) const { return d_holder->cegqiSingleInvPartial; }
#line 252 "../../../src/options/quantifiers_options"
template <> bool Options::wasSetByUser(options::cegqiSingleInvPartial__option_t) const { return d_holder->cegqiSingleInvPartial__setByUser__; }
#line 254 "../../../src/options/quantifiers_options"
template <> const options::cegqiSingleInvReconstruct__option_t::type& Options::operator[](options::cegqiSingleInvReconstruct__option_t) const { return d_holder->cegqiSingleInvReconstruct; }
#line 254 "../../../src/options/quantifiers_options"
template <> bool Options::wasSetByUser(options::cegqiSingleInvReconstruct__option_t) const { return d_holder->cegqiSingleInvReconstruct__setByUser__; }
#line 256 "../../../src/options/quantifiers_options"
template <> const options::cegqiSolMinCore__option_t::type& Options::operator[](options::cegqiSolMinCore__option_t) const { return d_holder->cegqiSolMinCore; }
#line 256 "../../../src/options/quantifiers_options"
template <> bool Options::wasSetByUser(options::cegqiSolMinCore__option_t) const { return d_holder->cegqiSolMinCore__setByUser__; }
#line 258 "../../../src/options/quantifiers_options"
template <> const options::cegqiSolMinInst__option_t::type& Options::operator[](options::cegqiSolMinInst__option_t) const { return d_holder->cegqiSolMinInst; }
#line 258 "../../../src/options/quantifiers_options"
template <> bool Options::wasSetByUser(options::cegqiSolMinInst__option_t) const { return d_holder->cegqiSolMinInst__setByUser__; }
#line 260 "../../../src/options/quantifiers_options"
template <> const options::cegqiSingleInvReconstructConst__option_t::type& Options::operator[](options::cegqiSingleInvReconstructConst__option_t) const { return d_holder->cegqiSingleInvReconstructConst; }
#line 260 "../../../src/options/quantifiers_options"
template <> bool Options::wasSetByUser(options::cegqiSingleInvReconstructConst__option_t) const { return d_holder->cegqiSingleInvReconstructConst__setByUser__; }
#line 262 "../../../src/options/quantifiers_options"
template <> const options::cegqiSingleInvAbort__option_t::type& Options::operator[](options::cegqiSingleInvAbort__option_t) const { return d_holder->cegqiSingleInvAbort; }
#line 262 "../../../src/options/quantifiers_options"
template <> bool Options::wasSetByUser(options::cegqiSingleInvAbort__option_t) const { return d_holder->cegqiSingleInvAbort__setByUser__; }
#line 265 "../../../src/options/quantifiers_options"
template <> const options::sygusNormalForm__option_t::type& Options::operator[](options::sygusNormalForm__option_t) const { return d_holder->sygusNormalForm; }
#line 265 "../../../src/options/quantifiers_options"
template <> bool Options::wasSetByUser(options::sygusNormalForm__option_t) const { return d_holder->sygusNormalForm__setByUser__; }
#line 267 "../../../src/options/quantifiers_options"
template <> const options::sygusNormalFormArg__option_t::type& Options::operator[](options::sygusNormalFormArg__option_t) const { return d_holder->sygusNormalFormArg; }
#line 267 "../../../src/options/quantifiers_options"
template <> bool Options::wasSetByUser(options::sygusNormalFormArg__option_t) const { return d_holder->sygusNormalFormArg__setByUser__; }
#line 269 "../../../src/options/quantifiers_options"
template <> const options::sygusNormalFormGlobal__option_t::type& Options::operator[](options::sygusNormalFormGlobal__option_t) const { return d_holder->sygusNormalFormGlobal; }
#line 269 "../../../src/options/quantifiers_options"
template <> bool Options::wasSetByUser(options::sygusNormalFormGlobal__option_t) const { return d_holder->sygusNormalFormGlobal__setByUser__; }
#line 271 "../../../src/options/quantifiers_options"
template <> const options::sygusNormalFormGlobalGen__option_t::type& Options::operator[](options::sygusNormalFormGlobalGen__option_t) const { return d_holder->sygusNormalFormGlobalGen; }
#line 271 "../../../src/options/quantifiers_options"
template <> bool Options::wasSetByUser(options::sygusNormalFormGlobalGen__option_t) const { return d_holder->sygusNormalFormGlobalGen__setByUser__; }
#line 273 "../../../src/options/quantifiers_options"
template <> const options::sygusNormalFormGlobalArg__option_t::type& Options::operator[](options::sygusNormalFormGlobalArg__option_t) const { return d_holder->sygusNormalFormGlobalArg; }
#line 273 "../../../src/options/quantifiers_options"
template <> bool Options::wasSetByUser(options::sygusNormalFormGlobalArg__option_t) const { return d_holder->sygusNormalFormGlobalArg__setByUser__; }
#line 275 "../../../src/options/quantifiers_options"
template <> const options::sygusNormalFormGlobalContent__option_t::type& Options::operator[](options::sygusNormalFormGlobalContent__option_t) const { return d_holder->sygusNormalFormGlobalContent; }
#line 275 "../../../src/options/quantifiers_options"
template <> bool Options::wasSetByUser(options::sygusNormalFormGlobalContent__option_t) const { return d_holder->sygusNormalFormGlobalContent__setByUser__; }
#line 278 "../../../src/options/quantifiers_options"
template <> const options::sygusInvTemplMode__option_t::type& Options::operator[](options::sygusInvTemplMode__option_t) const { return d_holder->sygusInvTemplMode; }
#line 278 "../../../src/options/quantifiers_options"
template <> bool Options::wasSetByUser(options::sygusInvTemplMode__option_t) const { return d_holder->sygusInvTemplMode__setByUser__; }
#line 280 "../../../src/options/quantifiers_options"
template <> const options::sygusUnifCondSol__option_t::type& Options::operator[](options::sygusUnifCondSol__option_t) const { return d_holder->sygusUnifCondSol; }
#line 280 "../../../src/options/quantifiers_options"
template <> bool Options::wasSetByUser(options::sygusUnifCondSol__option_t) const { return d_holder->sygusUnifCondSol__setByUser__; }
#line 283 "../../../src/options/quantifiers_options"
template <> const options::sygusDirectEval__option_t::type& Options::operator[](options::sygusDirectEval__option_t) const { return d_holder->sygusDirectEval; }
#line 283 "../../../src/options/quantifiers_options"
template <> bool Options::wasSetByUser(options::sygusDirectEval__option_t) const { return d_holder->sygusDirectEval__setByUser__; }
#line 285 "../../../src/options/quantifiers_options"
template <> const options::sygusCRefEval__option_t::type& Options::operator[](options::sygusCRefEval__option_t) const { return d_holder->sygusCRefEval; }
#line 285 "../../../src/options/quantifiers_options"
template <> bool Options::wasSetByUser(options::sygusCRefEval__option_t) const { return d_holder->sygusCRefEval__setByUser__; }
#line 289 "../../../src/options/quantifiers_options"
template <> void Options::set(options::cbqi__option_t, const options::cbqi__option_t::type& x) { d_holder->cbqi = x; }
#line 289 "../../../src/options/quantifiers_options"
template <> const options::cbqi__option_t::type& Options::operator[](options::cbqi__option_t) const { return d_holder->cbqi; }
#line 289 "../../../src/options/quantifiers_options"
template <> bool Options::wasSetByUser(options::cbqi__option_t) const { return d_holder->cbqi__setByUser__; }
#line 291 "../../../src/options/quantifiers_options"
template <> const options::recurseCbqi__option_t::type& Options::operator[](options::recurseCbqi__option_t) const { return d_holder->recurseCbqi; }
#line 291 "../../../src/options/quantifiers_options"
template <> bool Options::wasSetByUser(options::recurseCbqi__option_t) const { return d_holder->recurseCbqi__setByUser__; }
#line 293 "../../../src/options/quantifiers_options"
template <> void Options::set(options::cbqiSat__option_t, const options::cbqiSat__option_t::type& x) { d_holder->cbqiSat = x; }
#line 293 "../../../src/options/quantifiers_options"
template <> const options::cbqiSat__option_t::type& Options::operator[](options::cbqiSat__option_t) const { return d_holder->cbqiSat; }
#line 293 "../../../src/options/quantifiers_options"
template <> bool Options::wasSetByUser(options::cbqiSat__option_t) const { return d_holder->cbqiSat__setByUser__; }
#line 295 "../../../src/options/quantifiers_options"
template <> void Options::set(options::cbqiModel__option_t, const options::cbqiModel__option_t::type& x) { d_holder->cbqiModel = x; }
#line 295 "../../../src/options/quantifiers_options"
template <> const options::cbqiModel__option_t::type& Options::operator[](options::cbqiModel__option_t) const { return d_holder->cbqiModel; }
#line 295 "../../../src/options/quantifiers_options"
template <> bool Options::wasSetByUser(options::cbqiModel__option_t) const { return d_holder->cbqiModel__setByUser__; }
#line 297 "../../../src/options/quantifiers_options"
template <> void Options::set(options::cbqiAll__option_t, const options::cbqiAll__option_t::type& x) { d_holder->cbqiAll = x; }
#line 297 "../../../src/options/quantifiers_options"
template <> const options::cbqiAll__option_t::type& Options::operator[](options::cbqiAll__option_t) const { return d_holder->cbqiAll; }
#line 297 "../../../src/options/quantifiers_options"
template <> bool Options::wasSetByUser(options::cbqiAll__option_t) const { return d_holder->cbqiAll__setByUser__; }
#line 299 "../../../src/options/quantifiers_options"
template <> void Options::set(options::cbqiUseInfInt__option_t, const options::cbqiUseInfInt__option_t::type& x) { d_holder->cbqiUseInfInt = x; }
#line 299 "../../../src/options/quantifiers_options"
template <> const options::cbqiUseInfInt__option_t::type& Options::operator[](options::cbqiUseInfInt__option_t) const { return d_holder->cbqiUseInfInt; }
#line 299 "../../../src/options/quantifiers_options"
template <> bool Options::wasSetByUser(options::cbqiUseInfInt__option_t) const { return d_holder->cbqiUseInfInt__setByUser__; }
#line 301 "../../../src/options/quantifiers_options"
template <> void Options::set(options::cbqiUseInfReal__option_t, const options::cbqiUseInfReal__option_t::type& x) { d_holder->cbqiUseInfReal = x; }
#line 301 "../../../src/options/quantifiers_options"
template <> const options::cbqiUseInfReal__option_t::type& Options::operator[](options::cbqiUseInfReal__option_t) const { return d_holder->cbqiUseInfReal; }
#line 301 "../../../src/options/quantifiers_options"
template <> bool Options::wasSetByUser(options::cbqiUseInfReal__option_t) const { return d_holder->cbqiUseInfReal__setByUser__; }
#line 303 "../../../src/options/quantifiers_options"
template <> void Options::set(options::cbqiPreRegInst__option_t, const options::cbqiPreRegInst__option_t::type& x) { d_holder->cbqiPreRegInst = x; }
#line 303 "../../../src/options/quantifiers_options"
template <> const options::cbqiPreRegInst__option_t::type& Options::operator[](options::cbqiPreRegInst__option_t) const { return d_holder->cbqiPreRegInst; }
#line 303 "../../../src/options/quantifiers_options"
template <> bool Options::wasSetByUser(options::cbqiPreRegInst__option_t) const { return d_holder->cbqiPreRegInst__setByUser__; }
#line 305 "../../../src/options/quantifiers_options"
template <> const options::cbqiMinBounds__option_t::type& Options::operator[](options::cbqiMinBounds__option_t) const { return d_holder->cbqiMinBounds; }
#line 305 "../../../src/options/quantifiers_options"
template <> bool Options::wasSetByUser(options::cbqiMinBounds__option_t) const { return d_holder->cbqiMinBounds__setByUser__; }
#line 307 "../../../src/options/quantifiers_options"
template <> const options::cbqiRoundUpLowerLia__option_t::type& Options::operator[](options::cbqiRoundUpLowerLia__option_t) const { return d_holder->cbqiRoundUpLowerLia; }
#line 307 "../../../src/options/quantifiers_options"
template <> bool Options::wasSetByUser(options::cbqiRoundUpLowerLia__option_t) const { return d_holder->cbqiRoundUpLowerLia__setByUser__; }
#line 309 "../../../src/options/quantifiers_options"
template <> const options::cbqiMidpoint__option_t::type& Options::operator[](options::cbqiMidpoint__option_t) const { return d_holder->cbqiMidpoint; }
#line 309 "../../../src/options/quantifiers_options"
template <> bool Options::wasSetByUser(options::cbqiMidpoint__option_t) const { return d_holder->cbqiMidpoint__setByUser__; }
#line 311 "../../../src/options/quantifiers_options"
template <> const options::cbqiNopt__option_t::type& Options::operator[](options::cbqiNopt__option_t) const { return d_holder->cbqiNopt; }
#line 311 "../../../src/options/quantifiers_options"
template <> bool Options::wasSetByUser(options::cbqiNopt__option_t) const { return d_holder->cbqiNopt__setByUser__; }
#line 313 "../../../src/options/quantifiers_options"
template <> const options::cbqiLitDepend__option_t::type& Options::operator[](options::cbqiLitDepend__option_t) const { return d_holder->cbqiLitDepend; }
#line 313 "../../../src/options/quantifiers_options"
template <> bool Options::wasSetByUser(options::cbqiLitDepend__option_t) const { return d_holder->cbqiLitDepend__setByUser__; }
#line 315 "../../../src/options/quantifiers_options"
template <> void Options::set(options::cbqiInnermost__option_t, const options::cbqiInnermost__option_t::type& x) { d_holder->cbqiInnermost = x; }
#line 315 "../../../src/options/quantifiers_options"
template <> const options::cbqiInnermost__option_t::type& Options::operator[](options::cbqiInnermost__option_t) const { return d_holder->cbqiInnermost; }
#line 315 "../../../src/options/quantifiers_options"
template <> bool Options::wasSetByUser(options::cbqiInnermost__option_t) const { return d_holder->cbqiInnermost__setByUser__; }
#line 317 "../../../src/options/quantifiers_options"
template <> void Options::set(options::cbqiNestedQE__option_t, const options::cbqiNestedQE__option_t::type& x) { d_holder->cbqiNestedQE = x; }
#line 317 "../../../src/options/quantifiers_options"
template <> const options::cbqiNestedQE__option_t::type& Options::operator[](options::cbqiNestedQE__option_t) const { return d_holder->cbqiNestedQE; }
#line 317 "../../../src/options/quantifiers_options"
template <> bool Options::wasSetByUser(options::cbqiNestedQE__option_t) const { return d_holder->cbqiNestedQE__setByUser__; }
#line 320 "../../../src/options/quantifiers_options"
template <> void Options::set(options::quantEpr__option_t, const options::quantEpr__option_t::type& x) { d_holder->quantEpr = x; }
#line 320 "../../../src/options/quantifiers_options"
template <> const options::quantEpr__option_t::type& Options::operator[](options::quantEpr__option_t) const { return d_holder->quantEpr; }
#line 320 "../../../src/options/quantifiers_options"
template <> bool Options::wasSetByUser(options::quantEpr__option_t) const { return d_holder->quantEpr__setByUser__; }
#line 322 "../../../src/options/quantifiers_options"
template <> const options::quantEprMatching__option_t::type& Options::operator[](options::quantEprMatching__option_t) const { return d_holder->quantEprMatching; }
#line 322 "../../../src/options/quantifiers_options"
template <> bool Options::wasSetByUser(options::quantEprMatching__option_t) const { return d_holder->quantEprMatching__setByUser__; }
#line 327 "../../../src/options/quantifiers_options"
template <> const options::localTheoryExt__option_t::type& Options::operator[](options::localTheoryExt__option_t) const { return d_holder->localTheoryExt; }
#line 327 "../../../src/options/quantifiers_options"
template <> bool Options::wasSetByUser(options::localTheoryExt__option_t) const { return d_holder->localTheoryExt__setByUser__; }
#line 329 "../../../src/options/quantifiers_options"
template <> const options::ltePartialInst__option_t::type& Options::operator[](options::ltePartialInst__option_t) const { return d_holder->ltePartialInst; }
#line 329 "../../../src/options/quantifiers_options"
template <> bool Options::wasSetByUser(options::ltePartialInst__option_t) const { return d_holder->ltePartialInst__setByUser__; }
#line 331 "../../../src/options/quantifiers_options"
template <> const options::lteRestrictInstClosure__option_t::type& Options::operator[](options::lteRestrictInstClosure__option_t) const { return d_holder->lteRestrictInstClosure; }
#line 331 "../../../src/options/quantifiers_options"
template <> bool Options::wasSetByUser(options::lteRestrictInstClosure__option_t) const { return d_holder->lteRestrictInstClosure__setByUser__; }
#line 336 "../../../src/options/quantifiers_options"
template <> const options::quantAlphaEquiv__option_t::type& Options::operator[](options::quantAlphaEquiv__option_t) const { return d_holder->quantAlphaEquiv; }
#line 336 "../../../src/options/quantifiers_options"
template <> bool Options::wasSetByUser(options::quantAlphaEquiv__option_t) const { return d_holder->quantAlphaEquiv__setByUser__; }
#line 338 "../../../src/options/quantifiers_options"
template <> void Options::set(options::macrosQuant__option_t, const options::macrosQuant__option_t::type& x) { d_holder->macrosQuant = x; }
#line 338 "../../../src/options/quantifiers_options"
template <> const options::macrosQuant__option_t::type& Options::operator[](options::macrosQuant__option_t) const { return d_holder->macrosQuant; }
#line 338 "../../../src/options/quantifiers_options"
template <> bool Options::wasSetByUser(options::macrosQuant__option_t) const { return d_holder->macrosQuant__setByUser__; }
#line 340 "../../../src/options/quantifiers_options"
template <> const options::macrosQuantMode__option_t::type& Options::operator[](options::macrosQuantMode__option_t) const { return d_holder->macrosQuantMode; }
#line 340 "../../../src/options/quantifiers_options"
template <> bool Options::wasSetByUser(options::macrosQuantMode__option_t) const { return d_holder->macrosQuantMode__setByUser__; }
#line 342 "../../../src/options/quantifiers_options"
template <> void Options::set(options::quantDynamicSplit__option_t, const options::quantDynamicSplit__option_t::type& x) { d_holder->quantDynamicSplit = x; }
#line 342 "../../../src/options/quantifiers_options"
template <> const options::quantDynamicSplit__option_t::type& Options::operator[](options::quantDynamicSplit__option_t) const { return d_holder->quantDynamicSplit; }
#line 342 "../../../src/options/quantifiers_options"
template <> bool Options::wasSetByUser(options::quantDynamicSplit__option_t) const { return d_holder->quantDynamicSplit__setByUser__; }
#line 344 "../../../src/options/quantifiers_options"
template <> void Options::set(options::quantAntiSkolem__option_t, const options::quantAntiSkolem__option_t::type& x) { d_holder->quantAntiSkolem = x; }
#line 344 "../../../src/options/quantifiers_options"
template <> const options::quantAntiSkolem__option_t::type& Options::operator[](options::quantAntiSkolem__option_t) const { return d_holder->quantAntiSkolem; }
#line 344 "../../../src/options/quantifiers_options"
template <> bool Options::wasSetByUser(options::quantAntiSkolem__option_t) const { return d_holder->quantAntiSkolem__setByUser__; }
#line 354 "../../../src/options/quantifiers_options"
template <> const options::quantEqualityEngine__option_t::type& Options::operator[](options::quantEqualityEngine__option_t) const { return d_holder->quantEqualityEngine; }
#line 354 "../../../src/options/quantifiers_options"
template <> bool Options::wasSetByUser(options::quantEqualityEngine__option_t) const { return d_holder->quantEqualityEngine__setByUser__; }
#line 359 "../../../src/options/quantifiers_options"
template <> void Options::set(options::trackInstLemmas__option_t, const options::trackInstLemmas__option_t::type& x) { d_holder->trackInstLemmas = x; }
#line 359 "../../../src/options/quantifiers_options"
template <> const options::trackInstLemmas__option_t::type& Options::operator[](options::trackInstLemmas__option_t) const { return d_holder->trackInstLemmas; }
#line 359 "../../../src/options/quantifiers_options"
template <> bool Options::wasSetByUser(options::trackInstLemmas__option_t) const { return d_holder->trackInstLemmas__setByUser__; }

#line 24 "../../../src/options/base_options_template.cpp"

namespace options {


#line 13 "../../../src/options/quantifiers_options"
struct miniscopeQuant__option_t miniscopeQuant;
#line 18 "../../../src/options/quantifiers_options"
struct miniscopeQuantFreeVar__option_t miniscopeQuantFreeVar;
#line 20 "../../../src/options/quantifiers_options"
struct quantSplit__option_t quantSplit;
#line 22 "../../../src/options/quantifiers_options"
struct prenexQuant__option_t prenexQuant;
#line 24 "../../../src/options/quantifiers_options"
struct prenexQuantUser__option_t prenexQuantUser;
#line 29 "../../../src/options/quantifiers_options"
struct varElimQuant__option_t varElimQuant;
#line 31 "../../../src/options/quantifiers_options"
struct varIneqElimQuant__option_t varIneqElimQuant;
#line 33 "../../../src/options/quantifiers_options"
struct dtVarExpandQuant__option_t dtVarExpandQuant;
#line 36 "../../../src/options/quantifiers_options"
struct iteLiftQuant__option_t iteLiftQuant;
#line 38 "../../../src/options/quantifiers_options"
struct condVarSplitQuant__option_t condVarSplitQuant;
#line 40 "../../../src/options/quantifiers_options"
struct condVarSplitQuantAgg__option_t condVarSplitQuantAgg;
#line 42 "../../../src/options/quantifiers_options"
struct iteDtTesterSplitQuant__option_t iteDtTesterSplitQuant;
#line 47 "../../../src/options/quantifiers_options"
struct preSkolemQuant__option_t preSkolemQuant;
#line 49 "../../../src/options/quantifiers_options"
struct preSkolemQuantNested__option_t preSkolemQuantNested;
#line 51 "../../../src/options/quantifiers_options"
struct preSkolemQuantAgg__option_t preSkolemQuantAgg;
#line 53 "../../../src/options/quantifiers_options"
struct aggressiveMiniscopeQuant__option_t aggressiveMiniscopeQuant;
#line 55 "../../../src/options/quantifiers_options"
struct elimTautQuant__option_t elimTautQuant;
#line 57 "../../../src/options/quantifiers_options"
struct elimExtArithQuant__option_t elimExtArithQuant;
#line 59 "../../../src/options/quantifiers_options"
struct condRewriteQuant__option_t condRewriteQuant;
#line 64 "../../../src/options/quantifiers_options"
struct eMatching__option_t eMatching;
#line 67 "../../../src/options/quantifiers_options"
struct termDbMode__option_t termDbMode;
#line 69 "../../../src/options/quantifiers_options"
struct registerQuantBodyTerms__option_t registerQuantBodyTerms;
#line 71 "../../../src/options/quantifiers_options"
struct inferArithTriggerEq__option_t inferArithTriggerEq;
#line 73 "../../../src/options/quantifiers_options"
struct inferArithTriggerEqExp__option_t inferArithTriggerEqExp;
#line 76 "../../../src/options/quantifiers_options"
struct strictTriggers__option_t strictTriggers;
#line 78 "../../../src/options/quantifiers_options"
struct relevantTriggers__option_t relevantTriggers;
#line 80 "../../../src/options/quantifiers_options"
struct relationalTriggers__option_t relationalTriggers;
#line 82 "../../../src/options/quantifiers_options"
struct purifyTriggers__option_t purifyTriggers;
#line 84 "../../../src/options/quantifiers_options"
struct purifyDtTriggers__option_t purifyDtTriggers;
#line 86 "../../../src/options/quantifiers_options"
struct pureThTriggers__option_t pureThTriggers;
#line 88 "../../../src/options/quantifiers_options"
struct partialTriggers__option_t partialTriggers;
#line 90 "../../../src/options/quantifiers_options"
struct multiTriggerWhenSingle__option_t multiTriggerWhenSingle;
#line 92 "../../../src/options/quantifiers_options"
struct multiTriggerPriority__option_t multiTriggerPriority;
#line 94 "../../../src/options/quantifiers_options"
struct multiTriggerCache__option_t multiTriggerCache;
#line 96 "../../../src/options/quantifiers_options"
struct multiTriggerLinear__option_t multiTriggerLinear;
#line 98 "../../../src/options/quantifiers_options"
struct triggerSelMode__option_t triggerSelMode;
#line 100 "../../../src/options/quantifiers_options"
struct triggerActiveSelMode__option_t triggerActiveSelMode;
#line 102 "../../../src/options/quantifiers_options"
struct userPatternsQuant__option_t userPatternsQuant;
#line 104 "../../../src/options/quantifiers_options"
struct incrementTriggers__option_t incrementTriggers;
#line 107 "../../../src/options/quantifiers_options"
struct instWhenMode__option_t instWhenMode;
#line 109 "../../../src/options/quantifiers_options"
struct instWhenStrictInterleave__option_t instWhenStrictInterleave;
#line 111 "../../../src/options/quantifiers_options"
struct instWhenPhase__option_t instWhenPhase;
#line 113 "../../../src/options/quantifiers_options"
struct instWhenTcFirst__option_t instWhenTcFirst;
#line 115 "../../../src/options/quantifiers_options"
struct quantModelEe__option_t quantModelEe;
#line 118 "../../../src/options/quantifiers_options"
struct instMaxLevel__option_t instMaxLevel;
#line 120 "../../../src/options/quantifiers_options"
struct instLevelInputOnly__option_t instLevelInputOnly;
#line 122 "../../../src/options/quantifiers_options"
struct quantRepMode__option_t quantRepMode;
#line 124 "../../../src/options/quantifiers_options"
struct instRelevantCond__option_t instRelevantCond;
#line 127 "../../../src/options/quantifiers_options"
struct fullSaturateQuant__option_t fullSaturateQuant;
#line 129 "../../../src/options/quantifiers_options"
struct fullSaturateQuantRd__option_t fullSaturateQuantRd;
#line 131 "../../../src/options/quantifiers_options"
struct fullSaturateInst__option_t fullSaturateInst;
#line 134 "../../../src/options/quantifiers_options"
struct literalMatchMode__option_t literalMatchMode;
#line 139 "../../../src/options/quantifiers_options"
struct finiteModelFind__option_t finiteModelFind;
#line 142 "../../../src/options/quantifiers_options"
struct quantFunWellDefined__option_t quantFunWellDefined;
#line 144 "../../../src/options/quantifiers_options"
struct fmfFunWellDefined__option_t fmfFunWellDefined;
#line 146 "../../../src/options/quantifiers_options"
struct fmfFunWellDefinedRelevant__option_t fmfFunWellDefinedRelevant;
#line 148 "../../../src/options/quantifiers_options"
struct fmfEmptySorts__option_t fmfEmptySorts;
#line 151 "../../../src/options/quantifiers_options"
struct mbqiMode__option_t mbqiMode;
#line 153 "../../../src/options/quantifiers_options"
struct fmfOneInstPerRound__option_t fmfOneInstPerRound;
#line 155 "../../../src/options/quantifiers_options"
struct fmfOneQuantPerRound__option_t fmfOneQuantPerRound;
#line 158 "../../../src/options/quantifiers_options"
struct fmfInstEngine__option_t fmfInstEngine;
#line 160 "../../../src/options/quantifiers_options"
struct fmfInstGen__option_t fmfInstGen;
#line 162 "../../../src/options/quantifiers_options"
struct fmfInstGenOneQuantPerRound__option_t fmfInstGenOneQuantPerRound;
#line 164 "../../../src/options/quantifiers_options"
struct fmfFreshDistConst__option_t fmfFreshDistConst;
#line 166 "../../../src/options/quantifiers_options"
struct fmfFmcSimple__option_t fmfFmcSimple;
#line 168 "../../../src/options/quantifiers_options"
struct fmfBoundInt__option_t fmfBoundInt;
#line 170 "../../../src/options/quantifiers_options"
struct fmfBound__option_t fmfBound;
#line 172 "../../../src/options/quantifiers_options"
struct fmfBoundLazy__option_t fmfBoundLazy;
#line 174 "../../../src/options/quantifiers_options"
struct fmfBoundMinMode__option_t fmfBoundMinMode;
#line 179 "../../../src/options/quantifiers_options"
struct quantConflictFind__option_t quantConflictFind;
#line 181 "../../../src/options/quantifiers_options"
struct qcfMode__option_t qcfMode;
#line 183 "../../../src/options/quantifiers_options"
struct qcfWhenMode__option_t qcfWhenMode;
#line 185 "../../../src/options/quantifiers_options"
struct qcfTConstraint__option_t qcfTConstraint;
#line 187 "../../../src/options/quantifiers_options"
struct qcfAllConflict__option_t qcfAllConflict;
#line 189 "../../../src/options/quantifiers_options"
struct qcfNestedConflict__option_t qcfNestedConflict;
#line 191 "../../../src/options/quantifiers_options"
struct qcfVoExp__option_t qcfVoExp;
#line 194 "../../../src/options/quantifiers_options"
struct instNoEntail__option_t instNoEntail;
#line 196 "../../../src/options/quantifiers_options"
struct instNoModelTrue__option_t instNoModelTrue;
#line 199 "../../../src/options/quantifiers_options"
struct instPropagate__option_t instPropagate;
#line 202 "../../../src/options/quantifiers_options"
struct qcfEagerTest__option_t qcfEagerTest;
#line 204 "../../../src/options/quantifiers_options"
struct qcfEagerCheckRd__option_t qcfEagerCheckRd;
#line 206 "../../../src/options/quantifiers_options"
struct qcfSkipRd__option_t qcfSkipRd;
#line 211 "../../../src/options/quantifiers_options"
struct quantRewriteRules__option_t quantRewriteRules;
#line 213 "../../../src/options/quantifiers_options"
struct rrOneInstPerRound__option_t rrOneInstPerRound;
#line 218 "../../../src/options/quantifiers_options"
struct quantInduction__option_t quantInduction;
#line 220 "../../../src/options/quantifiers_options"
struct dtStcInduction__option_t dtStcInduction;
#line 222 "../../../src/options/quantifiers_options"
struct intWfInduction__option_t intWfInduction;
#line 224 "../../../src/options/quantifiers_options"
struct conjectureGen__option_t conjectureGen;
#line 227 "../../../src/options/quantifiers_options"
struct conjectureGenPerRound__option_t conjectureGenPerRound;
#line 229 "../../../src/options/quantifiers_options"
struct conjectureNoFilter__option_t conjectureNoFilter;
#line 231 "../../../src/options/quantifiers_options"
struct conjectureFilterActiveTerms__option_t conjectureFilterActiveTerms;
#line 233 "../../../src/options/quantifiers_options"
struct conjectureFilterCanonical__option_t conjectureFilterCanonical;
#line 235 "../../../src/options/quantifiers_options"
struct conjectureFilterModel__option_t conjectureFilterModel;
#line 237 "../../../src/options/quantifiers_options"
struct conjectureGenGtEnum__option_t conjectureGenGtEnum;
#line 239 "../../../src/options/quantifiers_options"
struct conjectureUeeIntro__option_t conjectureUeeIntro;
#line 241 "../../../src/options/quantifiers_options"
struct conjectureGenMaxDepth__option_t conjectureGenMaxDepth;
#line 246 "../../../src/options/quantifiers_options"
struct ceGuidedInst__option_t ceGuidedInst;
#line 248 "../../../src/options/quantifiers_options"
struct ceGuidedInstFair__option_t ceGuidedInstFair;
#line 250 "../../../src/options/quantifiers_options"
struct cegqiSingleInvMode__option_t cegqiSingleInvMode;
#line 252 "../../../src/options/quantifiers_options"
struct cegqiSingleInvPartial__option_t cegqiSingleInvPartial;
#line 254 "../../../src/options/quantifiers_options"
struct cegqiSingleInvReconstruct__option_t cegqiSingleInvReconstruct;
#line 256 "../../../src/options/quantifiers_options"
struct cegqiSolMinCore__option_t cegqiSolMinCore;
#line 258 "../../../src/options/quantifiers_options"
struct cegqiSolMinInst__option_t cegqiSolMinInst;
#line 260 "../../../src/options/quantifiers_options"
struct cegqiSingleInvReconstructConst__option_t cegqiSingleInvReconstructConst;
#line 262 "../../../src/options/quantifiers_options"
struct cegqiSingleInvAbort__option_t cegqiSingleInvAbort;
#line 265 "../../../src/options/quantifiers_options"
struct sygusNormalForm__option_t sygusNormalForm;
#line 267 "../../../src/options/quantifiers_options"
struct sygusNormalFormArg__option_t sygusNormalFormArg;
#line 269 "../../../src/options/quantifiers_options"
struct sygusNormalFormGlobal__option_t sygusNormalFormGlobal;
#line 271 "../../../src/options/quantifiers_options"
struct sygusNormalFormGlobalGen__option_t sygusNormalFormGlobalGen;
#line 273 "../../../src/options/quantifiers_options"
struct sygusNormalFormGlobalArg__option_t sygusNormalFormGlobalArg;
#line 275 "../../../src/options/quantifiers_options"
struct sygusNormalFormGlobalContent__option_t sygusNormalFormGlobalContent;
#line 278 "../../../src/options/quantifiers_options"
struct sygusInvTemplMode__option_t sygusInvTemplMode;
#line 280 "../../../src/options/quantifiers_options"
struct sygusUnifCondSol__option_t sygusUnifCondSol;
#line 283 "../../../src/options/quantifiers_options"
struct sygusDirectEval__option_t sygusDirectEval;
#line 285 "../../../src/options/quantifiers_options"
struct sygusCRefEval__option_t sygusCRefEval;
#line 289 "../../../src/options/quantifiers_options"
struct cbqi__option_t cbqi;
#line 291 "../../../src/options/quantifiers_options"
struct recurseCbqi__option_t recurseCbqi;
#line 293 "../../../src/options/quantifiers_options"
struct cbqiSat__option_t cbqiSat;
#line 295 "../../../src/options/quantifiers_options"
struct cbqiModel__option_t cbqiModel;
#line 297 "../../../src/options/quantifiers_options"
struct cbqiAll__option_t cbqiAll;
#line 299 "../../../src/options/quantifiers_options"
struct cbqiUseInfInt__option_t cbqiUseInfInt;
#line 301 "../../../src/options/quantifiers_options"
struct cbqiUseInfReal__option_t cbqiUseInfReal;
#line 303 "../../../src/options/quantifiers_options"
struct cbqiPreRegInst__option_t cbqiPreRegInst;
#line 305 "../../../src/options/quantifiers_options"
struct cbqiMinBounds__option_t cbqiMinBounds;
#line 307 "../../../src/options/quantifiers_options"
struct cbqiRoundUpLowerLia__option_t cbqiRoundUpLowerLia;
#line 309 "../../../src/options/quantifiers_options"
struct cbqiMidpoint__option_t cbqiMidpoint;
#line 311 "../../../src/options/quantifiers_options"
struct cbqiNopt__option_t cbqiNopt;
#line 313 "../../../src/options/quantifiers_options"
struct cbqiLitDepend__option_t cbqiLitDepend;
#line 315 "../../../src/options/quantifiers_options"
struct cbqiInnermost__option_t cbqiInnermost;
#line 317 "../../../src/options/quantifiers_options"
struct cbqiNestedQE__option_t cbqiNestedQE;
#line 320 "../../../src/options/quantifiers_options"
struct quantEpr__option_t quantEpr;
#line 322 "../../../src/options/quantifiers_options"
struct quantEprMatching__option_t quantEprMatching;
#line 327 "../../../src/options/quantifiers_options"
struct localTheoryExt__option_t localTheoryExt;
#line 329 "../../../src/options/quantifiers_options"
struct ltePartialInst__option_t ltePartialInst;
#line 331 "../../../src/options/quantifiers_options"
struct lteRestrictInstClosure__option_t lteRestrictInstClosure;
#line 336 "../../../src/options/quantifiers_options"
struct quantAlphaEquiv__option_t quantAlphaEquiv;
#line 338 "../../../src/options/quantifiers_options"
struct macrosQuant__option_t macrosQuant;
#line 340 "../../../src/options/quantifiers_options"
struct macrosQuantMode__option_t macrosQuantMode;
#line 342 "../../../src/options/quantifiers_options"
struct quantDynamicSplit__option_t quantDynamicSplit;
#line 344 "../../../src/options/quantifiers_options"
struct quantAntiSkolem__option_t quantAntiSkolem;
#line 354 "../../../src/options/quantifiers_options"
struct quantEqualityEngine__option_t quantEqualityEngine;
#line 359 "../../../src/options/quantifiers_options"
struct trackInstLemmas__option_t trackInstLemmas;

#line 30 "../../../src/options/base_options_template.cpp"

}/* CVC4::options namespace */

}/* CVC4 namespace */
