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

#include <unistd.h>
#include <cstdio>
#include <string>

#include "src/validator/pubsub_class_checker.h"

using namespace std;
using namespace stoke;

int PubsubClassChecker::check(
    const DualAutomata& template_pod,
    const DualBuilder::EquivalenceClassMap& equivalence_class,
    Callback& callback,
    void* optional) {
            
  Problem prob(template_pod, 
               equivalence_class, 
               data_collector_, 
               control_learner_, 
               target_bound_, 
               rewrite_bound_);

  // set fixed attributes
  map<string, string> attributes;
  attributes["type"] = "class";
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

  // publish away!
  *os_ << "== ATTRIBUTES ==" << endl;
  for(auto pair : attributes) {
    *os_ << pair.first << " " << pair.second << endl;
  }
  *os_ << "== DATA ==" << endl;
  prob.serialize(*os_);
  *os_ << "== END ==" << endl;
  return (int)job_id;

}

void PubsubClassChecker::block_until_complete() {

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
      exit(1);
    }

    //cout << "job_id: " << job_id << endl;

    string line;
    Result r;
    stringstream data;
    while(true) {
      //cout << "getting line" << endl;
      getline(*is_, line);
      if(is_->fail()) {
        cout << "looks like parsing failed after getline" << endl;
        exit(1);
        break;
      }
      //cout << line << endl;
      if(line == "== END ==") {
        //cout << "reading result" << endl;
        //cout << "data is " << endl << data.str() << endl;
        data >> r;
        //cout << "result is " << endl << r << endl;
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

void PubsubClassChecker::init_publisher() {

  int pipefd[2];
  int ok = pipe(pipefd);
  if(ok) {
    perror("pubsub class checker, publisher pipe");
    exit(1);
  }


  pid_t pid = fork();
  if(pid != 0) {
    // parent
    close(pipefd[0]);
    publisher_fd_ = pipefd[1];
    publisher_pid_ = pid;

    publisher_buffer_ = new __gnu_cxx::stdio_filebuf<char>(publisher_fd_, std::ios::out);
    os_ = new ostream(publisher_buffer_);

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
    execvpe(ruby_path, argv, environ);
    perror("execvpe for class checker ruby");
  }
}

void PubsubClassChecker::init_subscriber() {

  int pipefd[2];
  int ok = pipe(pipefd);
  if(ok) {
    perror("pubsub class checker, subscriber pipe");
    exit(1);
  }


  pid_t pid = fork();
  if(pid != 0) {
    // parent
    close(pipefd[1]);
    subscriber_fd_ = pipefd[0];
    subscriber_pid_ = pid;

    subscriber_buffer_ = new __gnu_cxx::stdio_filebuf<char>(subscriber_fd_, std::ios::in);
    is_ = new istream(subscriber_buffer_);
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
    execvpe(ruby_path, argv, environ);
    perror("execvpe for class checker ruby, subscriber");
  }
}

