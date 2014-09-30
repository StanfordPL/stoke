
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
    // TODO:
    // create standard file format
    // read fixtures in through this format
    // write code to go through directory and load all of them

      virtual void SetUp() {

        std::string folder = "/home/berkeley/stoke/tests/fixtures/";

        DIR *dp = opendir(folder.c_str());
        if (dp == NULL) {
          throw new std::runtime_error("Could not open fixtures directory.");
        }


        struct dirent *dirp;
        while((dirp = readdir(dp))) {

          // check if filename ends in .json
          std::string filename(dirp->d_name);
          if(filename.length() <= 5)
            continue;
          size_t extension_pos = filename.rfind(".json");
          if (extension_pos != filename.length() - 5)
            continue;

          std::string filepath = folder + "/" + filename; 
          Fixture f(filepath);
          fixtures_.push_back(f);
        }

      }
      
      std::vector<Fixture> fixtures_;
};



}}

#endif

