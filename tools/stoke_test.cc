
#include <exception>

#include "gtest/gtest.h"
#include "tests/tests.h"

namespace stoke_test {

int main(int argc, char** argv) {


  testing::InitGoogleTest(&argc, argv);
  return RUN_ALL_TESTS();

}

}
