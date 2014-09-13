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

auto& h1 = Heading::create("Input programs:");

auto& train = FolderArg<TUnit, TUnitReader, TUnitWriter>::create("training_programs")
    .usage("<path/to/folder>")
    .description("Directory of Training Programs");

auto& test = FolderArg<TUnit, TUnitReader, TUnitWriter>::create("test_programs")
    .usage("<path/to/folder>")
    .description("Directory of Test Programs");

auto& h2 = Heading::create("Program configuration:");

auto& def_in = ValueArg<RegSet, RegSetReader, RegSetWriter>::create("def_in")
    .usage("{ %rax %rsp ... }")
    .description("Registers defined on entry")
    .default_val(RegSet::linux_caller_save());

auto& live_out = ValueArg<RegSet, RegSetReader, RegSetWriter>::create("live_out")
    .usage("{ %rax %rsp ... }")
    .description("Registers live on exit")
    .default_val(RegSet::empty() + rax);

auto& h3 = Heading::create("Database options:");

auto& hostname = ValueArg<string>::create("hostname")
    .usage("<hostname>")
    .description("Hostname or IP address of database server.")
    .default_val("localhost");

auto& database = ValueArg<string>::create("database")
    .usage("<db name>")
    .description("Name of database to upload to")
    .default_val("test");

string normalize(int type, bool training, Normalizer& n) {

  string tag = "";

  if (type & 1) {
    n.normalize_registers();
    tag = tag + "regs_";
  }

  if (type & 2) {
    n.normalize_constants();
    tag = tag + "cons_";
  }

  return tag;

}

int main(int argc, char** argv) {
  CommandLineConfig::strict_with_convenience(argc, argv);

  Database d(hostname,0,database);

  for (int i = 0; i < 4; ++i) {

    string tag;

    //// Build the database
    for (auto& it : train.value()) {
      Cfg cfg_t(it.code, def_in, live_out);

      // STEP 1: break into chunks
      Normalizer n;
      n.slurp_cfg(cfg_t);

      // STEP 2: normalize
      tag = normalize(i, true, n);

      // STEP 3: upload
      for (auto& chunk : *(n.get_chunks())) {
        d.insert(chunk,tag); 
      }
    }

    int hit = 0;
    int total = 0;
    //// Test the database
    for (auto& it : test.value()) {
      Cfg cfg_t(it.code, def_in, live_out);

      // STEP 1: break into chunks
      Normalizer n;
      n.slurp_cfg(cfg_t);

      // STEP 2: normalize
      tag = normalize(i, true, n);

      // STEP 3: test
      for (auto& chunk : *(n.get_chunks())) {
        total++;
        if(d.lookup(chunk,tag))
          hit++;
      }
    }
    double rate = (double)hit/(double)total;

    //// Output
    cout << tag << "," << hit << "," << total << "," << rate << endl;
  }

  //// Test the database

  return 0;
}
