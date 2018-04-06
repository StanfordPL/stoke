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
#include "signal.h"

#include "src/validator/forking_obligation_checker.h"

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

  block_until_free();

  cout << "[check] pipe!" << endl;
  int pipefd[2];
  int result = pipe2(pipefd, O_NONBLOCK);
  if(result != 0) {
    return_error(callback, "Call to pipe() failed", optional);
  }

  cout << "[check] forking!" << endl;
  pid_t pid = fork();
  if(pid == 0) {
    // child
    close(pipefd[0]);
    auto& oc = *child_checkers_[0];
    Callback callback = [&pipefd] (Result& result, void* info) {
      // send data back to parent proccess
      __gnu_cxx::stdio_filebuf<char> buf(pipefd[1], std::ios::in);

      stringstream ss;
      result.write_text(ss);
      ss << endl;
      const char* buffer = ss.str().c_str();
      cout << "BUFFER: " << buffer << endl;
      size_t len = strlen(buffer);

      while(len > 0) {
        int n = write(pipefd[1], buffer, len);
        if(n == 0) {
          cout << "WRITE WAS 0!" << endl;
        } else if (n == -1) {
          cout << "WRITE FAILED!" << endl;
        } else {
          cout << "WROTE " << n << endl;
          len = len - n;
          buffer = buffer + n;
        }
      }
    };
    oc.check(target, rewrite, target_block, rewrite_block,
             p, q, assume, prove, testcases, callback, optional);
    oc.block_until_complete();
    close(pipefd[1]);

    while(true) {
      //TODO: replace with something better
      sleep(1);
    }

    exit(0);
  } else {
    // parent
    close(pipefd[1]);
    // record info on child
    ProcessInfo pi(callback, optional);
    pi.fd = pipefd[0];
    pi.pid = pid;
    process_info_.push_back(pi);

    int index = process_info_.size() - 1;
    pollfds_[index].fd = pipefd[0];
    pollfds_[index].events = POLLIN | POLLPRI | POLLOUT | POLLRDHUP;

    cout << "[check] starting process " << process_info_.size()-1
         << " with pid " << pid << " and fd " << pipefd[0] << endl;
    cout << "[check] callback = " << &callback << " optional=" << (uint64_t)optional << endl;
  }

}

void ForkingObligationChecker::poll_and_read() {

  static char buffer[1024];


  /** perform poll() to see which processes to read. */
  size_t num_procs = process_info_.size();
  cout << "[poll_and_read] polling on " << num_procs << endl;
  size_t num_rdy = 0;
  while(num_rdy == 0) {
    cout << "[poll_and_read] fd=" << pollfds_[0].fd << " and events= " << pollfds_[0].events << endl;
    num_rdy = poll(pollfds_, num_procs, -1);
  }

  vector<size_t> to_remove;

  cout << "[poll_and_read] " << num_rdy << " processes ready." << endl;
  /** go through the processes and read as needed. */
  for(size_t i = 0; i < num_procs; ++i) {
    auto curr_pollfd = pollfds_[i]; 
    auto& pi = process_info_[i];
    auto revents = curr_pollfd.revents;
    cout << "[poll_and_read] checking process " << i << endl;
    cout << "                has revents=" << revents << endl;
    if(revents & POLLIN) {
      cout << "[poll_and_read] process " << i 
           << " with id " << pi.pid 
           << " and fd " << curr_pollfd.fd << " is ready." << endl;
      while(true) {
        int ret = read(pollfds_[i].fd, buffer, sizeof(buffer)-1);
        if(ret == (-1)) {
          cout << "[poll_and_read]      got error (probably EAGAIN?)" << endl;
          perror("poll_and_read");
          break;
        } else if (ret == 0) {
          cout << "[poll_and_read]      got EOF" << endl;
          to_remove.push_back(i);
          finish_process(pi);        
          break;
        } else {
          cout << "[poll_and_read]      read " << ret << " bytes." << endl;
          buffer[ret] = 0;

          stringstream ss;
          ss << pi.data << buffer;
          pi.data = ss.str();
        }
      }
    } else if (revents & POLLHUP) {
      cout << "[poll_and_read] done with " << i << endl;
      to_remove.push_back(i);
      finish_process(pi);
    } else if (revents & POLLERR) {
      cout << "[poll_and_read] pollerr" << endl;
    } else if (revents & POLLNVAL) {
      cout << "[poll_and_read] pollnval" << endl;
    } else if (revents & POLLPRI) {
      cout << "[poll_and_read] pollpri" << endl;
    } else if (revents & POLLOUT) {
      cout << "[poll_and_read] pollout" << endl;
    } else if (revents & POLLRDHUP) {
      cout << "[poll_and_read] pollrdhup" << endl;
    }
  }

  /** cleanup data structures for processes that no longer exist. */
  cout << "[poll_and_read] removing " << to_remove.size() << " processes" << endl;
  for(auto i : to_remove) {
    for(size_t j = i; j < process_info_.size() - 1; ++j) {
      pollfds_[j] = pollfds_[j+1];
    }
    process_info_.erase(process_info_.begin() + i);
  }
}

void ForkingObligationChecker::finish_process(ProcessInfo& pi) const{
  ObligationChecker::Result result;
  stringstream ss(pi.data);
  result.read_text(ss);
  cout << "[finish_process] got result: " << endl;
  result.write_text(cout);
  cout << endl;
  cout << "calling callback at addr " << (uint64_t)pi.callback << endl;
  (*pi.callback)(result, pi.optional);
  close(pi.fd);
  kill(pi.pid, SIGKILL);
}

void ForkingObligationChecker::block_until_complete() {
  cout << "[block_until_complete] called" << endl;
  while(process_info_.size() > 0) {
    poll_and_read();
  }
}

void ForkingObligationChecker::block_until_free() {
  cout << "[block_until_free] called" << endl;
  while(process_info_.size() == max_processes_) {
    poll_and_read();
  }
}
