
#include "src/ext/gtest/gtest.h"
#include "tests/tests.h"

int main(int argc, char** argv) {
  testing::InitGoogleTest(&argc, argv);
  return RUN_ALL_TESTS();
}
