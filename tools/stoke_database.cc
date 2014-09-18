#include <iomanip>
#include <iostream>
#include <random>
#include <set>
#include <vector>

#include "src/ext/cpputil/include/command_line/command_line.h"
#include "src/ext/cpputil/include/io/filterstream.h"
#include "src/ext/cpputil/include/io/column.h"
#include "src/ext/cpputil/include/serialize/span_reader.h"
#include "src/ext/cpputil/include/signal/debug_handler.h"
#include "src/ext/x64asm/include/x64asm.h"

#include "src/args/init.h"
#include "src/args/tunit.h"
#include "src/args/reg_set.h"

#include "src/cfg/cfg.h"
#include "src/database/normalizer.h"
#include "src/database/database.h"

#include "mongo/client/dbclient.h"

using namespace cpputil;
using namespace std;
using namespace stoke;
using namespace x64asm;
using namespace mongo;


#define STAT_MAX 20


auto& h0 = Heading::create("Database job specification");

auto& action = ValueArg<string>::create("action")
    .usage("<action>")
    .description("Choose build, rebuild, query, erase");

auto& hostname = ValueArg<string>::create("hostname")
    .usage("<hostname>")
    .description("Hostname or IP address of database server.")
    .default_val("localhost");

auto& database = ValueArg<string>::create("database")
    .usage("<db name>")
    .description("Name of database to upload to")
    .default_val("test");

auto& programs = FolderArg<TUnit, TUnitReader, TUnitWriter>::create("programs")
    .usage("<path/to/folder>")
    .description("Directory of Programs");

auto& h1 = Heading::create("Program configuration:");

auto& def_in = ValueArg<RegSet, RegSetReader, RegSetWriter>::create("def_in")
    .usage("{ %rax %rsp ... }")
    .description("Registers defined on entry")
    .default_val(RegSet::linux_caller_save());

auto& live_out = ValueArg<RegSet, RegSetReader, RegSetWriter>::create("live_out")
    .usage("{ %rax %rsp ... }")
    .description("Registers live on exit")
    .default_val(RegSet::empty() + rax);

auto& h2 = Heading::create("Query Options");

auto& query_min_nd = ValueArg<int>::create("min_nesting_depth")
    .usage("<depth>")
    .description("Require blocks to be nested this deep to do a lookup.")
    .default_val(0);


void normalize(int type, bool training, Normalizer& n, string& tag) {

  if (type == 0)
    tag = "none";
  else
    tag = "";

  if (type & 1) {
    n.normalize_registers();
    tag = tag + "regs_";
  }

  if (type & 2) {
    n.normalize_constants();
    tag = tag + "cons_";
  }

}


void build_database(Database& d) {

  string tag;

  for (int i = 0; i < 4; ++i) {

    for (auto& it : programs.value()) {
      Cfg cfg_t(it.code, def_in, live_out);

      // STEP 1: break into chunks
      Normalizer n;
      n.slurp_cfg(cfg_t);

      // STEP 2: normalize
      normalize(i, true, n, tag);

      // STEP 3: upload
      auto* chunks = n.get_chunks(0);
      for (auto* chunk : *chunks) {
        d.insert(*chunk,tag); 
      }

    }
  }

}

void query_database(Database& d) {

  string tag;

  for(int i = 0; i < 4; ++i) {

    //initialize counting variables
    uint64_t hits[STAT_MAX + 1];
    uint64_t total[STAT_MAX + 1];
    for(int i = 0; i <= STAT_MAX; ++i) {
      hits[i] = 0;
      total[i] = 0;
    }

    //// Test the code
    for (auto& it : programs.value()) {
      Cfg cfg_t(it.code, def_in, live_out);

      // STEP 1: break into chunks
      Normalizer n;
      n.slurp_cfg(cfg_t);

      // STEP 2: normalize
      normalize(i, false, n, tag);

      // STEP 3: test
      auto* chunks = n.get_chunks(query_min_nd);
      for (auto* chunk : *chunks) {

        int length = chunk->size();
        length = (length > STAT_MAX ? STAT_MAX : length - 1);
        total[length]++;
        if(d.lookup(*chunk,tag))
          hits[length]++;
      }
    }

    //// Output
    cout << tag;
    for(int i = 0; i <= STAT_MAX; ++i) {
      cout << "," << hits[i];
    }
    for(int i = 0; i <= STAT_MAX; ++i) {
      cout << "," << total[i];
    }
    for(int i = 0; i <= STAT_MAX; ++i) {
      double rate = ( total[i] == 0 ? 0 : (double)hits[i]/(double)total[i]);
      cout << "," << rate;
    }

    cout << endl;
  }



}


int main(int argc, char** argv) {
  CommandLineConfig::strict_with_convenience(argc, argv);

  Database d(hostname,0,database);

  string job = action.value();

  if (job == "rebuild" || job == "erase")
    d.erase();

  if (job == "build" || job == "rebuild")
    build_database(d);

  if (job == "query")
    query_database(d);

  //// Test the database

  return 0;
}
