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

#include "src/validator/pubsub_obligation_checker.h"
#include <unistd.h>
#include <cstdio>
#include <sys/types.h>
#include <sys/wait.h>

using namespace std;
using namespace stoke;

void PubsubObligationChecker::check(const Cfg& target, const Cfg& rewrite,
                     Cfg::id_type target_block, Cfg::id_type rewrite_block,
                     const CfgPath& p, const CfgPath& q,
                     Invariant& assume, Invariant& prove,
                     const std::vector<std::pair<CpuState, CpuState>>& testcases,
                     Callback& callback,
                     void* optional) {
  Obligation oblig;
  oblig.target = target;
  oblig.rewrite = rewrite;
  oblig.target_block = target_block;
  oblig.rewrite_block = rewrite_block;
  oblig.P = p;
  oblig.Q = q;
  oblig.assume = &assume;
  oblig.prove = &prove;
  oblig.testcases = testcases;

  // set fixed attributes
  map<string, string> attributes;
  attributes["type"] = "smt";
  attributes["output-topic"] = our_topic_;

  // get job id
  size_t job_id = ++job_count_;
  jobs_running_++;
  stringstream job_name;
  job_name << job_id;
  attributes["job"] = job_name.str();

  // save into data structure
  JobInfo ji(callback);
  ji.job_id = job_id;
  ji.optional = optional;
  job_map_.insert({job_id, ji});

  // list of acceptable attributes
  vector<string> solvers;
  if(enable_z3_)
    solvers.push_back("z3");
  if(enable_cvc4_)
    solvers.push_back("cvc4");

  vector<string> strategies;
  if(enable_flat_)
    strategies.push_back("flat");
  if(enable_arm_)
    strategies.push_back("arm");

  // publish away!
  for(auto solver : solvers) {
    for(auto strategy : strategies) {
      attributes["solver"] = solver;
      attributes["model"] = strategy;


      // publish
      *os_ << "== ATTRIBUTES ==" << endl;
      for(auto pair : attributes) {
        *os_ << pair.first << " " << pair.second << endl;
      }
      *os_ << "== DATA ==" << endl;
      oblig.write_text(*os_);
      *os_ << "== END ==" << endl;
    }
  }

}

void PubsubObligationChecker::block_until_complete() {

  if(first_read_) {
    /** read 4 lines from subscriber */
    for(size_t i = 0; i < 4; ++i) {
        string line;
        getline(*is_, line);
        cout << "IGNORING: " << line << endl;
    }
    first_read_ = false;
  }

  while(jobs_running_) {
    cout << jobs_running_ << " jobs left to finish" << endl;

    size_t job_id;
    *is_ >> job_id; 
    if(is_->fail()) {
      cout << "looks like parsing failed for job_id" << endl;
      break;
    }

    cout << "job_id: " << job_id << endl;

    string line;
    Result r;
    while(true) {
      stringstream data;
      cout << "getting line" << endl;
      getline(*is_, line);
      if(is_->fail()) {
        cout << "looks like parsing failed after getline" << endl;
        break;
      }
      cout << line << endl;
      if(line == "== END ==") {
        cout << "reading result" << endl;
        r.read_text(data);
        break;
      } else {
        data << line << endl;
      }
    }

    auto& ji = job_map_.at(job_id);
    if(!ji.finished) {
      ji.finished = true;
      ji.callback(r, ji.optional);
      jobs_running_--;
    }
  }
}

void PubsubObligationChecker::init_publisher() {

  int pipefd[2];
  pipe(pipefd);

  pid_t pid = fork();
  if(pid != 0) {
    // parent
    close(pipefd[0]);
    publisher_fd_ = pipefd[1];
    publisher_pid_ = pid;

    publisher_buffer_ = new __gnu_cxx::stdio_filebuf<char>(publisher_fd_, std::ios::out);
    os_ = new ostream(publisher_buffer_);
    //os_ = &cout;

  } else {
    // child
    close(pipefd[1]);
    int fd = pipefd[0];
    dup2(fd, STDIN_FILENO);

    // get path to this binary, truncated to the folder
    char buffer[1024];
    size_t ret = readlink("/proc/self/exe", buffer, 1024);
    buffer[ret] = '\0';
    char* end = strrchr(buffer, '/');
    assert(end != NULL);
    *end = '\0';

    // path to ruby script
    stringstream filename_ss;
    filename_ss << buffer << "/publisher.rb";
    char* publish_filename = const_cast<char*>(filename_ss.str().c_str());
    char* ruby_path = const_cast<char*>(ruby_path_.c_str());

    // setup arguments
    char* const argv[5] = {
      ruby_path,
      publish_filename,
      (char*)"--topic",
      (char*)"worklist",
      NULL 
    };

    // invoke execve
    execve(ruby_path, argv, environ);
  }
}

void PubsubObligationChecker::init_subscriber() {

  int pipefd[2];
  pipe(pipefd);

  pid_t pid = fork();
  if(pid != 0) {
    // parent
    close(pipefd[1]);
    subscriber_fd_ = pipefd[0];
    subscriber_pid_ = pid;

    subscriber_buffer_ = new __gnu_cxx::stdio_filebuf<char>(subscriber_fd_, std::ios::in);
    is_ = new istream(subscriber_buffer_);
    //os_ = &cout;
    first_read_ = true;

  } else {
    // child
    close(pipefd[0]);
    int fd = pipefd[1];
    dup2(fd, STDOUT_FILENO);

    // get path to this binary, truncated to the folder
    char buffer[1024];
    size_t ret = readlink("/proc/self/exe", buffer, 1024);
    buffer[ret] = '\0';
    char* end = strrchr(buffer, '/');
    assert(end != NULL);
    *end = '\0';

    // path to ruby script
    stringstream filename_ss;
    filename_ss << buffer << "/reader.rb";
    char* sub_filename = const_cast<char*>(filename_ss.str().c_str());
    char* ruby_path = const_cast<char*>(ruby_path_.c_str());
    char* topic = const_cast<char*>(our_topic_.c_str());

    // setup arguments
    char* const argv[5] = {
      ruby_path,
      sub_filename,
      (char*)"--topic",
      topic,
      NULL 
    };

    // invoke execve
    execve(ruby_path, argv, environ);
  }
}

