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

#ifndef __CVC4__OPTIONS__DRIVER_H
#define __CVC4__OPTIONS__DRIVER_H

#include "options/options.h"

#line 33 "../../../src/options/main_options"
#include <vector>
#line 33 "../../../src/options/main_options"
#include <string>

#line 26 "../../../src/options/base_options_template.h"

#define CVC4_OPTIONS__DRIVER__FOR_OPTION_HOLDER \
  version__option_t::type version; \
  bool version__setByUser__; \
  help__option_t::type help; \
  bool help__setByUser__; \
  earlyExit__option_t::type earlyExit; \
  bool earlyExit__setByUser__; \
  threads__option_t::type threads; \
  bool threads__setByUser__; \
  threadStackSize__option_t::type threadStackSize; \
  bool threadStackSize__setByUser__; \
  threadArgv__option_t::type threadArgv; \
  bool threadArgv__setByUser__; \
  thread_id__option_t::type thread_id; \
  bool thread_id__setByUser__; \
  sharingFilterByLength__option_t::type sharingFilterByLength; \
  bool sharingFilterByLength__setByUser__; \
  fallbackSequential__option_t::type fallbackSequential; \
  bool fallbackSequential__setByUser__; \
  incrementalParallel__option_t::type incrementalParallel; \
  bool incrementalParallel__setByUser__; \
  interactive__option_t::type interactive; \
  bool interactive__setByUser__; \
  interactivePrompt__option_t::type interactivePrompt; \
  bool interactivePrompt__setByUser__; \
  continuedExecution__option_t::type continuedExecution; \
  bool continuedExecution__setByUser__; \
  segvSpin__option_t::type segvSpin; \
  bool segvSpin__setByUser__; \
  tearDownIncremental__option_t::type tearDownIncremental; \
  bool tearDownIncremental__setByUser__; \
  waitToJoin__option_t::type waitToJoin; \
  bool waitToJoin__setByUser__;

#line 30 "../../../src/options/base_options_template.h"

namespace CVC4 {

namespace options {


#line 8 "../../../src/options/main_options"
extern struct CVC4_PUBLIC version__option_t { typedef bool type; type operator()() const; bool wasSetByUser() const; } version CVC4_PUBLIC;
#line 12 "../../../src/options/main_options"
extern struct CVC4_PUBLIC help__option_t { typedef bool type; type operator()() const; bool wasSetByUser() const; } help CVC4_PUBLIC;
#line 23 "../../../src/options/main_options"
extern struct CVC4_PUBLIC earlyExit__option_t { typedef bool type; type operator()() const; bool wasSetByUser() const; } earlyExit CVC4_PUBLIC;
#line 27 "../../../src/options/main_options"
extern struct CVC4_PUBLIC threads__option_t { typedef unsigned type; type operator()() const; bool wasSetByUser() const; } threads CVC4_PUBLIC;
#line 31 "../../../src/options/main_options"
extern struct CVC4_PUBLIC threadStackSize__option_t { typedef unsigned type; type operator()() const; bool wasSetByUser() const; } threadStackSize CVC4_PUBLIC;
#line 33 "../../../src/options/main_options"
extern struct CVC4_PUBLIC threadArgv__option_t { typedef std::vector<std::string> type; type operator()() const; bool wasSetByUser() const; void set(const type& v); } threadArgv CVC4_PUBLIC;
#line 35 "../../../src/options/main_options"
extern struct CVC4_PUBLIC thread_id__option_t { typedef int type; type operator()() const; bool wasSetByUser() const; void set(const type& v); } thread_id CVC4_PUBLIC;
#line 37 "../../../src/options/main_options"
extern struct CVC4_PUBLIC sharingFilterByLength__option_t { typedef int type; type operator()() const; bool wasSetByUser() const; void set(const type& v); } sharingFilterByLength CVC4_PUBLIC;
#line 39 "../../../src/options/main_options"
extern struct CVC4_PUBLIC fallbackSequential__option_t { typedef bool type; type operator()() const; bool wasSetByUser() const; } fallbackSequential CVC4_PUBLIC;
#line 41 "../../../src/options/main_options"
extern struct CVC4_PUBLIC incrementalParallel__option_t { typedef bool type; type operator()() const; bool wasSetByUser() const; } incrementalParallel CVC4_PUBLIC;
#line 44 "../../../src/options/main_options"
extern struct CVC4_PUBLIC interactive__option_t { typedef bool type; type operator()() const; bool wasSetByUser() const; void set(const type& v); } interactive CVC4_PUBLIC;
#line 46 "../../../src/options/main_options"
extern struct CVC4_PUBLIC interactivePrompt__option_t { typedef bool type; type operator()() const; bool wasSetByUser() const; } interactivePrompt CVC4_PUBLIC;
#line 50 "../../../src/options/main_options"
extern struct CVC4_PUBLIC continuedExecution__option_t { typedef bool type; type operator()() const; bool wasSetByUser() const; } continuedExecution CVC4_PUBLIC;
#line 53 "../../../src/options/main_options"
extern struct CVC4_PUBLIC segvSpin__option_t { typedef bool type; type operator()() const; bool wasSetByUser() const; } segvSpin CVC4_PUBLIC;
#line 57 "../../../src/options/main_options"
extern struct CVC4_PUBLIC tearDownIncremental__option_t { typedef int type; type operator()() const; bool wasSetByUser() const; } tearDownIncremental CVC4_PUBLIC;
#line 60 "../../../src/options/main_options"
extern struct CVC4_PUBLIC waitToJoin__option_t { typedef bool type; type operator()() const; bool wasSetByUser() const; } waitToJoin CVC4_PUBLIC;

#line 38 "../../../src/options/base_options_template.h"

}/* CVC4::options namespace */


#line 8 "../../../src/options/main_options"
template <> const options::version__option_t::type& Options::operator[](options::version__option_t) const;
#line 8 "../../../src/options/main_options"
template <> bool Options::wasSetByUser(options::version__option_t) const;
#line 8 "../../../src/options/main_options"
template <> void Options::assignBool(options::version__option_t, std::string option, bool value);
#line 12 "../../../src/options/main_options"
template <> const options::help__option_t::type& Options::operator[](options::help__option_t) const;
#line 12 "../../../src/options/main_options"
template <> bool Options::wasSetByUser(options::help__option_t) const;
#line 12 "../../../src/options/main_options"
template <> void Options::assignBool(options::help__option_t, std::string option, bool value);
#line 23 "../../../src/options/main_options"
template <> const options::earlyExit__option_t::type& Options::operator[](options::earlyExit__option_t) const;
#line 23 "../../../src/options/main_options"
template <> bool Options::wasSetByUser(options::earlyExit__option_t) const;
#line 23 "../../../src/options/main_options"
template <> void Options::assignBool(options::earlyExit__option_t, std::string option, bool value);
#line 27 "../../../src/options/main_options"
template <> const options::threads__option_t::type& Options::operator[](options::threads__option_t) const;
#line 27 "../../../src/options/main_options"
template <> bool Options::wasSetByUser(options::threads__option_t) const;
#line 27 "../../../src/options/main_options"
template <> void Options::assign(options::threads__option_t, std::string option, std::string value);
#line 31 "../../../src/options/main_options"
template <> const options::threadStackSize__option_t::type& Options::operator[](options::threadStackSize__option_t) const;
#line 31 "../../../src/options/main_options"
template <> bool Options::wasSetByUser(options::threadStackSize__option_t) const;
#line 31 "../../../src/options/main_options"
template <> void Options::assign(options::threadStackSize__option_t, std::string option, std::string value);
#line 33 "../../../src/options/main_options"
template <> void Options::set(options::threadArgv__option_t, const options::threadArgv__option_t::type& x);
#line 33 "../../../src/options/main_options"
template <> const options::threadArgv__option_t::type& Options::operator[](options::threadArgv__option_t) const;
#line 33 "../../../src/options/main_options"
template <> bool Options::wasSetByUser(options::threadArgv__option_t) const;
#line 33 "../../../src/options/main_options"
template <> void Options::assign(options::threadArgv__option_t, std::string option, std::string value);
#line 35 "../../../src/options/main_options"
template <> void Options::set(options::thread_id__option_t, const options::thread_id__option_t::type& x);
#line 35 "../../../src/options/main_options"
template <> const options::thread_id__option_t::type& Options::operator[](options::thread_id__option_t) const;
#line 35 "../../../src/options/main_options"
template <> bool Options::wasSetByUser(options::thread_id__option_t) const;
#line 35 "../../../src/options/main_options"
template <> void Options::assign(options::thread_id__option_t, std::string option, std::string value);
#line 37 "../../../src/options/main_options"
template <> void Options::set(options::sharingFilterByLength__option_t, const options::sharingFilterByLength__option_t::type& x);
#line 37 "../../../src/options/main_options"
template <> const options::sharingFilterByLength__option_t::type& Options::operator[](options::sharingFilterByLength__option_t) const;
#line 37 "../../../src/options/main_options"
template <> bool Options::wasSetByUser(options::sharingFilterByLength__option_t) const;
#line 37 "../../../src/options/main_options"
template <> void Options::assign(options::sharingFilterByLength__option_t, std::string option, std::string value);
#line 39 "../../../src/options/main_options"
template <> const options::fallbackSequential__option_t::type& Options::operator[](options::fallbackSequential__option_t) const;
#line 39 "../../../src/options/main_options"
template <> bool Options::wasSetByUser(options::fallbackSequential__option_t) const;
#line 39 "../../../src/options/main_options"
template <> void Options::assignBool(options::fallbackSequential__option_t, std::string option, bool value);
#line 41 "../../../src/options/main_options"
template <> const options::incrementalParallel__option_t::type& Options::operator[](options::incrementalParallel__option_t) const;
#line 41 "../../../src/options/main_options"
template <> bool Options::wasSetByUser(options::incrementalParallel__option_t) const;
#line 41 "../../../src/options/main_options"
template <> void Options::assignBool(options::incrementalParallel__option_t, std::string option, bool value);
#line 44 "../../../src/options/main_options"
template <> void Options::set(options::interactive__option_t, const options::interactive__option_t::type& x);
#line 44 "../../../src/options/main_options"
template <> const options::interactive__option_t::type& Options::operator[](options::interactive__option_t) const;
#line 44 "../../../src/options/main_options"
template <> bool Options::wasSetByUser(options::interactive__option_t) const;
#line 44 "../../../src/options/main_options"
template <> void Options::assignBool(options::interactive__option_t, std::string option, bool value);
#line 46 "../../../src/options/main_options"
template <> const options::interactivePrompt__option_t::type& Options::operator[](options::interactivePrompt__option_t) const;
#line 46 "../../../src/options/main_options"
template <> bool Options::wasSetByUser(options::interactivePrompt__option_t) const;
#line 46 "../../../src/options/main_options"
template <> void Options::assignBool(options::interactivePrompt__option_t, std::string option, bool value);
#line 50 "../../../src/options/main_options"
template <> const options::continuedExecution__option_t::type& Options::operator[](options::continuedExecution__option_t) const;
#line 50 "../../../src/options/main_options"
template <> bool Options::wasSetByUser(options::continuedExecution__option_t) const;
#line 50 "../../../src/options/main_options"
template <> void Options::assignBool(options::continuedExecution__option_t, std::string option, bool value);
#line 53 "../../../src/options/main_options"
template <> const options::segvSpin__option_t::type& Options::operator[](options::segvSpin__option_t) const;
#line 53 "../../../src/options/main_options"
template <> bool Options::wasSetByUser(options::segvSpin__option_t) const;
#line 53 "../../../src/options/main_options"
template <> void Options::assignBool(options::segvSpin__option_t, std::string option, bool value);
#line 57 "../../../src/options/main_options"
template <> const options::tearDownIncremental__option_t::type& Options::operator[](options::tearDownIncremental__option_t) const;
#line 57 "../../../src/options/main_options"
template <> bool Options::wasSetByUser(options::tearDownIncremental__option_t) const;
#line 57 "../../../src/options/main_options"
template <> void Options::assign(options::tearDownIncremental__option_t, std::string option, std::string value);
#line 60 "../../../src/options/main_options"
template <> const options::waitToJoin__option_t::type& Options::operator[](options::waitToJoin__option_t) const;
#line 60 "../../../src/options/main_options"
template <> bool Options::wasSetByUser(options::waitToJoin__option_t) const;
#line 60 "../../../src/options/main_options"
template <> void Options::assignBool(options::waitToJoin__option_t, std::string option, bool value);

#line 44 "../../../src/options/base_options_template.h"

namespace options {


#line 8 "../../../src/options/main_options"
inline version__option_t::type version__option_t::operator()() const { return (*Options::current())[*this]; }
#line 8 "../../../src/options/main_options"
inline bool version__option_t::wasSetByUser() const { return Options::current()->wasSetByUser(*this); }

#line 12 "../../../src/options/main_options"
inline help__option_t::type help__option_t::operator()() const { return (*Options::current())[*this]; }
#line 12 "../../../src/options/main_options"
inline bool help__option_t::wasSetByUser() const { return Options::current()->wasSetByUser(*this); }

#line 23 "../../../src/options/main_options"
inline earlyExit__option_t::type earlyExit__option_t::operator()() const { return (*Options::current())[*this]; }
#line 23 "../../../src/options/main_options"
inline bool earlyExit__option_t::wasSetByUser() const { return Options::current()->wasSetByUser(*this); }

#line 27 "../../../src/options/main_options"
inline threads__option_t::type threads__option_t::operator()() const { return (*Options::current())[*this]; }
#line 27 "../../../src/options/main_options"
inline bool threads__option_t::wasSetByUser() const { return Options::current()->wasSetByUser(*this); }

#line 31 "../../../src/options/main_options"
inline threadStackSize__option_t::type threadStackSize__option_t::operator()() const { return (*Options::current())[*this]; }
#line 31 "../../../src/options/main_options"
inline bool threadStackSize__option_t::wasSetByUser() const { return Options::current()->wasSetByUser(*this); }

#line 33 "../../../src/options/main_options"
inline threadArgv__option_t::type threadArgv__option_t::operator()() const { return (*Options::current())[*this]; }
#line 33 "../../../src/options/main_options"
inline bool threadArgv__option_t::wasSetByUser() const { return Options::current()->wasSetByUser(*this); }
#line 33 "../../../src/options/main_options"
inline void threadArgv__option_t::set(const threadArgv__option_t::type& v) { Options::current()->set(*this, v); }

#line 35 "../../../src/options/main_options"
inline thread_id__option_t::type thread_id__option_t::operator()() const { return (*Options::current())[*this]; }
#line 35 "../../../src/options/main_options"
inline bool thread_id__option_t::wasSetByUser() const { return Options::current()->wasSetByUser(*this); }
#line 35 "../../../src/options/main_options"
inline void thread_id__option_t::set(const thread_id__option_t::type& v) { Options::current()->set(*this, v); }

#line 37 "../../../src/options/main_options"
inline sharingFilterByLength__option_t::type sharingFilterByLength__option_t::operator()() const { return (*Options::current())[*this]; }
#line 37 "../../../src/options/main_options"
inline bool sharingFilterByLength__option_t::wasSetByUser() const { return Options::current()->wasSetByUser(*this); }
#line 37 "../../../src/options/main_options"
inline void sharingFilterByLength__option_t::set(const sharingFilterByLength__option_t::type& v) { Options::current()->set(*this, v); }

#line 39 "../../../src/options/main_options"
inline fallbackSequential__option_t::type fallbackSequential__option_t::operator()() const { return (*Options::current())[*this]; }
#line 39 "../../../src/options/main_options"
inline bool fallbackSequential__option_t::wasSetByUser() const { return Options::current()->wasSetByUser(*this); }

#line 41 "../../../src/options/main_options"
inline incrementalParallel__option_t::type incrementalParallel__option_t::operator()() const { return (*Options::current())[*this]; }
#line 41 "../../../src/options/main_options"
inline bool incrementalParallel__option_t::wasSetByUser() const { return Options::current()->wasSetByUser(*this); }

#line 44 "../../../src/options/main_options"
inline interactive__option_t::type interactive__option_t::operator()() const { return (*Options::current())[*this]; }
#line 44 "../../../src/options/main_options"
inline bool interactive__option_t::wasSetByUser() const { return Options::current()->wasSetByUser(*this); }
#line 44 "../../../src/options/main_options"
inline void interactive__option_t::set(const interactive__option_t::type& v) { Options::current()->set(*this, v); }

#line 46 "../../../src/options/main_options"
inline interactivePrompt__option_t::type interactivePrompt__option_t::operator()() const { return (*Options::current())[*this]; }
#line 46 "../../../src/options/main_options"
inline bool interactivePrompt__option_t::wasSetByUser() const { return Options::current()->wasSetByUser(*this); }

#line 50 "../../../src/options/main_options"
inline continuedExecution__option_t::type continuedExecution__option_t::operator()() const { return (*Options::current())[*this]; }
#line 50 "../../../src/options/main_options"
inline bool continuedExecution__option_t::wasSetByUser() const { return Options::current()->wasSetByUser(*this); }

#line 53 "../../../src/options/main_options"
inline segvSpin__option_t::type segvSpin__option_t::operator()() const { return (*Options::current())[*this]; }
#line 53 "../../../src/options/main_options"
inline bool segvSpin__option_t::wasSetByUser() const { return Options::current()->wasSetByUser(*this); }

#line 57 "../../../src/options/main_options"
inline tearDownIncremental__option_t::type tearDownIncremental__option_t::operator()() const { return (*Options::current())[*this]; }
#line 57 "../../../src/options/main_options"
inline bool tearDownIncremental__option_t::wasSetByUser() const { return Options::current()->wasSetByUser(*this); }

#line 60 "../../../src/options/main_options"
inline waitToJoin__option_t::type waitToJoin__option_t::operator()() const { return (*Options::current())[*this]; }
#line 60 "../../../src/options/main_options"
inline bool waitToJoin__option_t::wasSetByUser() const { return Options::current()->wasSetByUser(*this); }

#line 50 "../../../src/options/base_options_template.h"

}/* CVC4::options namespace */

}/* CVC4 namespace */

#endif /* __CVC4__OPTIONS__DRIVER_H */
