
/*
 * Author: Berkeley Churchill <berkeleychurchill@gmail.com>
 * Sep 23, 2014
 *
 * This class is for creating tests that require assembly code as inputs.  To
 * use it, one creates a subclass and then uses it as a "test case name" in a
 * TEST_F macro.
 */

#ifndef __STOKE_TEST_CODETEST
#define __STOKE_TEST_CODETEST

#include <vector>
#include <sstream>
#include <iostream>

#include "src/ext/x64asm/src/code.h"

class CodeTest : public ::testing::Test {

  protected:

      virtual void SetUp() {

        x64asm::Code fixture1;
        std::stringstream ss;
        ss << "incq %rax" << std::endl;
        ss >> fixture1;

        fixtures_.push_back(fixture1);
        fixture_sizes_.push_back(1);
      }
      
      std::vector<x64asm::Code> fixtures_;
      std::vector<int> fixture_sizes_;
};

TEST_F(CodeTest, SizesTriviallyWork) {

  size_t len = fixtures_.size();
  ASSERT_EQ(fixtures_.size(), fixture_sizes_.size());

  for(size_t i = 0; i < len; ++i) {
    ASSERT_EQ(fixtures_[i].size(), fixture_sizes_[i]);
  }

}

#endif
