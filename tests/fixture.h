// Copyright 2013-2015 Stanford University
//
// Licensed under the Apache License, Version 2.0 (the License);
// you may not use this file except in compliance with the License.
// You may obtain a copy of the License at
//
//     http://www.apache.org/licenses/LICENSE-2.0
//
// Unless required by applicable law or agreed to in writing, software
// distributed under the License is distributed on an AS IS BASIS,
// WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
// See the License for the specific language governing permissions and
// limitations under the License.


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


class CodeFixture {

public:
  CodeFixture(std::string filename);

  std::string get_name() const {
    return std::string(name_);
  }
  x64asm::Code get_code() const {
    return x64asm::Code(code_);
  }

  Json::Value get_test_data(std::string test_name) {
    return test_data_[test_name];
  }

  friend std::ostream& operator<<(std::ostream& os, const CodeFixture& f);

  bool operator==(const CodeFixture& f) const {
    return false;
  }
private:
  std::string name_;
  std::string filename_;
  std::string comment_;

  x64asm::Code code_;

  std::map<std::string, Json::Value> test_data_;
};



class CodeFixtureTestInit {

public:
  CodeFixtureTestInit() {
    generate_fixtures();
  }

  static std::vector<CodeFixture> get_fixtures() {
    if (fixtures_.size() == 0) {
      generate_fixtures();
    }

    return fixtures_;
  }

private:
  static void generate_fixtures();

  static std::vector<CodeFixture> fixtures_;
};


class CodeFixtureTest : public ::testing::TestWithParam<CodeFixture> {

public:
  virtual void SetUp() {
    fixtures_ = std::vector<CodeFixture>(CodeFixtureTestInit::get_fixtures());
  }

protected:
  std::vector<CodeFixture> fixtures_;

};




#endif

