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
#include "tools/io/tunit.h"

#include "tools/common/interprocess_mutex.h"
#include "tools/common/version_info.h"

#include "src/serialize/serialize.h"
#include "src/state/cpu_states.h"
#include "src/stategen/stategen.h"
#include "src/validator/line_info.h"
#include "src/validator/path_unroller.h"

#define MAX_JOB_COUNT 256
#define MAX_WORKER_COUNT 128

//#define STOKE_Z3_DEBUG_LAST_HASH YESPLEASE

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
                      .default_val(60*60/2); // 0.5 hours

auto& debug_hash_arg = ValueArg<string>::create("debug_hash")
                      .usage("<string>")
                      .description("Debug a specific problem in the database.")
                      .default_val("");

auto& debug_rewrite_arg = FileArg<TUnit, TUnitReader, TUnitWriter>::create("debug_rewrite")
                      .usage("<path/to/file.s>")
                      .description("Alternate rewrite");

auto& debug_target_arg = FileArg<TUnit, TUnitReader, TUnitWriter>::create("debug_target")
                      .usage("<path/to/file.s>")
                      .description("Alternate target");


auto& force_separate_stack = FlagArg::create("separate_stack")
                            .description("force the stack to be modeled separately");

auto& verbose_arg = FlagArg::create("verbose")
                      .description("Output more details.");

auto& io_opt = Heading::create("I/O options:");

auto& filename_arg = ValueArg<string>::create("o")
            .alternate("out")
            .usage("<path/to/file.tc>")
            .description("File to write testcases to (defaults to console if unspecified)");

int64_t my_unique_id;

struct ObligationQueueEntry {
  uint64_t id;
  uint64_t timeout; // in seconds
  char hash[64];
  char solver[8];
  char strategy[8];
  char text[1024*1024*10]; // 10 megabytes

  bool operator==(const ObligationQueueEntry& other) {
    return id == other.id;
  }

  static string queue_tablename() {
    return "ProofObligationQueue";
  }

  typedef ObligationChecker::Result Result;
  typedef ObligationChecker::Callback Callback;

  ObligationQueueEntry() {
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

  ConditionQueue(size_t n, string name) : processes_(n), jobs_(n) {
    strncpy(name_, name.c_str(), 32);
  }

  const char* get_name() {
    return name_;
  }

  void add_to_notify_list() {
    pid_t my_pid = getpid();
    process_mutex_.lock();
    processes_.insert(&my_pid);
    cout << my_pid << ": there are " << processes_.size() << " stopped jobs" << endl;
    process_mutex_.unlock();
  }

  bool fetch_job_nonblock(T& t) {
    job_mutex_.lock();
    bool gotone = jobs_.fetch(t);
    job_mutex_.unlock();
    return gotone;
  }

  bool fetch_job(T& t) {

    while(true) {
      // see if we can get a job
      bool got_one = fetch_job_nonblock(t);

      // if not, add ourself to the list of waiting processes, release mutexes, and stop.
      if(!got_one) {
        add_to_notify_list();
        raise(SIGTSTP);
      } else {
        job_mutex_.unlock();
        return true;
      }
    }
    return false;
  }

  void notify(size_t jobs_available = (size_t)(-1)) {
    if(jobs_available == (size_t)(-1)) {
      job_mutex_.lock();
      jobs_available = jobs_.size();
      job_mutex_.unlock();
    }

    process_mutex_.lock();
    size_t sleepers = processes_.size();
    cout << "Found " << sleepers << " stopped jobs" << endl;
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

  void insert_jobs(const vector<T*>& items) {
    job_mutex_.lock();
    jobs_.insert(items);
    size_t jobs_available = jobs_.size();
    job_mutex_.unlock();

    cout << getpid() << ": there are " << jobs_available << " jobs in the job queue" << endl;
    notify(jobs_available);
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

  char name_[32];
};


bool update_expiry(uint64_t id, connection& c, string tablename) {
  nontransaction tx(c);
  stringstream sql;
  sql << "UPDATE " << tx.esc(tablename) << " SET "
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
    //cout << getpid() << ": Updated expiry for id=" << id << endl;
    return true;
  } else {
    cout << getpid() << ": Looks like someone else holds lock for " << id << "!" << endl;
    return false;
  }
}

void expiry_helper(uint64_t id, bool* finish_up, mutex& mu, condition_variable& cond, string tablename) {

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
    bool updated = update_expiry(id, c, tablename);
    if(!updated) {
      exit(0);
    }
    c.disconnect();
  }
}


string generate_random_hash(default_random_engine& gen) {
  string hash(32, 0);
  char hex[] = { '0', '1', '2', '3', '4', '5', '6', '7', '8', '9', 'a', 'b', 'c', 'd', 'e', 'f' };
  std::uniform_int_distribution<> dist(0, 15);
  for(size_t i = 0; i < hash.length(); ++i) {
    hash[i] = hex[dist(gen)];
  }

  return hash;
}

/** Pick one or more jobs from the database whose expiration is NULL or passed.
  Fetch problem text while we're at it.
  Will return immediately if none are available */
size_t select_job(connection& c, vector<ObligationQueueEntry*>& output, size_t max) {
  cout << "Entry" << endl;
  bool found_one = false;
  size_t count = 0;
  uint64_t id;

  nontransaction count_tx(c);
  auto r = count_tx.exec("select count(*) from proofobligationqueue");
  count_tx.commit();
  double total_rows = r[0][0].as<double>();
  if(total_rows == 0) 
    return 0;

  double ratio = 1.1*100*(double)max/(double)total_rows;
  if(ratio > 100)
    ratio = 100;
  if(ratio < 0.001)
    ratio = 0.001;

  work tx_pick(c);

  stringstream sql;
  sql << "WITH tmp AS ("
      << "  SELECT id FROM ProofObligationQueue TABLESAMPLE BERNOULLI(" 
      <<      std::fixed << std::setprecision(5) << ratio << ")"
      << "  WHERE ("
      << "    expiration IS NULL "                                       
      << "    OR expiration < NOW()) " 
      << "  LIMIT " << max 
      << ") "
      << "UPDATE ProofObligationQueue SET "
      << "  expiration = NOW() + interval '10 seconds', "
      << "  locked_by = " << my_unique_id << " "
      << "FROM tmp "
      << "WHERE tmp.id = ProofObligationQueue.id "
      << "RETURNING *, "
      << "  (SELECT problem FROM ProofObligation "
      << "   WHERE ProofObligation.hash = ProofObligationQueue.hash) as problem";

  string sql_str = sql.str();
  try {
    tx_pick.exec("SET LOCAL statement_timeout TO 5000"); // sometimes queries are getting stuck, and that's bad
    cout << "Executing... " << sql_str << endl;
    result r = tx_pick.exec(sql_str.c_str());
    tx_pick.commit();
    cout << "  Got " << r.size() << " results" << endl;
    found_one = r.size() > 0;
    if(found_one) {

      for(auto row : r) {
        id = row["id"].as<uint64_t>();
        //uint64_t timeout = row["timeout"].as<uint64_t>();
        cout << getpid() << ": picked id=" << id << endl;

        //if(timeout == 0) {
        //  timeout = worker_timeout_arg.value();
        //}

        ObligationQueueEntry* qe = new ObligationQueueEntry();
        qe->id = id;
        //qe->timeout = timeout;
        strncpy(qe->hash, row["hash"].c_str(), sizeof(qe->hash)-1);
        strncpy(qe->solver, row["solver"].c_str(), sizeof(qe->solver)-1);
        strncpy(qe->strategy, row["strategy"].c_str(), sizeof(qe->strategy)-1);
        strncpy(qe->text, row["problem"].c_str(), sizeof(qe->text)-1);

        count++;
        output.push_back(qe);
      }
    }

  } catch (pqxx::sql_error e) {
    cout << __FILE__ << ":" << __LINE__ << ": Caught " << e.what() << endl;
    return 0;
  } catch (exception e) {
    cout << __FILE__ << ":" << __LINE__ << ": Caught " << e.what() << endl;
    return 0;
  }
  cout << "... made it to the end of the function!" << endl;

  return count;
}



void report_timeout(connection& c, ObligationQueueEntry& qe, uint64_t time_taken_s, string error = "TIMEOUT") {

  nontransaction tx(c);
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
      << "  " << time_taken_s*1000*1000 << ", "
      << "  '" << tx.esc(version_info) << "', "
      << "  '" << error << "')";
  tx.exec(sql_add_result.str().c_str());

  // Next, remove from the queue
  stringstream sql_remove;
  sql_remove << "DELETE FROM ProofObligationQueue WHERE id=" << qe.id;
  tx.exec(sql_remove.str().c_str());
  tx.commit();

}

void report_result(connection& c, ObligationQueueEntry& qe, ObligationChecker::Result& result) {

  nontransaction tx(c);
  std::stringstream sql_add_result;

  // First, add an entry recording what we got
  sql_add_result
    << "INSERT INTO ProofObligationResult "
    << "  (hash, solver, strategy, gen_time, smt_time, version, verified, comments"
    << ( result.has_error ? ", error" : "")
    << ( result.has_ceg ? ", ceg_target, ceg_rewrite, ceg_target_final, ceg_rewrite_final" : "")
    << ") "
    << "VALUES ("
    << "  '" << tx.esc(qe.hash) << "', "
    << "  '" << tx.esc(qe.solver) << "', "
    << "  '" << tx.esc(qe.strategy) << "', "
    << "  " << result.gen_time_microseconds << ", "
    << "  " << result.smt_time_microseconds << ", "
    << "  '" << tx.esc(result.source_version) << "', "
    << "  " << (result.verified ? "TRUE" : "FALSE" ) << ", "
    << "  '" << tx.esc(result.comments) << "'";

  if(result.has_error) {
    sql_add_result << ", '" << tx.esc(result.error_message) << "'";
  }

  if(result.has_ceg) {
    stringstream ss_ceg_target;
    stringstream ss_ceg_rewrite;
    stringstream ss_ceg_target_final;
    stringstream ss_ceg_rewrite_final;

    result.target_ceg.write_text(ss_ceg_target);
    result.rewrite_ceg.write_text(ss_ceg_rewrite);
    result.target_final_ceg.write_text(ss_ceg_target_final);
    result.rewrite_final_ceg.write_text(ss_ceg_rewrite_final);

    sql_add_result << ",  '" << tx.esc(ss_ceg_target.str()) << "'"
                   << ",  '" << tx.esc(ss_ceg_rewrite.str()) << "'"
                   << ",  '" << tx.esc(ss_ceg_target_final.str()) << "'"
                   << ",  '" << tx.esc(ss_ceg_rewrite_final.str()) << "'";
  }
  sql_add_result << ")";
  
  cout << "SQL: " << sql_add_result.str() << endl;
  tx.exec(sql_add_result.str().c_str());

  // Next, remove from the queue
  stringstream sql_remove;
  sql_remove << "DELETE FROM ProofObligationQueue WHERE id=" << qe.id;
  tx.exec(sql_remove.str().c_str());
  tx.commit();

}

void discharge_problem(const ObligationQueueEntry& qe, ObligationChecker::Callback& callback, bool debug_problem = false) {

  if(verbose_arg.value()) {
    cout << "Problem text is: " << endl << qe.text << endl << endl;
  }

  // Parse the problem 
  stringstream ss(qe.text);
  ObligationChecker::Obligation oblig;
  oblig.read_text(ss);
  if(ss.bad() || ss.fail()) {
    cout << __FILE__ << ":" << __LINE__ 
         << ": stringstream in bad state when parsing problem with hash "
         << qe.hash << endl;
    exit(1);
  }
  
  cout << "Testcases in obligation: " << oblig.testcases.size() << endl;


  if(debug_target_arg.has_been_provided()) {
    auto target = debug_target_arg.value();
    oblig.target = Cfg(target, oblig.target.def_ins(), oblig.target.live_outs());
  }

  if(debug_rewrite_arg.has_been_provided()) {
    auto rewrite = debug_rewrite_arg.value();
    oblig.rewrite = Cfg(rewrite, oblig.rewrite.def_ins(), oblig.rewrite.live_outs());
  }

  // Print out the problem
  if(debug_problem) {
    cout << "Target" << endl; 
    cout << oblig.target.get_function() << endl << endl;

    cout << "Rewrite" << endl; 
    cout << oblig.rewrite.get_function() << endl << endl;

    cout << "Paths from (" << oblig.target_block << ", " << oblig.rewrite_block << ")" << endl; 
    cout << oblig.P << endl;
    cout << oblig.Q << endl << endl;

    cout << "Assume " << *oblig.assume << endl << endl;
    cout << "Prove " << *oblig.prove << endl << endl;
  }

  // Setup the solver
  SMTSolver* solver; 
  if(strcmp(qe.solver, "cvc4") == 0) 
    solver = static_cast<SMTSolver*>(new Cvc4Solver());
  else
    solver = static_cast<SMTSolver*>(new Z3Solver());
  
  // Setup the obligation checker
  auto handler = new ComboHandler();
  auto filter = new BoundAwayFilter(*handler, (uint64_t)0x100, (uint64_t)(-0x100));
  SmtObligationChecker oc(*solver, *filter);
  if(force_separate_stack.value())
    oc.set_separate_stack(true);

  if(strcmp(qe.strategy, "arm") == 0)
    oc.set_alias_strategy(ObligationChecker::AliasStrategy::ARM);
  else
    oc.set_alias_strategy(ObligationChecker::AliasStrategy::FLAT);

  // Run the checker
  static_cast<ObligationChecker*>(&oc)->check(oblig, callback, solver);
  oc.block_until_complete();
}

void fetch_testcases_db(const char* testcase_hash) {
  connection c(postgres_arg.value());
  nontransaction tx(c);

  stringstream sql;
  sql << "SELECT * FROM TestcaseSet WHERE hash='" << tx.esc(testcase_hash) << "'";
  auto r = tx.exec(sql.str());
  tx.commit();

  if(r.size() == 0) {
    cerr << "Testcase set not found" << endl;
    return;
  }

  auto row = r[0];
  stringstream ss;
  ss << row["testcases"].as<const char*>();

  stringstream filess;
  filess << "/tmp/testcases/" << testcase_hash;
  ofstream ofs(filess.str());
  ofs << ss.str();
  ofs.close();
}

CpuStates fetch_testcases(const char* testcase_hash) {
  // first, make sure we have a testcases directory
  struct stat status;
  int bad = stat("/tmp/testcases", &status);
  if(bad) {
    bad = mkdir("/tmp/testcases", 0755);
    if(bad) {
      cerr << "Could not make directory for testcases!  That's bad!!" << endl;
      exit(1);
    }
  }

  // check if a file is lying around
  stringstream filename_ss;
  filename_ss << "/tmp/testcases/" << testcase_hash;
  string filename = filename_ss.str();

  bad = stat(filename.c_str(), &status);
  int sleep_time = 1;
  while(bad || !S_ISREG(status.st_mode)) {
    fetch_testcases_db(testcase_hash);
    bad = stat(filename.c_str(), &status);
    if(bad || !S_ISREG(status.st_mode)) {
      sleep(sleep_time); // apparently the testcases haven't been uploaded
      if(sleep_time < 1024)
        sleep_time*=2;
    }
  }

  ifstream ifs(filename.c_str());
  auto tcs = deserialize<vector<CpuState>>(ifs);
  return tcs;
}



template <typename T>
pid_t spawn_worker(T* item) {

  // fork a process here, *before* doing anything with threads or the db (lololol)
  pid_t pid = fork();
  if(!pid) {
    // get the job to work on
    pid_t pid = getpid();

    T* qe = new T(); //*must* allocate on heap
    *qe = *item;
    cout << pid << ": [worker] got job " << qe->id << endl;

    connection c(postgres_arg.value());
    bool ok = update_expiry(qe->id, c, T::queue_tablename());
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
      thread expiry_thread(expiry_helper, qe->id, &done, ref(cond_mu), ref(cond), T::queue_tablename());
      cout << getpid() << ": expiry launched" << endl;

      // Prepare the callback
      typename T::Callback callback = [&] (typename T::Result& result, void* optional) -> bool {
        // tell expiry thread it can stop 
        unique_lock<mutex> lock(cond_mu);
        done = true;
        lock.unlock();
        cond.notify_one();

        /*
#ifdef STOKE_Z3_DEBUG_LAST_HASH
        // Report last hash
        cout << "Checking last hash" << endl;
        if(optional != nullptr) {
          cout << "  Optional not null" << endl;
          ObligationQueueEntry* oqe = static_cast<ObligationQueueEntry*>((void*)qe);
          if(strcmp(oqe->solver, "z3") == 0 && strcmp(oqe->strategy, "flat") == 0) {
            Z3Solver* z3 = static_cast<Z3Solver*>(optional);
            string last_hash = z3->get_last_hash();
            stringstream comments;
            comments << "z3hash: " << last_hash << endl;
            comments << z3->get_last_text() << endl;
            result.comments = comments.str();
            cout << "  " << result.comments << endl;
          }
        }
#endif */

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
        return false;
      };

      // set timeout
      cout << getpid() << "Calling alarm() with " << worker_timeout_arg.value() << endl;
      alarm(worker_timeout_arg.value()+1);

      // Solve the problem
      discharge_problem(*qe, callback);
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
      } else if (WIFSIGNALED(status)) {
        stringstream ss;
        ss << "SIGNAL-" << WTERMSIG(status);
        cout << getpid() << ": Detected crash!  " << ss.str() << endl;
        connection c3(postgres_arg.value());
        report_timeout(c3, *qe, diff, ss.str());
        c3.disconnect();
      }

      // check for OOM
      // TODO: figure out total memory used by process, and see if it's close to / over the limit

      exit(0);
    }
    exit(0);
  } 
  return pid;
}

template <typename T>
ConditionQueue<T>* make_queue(size_t n, string name) {

  ConditionQueue<T>* tmp = new ConditionQueue<T>(n, name);
  size_t size = sizeof(*tmp);
  cout << "Allocing " << size << " bytes for queue" << endl;
  delete tmp;

  void* buffer = mmap(NULL, size, PROT_READ | PROT_WRITE, MAP_SHARED | MAP_ANONYMOUS, -1, 0);
  cout << "mmap'd buffer is at " << (uint64_t) buffer << endl;
  return new (buffer) ConditionQueue<T>(n, name);
}

template <typename T>
pid_t spawn_producer(ConditionQueue<T>& queue) {

  int sleep_time = 1;
  pid_t pid = fork();
  if(!pid) {
    vector<T*> entries;
    entries.reserve(queue.space());
    connection c(postgres_arg.value());

    size_t count = 0;
    while(true) {
      //cout << getpid() << ": checking if there's space in the queue..." << endl;
      size_t space = queue.space();
      if(!space) {
        //cout << getpid() << ": no space... waiting!" << endl;
        // make sure that nobody is waiting on the queue by mistake
        queue.notify();
        sleep(1); // todo: use condition variable
        continue;
      }

      cout << getpid() << ": " << queue.get_name() << ": we have " << space << " much space.. querying."  << endl;
      size_t n = select_job(c, entries, space);
      if(n > 0) {
        sleep_time = 1;
        cout << getpid() << ": adding " << n << " jobs to queue." << endl;
        queue.insert_jobs(entries);
        for(auto it : entries)
          delete it;
        entries.clear();
      } else {
        cout << getpid() << ": no jobs in database ready." << endl;
      }
      sleep(sleep_time);
      if(sleep_time < 128)
        sleep_time *= 2;
    }
  }

  return pid;
}

void make_workers(ConditionQueue<ObligationQueueEntry>& obligation_queue) {

  /** make new workers as the old ones end */
  size_t running_workers = 0;

  ObligationQueueEntry* temp_oe = new ObligationQueueEntry();

  while(true) {
    int status;

    // if we're totally busy, wait for someone to finish
    while(running_workers >= workers_arg.value()) {
      pid_t p = -1;
      while(p < 0) {
        p = waitpid(-1, &status, 0);
        if(p < 0) {
          perror("waitpid");
          exit(1);
        }
      }

      if(WIFEXITED(status) || WIFSIGNALED(status))
        running_workers--;

      cout << "[make_workers] pid: " << p << endl;
      cout << "[make_workers] if_exited: " << WIFEXITED(status) << endl;
      cout << "[make_workers] if_signaled: " << WIFSIGNALED(status) << endl;
      cout << "[make_workers] if_stopped: " << WIFSTOPPED(status) << endl;
      cout << "[make_workers] if_continued: " << WIFCONTINUED(status) << endl;

    }


    // wait for one queue or the other to have some work
    // prefer the proofobligationqueue

    // if (proofobligationqueue has work) {
    //  pull job from that queue
    // } else if (classqueue has work) {
    //  pull job
    // }
    // wait for one or the other to have work

    while(true) {

      bool got_oe = obligation_queue.fetch_job_nonblock(*temp_oe);
      if(got_oe) {
        cout << "[make_workers] Spawning a new obligation queue worker!" << endl;
        pid_t pid = spawn_worker(temp_oe);
        cout << "[make_workers] new worker has pid " << pid << endl;
        running_workers++;
        break;
      }

      obligation_queue.add_to_notify_list();
      raise(SIGSTOP);
    }
  }
}

void main_loop() {

  /** Get a unique ID for locking */
  SeedGadget seed;
  default_random_engine gen;
  gen.seed((default_random_engine::result_type)seed);
  uniform_int_distribution<int64_t> distribution;
  my_unique_id = -1;
  while(my_unique_id < 0)
    my_unique_id = distribution(gen);

  /** Create queues in shared memory */
  auto obligation_queue = make_queue<ObligationQueueEntry>(waitlist_arg.value(), "po");

  /** Populate the queues */
  spawn_producer(*obligation_queue);

  /** Make workers to do everything */
  cout << "[main_loop] Main process pid: " << getpid() << endl;
  if(!fork()) {
    make_workers(*obligation_queue); 
  } else {
    while(true) {
      wait(NULL);
    }
  }
}

bool debug_hash_obligation(string hash) {

  connection c(postgres_arg.value());
  work tx(c);

  stringstream sql;
  sql << "SELECT hash, problem FROM ProofObligation WHERE hash='" << tx.esc(hash) << "'";

  result r = tx.exec(sql.str().c_str());
  tx.commit();
  c.disconnect();

  /** Check that a result exists */
  bool found_one = r.size() > 0;
  if(!found_one) {
    cout << "Problem with hash " << hash << " not found." << endl;
    return false;
  }

  /** Fetch data from that result. */
  ObligationQueueEntry* qe = new ObligationQueueEntry();
  for(auto row : r) {
    qe->id = 0;
    strncpy(qe->hash, row["hash"].c_str(), sizeof(qe->hash)-1);
    strncpy(qe->text, row["problem"].c_str(), sizeof(qe->text)-1);
  }

  /** Do some parsing */
  if(solver_arg.has_been_provided() && solver_arg.value() == Solver::CVC4) {
    strcpy(qe->solver, "cvc4");
  } else if(solver_arg.has_been_provided()) {
    strcpy(qe->solver, "z3");
  }

  if(alias_strategy_arg.has_been_provided()) {
    strcpy(qe->strategy, alias_strategy_arg.value().c_str());
  }

  cout << "Debugging problem with hash " << qe->hash
       << " using solver " << qe->solver << " and strategy " << qe->strategy << endl;

  ObligationChecker::Callback callback = [&] (ObligationChecker::Result& result, void* optional) {

    /*
#ifdef STOKE_Z3_DEBUG_LAST_HASH
    // Report last hash
    cout << "Checking last hash" << endl;
    if(optional != nullptr) {
      cout << "  Optional not null" << endl;
      if(strcmp(qe->solver, "z3") == 0 && strcmp(qe->strategy, "flat") == 0) {
        Z3Solver* z3 = static_cast<Z3Solver*>(optional);
        string last_hash = z3->get_last_hash();
        stringstream comments;
        comments << "z3hash: " << last_hash;

        ofstream myfile("z3.txt");
        myfile << z3->get_last_text() << endl;
        myfile.close();

        result.comments = comments.str();
        cout << "  " << result.comments << endl;
      }
    }
#endif
*/

    cout << "verified=" << result.verified << endl;
    cout << "has_ceg=" << result.has_ceg << endl;
    if(result.has_error)
      cout << "error=" << result.error_message << endl;
    cout << "gen_time=" << result.gen_time_microseconds << endl;
    cout << "smt_time=" << result.smt_time_microseconds << endl;

    cout << getpid() << ": got answer!" << endl;
    result.write_text(cout) << endl;
    //connection c2(postgres_arg.value());
    //report_result(c2, *qe, result);
    //c2.disconnect();
    //cout << getpid() << ": reported result!" << endl;

  };


  discharge_problem(*qe, callback, true);
  return true;

}



int main(int argc, char** argv) {

  /** Parse command line arguments. */
  CommandLineConfig::strict_with_convenience(argc, argv);
  prctl(PR_SET_PDEATHSIG, SIGHUP);

  if(debug_hash_arg.value() == "") {
    main_loop();
  } else {
    bool b = debug_hash_obligation(debug_hash_arg.value());
  }

  return 0;
}

