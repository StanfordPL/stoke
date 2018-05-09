// Copyright 2013-2016 Stanford University
//
// Licensed under the Apache License, Version 2.0 (the "License");
// you may not use this file except in compliance with the License.
// You may obtain a copy of the License at
//
//     http://www.apache.org/licenses/LICENSE-2.0
//
// Unless required by applicable law or agreed to in writing, software
// distributed under the License is distributed on an "AS IS" BASIS,
// WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
// See the License for the specific language governing permissions and
// limitations under the License.

#include <iostream>
#include <thread>
#include <chrono>
#include <mutex>
#include <condition_variable>
#include <time.h>
#include <unistd.h>
#include <sys/types.h>
#include <sys/wait.h>
#include <sys/prctl.h>

#include "src/ext/cpputil/include/command_line/command_line.h"
#include "src/ext/cpputil/include/signal/debug_handler.h"
#include "src/ext/cpputil/include/io/filterstream.h"
#include "src/ext/cpputil/include/io/column.h"
#include "src/ext/cpputil/include/io/console.h"

#include "tools/gadgets/obligation_checker.h"
#include "tools/gadgets/seed.h"

#include "tools/common/interprocess_mutex.h"
#include "tools/common/version_info.h"

#define MAX_JOB_COUNT 256
#define MAX_WORKER_COUNT 128

using namespace cpputil;
using namespace std;
using namespace stoke;
using namespace x64asm;
using namespace pqxx;

auto& worker_opt = Heading::create("Worker options:");

auto& waitlist_arg = ValueArg<int>::create("waitlist")
                     .usage("<int>")
                     .description("Number of spots to reserve on a waitlist.")
                     .default_val(50);

auto& workers_arg = ValueArg<size_t>::create("workers")
                      .usage("<int>")
                      .description("Number of workers to spawn.")
                      .default_val(16);

auto& worker_timeout_arg = ValueArg<uint64_t>::create("worker_timeout")
                      .usage("<int>")
                      .description("Timeout in seconds")
                      .default_val(60*30); // 30 minutes

auto& io_opt = Heading::create("I/O options:");

auto& filename_arg = ValueArg<string>::create("o")
            .alternate("out")
            .usage("<path/to/file.tc>")
            .description("File to write testcases to (defaults to console if unspecified)");

int64_t my_unique_id;

struct QueueEntry {
  uint64_t id;
  char hash[64];
  char solver[8];
  char strategy[8];
  char text[1024*1024*10]; // 10 megabytes

  bool operator==(const QueueEntry& other) {
    return id == other.id;
  }

  QueueEntry() {
    hash[sizeof(hash)-1] = '\0';
    solver[sizeof(solver)-1] = '\0';
    strategy[sizeof(strategy)-1] = '\0';
    text[sizeof(text)-1] = '\0';
  }

};

template<typename T, size_t N>
class CircularQueue {
  public:
  CircularQueue(size_t n) {
    assert(n <= N);
    max_ = n;
  }

  size_t size() {
    return count_;
  }

  size_t space() {
    return max_ - count_;
  }

  bool insert(T* t) {
    if(max_ - count_ > 0) {
      // check for duplicates
      for(size_t j = 0; j < count_; ++j) {
        size_t pos = (first_ + j) % max_;
        if(items_[pos] == *t)
          return false;
      }

      size_t next = (first_ + count_) % max_;
      items_[next] = *t;
      count_++;
      return true;
    } else {
      return false;
    }
  }

  size_t insert(const vector<T*>& items) {
    size_t count = 0;
    for(auto it : items)
      if(insert(it))
        count++;
    return count;
  }

  bool fetch(T& t) {
    if(count_ > 0) {
      t = items_[first_];
      count_--;
      first_ = (first_ + 1) % max_;
      return true;
    } else {
      return false;
    }
  }

  void empty() {
    count_ = 0;
  }

  private:

  T items_[N];
  size_t first_;
  size_t count_;
  size_t max_;
};

template <typename T>
class ConditionQueue {

public:

  ConditionQueue(size_t n) : processes_(n), jobs_(n) {
  }

  bool fetch_job(T& t) {
    pid_t my_pid = getpid();

    // see if we can get a job
    while(true) {
      job_mutex_.lock();
      bool got_one = jobs_.fetch(t);

      // if not, add ourself to the list of waiting processes, release mutexes, and stop.
      if(!got_one) {
        process_mutex_.lock();
        processes_.insert(&my_pid);
        cout << my_pid << ": there are " << processes_.size() << " stopped jobs" << endl;
        process_mutex_.unlock();
        job_mutex_.unlock();
        cout << my_pid << ": raising SIGTSTP" << endl;
        raise(SIGTSTP);
        cout << my_pid << ": continuing after SIGTSTP" << endl;
      } else {
        job_mutex_.unlock();
        return true;
      }
    }
    return false;
  }

  void insert_jobs(const vector<T*>& items) {
    job_mutex_.lock();
    jobs_.insert(items);
    size_t jobs_available = jobs_.size();
    job_mutex_.unlock();

    cout << getpid() << ": there are " << jobs_available << " jobs in the job queue" << endl;
    process_mutex_.lock();
    size_t sleepers = processes_.size();
    //cout << "Found " << sleepers << " stopped jobs" << endl;
    if(sleepers > 0) {
      size_t num_to_wake = ( sleepers > jobs_available ? jobs_available : sleepers );
      cout << getpid() << ": waking up " << num_to_wake << " of them" << endl;
      for(size_t i = 0; i < num_to_wake; ++i) {
        pid_t pid = 0;
        processes_.fetch(pid);
        if(pid == 0) {
          cerr << "Oops, there should be a process id here." << endl;
          exit(1);
        }
        kill(pid, SIGCONT);
        //cout << "Sent SIGCONT to " << *pidp << endl;
      }
    }
    process_mutex_.unlock();
  }

  size_t space() {
    job_mutex_.lock();
    size_t n = jobs_.space();
    job_mutex_.unlock();
    return n;
  }

  void empty() {
    job_mutex_.lock();
    jobs_.empty();
    job_mutex_.unlock();
  }

private:
  InterprocessMutex job_mutex_; // always lock this one first!
  InterprocessMutex process_mutex_;

  CircularQueue<pid_t, MAX_WORKER_COUNT> processes_;
  CircularQueue<T, MAX_JOB_COUNT> jobs_;
};


bool update_expiry(uint64_t id, connection& c) {

  work tx(c);
  stringstream sql;
  sql << "UPDATE ProofObligationQueue SET "
      << "  expiration=NOW() + interval '10 seconds', "
      << "  locked_by=" << my_unique_id << " "
      << "WHERE " 
      << "  id=" << id << " "
      << "  AND ("
      << "    (locked_by=" << my_unique_id << ") "
      << "    OR expiration IS NULL "
      << "    OR expiration < NOW()"
      << ")";

  result r = tx.exec(sql.str().c_str());
  tx.commit();

  if(r.affected_rows())  {
    cout << getpid() << ": Updated expiry for id=" << id << endl;
    return true;
  } else {
    cout << getpid() << ": Looks like someone else holds lock for " << id << "!" << endl;
    return false;
  }
}

void expiry_helper(uint64_t id, bool* finish_up, mutex& mu, condition_variable& cond) {

  while(true) {
    // wait for up to 5 seconds on condition variable
    unique_lock<mutex> lock(mu);
    cond.wait_for(lock, chrono::seconds(5));

    // figure out if we need to finish
    bool finished = *finish_up;
    lock.unlock();

    // finish up, if needed
    if(finished) {
      return;
    }

    // update expiry info
    connection c(postgres_arg.value());
    update_expiry(id, c);
    c.disconnect();
  }
}



/** Pick one or more jobs from the database whose expiration is NULL or passed.
  Fetch problem text while we're at it.
  Will return immediately if none are available */
size_t select_job(connection& c, vector<QueueEntry*>& output, size_t max = 1) {
  bool found_one = false;
  size_t count = 0;
  uint64_t id;
  work tx_pick(c);
  stringstream sql;
  sql << "WITH tmp AS ("
      << "  SELECT id FROM ProofObligationQueue "
      << "  WHERE ("
      << "    expiration IS NULL "                                       
      << "    OR expiration < NOW()) " 
      << "  ORDER BY hash "
      << "  LIMIT " << max << ") "
      << "UPDATE ProofObligationQueue SET "
      << "  expiration = NOW() + interval '10 seconds', "
      << "  locked_by = " << my_unique_id << " "
      << "FROM tmp "
      << "WHERE tmp.id = ProofObligationQueue.id "
      << "RETURNING *, "
      << "  (SELECT problem FROM ProofObligation "
      << "   WHERE ProofObligation.hash = ProofObligationQueue.hash) as problem";
  result r = tx_pick.exec(sql.str().c_str());
  tx_pick.commit();
  found_one = r.size() > 0;
  if(found_one) {

    for(auto row : r) {
      id = row["id"].as<uint64_t>();
      cout << getpid() << ": picked id=" << id << endl;

      QueueEntry* qe = new QueueEntry();
      qe->id = id;
      strncpy(qe->hash, row["hash"].c_str(), sizeof(qe->hash)-1);
      strncpy(qe->solver, row["solver"].c_str(), sizeof(qe->solver)-1);
      strncpy(qe->strategy, row["strategy"].c_str(), sizeof(qe->strategy)-1);
      strncpy(qe->text, row["problem"].c_str(), sizeof(qe->text)-1);

      count++;
      output.push_back(qe);
    }
  }
  return count;
}

void report_timeout(connection& c, QueueEntry& qe, uint64_t time_taken_ms) {

  work tx(c);
  std::stringstream sql_add_result;

  sql_add_result
      << "INSERT INTO ProofObligationResult "
      << "  (hash, solver, strategy, verified, gen_time, smt_time, version, error) "
      << "VALUES "
      << "  ('" << tx.esc(qe.hash) << "', "
      << "  '" << tx.esc(qe.solver) << "', "
      << "  '" << tx.esc(qe.strategy) << "', "
      << "  FALSE, "
      << "  " << 0 << ", "
      << "  " << time_taken_ms*1000 << ", "
      << "  '" << tx.esc(version_info) << "',"
      << "  'TIMEOUT')";
  tx.exec(sql_add_result.str().c_str());

  // Next, remove from the queue
  stringstream sql_remove;
  sql_remove << "DELETE FROM ProofObligationQueue WHERE id=" << qe.id;
  tx.exec(sql_remove.str().c_str());
  tx.commit();

}

void report_result(connection& c, QueueEntry& qe, ObligationChecker::Result& result) {

  work tx(c);
  std::stringstream sql_add_result;

  // First, add an entry recording what we got
  if(result.verified == true) {
    sql_add_result 
      << "INSERT INTO ProofObligationResult "
      << "  (hash, solver, strategy, verified, gen_time, smt_time, version) "
      << "VALUES "
      << "  ('" << tx.esc(qe.hash) << "', "
      << "  '" << tx.esc(qe.solver) << "', "
      << "  '" << tx.esc(qe.strategy) << "', "
      << "  TRUE, "
      << "  " << result.gen_time_microseconds << ", "
      << "  " << result.smt_time_microseconds << ", "
      << "  '" << tx.esc(result.source_version) << "')";
  } else if (result.has_ceg) {
    sql_add_result 
      << "INSERT INTO ProofObligationResult "
      << "  (hash, solver, strategy, verified, gen_time, smt_time, version) "
      << "VALUES "
      << "  ('" << tx.esc(qe.hash) << "', "
      << "  '" << tx.esc(qe.solver) << "', "
      << "  '" << tx.esc(qe.strategy) << "', "
      << "  FALSE, "
      << "  " << result.gen_time_microseconds << ", "
      << "  " << result.smt_time_microseconds << ", "
      << "  '" << tx.esc(result.source_version) << "')";
  } else if (result.has_error) {
    sql_add_result 
      << "INSERT INTO ProofObligationResult "
      << "  (hash, solver, strategy, verified, error, gen_time, smt_time, version) "
      << "VALUES "
      << "  ('" << tx.esc(qe.hash) << "', "
      << "  '" << tx.esc(qe.solver) << "', "
      << "  '" << tx.esc(qe.strategy) << "', "
      << "  FALSE, "
      << "  '" << tx.esc(result.error_message) << "', "
      << "  " << result.gen_time_microseconds << ", "
      << "  " << result.smt_time_microseconds << ", "
      << "  '" << tx.esc(result.source_version) << "')";
  }
  tx.exec(sql_add_result.str().c_str());

  // Next, remove from the queue
  stringstream sql_remove;
  sql_remove << "DELETE FROM ProofObligationQueue WHERE id=" << qe.id;
  tx.exec(sql_remove.str().c_str());
  tx.commit();

}

pid_t spawn_worker(ConditionQueue<QueueEntry>& queue) {

  // fork a process here, *before* doing anything with threads or the db (lololol)
  pid_t pid = fork();
  if(!pid) {
    // get the job to work on
    pid_t pid = getpid();
    cout << pid << ": [worker] getting item from queue" << endl;

    QueueEntry* qe = new QueueEntry();
    queue.fetch_job(*qe);
    cout << pid << ": [worker] fetched job " << qe->id << endl;

    connection c(postgres_arg.value());
    bool ok = update_expiry(qe->id, c);
    cout << pid << ": [worker] updated expiry!" << endl;
    c.disconnect();
    if(!ok) {
      cout << pid << ": [worker] looks like job " << qe->id << " got locked... aborting!" << endl;
      exit(0);
    }

    uint64_t start_time = time(0);
    pid_t child = fork();
    if(!child) {
      cout << getpid() << ": forked from " << pid << "!" << endl;
      cout << getpid() << ": starting at " << start_time << endl;
        
      // Setup thread to update expiry as we go. */
      bool done = false;
      mutex cond_mu;
      condition_variable cond;
      thread expiry_thread(expiry_helper, qe->id, &done, ref(cond_mu), ref(cond));
      cout << getpid() << ": expiry launched" << endl;

      // Parse the problem 
      stringstream ss(qe->text);
      ObligationChecker::Obligation oblig;
      oblig.read_text(ss);

      // Setup the solver
      cout << pid << ": making solver" << endl;
      SMTSolver* solver; 
      if(strcmp(qe->solver, "z3") == 0) 
        solver = static_cast<SMTSolver*>(new Z3Solver());
      else
        solver = static_cast<SMTSolver*>(new Cvc4Solver());
      
      // Setup the obligation checker
      cout << pid << ": making handler" << endl;
      auto handler = new ComboHandler();
      auto filter = new BoundAwayFilter(*handler, (uint64_t)0x100, (uint64_t)(-0x100));
      SmtObligationChecker oc(*solver, *filter);
      if(strcmp(qe->strategy, "flat") == 0)
        oc.set_alias_strategy(ObligationChecker::AliasStrategy::FLAT);
      else
        oc.set_alias_strategy(ObligationChecker::AliasStrategy::ARM);

      // Prepare the callback
      ObligationChecker::Callback callback = [&] (ObligationChecker::Result& result, void* optional) {
        // tell expiry thread it can stop 
        unique_lock<mutex> lock(cond_mu);
        done = true;
        lock.unlock();
        cond.notify_one();

        // Report result to DB
        cout << getpid() << ": got answer!" << endl;
        result.write_text(cout) << endl;
        connection c2(postgres_arg.value());
        report_result(c2, *qe, result);
        c2.disconnect();
        cout << getpid() << ": reported result!" << endl;

        // Clean up
        expiry_thread.join();
        exit(0);
      };

      // set timeout
      cout << getpid() << "Calling alarm() with " << worker_timeout_arg.value() << endl;
      alarm(worker_timeout_arg.value()+1);
      static_cast<ObligationChecker*>(&oc)->check(oblig, callback, NULL);
      oc.block_until_complete();
      delete qe;
      exit(0);
    } else {
      int status;
      pid_t result;
      // wait until it's complete
      do {
        result = waitpid(child, &status, 0);
        if(result == 0) {
          cerr << getpid() << ": waitpid() returned 0" << endl;
        } else if (result < 0) {
          perror("waitpid encountered error");
        } else {
          cout << getpid() << ": waitpid returned " << result << endl;
        }
      } while(result <= 0 || (!WIFEXITED(status) && !WIFSIGNALED(status)));

      // check for timeout
      cout << getpid() << ": checking for timeout on child " << child << endl;
      cout << getpid() << ": WIFSIGNALED = " << WIFSIGNALED(status) << endl;
      cout << getpid() << ": WIFEXITED = " << WIFEXITED(status) << endl;
      cout << getpid() << ": WIFCONTINUED = " << WIFCONTINUED(status) << endl;
      cout << getpid() << ": WIFSTOPPED = " << WIFSTOPPED(status) << endl;
      uint64_t current_time = time(0);
      uint64_t diff = current_time - start_time;
      cout << getpid() << ": start_time = " << start_time << endl;
      cout << getpid() << ": current_time = " << current_time << endl;
      cout << getpid() << ": DIFF = " << diff << endl;

      if(WIFSIGNALED(status) && diff > worker_timeout_arg.value()) {
        cout << getpid() << ": Detected timeout!" << endl;
        connection c3(postgres_arg.value());
        report_timeout(c3, *qe, diff);
        c3.disconnect();
        delete qe;
      }
      exit(0);
    }
    exit(0);
  } 
  return pid;
}

ConditionQueue<QueueEntry>* make_queue(size_t n) {

  ConditionQueue<QueueEntry>* tmp = new ConditionQueue<QueueEntry>(n);
  size_t size = sizeof(*tmp);
  cout << "Allocing " << size << " bytes for queue" << endl;
  delete tmp;

  void* buffer = mmap(NULL, size, PROT_READ | PROT_WRITE, MAP_SHARED | MAP_ANONYMOUS, -1, 0);
  cout << "mmap'd buffer is at " << (uint64_t) buffer << endl;
  return new (buffer) ConditionQueue<QueueEntry>(n);
  return new ConditionQueue<QueueEntry>(n);
}

pid_t spawn_producer(ConditionQueue<QueueEntry>& queue) {

  pid_t pid = fork();
  if(!pid) {
    vector<QueueEntry*> entries;
    entries.reserve(queue.space());
    connection c(postgres_arg.value());

    size_t count = 0;
    while(true) {
      cout << getpid() << ": checking if there's space in the queue..." << endl;
      size_t space = queue.space();
      if(!space) {
        cout << getpid() << ": no space... waiting!" << endl;
        sleep(1); // todo: use condition variable
        continue;
      }

      cout << getpid() << ": we have " << space << " much space.. querying."  << endl;
      size_t n = select_job(c, entries, space);
      if(n > 0) {
        cout << getpid() << ": adding " << n << " jobs to queue." << endl;
        queue.insert_jobs(entries);
        for(auto it : entries)
          delete it;
        entries.clear();
      } else {
        cout << getpid() << ": no jobs in database ready." << endl;
      }
      sleep(1);
    }
  }

  return pid;
}

void make_workers(ConditionQueue<QueueEntry>& queue) {

  /** spawn initial workers */
  for(size_t i = 0; i < workers_arg.value(); ++i) {
    spawn_worker(queue);
  }

  /** make new workers as the old ones end */
  while(true) {
    int status;

    pid_t p = -1;
    while(p < 0) {
      p = waitpid(-1, &status, 0);
      if(p < 0) {
        perror("waitpid");
        exit(1);
        sleep(1);
      }
    }

    cout << "[main] pid: " << p << endl;
    cout << "[main] if_exited: " << WIFEXITED(status) << endl;
    cout << "[main] if_signaled: " << WIFSIGNALED(status) << endl;
    cout << "[main] if_stopped: " << WIFSTOPPED(status) << endl;
    cout << "[main] if_continued: " << WIFCONTINUED(status) << endl;

    if(WIFEXITED(status) || WIFSIGNALED(status)) {
      cout << "[main] Spawning a new worker!" << endl;
      pid_t pid = spawn_worker(queue);
      cout << "[main] new worker has pid " << pid << endl;
    }
  }
}


int main(int argc, char** argv) {

  /** Parse command line arguments. */
  CommandLineConfig::strict_with_convenience(argc, argv);
  prctl(PR_SET_PDEATHSIG, SIGHUP);

  /** Get a unique ID for locking */
  SeedGadget seed;
  default_random_engine gen;
  gen.seed((default_random_engine::result_type)seed);
  uniform_int_distribution<int64_t> distribution;
  my_unique_id = -1;
  while(my_unique_id < 0)
    my_unique_id = distribution(gen);

  /** Create a queue in shared memory */
  auto queue = make_queue(waitlist_arg.value());

  /** Populate the queue */
  spawn_producer(*queue);

  /** Make workers to do everything */
  cout << "[main] Main process pid: " << getpid() << endl;
  make_workers(*queue); 


  return 0;
}

