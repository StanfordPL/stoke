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

#ifndef STOKE_SRC_VALIDATOR_PUBSUB_CLASS_CHECKER_H
#define STOKE_SRC_VALIDATOR_PUBSUB_CLASS_CHECKER_H


#include <chrono>
#include <sys/types.h>
#include <sys/wait.h>

#include "src/validator/class_checker.h"
#include "ext/stdio_filebuf.h"



namespace stoke {

/** Uses an obligation checker to discharge all of the obligations associated with a POD.
  The POD is derived from a template, along with an equivalene class. */
class PubsubClassChecker : public ClassChecker {

public:

  PubsubClassChecker(DataCollector& data_collector,
                    ControlLearner& control_learner,
                    size_t target_bound,
                    size_t rewrite_bound,
                    std::string ruby_path = "ruby") :
    ClassChecker(data_collector, control_learner, target_bound, rewrite_bound),
    ruby_path_(ruby_path)
  {
    job_count_ = 0;
    jobs_running_ = 0;


    auto now = std::chrono::system_clock::now();
    auto token = std::chrono::duration_cast<std::chrono::microseconds>(now.time_since_epoch()).count();
    std::stringstream token_ss;
    token_ss << "class-checker-" << token;
    our_topic_ = token_ss.str();

    init_publisher();
    init_subscriber();
    sleep(1);
    send_testcase_blob();
  }

  /** Check this template with equivalence class. */
  virtual int check(const DualAutomata& template_pod,
                     const DualBuilder::EquivalenceClassMap& equivalence_class,
                     Callback& callback,
                     void* optional = NULL);

  /** Blocks until all the checking has done and the callbacks have been called. */
  virtual void block_until_complete();

private:

  /** Setup child processes and pipes */
  void init_publisher();
  void init_subscriber();

  /** Handle sending the testcases via datastore */
  void send_testcase_blob();
  std::string blobname_;

  /** Name of our topic for getting results back */
  std::string our_topic_;
  std::string ruby_path_;

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

  /** Track state of jobs */
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
