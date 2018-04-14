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

#ifndef STOKE_SRC_VALIDATOR_PUBSUB_OBLIGATION_CHECKER_H
#define STOKE_SRC_VALIDATOR_PUBSUB_OBLIGATION_CHECKER_H

#include <functional>
#include <iostream>
#include <ostream>
#include <istream>
#include <vector>
#include <string>
#include <chrono>

#include "src/validator/handlers/combo_handler.h"
#include "src/validator/filters/default.h"

#include "src/validator/obligation_checker.h"
#include "ext/stdio_filebuf.h"

namespace stoke {

class PubsubObligationChecker : public ObligationChecker {

public:

  PubsubObligationChecker(std::string ruby_path = "ruby") : 
    handler_(), filter_(handler_), ruby_path_(ruby_path)
  {
    enable_z3(true);
    enable_cvc4(true);
    enable_flat(true);
    enable_arm(true);
    job_count_ = 0;
    jobs_running_ = 0;

    // get a name for our topic
    auto now = std::chrono::system_clock::now();
    auto token = std::chrono::duration_cast<std::chrono::microseconds>(now.time_since_epoch()).count();
    std::stringstream token_ss;
    token_ss << "obligation-checker-" << token;
    our_topic_ = token_ss.str();

    init_publisher();
    init_subscriber();
  }

  PubsubObligationChecker& enable_z3(bool b) {
    enable_z3_ = b;
    return *this;
  }

  PubsubObligationChecker& enable_cvc4(bool b) {
    enable_cvc4_ = b;
    return *this;
  }

  PubsubObligationChecker& enable_flat(bool b) {
    enable_flat_ = b;
    return *this;
  }

  PubsubObligationChecker& enable_arm(bool b) {
    enable_arm_ = b;
    return *this;
  }

  virtual void check(const Cfg& target, const Cfg& rewrite,
                     Cfg::id_type target_block, Cfg::id_type rewrite_block,
                     const CfgPath& p, const CfgPath& q,
                     Invariant& assume, Invariant& prove,
                     const std::vector<std::pair<CpuState, CpuState>>& testcases,
                     Callback& callback,
                     void* optional = NULL);

  /** Blocks until all the checking has done and the callbacks have been called. */
  virtual void block_until_complete();

  /** Get the filter */
  virtual Filter& get_filter() {
    return filter_;
  }

private:

  /** Setup child process and pipes */
  void init_publisher();
  void init_subscriber();

  ComboHandler handler_;
  DefaultFilter filter_;

  std::string ruby_path_;

  /** Solver functionality */
  bool enable_z3_;
  bool enable_cvc4_;
  bool enable_flat_;
  bool enable_arm_;

  /** Name of our topic for getting results back */
  std::string our_topic_;

  /** Access to child */
  int publisher_fd_;
  pid_t publisher_pid_;
  __gnu_cxx::stdio_filebuf<char>* publisher_buffer_;
  std::ostream* os_;

  int subscriber_fd_;
  pid_t subscriber_pid_;
  __gnu_cxx::stdio_filebuf<char>* subscriber_buffer_;
  std::istream* is_;
  bool first_read_;



  /** Tracking the state of jobs */
  size_t job_count_;
  size_t jobs_running_;

  struct JobInfo {
    size_t job_id;
    Callback& callback;
    void* optional;
    bool finished;
    JobInfo(Callback& cb) : callback(cb) { }
  };

  std::map<size_t, JobInfo> job_map_;

};

} //namespace stoke

#endif
