// Copyright 2013-2016 Stanford University
//
// Licensed under the Apache License, Version 2.0 (the License);
// you may not use this file except in compliance with the License.
// You may obtain a copy of the License at
//
//     http://www.apache.org/licenses/LICENSE-2.0
//
// Unless required by applicable law or agreed to in writing, software
// distributed under the License is distributed on an AS IS BASIS,
// WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
// See the License for the specific language governing permissions and
// limitations under the License.

#ifndef STOKE_SRC_VALIDATOR_FORKING_OBLIGATION_CHECKER_H
#define STOKE_SRC_VALIDATOR_FORKING_OBLIGATION_CHECKER_H

#include <iostream>
#include <sstream>
#include <vector>
#include <string>

#include "poll.h"

#include "src/validator/obligation_checker.h"

//#define DEBUG_CHECKER_PERFORMANCE

#ifdef DEBUG_CHECKER_PERFORMANCE
#include "src/solver/z3solver.h"
#endif

namespace stoke {

class ForkingObligationChecker : public ObligationChecker {

public:

  ForkingObligationChecker(std::vector<ObligationChecker*>& child_checkers, size_t max_procs) :
    child_checkers_(child_checkers),
    max_processes_(max_procs)
  {
    assert(child_checkers_.size() > 0);
    pollfds_ = new pollfd[max_processes_];
  }

  /** Check.  This performs the requested obligation check, and depending on the implementation may
    choose to either:
      (1) block, call the callback (in the same thread/process), and then return; or
      (2) start an asynchronous job (which will later invoke the callback) and return; or
      (3) block, then start an asyncrhonous job (which will call the callback) and return. */
  virtual void check(const Cfg& target, const Cfg& rewrite,
                     Cfg::id_type target_block, Cfg::id_type rewrite_block,
                     const CfgPath& p, const CfgPath& q,
                     Invariant& assume, Invariant& prove,
                     const std::vector<std::pair<CpuState, CpuState>>& testcases,
                     Callback& callback,
                     void* optional = NULL);

  /** Get the filter */
  Filter& get_filter() {
    return child_checkers_[0]->get_filter();
  }

  /** Process a signal. Check all the running processes to see if they're completed. */
  void signal();

  /** Blocks until all the checking has done and the callbacks have been called. */
  void block_until_complete();

private:

  // Operations:
  // 1. check if there's a free process
  // 2. get fd to free process
  // 3. poll all running processes
  // 4. stop a running process
  // 5. make a free process running, and get a handle to its data
  // 6. kill a running process




  struct ProcessInfo {
    // info on process
    int fd;
    pid_t pid;

    // how client wants to get info back
    Callback* callback;
    void* optional;

    // buffer with what we've read so far
    std::string data;

    // indexes of 'friend' processes
    std::vector<pid_t> friends;

    ProcessInfo(Callback& cb, void* opt) : callback(&cb), optional(opt) { }
  };


  /** Tries to read from one of the processes */
  void poll_and_read(bool fast);
  /** Block until free thread. */
  void block_until_free();
  /** Call the callback and cleanup process. */
  void finish_process(ProcessInfo& pi) const;
  /** Return an error to callback */
  void return_error(Callback& callback, std::string s, void* optional) const;
  /** For debugging */
  void print_table() const;

  pollfd* pollfds_;

  std::vector<ProcessInfo> process_info_;
  std::vector<ObligationChecker*> child_checkers_;
  size_t max_processes_;

};



} // namespace stoke

#endif
