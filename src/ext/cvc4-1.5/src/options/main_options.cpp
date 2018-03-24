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


#line 8 "../../../src/options/main_options"
template <> const options::version__option_t::type& Options::operator[](options::version__option_t) const { return d_holder->version; }
#line 8 "../../../src/options/main_options"
template <> bool Options::wasSetByUser(options::version__option_t) const { return d_holder->version__setByUser__; }
#line 12 "../../../src/options/main_options"
template <> const options::help__option_t::type& Options::operator[](options::help__option_t) const { return d_holder->help; }
#line 12 "../../../src/options/main_options"
template <> bool Options::wasSetByUser(options::help__option_t) const { return d_holder->help__setByUser__; }
#line 23 "../../../src/options/main_options"
template <> const options::earlyExit__option_t::type& Options::operator[](options::earlyExit__option_t) const { return d_holder->earlyExit; }
#line 23 "../../../src/options/main_options"
template <> bool Options::wasSetByUser(options::earlyExit__option_t) const { return d_holder->earlyExit__setByUser__; }
#line 27 "../../../src/options/main_options"
template <> const options::threads__option_t::type& Options::operator[](options::threads__option_t) const { return d_holder->threads; }
#line 27 "../../../src/options/main_options"
template <> bool Options::wasSetByUser(options::threads__option_t) const { return d_holder->threads__setByUser__; }
#line 31 "../../../src/options/main_options"
template <> const options::threadStackSize__option_t::type& Options::operator[](options::threadStackSize__option_t) const { return d_holder->threadStackSize; }
#line 31 "../../../src/options/main_options"
template <> bool Options::wasSetByUser(options::threadStackSize__option_t) const { return d_holder->threadStackSize__setByUser__; }
#line 33 "../../../src/options/main_options"
template <> void Options::set(options::threadArgv__option_t, const options::threadArgv__option_t::type& x) { d_holder->threadArgv = x; }
#line 33 "../../../src/options/main_options"
template <> const options::threadArgv__option_t::type& Options::operator[](options::threadArgv__option_t) const { return d_holder->threadArgv; }
#line 33 "../../../src/options/main_options"
template <> bool Options::wasSetByUser(options::threadArgv__option_t) const { return d_holder->threadArgv__setByUser__; }
#line 35 "../../../src/options/main_options"
template <> void Options::set(options::thread_id__option_t, const options::thread_id__option_t::type& x) { d_holder->thread_id = x; }
#line 35 "../../../src/options/main_options"
template <> const options::thread_id__option_t::type& Options::operator[](options::thread_id__option_t) const { return d_holder->thread_id; }
#line 35 "../../../src/options/main_options"
template <> bool Options::wasSetByUser(options::thread_id__option_t) const { return d_holder->thread_id__setByUser__; }
#line 37 "../../../src/options/main_options"
template <> void Options::set(options::sharingFilterByLength__option_t, const options::sharingFilterByLength__option_t::type& x) { d_holder->sharingFilterByLength = x; }
#line 37 "../../../src/options/main_options"
template <> const options::sharingFilterByLength__option_t::type& Options::operator[](options::sharingFilterByLength__option_t) const { return d_holder->sharingFilterByLength; }
#line 37 "../../../src/options/main_options"
template <> bool Options::wasSetByUser(options::sharingFilterByLength__option_t) const { return d_holder->sharingFilterByLength__setByUser__; }
#line 39 "../../../src/options/main_options"
template <> const options::fallbackSequential__option_t::type& Options::operator[](options::fallbackSequential__option_t) const { return d_holder->fallbackSequential; }
#line 39 "../../../src/options/main_options"
template <> bool Options::wasSetByUser(options::fallbackSequential__option_t) const { return d_holder->fallbackSequential__setByUser__; }
#line 41 "../../../src/options/main_options"
template <> const options::incrementalParallel__option_t::type& Options::operator[](options::incrementalParallel__option_t) const { return d_holder->incrementalParallel; }
#line 41 "../../../src/options/main_options"
template <> bool Options::wasSetByUser(options::incrementalParallel__option_t) const { return d_holder->incrementalParallel__setByUser__; }
#line 44 "../../../src/options/main_options"
template <> void Options::set(options::interactive__option_t, const options::interactive__option_t::type& x) { d_holder->interactive = x; }
#line 44 "../../../src/options/main_options"
template <> const options::interactive__option_t::type& Options::operator[](options::interactive__option_t) const { return d_holder->interactive; }
#line 44 "../../../src/options/main_options"
template <> bool Options::wasSetByUser(options::interactive__option_t) const { return d_holder->interactive__setByUser__; }
#line 46 "../../../src/options/main_options"
template <> const options::interactivePrompt__option_t::type& Options::operator[](options::interactivePrompt__option_t) const { return d_holder->interactivePrompt; }
#line 46 "../../../src/options/main_options"
template <> bool Options::wasSetByUser(options::interactivePrompt__option_t) const { return d_holder->interactivePrompt__setByUser__; }
#line 50 "../../../src/options/main_options"
template <> const options::continuedExecution__option_t::type& Options::operator[](options::continuedExecution__option_t) const { return d_holder->continuedExecution; }
#line 50 "../../../src/options/main_options"
template <> bool Options::wasSetByUser(options::continuedExecution__option_t) const { return d_holder->continuedExecution__setByUser__; }
#line 53 "../../../src/options/main_options"
template <> const options::segvSpin__option_t::type& Options::operator[](options::segvSpin__option_t) const { return d_holder->segvSpin; }
#line 53 "../../../src/options/main_options"
template <> bool Options::wasSetByUser(options::segvSpin__option_t) const { return d_holder->segvSpin__setByUser__; }
#line 57 "../../../src/options/main_options"
template <> const options::tearDownIncremental__option_t::type& Options::operator[](options::tearDownIncremental__option_t) const { return d_holder->tearDownIncremental; }
#line 57 "../../../src/options/main_options"
template <> bool Options::wasSetByUser(options::tearDownIncremental__option_t) const { return d_holder->tearDownIncremental__setByUser__; }
#line 60 "../../../src/options/main_options"
template <> const options::waitToJoin__option_t::type& Options::operator[](options::waitToJoin__option_t) const { return d_holder->waitToJoin; }
#line 60 "../../../src/options/main_options"
template <> bool Options::wasSetByUser(options::waitToJoin__option_t) const { return d_holder->waitToJoin__setByUser__; }

#line 24 "../../../src/options/base_options_template.cpp"

namespace options {


#line 8 "../../../src/options/main_options"
struct version__option_t version;
#line 12 "../../../src/options/main_options"
struct help__option_t help;
#line 23 "../../../src/options/main_options"
struct earlyExit__option_t earlyExit;
#line 27 "../../../src/options/main_options"
struct threads__option_t threads;
#line 31 "../../../src/options/main_options"
struct threadStackSize__option_t threadStackSize;
#line 33 "../../../src/options/main_options"
struct threadArgv__option_t threadArgv;
#line 35 "../../../src/options/main_options"
struct thread_id__option_t thread_id;
#line 37 "../../../src/options/main_options"
struct sharingFilterByLength__option_t sharingFilterByLength;
#line 39 "../../../src/options/main_options"
struct fallbackSequential__option_t fallbackSequential;
#line 41 "../../../src/options/main_options"
struct incrementalParallel__option_t incrementalParallel;
#line 44 "../../../src/options/main_options"
struct interactive__option_t interactive;
#line 46 "../../../src/options/main_options"
struct interactivePrompt__option_t interactivePrompt;
#line 50 "../../../src/options/main_options"
struct continuedExecution__option_t continuedExecution;
#line 53 "../../../src/options/main_options"
struct segvSpin__option_t segvSpin;
#line 57 "../../../src/options/main_options"
struct tearDownIncremental__option_t tearDownIncremental;
#line 60 "../../../src/options/main_options"
struct waitToJoin__option_t waitToJoin;

#line 30 "../../../src/options/base_options_template.cpp"

}/* CVC4::options namespace */

}/* CVC4 namespace */
