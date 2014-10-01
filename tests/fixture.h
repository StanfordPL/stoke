
#ifndef __STOKE_TEST_FIXTURE_H
#define __STOKE_TEST_FIXTURE_H

#include "src/ext/x64asm/src/reg_set.h"
#include "src/ext/x64asm/src/code.h"

#include "gtest/gtest.h"

#include <jsoncpp/json/json.h>

#include <map>
#include <string>
#include <exception>
#include <stdexcept>

#include <dirent.h>
#include <unistd.h>
#include <sys/stat.h>
#include <sys/types.h>
#include <cstdio>


namespace stoke {
namespace test {


class Fixture {

  public:
    Fixture(std::string filename);

    std::string get_name() { return std::string(name_); }
    x64asm::Code get_code() { return x64asm::Code(code_); }

    Json::Value get_test_data(std::string test_name) {
      return test_data_[test_name];
    }

  private:
    std::string name_;

    x64asm::Code code_;

    std::map<std::string, Json::Value> test_data_;
};


class FixtureTest : public ::testing::Test {

  protected:

    virtual void SetUp(); 

    std::vector<Fixture> fixtures_;

};



}}

#endif

