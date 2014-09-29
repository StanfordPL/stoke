
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
    // TODO:
    // create standard file format
    // read fixtures in through this format
    // write code to go through directory and load all of them

      virtual void SetUp() {

        x64asm::Code fixture;
        std::stringstream ss;

        fixture.clear();
        ss << "incq %rax" << std::endl;
        ss >> fixture;
        fixtures_.push_back(fixture);
        fixture_sizes_.push_back(1);

        fixture.clear();
        ss << "incq %rax" << std::endl;
        ss << "subq $0x1, %rax" << std::endl;
        ss >> fixture;
        fixtures_.push_back(fixture);
        fixture_sizes_.push_back(2);


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
