#include <iomanip>
#include <iostream>
#include <random>
#include <set>
#include <vector>

#include "syslog.h"
#include "sys/time.h"
#include "errno.h"

#include "src/ext/cpputil/include/command_line/command_line.h"
#include "src/ext/cpputil/include/io/filterstream.h"
#include "src/ext/cpputil/include/io/column.h"
#include "src/ext/cpputil/include/serialize/span_reader.h"
#include "src/ext/cpputil/include/signal/debug_handler.h"
#include "src/ext/x64asm/include/x64asm.h"

#include "src/validator/error.h"
#include "src/validator/validator.h"

#include "src/args/init.h"
#include "src/args/flag_set.h"

#include "src/search/progress_callback.h"
#include "src/search/search.h"

#include "src/cfg/cfg.h"
#include "src/database/error.h"
#include "src/database/database.h"
#include "src/stategen/stategen.h"

using namespace cpputil;
using namespace std;
using namespace stoke;
using namespace x64asm;
using namespace mongo;

#define GET_MACRO(_1, _2, _3, _4, _5, ERROR,...) ERROR
#define ERROR(...) GET_MACRO(__VA_ARGS__, ERROR5, ERROR4, ERROR3, ERROR2)(__VA_ARGS__)
#define ERROR2(A,B)       error(__FILE__, __LINE__, (A), (B))
#define ERROR3(A,B,C)     error(__FILE__, __LINE__, (A), (B), (C))
#define ERROR4(A,B,C,D)   error(__FILE__, __LINE__, (A), (B), (C), (D))
#define ERROR5(A,B,C,D,E) error(__FILE__, __LINE__, (A), (B), (C), (D), (E))


auto& h0 = Heading::create("Database specification");

auto& hostname = ValueArg<string>::create("hostname")
    .usage("<hostname>")
    .description("Hostname or IP address of database server.")
    .default_val("localhost");

auto& database = ValueArg<string>::create("database")
    .usage("<db name>")
    .description("Name of database to upload to")
    .default_val("test");


auto& search_pool_count = ValueArg<uint64_t>::create("search_pools")
    .usage("<int>")
    .description("Number of searches to attempt for each db entry.")
    .default_val(8);

auto& period = ValueArg<uint64_t>::create("period")
    .usage("<seconds>")
    .description("Seconds to spend on each database sample")
    .default_val(10);

auto& min_size = ValueArg<uint64_t>::create("min_size")
    .usage("<int>")
    .description("minimum size of code from database to work on")
    .default_val(3);

auto& object_id = ValueArg<string>::create("object_id")
    .usage("<hex>")
    .description("if provided, skip sampling and use this database object instead")
    .default_val("");

auto h1 = Heading::create("Validator options");

auto& timeout = ValueArg<uint64_t>::create("timeout")
    .usage("<int>")
    .description("maximum time (in seconds) to spend validating")
    .default_val(60);

auto& h2 = Heading::create("Cost Function options");

auto& relax_reg = FlagArg::create("relax_reg")
    .description("Allow correct values in incorrect register locations");

auto& relax_mem = FlagArg::create("relax_mem")
    .description("Allow correct values in incorrect memory locations");

auto& misalign_penalty = ValueArg<Cost>::create("misalign_penalty")
    .usage("<int>")
    .description("Penalty for correct values in incorrect locations")
    .default_val(0);

auto& sig_penalty = ValueArg<Cost>::create("sig_penalty")
    .usage("<int>")
    .description("Penalty for incorrect signal behavior")
    .default_val(50);



auto& h3 = Heading::create("Other options");

auto& seed = ValueArg<default_random_engine::result_type>::create("seed")
    .usage("<int>")
    .description("Seed for random number generator; set to zero for random")
    .default_val(0);



void error(const string& filename,
           int line,
           const string& component, 
           const string& message, 
           bool disable = false, 
           MongoDatabase::Document* doc = NULL) {


  // log the message to syslog
  syslog(LOG_ERR, "Error @ %s:%d [%s] %s", filename.c_str(), line, 
                        component.c_str(), message.c_str());

  // upload the error message
  if (doc != NULL) {

    bool report = doc->report_error(filename, line, component, message);
    if (!report)
      syslog(LOG_ERR, " *** Could not upload error report to DB for document %s.",
                      doc->get_id().toString().c_str());

    //disable the record if need be
    if (disable) {
      report = doc->disable();
      if (!report)
        syslog(LOG_ERR, " *** Could not disable document %s.", 
                        doc->get_id().toString().c_str());
    }

    // unlock the checked out code
    report = doc->unlock();
      syslog(LOG_ERR, " *** Could not unlock document %s.", 
                      doc->get_id().toString().c_str());


  }

  // Write to stderr
  cerr << "Fatal error @ " << filename << ":" << line; 
  cerr << " [" << component << "] " << message << endl;

  exit(1);
}


int main(int argc, char** argv) {

  CommandLineConfig::strict_with_convenience(argc, argv);

  MongoDatabase d(hostname, 0, database, "none");

  openlog("stoke-worker", LOG_CONS | LOG_PID, LOG_LOCAL0);
  syslog(LOG_INFO, "Starting stoke worker.");


  MongoDatabase::Document* doc = NULL;

  try {

    // Sample from DB
    if (object_id.value().empty()) {

        doc = d.sample_and_lock(min_size, true);

    } else {
      mongo::OID oid( object_id.value().c_str() );
      doc = d.lookup(oid);
      if (!doc) {
        ERROR("database.lookup", "Object with id " + object_id.value() + " not found.");
      }

      if(!doc->lock()) {
        ERROR("database.lock", "Could not lock object with id " + object_id.value() + ".");
      }
    }

    syslog(LOG_INFO, "Checked out %s", doc->get_id().toString().c_str());

#ifdef DEBUG_WORKER
    cout << "Checked out " << doc->get_id().toString() << endl;
    cout << doc->get_code() << endl;
    cout << "____________________" << endl << endl;
#endif

    // If there aren't already testcases for this database record,
    // then signal that an error has occurred
    if (doc->get_testcases().size() == 0) {
      ERROR("worker-validate", "Object with id " + doc->get_id().toString() + 
                               " chosen for validation but has no testcases.", false, doc);
    }


    // Pick out something to validate
    auto candidates = doc->get_candidates();
    int candidate_count = 0;
    for(auto candidate : candidates) {
      if (candidate.get_verification_result() == "none")
        candidate_count++;
    }
    cout << "total candidates: " << candidate_count << std::endl;

    std::default_random_engine engine;
    //engine.seed(seed);
    std::uniform_int_distribution<int> distribution(0, candidate_count-1);
    int candidate_index = distribution(engine);

    cout << "selected: " << candidate_index << std::endl;

    MongoDatabase::RewriteCandidate* to_verify = NULL;

    for(size_t i = 0; i < candidates.size(); ++i) {
      if (candidates[i].get_verification_result() == "none") {
        if (!candidate_index) {
          cout << "got candidate with i = " << i << endl;
          to_verify = &candidates[i];
          break;
        }
        candidate_index--;
      }
    }

    if (!to_verify)
      ERROR("worker-validate", "Had a silly problem sampling candidates.", false, doc);

    // "THE CLOCK IS RUNNING!" -- Apollo 13
    struct timeval start_time;
    struct timeval end_time; 
    int code = gettimeofday(&start_time, NULL);
    if (code != 0) {
      ERROR("gettimeofday", "error " + std::to_string(errno), true, doc);
    }

    // Setup the verifier

    Cfg target   (doc->get_code(),      doc->get_live_ins(), doc->get_live_outs());
    Cfg rewrite (to_verify->get_code(), doc->get_live_ins(), doc->get_live_outs());

    Validator v; 
    v.set_timeout(timeout);
    v.set_mem_out(false);
    CpuState counter_example;

    // Run it.
    try {

      bool success = v.validate(target, rewrite, counter_example);

      gettimeofday(&end_time, NULL);
      uint64_t difference = (end_time.tv_sec - start_time.tv_sec) +
                            (end_time.tv_usec - start_time.tv_usec)/1000;


      if (success) {

        /* Validator succeeded... YAY */

        cout << "SUCCESS" << endl;
        to_verify->report_verified(difference, "success");

      } else {

        /* Validator failed, but we get a counterexample. */

        cout << "CEG" << endl;
        vector<CpuState> counterexample_vector;
        counterexample_vector.push_back(counter_example);
        doc->add_testcases(counterexample_vector, "validator");

        to_verify->report_verified(0, "wrong");

      }

    } catch ( validator_error val_error ) {

        cout << "ERROR" << endl;
      /* Validator failed with no information */

      gettimeofday(&end_time, NULL);
      uint64_t difference = (end_time.tv_sec - start_time.tv_sec) +
                            (end_time.tv_usec - start_time.tv_usec)/1000;

      /* Mark this candidate, so we don't try again. */
      to_verify->report_verified(difference, "error");

      /* Report that an error occurred */
      error(val_error.get_file(), val_error.get_line(), "validator",
            string(val_error.what()), false, doc);

    }

    doc->unlock();

  } catch ( database_error dbe ) {

    /* An unknown database error: lock that doc up! */
    if (doc) {
      error(dbe.get_file(), dbe.get_line(), "database", string(dbe.what()), true, doc);
      doc->unlock();
    } else {
      error(dbe.get_file(), dbe.get_line(), "database", string(dbe.what()));
      doc->unlock();
    }
  }

  /* Release the lock on the database */
  doc->unlock();



  return 0;
}
