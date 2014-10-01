
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
 * file has a list of all the .cc files with tests in them. 
 * Update this file, and you won't need to touch any makefiles :)
 *
 */


#include "tests/fixture.h"
#include "tests/trivial.cc"
#include "tests/database/database.h"


namespace stoke_test {
INSTANTIATE_TEST_CASE_P(
  AllFixtures,
  FixtureTest,
  ::testing::ValuesIn(FixtureTestInit::get_fixtures())
);
}
