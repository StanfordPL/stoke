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
bool suite_ExprPublic_init = false;
#include "/barrett/scratch/preiner/src/CVC4/test/unit/expr/expr_public.h"

static ExprPublic suite_ExprPublic;

static CxxTest::List Tests_ExprPublic = { 0, 0 };
CxxTest::StaticSuiteDescription suiteDescription_ExprPublic( "../../../test/unit/expr/expr_public.h", 31, "ExprPublic", suite_ExprPublic, Tests_ExprPublic );

static class TestDescription_suite_ExprPublic_testDefaultCtor : public CxxTest::RealTestDescription {
public:
 TestDescription_suite_ExprPublic_testDefaultCtor() : CxxTest::RealTestDescription( Tests_ExprPublic, suiteDescription_ExprPublic, 111, "testDefaultCtor" ) {}
 void runTest() { suite_ExprPublic.testDefaultCtor(); }
} testDescription_suite_ExprPublic_testDefaultCtor;

static class TestDescription_suite_ExprPublic_testCtors : public CxxTest::RealTestDescription {
public:
 TestDescription_suite_ExprPublic_testCtors() : CxxTest::RealTestDescription( Tests_ExprPublic, suiteDescription_ExprPublic, 117, "testCtors" ) {}
 void runTest() { suite_ExprPublic.testCtors(); }
} testDescription_suite_ExprPublic_testCtors;

static class TestDescription_suite_ExprPublic_testAssignment : public CxxTest::RealTestDescription {
public:
 TestDescription_suite_ExprPublic_testAssignment() : CxxTest::RealTestDescription( Tests_ExprPublic, suiteDescription_ExprPublic, 144, "testAssignment" ) {}
 void runTest() { suite_ExprPublic.testAssignment(); }
} testDescription_suite_ExprPublic_testAssignment;

static class TestDescription_suite_ExprPublic_testEquality : public CxxTest::RealTestDescription {
public:
 TestDescription_suite_ExprPublic_testEquality() : CxxTest::RealTestDescription( Tests_ExprPublic, suiteDescription_ExprPublic, 158, "testEquality" ) {}
 void runTest() { suite_ExprPublic.testEquality(); }
} testDescription_suite_ExprPublic_testEquality;

static class TestDescription_suite_ExprPublic_testComparison : public CxxTest::RealTestDescription {
public:
 TestDescription_suite_ExprPublic_testComparison() : CxxTest::RealTestDescription( Tests_ExprPublic, suiteDescription_ExprPublic, 173, "testComparison" ) {}
 void runTest() { suite_ExprPublic.testComparison(); }
} testDescription_suite_ExprPublic_testComparison;

static class TestDescription_suite_ExprPublic_testGetKind : public CxxTest::RealTestDescription {
public:
 TestDescription_suite_ExprPublic_testGetKind() : CxxTest::RealTestDescription( Tests_ExprPublic, suiteDescription_ExprPublic, 218, "testGetKind" ) {}
 void runTest() { suite_ExprPublic.testGetKind(); }
} testDescription_suite_ExprPublic_testGetKind;

static class TestDescription_suite_ExprPublic_testGetNumChildren : public CxxTest::RealTestDescription {
public:
 TestDescription_suite_ExprPublic_testGetNumChildren() : CxxTest::RealTestDescription( Tests_ExprPublic, suiteDescription_ExprPublic, 235, "testGetNumChildren" ) {}
 void runTest() { suite_ExprPublic.testGetNumChildren(); }
} testDescription_suite_ExprPublic_testGetNumChildren;

static class TestDescription_suite_ExprPublic_testOperatorFunctions : public CxxTest::RealTestDescription {
public:
 TestDescription_suite_ExprPublic_testOperatorFunctions() : CxxTest::RealTestDescription( Tests_ExprPublic, suiteDescription_ExprPublic, 252, "testOperatorFunctions" ) {}
 void runTest() { suite_ExprPublic.testOperatorFunctions(); }
} testDescription_suite_ExprPublic_testOperatorFunctions;

static class TestDescription_suite_ExprPublic_testGetType : public CxxTest::RealTestDescription {
public:
 TestDescription_suite_ExprPublic_testGetType() : CxxTest::RealTestDescription( Tests_ExprPublic, suiteDescription_ExprPublic, 273, "testGetType" ) {}
 void runTest() { suite_ExprPublic.testGetType(); }
} testDescription_suite_ExprPublic_testGetType;

static class TestDescription_suite_ExprPublic_testToString : public CxxTest::RealTestDescription {
public:
 TestDescription_suite_ExprPublic_testToString() : CxxTest::RealTestDescription( Tests_ExprPublic, suiteDescription_ExprPublic, 292, "testToString" ) {}
 void runTest() { suite_ExprPublic.testToString(); }
} testDescription_suite_ExprPublic_testToString;

static class TestDescription_suite_ExprPublic_testToStream : public CxxTest::RealTestDescription {
public:
 TestDescription_suite_ExprPublic_testToStream() : CxxTest::RealTestDescription( Tests_ExprPublic, suiteDescription_ExprPublic, 309, "testToStream" ) {}
 void runTest() { suite_ExprPublic.testToStream(); }
} testDescription_suite_ExprPublic_testToStream;

static class TestDescription_suite_ExprPublic_testIsNull : public CxxTest::RealTestDescription {
public:
 TestDescription_suite_ExprPublic_testIsNull() : CxxTest::RealTestDescription( Tests_ExprPublic, suiteDescription_ExprPublic, 341, "testIsNull" ) {}
 void runTest() { suite_ExprPublic.testIsNull(); }
} testDescription_suite_ExprPublic_testIsNull;

static class TestDescription_suite_ExprPublic_testIsConst : public CxxTest::RealTestDescription {
public:
 TestDescription_suite_ExprPublic_testIsConst() : CxxTest::RealTestDescription( Tests_ExprPublic, suiteDescription_ExprPublic, 353, "testIsConst" ) {}
 void runTest() { suite_ExprPublic.testIsConst(); }
} testDescription_suite_ExprPublic_testIsConst;

static class TestDescription_suite_ExprPublic_testGetConst : public CxxTest::RealTestDescription {
public:
 TestDescription_suite_ExprPublic_testGetConst() : CxxTest::RealTestDescription( Tests_ExprPublic, suiteDescription_ExprPublic, 421, "testGetConst" ) {}
 void runTest() { suite_ExprPublic.testGetConst(); }
} testDescription_suite_ExprPublic_testGetConst;

static class TestDescription_suite_ExprPublic_testGetExprManager : public CxxTest::RealTestDescription {
public:
 TestDescription_suite_ExprPublic_testGetExprManager() : CxxTest::RealTestDescription( Tests_ExprPublic, suiteDescription_ExprPublic, 446, "testGetExprManager" ) {}
 void runTest() { suite_ExprPublic.testGetExprManager(); }
} testDescription_suite_ExprPublic_testGetExprManager;

#include <cxxtest/Root.cpp>
const char* CxxTest::RealWorldDescription::_worldName = "cxxtest";
