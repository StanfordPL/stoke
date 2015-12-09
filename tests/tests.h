// Copyright 2013-2015 Stanford University
//
// Licensed under the Apache License, Version 2.0 (the License);
// you may not use this file except in compliance with the License.
// You may obtain a copy of the License at
//
//     http://www.apache.org/licenses/LICENSE-2.0
//
// Unless required by applicable law or agreed to in writing, software
// distributed under the License is distributed on an AS IS BASIS,
// WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
// See the License for the specific language governing permissions and
// limitations under the License.


/*
 * STOKE Test Suite
 * Initial Version: September 22nd, 2014
 * Author: Berkeley Churchill <berkeleychurchill@gmail.com>
 *
 * Google test comes with macros to register tests.  Whenever
 * you create a new test, all you need is to use the TEST macro,
 * as you can see in any of the .cc files in this folder.  The
 * only thing the test framework needs is to #include all of
 * these functions into one big compilation unit.  Thus, this
 * file has a list of all the .h files with tests in them.
 * Update this file, and you won't need to touch any makefiles :)
 *
 */

#include "src/ext/x64asm/src/r.h"

using namespace std;
using namespace x64asm;

#include "src/validator/validator.h"
#include "src/validator/error.h"
#include "tests/validator/common.h"

// very fast tests (much less 1 sec per test)
#include "tests/trivial.h"
#include "tests/sandbox/sandbox.h"
#include "tests/search/search.h"
#include "tests/x64asm/r.h"
#include "tests/x64asm/reg_set.h"
#include "tests/x64asm/opc_set.h"
#include "tests/x64asm/assembler.h"
#include "tests/x64asm/instruction.h"
#include "tests/analysis/analysis.h"
#include "tests/cfg/cfg_tests.h"
#include "tests/cost/cost.h"
#include "tests/expr/expr.h"
#include "tests/cpputil/cpputil.h"
#include "tests/disassembler/disassembler.h"
#include "tests/solver/solver.h"
#include "tests/state/state.h"
#include "tests/stategen/stategen.h"
#include "tests/symstate/bitvector.h"
#include "tests/tunit/tunit.h"
#include "tests/verifier/verifier.h"
#include "tests/fixture.h"
#include "tests/validator/alias_miner.h"

#if !defined(NO_SLOW_TESTS)

// medium tests (at most 5 sec per test)
#include "tests/x64asm/read_write_sets.h"
#include "tests/x64asm/alt_read_write_sets.h"
#include "tests/validator/fuzz.h"
#include "tests/validator/simple.h"

#endif

#if !defined(NO_VERY_SLOW_TESTS) && !defined(NO_SLOW_TESTS)

// large tests (anything slower)
#include "tests/integration/integration.h"
#include "tests/validator/bounded.h"
#include "tests/validator/handlers.h"
#include "tests/validator/memory.h"
#include "tests/x64asm/parsing.h"
#include "tests/transform/transform.h"

#endif


INSTANTIATE_TEST_CASE_P(
  AllFixtures,
  CodeFixtureTest,
  ::testing::ValuesIn(CodeFixtureTestInit::get_fixtures())
);

