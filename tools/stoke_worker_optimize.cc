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

#include "src/args/init.h"
#include "src/args/flag_set.h"

#include "src/search/progress_callback.h"
#include "src/search/search.h"
#include "src/search/search_state.h"

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

auto h1 = Heading::create("Transform options");

auto& flags = ValueArg<FlagSet, FlagSetReader, FlagSetWriter>::create("cpu_flags")
    .usage("{ flag1 flag2 ... flagn }")
    .description("Propose instruction and opcode moves that use this CPU ID flag set")
    .default_val(FlagSet::empty());

auto& nop_percent = ValueArg<size_t>::create("nop_percent")
    .usage("<percent>")
    .description("Percent of instruction moves that produce nops")
    .default_val(20);

auto& instruction_mass = ValueArg<size_t>::create("instruction_mass")
    .usage("<int>")
    .description("instruction move proposal mass")
    .default_val(1);

auto& opcode_mass = ValueArg<size_t>::create("opcode_mass")
    .usage("<int>")
    .description("opcode move proposal mass")
    .default_val(1);

auto& operand_mass = ValueArg<size_t>::create("operand_mass")
    .usage("<int>")
    .description("operand move proposal mass")
    .default_val(1);

auto& local_swap_mass = ValueArg<size_t>::create("local_swap_mass")
    .usage("<int>")
    .description("local swap mass")
    .default_val(1);

auto& global_swap_mass = ValueArg<size_t>::create("global_swap_mass")
    .usage("<int>")
    .description("global swap mass")
    .default_val(1);

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

auto& h3 = Heading::create("Seach options");

auto& mem_read = FlagArg::create("mem_read")
    .description("Propose instruction and opcode moves that read memory?");

auto& mem_write = FlagArg::create("mem_write")
    .description("Propose instruction and opcode moves that write memory?");

auto& max_additional = ValueArg<uint64_t>::create("max_additional_instrs")
    .usage("<int>")
    .description("Maximum added length for a database sample.")
    .default_val(5);

auto& beta = ValueArg<double>::create("beta")
    .usage("<double>")
    .description("Annealing constant")
    .default_val(1.0);

auto& seed = ValueArg<default_random_engine::result_type>::create("seed")
    .usage("<int>")
    .description("Seed for random number generator; set to zero for random")
    .default_val(0);




struct pcb_extras {
  MongoDatabase::Document& doc;
  MongoDatabase::SearchPool& search_pool;
  uint64_t testcase_count;
  struct timeval start_time;
  Cost& best_correct_so_far;

};

/* We want to upload to the database whenever we find a
   new best *correct* rewrite. */
void pcb(const ProgressCallbackData& data, void* arg) {

  SearchState ss = data.state;
  pcb_extras extras = *(pcb_extras*)arg;

  // If we have a new best correct.
  if (ss.best_correct_cost < extras.best_correct_so_far) {

#ifdef DEBUG_WORKER
      cout << "Got a new correct rewrite!" << endl;
#endif
      extras.best_correct_so_far = ss.best_correct_cost;

      struct timeval now;
      gettimeofday(&now, NULL);
      uint64_t difference = (now.tv_sec - extras.start_time.tv_sec) +
                            (now.tv_usec - extras.start_time.tv_usec)/1000;

      syslog(LOG_INFO, "Found new best correct for %s, uploading.", 
                                      extras.doc.get_id().toString().c_str());

      extras.search_pool.add_candidate(
                                 ss.best_correct.get_code(), 
                                 ss.best_correct_cost,           // cost
                                 extras.testcase_count,       // # testcases
                                 (uint64_t) difference);      //time ellapsed



  }

#ifdef DEBUG_WORKER
  auto best_yet_code = ss.best_yet.get_code();
  auto best_yet_cost = ss.best_yet_cost;

  auto best_correct_code = ss.best_correct.get_code();
  auto best_correct_cost = ss.best_correct_cost;

  cout << "cost: " << dec << best_yet_cost << endl;
  cout << best_yet_code << endl << endl;
#endif

}


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
    if(disable) {
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


/* Generates some testcases and uploads them to the database, or fails. */
bool generate_testcases(MongoDatabase::Document* doc, MongoDatabase& db) {

#ifdef DEBUG_WORKER
  cout << "Building CFGs" << endl;
#endif
  Cfg cfg_t(doc->get_code(), doc->get_live_ins(), doc->get_live_outs());
  Cfg cfg_r(doc->get_code(), doc->get_live_ins(), doc->get_live_outs());

#ifdef DEBUG_WORKER
  cout << "Setting up StateGen" << endl;
#endif

  Sandbox sb;
  sb.set_max_jumps(4).set_abi_check(false);

  StateGen sg(&sb);
  sg.set_max_attempts(100)
    .set_max_memory(1000);
 
#ifdef DEBUG_WORKER
  cout << "Looking for testcaes" << endl;
#endif

  vector<CpuState> tcs;
  for (size_t i = 0; i < 16; ++i) {
    CpuState tc;
    if (sg.get(tc, cfg_t)) {
      tcs.push_back(tc);
    }
  }

#ifdef DEBUG_WORKER
  cout << "testcases generated: " << tcs.size() << endl;
#endif


  if (tcs.size() < 1) {
    ERROR("stategen", sg.get_error(), true, doc);
  }

  syslog(LOG_INFO, "Generated %lu testcases for %s; uploading.", tcs.size(), doc->get_id().toString().c_str());

  /* This uploads testcases to the database, or tries at least */
  return doc->add_testcases(tcs, "stategen");

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

      doc = d.sample_and_lock(min_size, false);

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
//    cout << "live ins: " << doc->get_live_ins() << endl;
//    cout << "live outs: " << doc->get_live_outs() << endl;
//    cout << "preserved: " << doc->get_preserve() << endl;
    cout << "____________________" << endl << endl;
#endif

    //FIXME: https://github.com/eschkufz/stoke/issues/83
    bool data_is_stale = false;

    // If there aren't enough search pools, make more.
    size_t existing_pools = doc->get_search_pools().size();
    for(size_t i = existing_pools; i < search_pool_count; ++i) {
      doc->initialize_pool(); 
      data_is_stale = true;
    }

    // If there aren't already testcases for this database record,
    // then generate them and upload.
    if (doc->get_testcases().size() == 0) {
      generate_testcases(doc, d);
      data_is_stale = true;
    }

    if(data_is_stale) {
      mongo::OID id = doc->get_id();
      delete doc;
      doc = d.lookup(id);
    }

    // "THE CLOCK IS RUNNING!" -- Apollo 13
    struct timeval start_time;
    struct timeval end_time; 
    int code = gettimeofday(&start_time, NULL);
    if (code != 0) {
      ERROR("gettimeofday", "error " + std::to_string(errno), true, doc);
    }

    // Pick out something to search
    auto search_pool = doc->sample_search_pool();

    // Setup the sandbox.
    Sandbox sb;
    sb.set_max_jumps(2).set_abi_check(false); 

#ifdef DEBUG_WORKER
    cout << "Using " << doc->get_testcases().size() << "testcases." << endl;
#endif
    int i = 0;
    for ( auto tc : doc->get_testcases() ) {
      sb.insert_input(tc.get_testcase());
      i++;
    }
    cout << "added " << i << " testcases" << endl;

    Cfg cfg_t(doc->get_code(), doc->get_live_ins(), doc->get_live_outs());

    // Setup cost function
    // Note: here we use the CFG corresponding to the target, that is the
    // original code, because we need the cost function computed correctly.
    CostFunction fxn(&sb);
    fxn.set_distance(Distance::HAMMING)
      .set_target(cfg_t, mem_write, mem_write)
      .set_relax(relax_reg, relax_mem)
      .set_penalty(misalign_penalty, sig_penalty, 0)
      .set_reduction(Reduction::SUM)
      .set_performance_term(PerformanceTerm::LATENCY);
 

    // Setup tranforms
    //TODO: go through code and figure out if we
    //      need to propose memory read/memory write
    Transforms transforms;
    transforms.set_seed(seed)
              .set_opcode_pool(flags, nop_percent, mem_read, mem_write)
              .set_operand_pool(doc->get_code(), doc->get_preserve());

    
    // Setup the starting state.
    // We recompute the costs and what's been the "best yet" because we want to
    // be sure to handle if the testcases changed.
    SearchState starting_state;

    starting_state.current = cfg_t;
    starting_state.best_yet = cfg_t;
    starting_state.best_correct = cfg_t;

    Cost target_cost = fxn(cfg_t).second;
    starting_state.current_cost = target_cost;
    starting_state.best_yet_cost = target_cost;
    starting_state.best_correct_cost = target_cost;


    for (auto record : search_pool.get_search_history() ) {

      // FIXME: This setup might copy things about twice as necessary.
      vector<x64asm::Code> rewrites { record.get_code(),
                                      record.get_best_yet(),
                                      record.get_best_correct() };

      for (auto rewrite : rewrites) {

        Cfg cfg = { rewrite, doc->get_live_ins(), doc->get_live_outs() };
        auto cost = fxn(cfg);

        if (cost.second < starting_state.best_yet_cost) {
          starting_state.best_yet_cost = cost.second;
          starting_state.best_yet = cfg;
        }

        if (cost.first && cost.second < starting_state.best_correct_cost) {
          starting_state.best_correct_cost = cost.second;
          starting_state.best_correct = cfg;
        }
      }
    }

    // Now the big question: how to choose the best place to start.
    // There are a few options here.  TODO: Make this configurable in the
    // future.  For now, I'm initializing to the 'current' from the last run
    // *as long as* the best_yet and best_correct of the last run are *still*
    // the best_yet and best_correct.
    
    auto search_history = search_pool.get_search_history();
    if (search_history.size() > 0) {
      auto last_search = search_history[search_history.size()-1];

      if (last_search.get_best_yet() == starting_state.best_yet.get_code() &&
          last_search.get_best_correct() == starting_state.best_correct.get_code()) {
        
        starting_state.current = { last_search.get_code(), doc->get_live_ins(), doc->get_live_outs() };
        starting_state.current_cost = fxn(starting_state.current).second;

      } else {

        starting_state.current = starting_state.best_yet;
        starting_state.current_cost = starting_state.best_yet_cost;
      }
    }

#ifdef DEBUG_WORKER
  cout << "Current: (" << dec << starting_state.current_cost << ")" << endl;
  cout << starting_state.current.get_code() << endl << endl;

  cout << "Best yet: (" << dec << starting_state.best_yet_cost << ")" << endl;
  cout << starting_state.best_yet.get_code() << endl << endl;

  cout << "Best correct: (" << dec << starting_state.best_correct_cost << ")" << endl;
  cout << starting_state.best_correct.get_code() << endl << endl;


#endif

    // Setup the actual search and progress callback.
    Cost starting_cost = starting_state.best_correct_cost;
    Cost best_correct_so_far = starting_cost;
    pcb_extras extras({*doc, search_pool, sb.size(), start_time, best_correct_so_far});

    Search search(&transforms);
    search.set_seed(seed)
      .set_max_instrs(max_additional + doc->get_size())
      .set_timeout_itr(1000000000000)
      .set_timeout_sec(period)
      .set_beta(beta)
      .set_mass(Move::OPCODE, opcode_mass)
      .set_mass(Move::OPERAND, operand_mass)
      .set_mass(Move::INSTRUCTION, instruction_mass)
      .set_mass(Move::LOCAL_SWAP, local_swap_mass)
      .set_mass(Move::GLOBAL_SWAP, global_swap_mass)
      .set_mass(Move::RESIZE, 0)
      .set_progress_callback(pcb, &extras);

    // Run the search
    search.run(cfg_t, fxn, Init::PREVIOUS, starting_state);

    // Stop the timer
    code = gettimeofday(&end_time, NULL);
    if (code != 0) {
      ERROR("gettimeofday", "error " + std::to_string(errno), true, doc);
    }

    uint64_t difference = (end_time.tv_sec - start_time.tv_sec) +
                            (end_time.tv_usec - start_time.tv_usec)/1000;

    // Report the results.
#ifdef DEBUG_WORKER
    if (best_correct_so_far < starting_cost) {
      cout << "We found a rewrite :)" << endl;
    } else {
      cout << "No rewrite found :/" << endl;
    }
#endif

    search_pool.report_search(starting_state.current.get_code(), 
                              starting_state.best_yet.get_code(),
                              starting_state.best_correct.get_code(),
                              starting_state.current_cost,
                              starting_state.best_yet_cost,
                              starting_state.best_correct_cost,
                              difference,
                              doc->get_testcases().size(),
                              0);

    syslog(LOG_INFO, "Search complete for %s", doc->get_id().toString().c_str());

    doc->unlock();

  } catch ( database_error dbe ) {


    if(doc) {
      // Since this error is unexpected, disable the document.
      error(dbe.get_file(), dbe.get_line(), "database", string(dbe.what()), true, doc);
      doc->unlock();
    } else {
      error(dbe.get_file(), dbe.get_line(), "database", string(dbe.what()));
      doc->unlock();
    }

  }


  doc->unlock();

  return 0;
}
