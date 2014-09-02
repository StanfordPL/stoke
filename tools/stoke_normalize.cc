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


using namespace cpputil;
using namespace std;
using namespace stoke;
using namespace x64asm;

auto& h1 = Heading::create("Input programs:");

auto& target = FileArg<TUnit, TUnitReader, TUnitWriter>::create("target")
    .usage("<path/to/file>")
    .description("Target")
    .default_val({"anon", {{RET}}});

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


int main(int argc, char** argv) {
  CommandLineConfig::strict_with_convenience(argc, argv);

  // STEP 1: read the input
  Cfg cfg_t(target.value().code, def_in, live_out);

  // STEP 2: run the normalization routine
  Normalizer n;
  n.slurp_cfg(cfg_t);

  // STEP 3: write the results out to disk or database

  return 0;
}
