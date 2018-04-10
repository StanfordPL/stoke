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

#include "fcntl.h"
#include "unistd.h"
#include "ext/stdio_filebuf.h"
#include "sys/types.h"
#include "sys/wait.h"
#include "signal.h"
#include <chrono>

#include "src/validator/forking_obligation_checker.h"

#define DEBUG_FORKING_CHECKER(X) { X }

using namespace std;
using namespace stoke;

void ForkingObligationChecker::return_error(Callback& callback, string s, void* optional) const {
  ObligationChecker::Result result;
  result.verified = false;
  result.has_ceg = false;
  result.has_error = true;
  result.error_message = s;
  callback(result, optional);
}

void ForkingObligationChecker::check(
           const Cfg& target, const Cfg& rewrite,
           Cfg::id_type target_block, Cfg::id_type rewrite_block,
           const CfgPath& p, const CfgPath& q,
           Invariant& assume, Invariant& prove,
           const std::vector<std::pair<CpuState, CpuState>>& testcases,
           Callback& callback,
           void* optional) {

  vector<pid_t> friends;
  set<pid_t> friend_set;

  for(auto child_checker : child_checkers_) {
    block_until_free();

    /** Check that all the friends are still running. */
    bool still_running = false;
    if(friends.size()) {
      for(auto pi : process_info_) {
        if(friend_set.count(pi.pid)) {
          still_running = true;
          break;
        }
      }

      /** If the friends are not running, we're done! */
      if(!still_running) {
        return;
      }
    }

    /** Pipe and fork */
    DEBUG_FORKING_CHECKER(cout << "[check] pipe!" << endl;)
      int pipefd[2];
    int result = pipe2(pipefd, O_NONBLOCK);
    if(result != 0) {
      perror("[check] pipe");
      return_error(callback, "Call to pipe() failed", optional);
      return;
    }

    DEBUG_FORKING_CHECKER(cout << "[check] forking!" << endl;)
    auto start = chrono::system_clock::now();
      pid_t pid = fork();
    auto end = chrono::system_clock::now();
    auto elapsed = chrono::duration_cast<chrono::microseconds>(end-start);
    DEBUG_FORKING_CHECKER(cout << "[check] fork time: " << elapsed.count() << endl;)
    if(pid == 0) {
      // child
      close(pipefd[0]);
      Callback callback = [&pipefd, child_checker] (Result& result, void* info) {
        // send data back to parent proccess
        __gnu_cxx::stdio_filebuf<char> buf(pipefd[1], std::ios::in);

        stringstream ss;
        result.write_text(ss);
        ss << endl;
        const char* buffer = ss.str().c_str();
        DEBUG_FORKING_CHECKER(cout << "BUFFER: " << buffer << endl;)
          size_t len = strlen(buffer);

        while(len > 0) {
          int n = write(pipefd[1], buffer, len);
          if(n == 0) {
            DEBUG_FORKING_CHECKER(cout << "WRITE WAS 0!" << endl;)
          } else if (n == -1) {
            DEBUG_FORKING_CHECKER(cout << "WRITE FAILED!" << endl;)
            perror("[check] write");
            sleep(1);
          } else {
            DEBUG_FORKING_CHECKER(cout << "WROTE " << n << endl;)
              len = len - n;
            buffer = buffer + n;
          }
        }
      };
      child_checker->check(target, rewrite, target_block, rewrite_block,
          p, q, assume, prove, testcases, callback, optional);
      child_checker->block_until_complete();
      close(pipefd[1]);
      exit(0);
    } else {
      // parent
      close(pipefd[1]);

      // update the 'friends' vector on all the friends
      for(auto& pi : process_info_) {
        if(friend_set.count(pi.pid)) {
          pi.friends.push_back(pid);
        }
      }

      // record info on child
      ProcessInfo pi(callback, optional);
      pi.fd = pipefd[0];
      pi.pid = pid;
      pi.friends = friends;
      process_info_.push_back(pi);

      // update the friends vector for the next iteration
      friends.push_back(pid);
      friend_set.insert(pid);

      // add a pollfd struct
      int index = process_info_.size() - 1;
      pollfds_[index].fd = pipefd[0];
      pollfds_[index].events = POLLIN | POLLPRI | POLLOUT | POLLRDHUP;

      DEBUG_FORKING_CHECKER(
          cout << "[check] starting process " << process_info_.size()-1
          << " with pid " << pid << " and fd " << pipefd[0] << endl;
          cout << "[check] callback = " << &callback << " optional=" << (uint64_t)optional << endl;)
    }
  }

}

void ForkingObligationChecker::print_table() const {

  size_t num_procs = process_info_.size();
  cout << "++++++++++++ DEBUG TABLE +++++++++++++" << endl;
  cout << "    " << num_procs << " processes running." << endl;
  for(size_t i = 0; i < num_procs; ++i) {
    auto pi = process_info_[i];
    auto pollfd = pollfds_[i];
    cout << "PROCESS " << i << endl;
    cout << "   pid      " << pi.pid << endl;
    cout << "   fd       " << pi.fd << endl;
    cout << "   callback " << pi.callback << endl;
    cout << "   optional " << pi.optional << endl;
    cout << "   poll fd  " << pollfd.fd << endl;
    cout << "   friends  ";
    for(auto it : pi.friends)
      cout << it << "  ";
    cout << endl;
  }
}

void ForkingObligationChecker::poll_and_read(bool fast) {

  static char buffer[1024];


  /** perform poll() to see which processes to read. */
  size_t num_procs = process_info_.size();
  DEBUG_FORKING_CHECKER(cout << "[poll_and_read] polling on " << num_procs << endl;)
  if(num_procs == 0)
    return;

  size_t num_rdy = 0;
  DEBUG_FORKING_CHECKER(cout << "[poll_and_read] fd=" << pollfds_[0].fd << " and events= " << pollfds_[0].events << endl;)
  int timeout = fast ? 0 : -1;
  num_rdy = poll(pollfds_, num_procs, timeout);

  if(num_rdy == 0)
    return;

  vector<size_t> to_finish;

  DEBUG_FORKING_CHECKER(cout << "[poll_and_read] " << num_rdy << " processes ready." << endl;)
  /** go through the processes and read as needed. */
  for(size_t i = 0; i < process_info_.size(); ++i) {
    auto curr_pollfd = pollfds_[i]; 
    auto& pi = process_info_[i];
    auto revents = curr_pollfd.revents;
    DEBUG_FORKING_CHECKER(
      cout << "[poll_and_read] checking process " << i << endl;
      cout << "                has revents=" << revents << endl;
    )
    if(revents & POLLIN) {
      DEBUG_FORKING_CHECKER(
      cout << "[poll_and_read] process " << i 
           << " with id " << pi.pid 
           << " and fd " << curr_pollfd.fd << " is ready." << endl;)
      while(true) {
        int ret = read(pollfds_[i].fd, buffer, sizeof(buffer)-1);
        if(ret == (-1)) {
          DEBUG_FORKING_CHECKER(
          cout << "[poll_and_read]      got error (probably EAGAIN?)" << endl;
          perror("poll_and_read: read");)
          break;
        } else if (ret == 0) {
          DEBUG_FORKING_CHECKER(
          cout << "[poll_and_read]      got EOF" << endl;)
          to_finish.push_back(i);
          break;
        } else {
          DEBUG_FORKING_CHECKER(
          cout << "[poll_and_read]      read " << ret << " bytes." << endl;)
          buffer[ret] = 0;

          stringstream ss;
          ss << pi.data << buffer;
          pi.data = ss.str();
        }
      }
      break; //finished with one; don't need to do more right now.
    } else if (revents & POLLHUP) {
      DEBUG_FORKING_CHECKER(cout << "[poll_and_read] done with " << i << endl;)
      to_finish.push_back(i);
    } else if (revents & POLLERR) {
      DEBUG_FORKING_CHECKER(cout << "[poll_and_read] pollerr" << endl;)
    } else if (revents & POLLNVAL) {
      DEBUG_FORKING_CHECKER(cout << "[poll_and_read] pollnval" << endl;)
    } else if (revents & POLLPRI) {
      DEBUG_FORKING_CHECKER(cout << "[poll_and_read] pollpri" << endl;)
    } else if (revents & POLLOUT) {
      DEBUG_FORKING_CHECKER(cout << "[poll_and_read] pollout" << endl;)
    } else if (revents & POLLRDHUP) {
      DEBUG_FORKING_CHECKER(cout << "[poll_and_read] pollrdhup" << endl;)
    }
  }

  DEBUG_FORKING_CHECKER(print_table();)

  /** cleanup data structures for processes that no longer exist. */
  DEBUG_FORKING_CHECKER(cout << "[poll_and_read] removing " << to_finish.size() << " processes" << endl;)
  vector<pid_t> to_remove;
  set<pid_t> remove_set;
  for(auto i : to_finish) {
    // info on this process
    auto& pi = process_info_[i];
    auto friends = pi.friends;
    auto pid = pi.pid;

    // check that we haven't already taken care of this process
    if(remove_set.count(pid))
      continue;

    finish_process(pi);

    // add current entry to remove set
    to_remove.push_back(pid);
    remove_set.insert(pid);

    // add any friends to the remove set
    for(auto f : friends) {
      to_remove.push_back(f);
      remove_set.insert(f);
    }
  }

  /** sort and remove duplicates for data structures to remove. */
  sort(to_remove.begin(), to_remove.end(), greater<size_t>());
  to_remove.erase(unique(to_remove.begin(), to_remove.end()), to_remove.end());


  /** Remove all structures related to PIDs.  This is slow, but OK. */
  cout << "TO REMOVE: " << endl;
  for(auto pid : to_remove) {
    int index = -1;
    int fd = -1;
    for(size_t i = 0; i < process_info_.size(); ++i) {
      if(process_info_[i].pid == pid) {
        index = (int)i;
        fd = process_info_[i].fd;
        break;
      }
    } 
    for(size_t j = index; j < process_info_.size() - 1; ++j) {
      pollfds_[j] = pollfds_[j+1];
    }
    process_info_.erase(process_info_.begin() + index);
    cout << "KILLING " << pid << endl;
    kill(pid, SIGKILL);
    waitpid(pid, NULL, 0);
    close(fd);
  }

  DEBUG_FORKING_CHECKER(print_table();)
}

void ForkingObligationChecker::finish_process(ProcessInfo& pi) const{
  ObligationChecker::Result result;
  stringstream ss(pi.data);
  result.read_text(ss);
  DEBUG_FORKING_CHECKER(cout << "[finish_process] got result: " << endl;
  result.write_text(cout);
  cout << endl;
  cout << "calling callback at addr " << (uint64_t)pi.callback << endl;)
  (*pi.callback)(result, pi.optional);
  close(pi.fd);
}

void ForkingObligationChecker::block_until_complete() {
  DEBUG_FORKING_CHECKER(cout << "[block_until_complete] called" << endl;)
  while(process_info_.size() > 0) {
    poll_and_read(false);
  }
}

void ForkingObligationChecker::block_until_free() {
  DEBUG_FORKING_CHECKER(cout << "[block_until_free] called" << endl;)
  while(process_info_.size() == max_processes_) {
    poll_and_read(false);
  }
}
