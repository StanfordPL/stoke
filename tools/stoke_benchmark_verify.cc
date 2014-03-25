// Copyright 2014 eric schkufza
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

#include <chrono>
#include <iostream>
#include <vector>

#include "src/ext/cpputil/include/command_line/command_line.h"
#include "src/ext/cpputil/include/serialize/span_reader.h"
#include "src/ext/cpputil/include/signal/debug_handler.h"
#include "src/ext/x64asm/include/x64asm.h"

#include "src/args/reg_set.h"
#include "src/args/strategy.h"
#include "src/args/testcases.h"
#include "src/args/tunit.h"
#include "src/cfg/cfg.h"
#include "src/cost/cost_function.h"
#include "src/cost/distance.h"
#include "src/cost/performance_term.h"
#include "src/cost/reduction.h"
#include "src/sandbox/sandbox.h"
#include "src/state/cpu_state.h"
#include "src/state/state_writer.h"
#include "src/verifier/strategy.h"
#include "src/verifier/verifier.h"

using namespace cpputil;
using namespace std;
using namespace std::chrono;
using namespace stoke;
using namespace x64asm;

auto& h1 = Heading::create("Input programs:");

auto& target = FileArg<TUnit, TUnitReader, TUnitWriter>::create("target")
    .usage("<path/to/file>")
    .description("Target")
    .default_val({"anon", {{RET}}});

auto& rewrite = FileArg<TUnit, TUnitReader, TUnitWriter>::create("rewrite")
    .usage("<path/to/file>")
    .description("Rewrite")
    .default_val({"anon", {{RET}}});

auto& def_in = ValueArg<RegSet, RegSetReader, RegSetWriter>::create("def_in")
    .usage("{ rax rsp ... }")
    .description("Registers defined on entry")
    .default_val(RegSet::linux_caller_save());

auto& live_out = ValueArg<RegSet, RegSetReader, RegSetWriter>::create("live_out")
    .usage("{ rax rsp ... }")
    .description("Registers live on exit")
    .default_val(RegSet::empty() + rax);

auto& stack_out = FlagArg::create("stack_out")
    .description("Is stack defined on exit?");

auto& heap_out = FlagArg::create("heap_out")
    .description("Is heap defined on exit?");

auto& h2 = Heading::create("Verification options:");

auto& strategy = ValueArg<Strategy, StrategyReader, StrategyWriter>::create("strategy")
    .usage("(none|regression|formal|random)")
    .description("Verification strategy")
    .default_val(Strategy::NONE);

auto& testcases = FileArg<vector<CpuState>, TestcasesReader, TestcasesWriter>::create("testcases")
    .usage("<path/to/file>")
    .description("Testcases for verification strategies that use testcases")
    .default_val({CpuState()});

auto& test_set =
  ValueArg<set<size_t>, SpanReader<set<size_t>, Range<size_t, 0, 1024 * 1024>>>::create("test_set")
      .usage("{ 0 1 ... 9 }")
      .description("Subset of testcase indices to use for verification strategies that use testcases")
      .default_val({0});

auto& sse_width = ValueArg<size_t>::create("sse_width")
    .usage("(1|2|4|8)")
    .description("Number of bytes in sse elements")
    .default_val(8);

auto& sse_count = ValueArg<size_t>::create("sse_count")
    .usage("<int>")
    .description("Number of values in sse registers")
    .default_val(1);

auto& h3 = Heading::create("Sandbox options:");

auto& max_jumps = ValueArg<size_t>::create("max_jumps")
    .usage("<int>")
    .description("Maximum jumps before exit due to infinite loop")
    .default_val(1024);

auto& h5 = Heading::create("Measurement options:");

auto& itr = ValueArg<size_t>::create("iterations")
    .description("Number of iterations to run for")
    .default_val(1000000);

int main(int argc, char** argv) {
  CommandLineConfig::strict_with_convenience(argc, argv);
  DebugHandler::install_sigsegv();
  DebugHandler::install_sigill();

  Cfg cfg_t(target.value().code, def_in, live_out);
  Cfg cfg_r(rewrite.value().code, def_in, live_out);

  Sandbox sb;
  sb.set_max_jumps(max_jumps);

  for (size_t i = 0, ie = testcases.value().size(); i < ie; ++i) {
    if (test_set.value().find(i) != test_set.value().end()) {
      sb.insert_input(testcases.value()[i]);
    }
  }

	CostFunction regression(&sb);
	regression.set_distance(Distance::HAMMING)
	.set_target(cfg_t, stack_out, heap_out)
	.set_sse(sse_width, sse_count)
	.set_relax(false, false)
	.set_penalty(1,1,1)
	.set_reduction(Reduction::SUM)
	.set_performance_term(PerformanceTerm::NONE);

	Verifier verifier(regression);
  verifier.set_strategy(strategy);

  cout << "Verifier::verify()..." << endl;

  const auto start = steady_clock::now();
  for (size_t i = 0; i < itr; ++i) {
    verifier.verify(cfg_t, cfg_r);
  }
  const auto dur = duration_cast<duration<double>>(steady_clock::now() - start);
  const auto vps = itr / dur.count();

  cout << "Runtime:    " << dur.count() << " seconds" << endl;
  cout << "Throughput: " << vps << " / second" << endl;


  return 0;
}

