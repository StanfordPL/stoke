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
bool suite_TypeCardinalityPublic_init = false;
#include "/barrett/scratch/preiner/src/CVC4/test/unit/expr/type_cardinality_public.h"

static TypeCardinalityPublic suite_TypeCardinalityPublic;

static CxxTest::List Tests_TypeCardinalityPublic = { 0, 0 };
CxxTest::StaticSuiteDescription suiteDescription_TypeCardinalityPublic( "../../../test/unit/expr/type_cardinality_public.h", 32, "TypeCardinalityPublic", suite_TypeCardinalityPublic, Tests_TypeCardinalityPublic );

static class TestDescription_suite_TypeCardinalityPublic_testTheBasics : public CxxTest::RealTestDescription {
public:
 TestDescription_suite_TypeCardinalityPublic_testTheBasics() : CxxTest::RealTestDescription( Tests_TypeCardinalityPublic, suiteDescription_TypeCardinalityPublic, 45, "testTheBasics" ) {}
 void runTest() { suite_TypeCardinalityPublic.testTheBasics(); }
} testDescription_suite_TypeCardinalityPublic_testTheBasics;

static class TestDescription_suite_TypeCardinalityPublic_testArrays : public CxxTest::RealTestDescription {
public:
 TestDescription_suite_TypeCardinalityPublic_testArrays() : CxxTest::RealTestDescription( Tests_TypeCardinalityPublic, suiteDescription_TypeCardinalityPublic, 51, "testArrays" ) {}
 void runTest() { suite_TypeCardinalityPublic.testArrays(); }
} testDescription_suite_TypeCardinalityPublic_testArrays;

static class TestDescription_suite_TypeCardinalityPublic_testUnaryFunctions : public CxxTest::RealTestDescription {
public:
 TestDescription_suite_TypeCardinalityPublic_testUnaryFunctions() : CxxTest::RealTestDescription( Tests_TypeCardinalityPublic, suiteDescription_TypeCardinalityPublic, 73, "testUnaryFunctions" ) {}
 void runTest() { suite_TypeCardinalityPublic.testUnaryFunctions(); }
} testDescription_suite_TypeCardinalityPublic_testUnaryFunctions;

static class TestDescription_suite_TypeCardinalityPublic_testBinaryFunctions : public CxxTest::RealTestDescription {
public:
 TestDescription_suite_TypeCardinalityPublic_testBinaryFunctions() : CxxTest::RealTestDescription( Tests_TypeCardinalityPublic, suiteDescription_TypeCardinalityPublic, 95, "testBinaryFunctions" ) {}
 void runTest() { suite_TypeCardinalityPublic.testBinaryFunctions(); }
} testDescription_suite_TypeCardinalityPublic_testBinaryFunctions;

static class TestDescription_suite_TypeCardinalityPublic_testTernaryFunctions : public CxxTest::RealTestDescription {
public:
 TestDescription_suite_TypeCardinalityPublic_testTernaryFunctions() : CxxTest::RealTestDescription( Tests_TypeCardinalityPublic, suiteDescription_TypeCardinalityPublic, 179, "testTernaryFunctions" ) {}
 void runTest() { suite_TypeCardinalityPublic.testTernaryFunctions(); }
} testDescription_suite_TypeCardinalityPublic_testTernaryFunctions;

static class TestDescription_suite_TypeCardinalityPublic_testUndefinedSorts : public CxxTest::RealTestDescription {
public:
 TestDescription_suite_TypeCardinalityPublic_testUndefinedSorts() : CxxTest::RealTestDescription( Tests_TypeCardinalityPublic, suiteDescription_TypeCardinalityPublic, 195, "testUndefinedSorts" ) {}
 void runTest() { suite_TypeCardinalityPublic.testUndefinedSorts(); }
} testDescription_suite_TypeCardinalityPublic_testUndefinedSorts;

static class TestDescription_suite_TypeCardinalityPublic_testBitvectors : public CxxTest::RealTestDescription {
public:
 TestDescription_suite_TypeCardinalityPublic_testBitvectors() : CxxTest::RealTestDescription( Tests_TypeCardinalityPublic, suiteDescription_TypeCardinalityPublic, 202, "testBitvectors" ) {}
 void runTest() { suite_TypeCardinalityPublic.testBitvectors(); }
} testDescription_suite_TypeCardinalityPublic_testBitvectors;

#include <cxxtest/Root.cpp>
const char* CxxTest::RealWorldDescription::_worldName = "cxxtest";
