/* Generated file, do not edit */

#ifndef CXXTEST_RUNNING
#define CXXTEST_RUNNING
#endif

#define _CXXTEST_HAVE_STD
#define _CXXTEST_HAVE_EH
#include <cxxtest/TestListener.h>
#include <cxxtest/TestTracker.h>
#include <cxxtest/TestRunner.h>
#include <cxxtest/RealDescriptions.h>
#include <cxxtest/TestMain.h>
#include <cxxtest/ErrorPrinter.h>

int main( int argc, char *argv[] ) {
 int status;
    CxxTest::ErrorPrinter tmp;
    CxxTest::RealWorldDescription::_worldName = "cxxtest";
    status = CxxTest::Main< CxxTest::ErrorPrinter >( tmp, argc, argv );
    return status;
}
bool suite_CardinalityPublic_init = false;
#include "/barrett/scratch/preiner/src/CVC4/test/unit/util/cardinality_public.h"

static CardinalityPublic suite_CardinalityPublic;

static CxxTest::List Tests_CardinalityPublic = { 0, 0 };
CxxTest::StaticSuiteDescription suiteDescription_CardinalityPublic( "../../../test/unit/util/cardinality_public.h", 26, "CardinalityPublic", suite_CardinalityPublic, Tests_CardinalityPublic );

static class TestDescription_suite_CardinalityPublic_testCardinalities : public CxxTest::RealTestDescription {
public:
 TestDescription_suite_CardinalityPublic_testCardinalities() : CxxTest::RealTestDescription( Tests_CardinalityPublic, suiteDescription_CardinalityPublic, 31, "testCardinalities" ) {}
 void runTest() { suite_CardinalityPublic.testCardinalities(); }
} testDescription_suite_CardinalityPublic_testCardinalities;

#include <cxxtest/Root.cpp>
const char* CxxTest::RealWorldDescription::_worldName = "cxxtest";
