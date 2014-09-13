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
#include "src/normalizer/normalizer.h"

#include "mongo/client/dbclient.h"

using namespace cpputil;
using namespace std;
using namespace stoke;
using namespace x64asm;
using namespace mongo;

auto& h1 = Heading::create("Input programs:");

auto& target = FolderArg<TUnit, TUnitReader, TUnitWriter>::create("target")
    .usage("<path/to/folder>")
    .description("Directory of Source Programs");

auto& h2 = Heading::create("Output options:");

auto& out = ValueArg<string>::create("out")
    .alternate("o")
    .usage("<path/to/directory>")
    .description("File to write successful results to")
    .default_val("results");

auto& def_in = ValueArg<RegSet, RegSetReader, RegSetWriter>::create("def_in")
    .usage("{ %rax %rsp ... }")
    .description("Registers defined on entry")
    .default_val(RegSet::linux_caller_save());

auto& live_out = ValueArg<RegSet, RegSetReader, RegSetWriter>::create("live_out")
    .usage("{ %rax %rsp ... }")
    .description("Registers live on exit")
    .default_val(RegSet::linux_callee_save() + rax);

auto& database = ValueArg<string>::create("database")
    .usage("<db name>")
    .description("Name of database to upload to")
    .default_val("test");

auto& collection = ValueArg<string>::create("collection")
    .usage("<collection name>")
    .description("Name of database collection to upload to")
    .default_val("chunks");


int main(int argc, char** argv) {
  CommandLineConfig::strict_with_convenience(argc, argv);

  DBClientConnection c;
  c.connect("localhost");

  for (int i = 0; i < 8; ++i) {

    // STEP 1: read the input
    for (auto& it : target.value()) {
      //cout << "reading code @ " << i << endl;
      Normalizer n(c, database, collection);
      Cfg cfg_t(it.code, def_in, live_out);

      n.slurp_cfg(cfg_t);

      // STEP 2: normalize
      n.normalize(i);

      // STEP 3: upload
      //n.upload(i);
      n.hit(i);
    }

  }

  return 0;
}
