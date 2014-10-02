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
#define MAX_NORM 1


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

auto& min_nd = ValueArg<int>::create("min_nesting_depth")
    .usage("<depth>")
    .description("Require blocks to be nested this deep to use.")
    .default_val(0);


void normalize(int type, bool training, Normalizer* n, string& tag,
                Normalizer::CodeContinuation continuation) {

  n->reset_pipeline(continuation);

  switch(type) {

    case 0:
      tag = "none";
      break;

    case 1:
      tag = "regs_cons";
      *n << n->normalize_registers();
      *n << n->normalize_constants();
      break;

    case 2:
      tag = "all";
      *n << n->normalize_registers();
      *n << n->normalize_constants();
      if (training)
        *n << n->mangle_length();
      break;
  }

  *n << n->extract_chunks_of_depth(min_nd);

}


void build_database(Database& d) {

  Normalizer* n = new Normalizer();
  string tag;

  //specify action to perform
  Normalizer::CodeContinuation upload = [&tag, &d] (Chunk* chunk) {
    d.insert(*chunk, tag);
  };

  for (int i = 0; i < MAX_NORM; ++i) {

    //setup normalization routine
    normalize(i, true, n, tag, upload);

    for (auto& it : programs.value()) {

      //run the routine
      n->run(it.code);

    }
  }

}

void query_database(Database& d) {

  Normalizer* n = new Normalizer();
  string tag;


  for(int i = 0; i < MAX_NORM; ++i) {

    // initialize counting variables
    uint64_t hits[STAT_MAX + 1];
    uint64_t total[STAT_MAX + 1];
    for(int i = 0; i <= STAT_MAX; ++i) {
      hits[i] = 0;
      total[i] = 0;
    }

    // the lookup continuation
    Normalizer::CodeContinuation lookup = [&hits, &total, &d, &tag] (Chunk* chunk) {
      int length = chunk->code.size();
      length = (length > STAT_MAX ? STAT_MAX : length - 1);
      total[length]++;
      if(d.lookup(*chunk, tag))
        hits[length]++;
    };

    // setting up the normalizer and running on the code
    normalize(i, false, n, tag, lookup);

    for (auto& it : programs.value()) {
      n->run(it.code);
    }

    // generate output
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

  cout << "Parsing Inputs" << endl;

  CommandLineConfig::strict_with_convenience(argc, argv);

  cout << "Finished Parsing" << endl;

  Database* d = (Database*) new MongoDatabase(hostname,0,database);

  string job = action.value();

  if (job == "rebuild" || job == "erase")
    d->erase();

  if (job == "build" || job == "rebuild")
    build_database(*d);

  if (job == "query")
    query_database(*d);

  delete d;

  return 0;
}
