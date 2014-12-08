// Copyright 2013-2015 Eric Schkufza, Rahul Sharma, Berkeley Churchill, Stefan Heule
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


#ifndef _STOKE_TEST_CFG_CFG_H
#define _STOKE_TEST_CFG_CFG_H

#include <sstream>
#include <exception>
#include <stdexcept>
#include <set>

#include "src/cfg/cfg.h"
#include "src/ext/x64asm/src/reg_set.h"
#include "src/ext/cpputil/include/serialize/text_reader.h"

#include "tests/fixture.h"


x64asm::RegSet parse_regset_from_json(Json::Value json) {
  x64asm::RegSet rs;

  if (json.isArray()) {
    std::stringstream ss;
    ss << "{ ";
    for (size_t i = 0; i < json.size(); ++i) {
      ss << json.get(i, "").asString() << " ";
    }
    ss << "}";
    ss >> rs;
    return rs;


  } else if (json.isString()) {
    std::stringstream ss;
    ss << json.asString();
    ss >> rs;
    return rs;
  }

  throw std::runtime_error("expected array of registers for liveness");
}

TEST_P(CodeFixtureTest, LivenessAnalysis) {

  //Read the data from the fixture
  CodeFixture fixture = GetParam();
  auto json = fixture.get_test_data("liveness");

  if (!json.isMember("given liveout") ||
      !json.isMember("expected livein")) {
    return;
  }

  x64asm::RegSet given_liveout =
    parse_regset_from_json(json["given liveout"]);

  x64asm::RegSet expected_livein =
    parse_regset_from_json(json["expected livein"]);

  // Construct the CFG

  stoke::Cfg cfg(
    fixture.get_code(),
    x64asm::RegSet::empty(),
    given_liveout);

  auto actual_livein = cfg.live_ins(cfg.get_loc(0));

  ASSERT_EQ(expected_livein, actual_livein);


}


TEST_P(CodeFixtureTest, IsSound) {

  //Read the data from the fixture
  CodeFixture fixture = GetParam();
  auto json = fixture.get_test_data("is_sound");

  if (!json.isMember("live_in") ||
      !json.isMember("live_out") ||
      !json.isMember("result")) {
    std::cout << "     [no soundness data found]   " << std::endl;
    return;
  }

  x64asm::RegSet live_in =
    parse_regset_from_json(json["live_in"]);

  x64asm::RegSet live_out =
    parse_regset_from_json(json["live_out"]);

  bool result = json["result"].asBool();

  // Construct the CFG

  stoke::Cfg cfg(fixture.get_code(), live_in, live_out);
  EXPECT_EQ(result, cfg.is_sound());

}





TEST_P(CodeFixtureTest, CFGGetExit) {

  CodeFixture fixture = GetParam();
  auto json = fixture.get_test_data("cfg");

  if (!json.isMember("get_exit")) {
    return;
  }

  stoke::Cfg cfg(fixture.get_code(),
                 x64asm::RegSet::empty(),
                 x64asm::RegSet::empty());

  ASSERT_EQ((uint64_t)json["get_exit"].asInt(), cfg.get_exit());
}


TEST_P(CodeFixtureTest, CFGNumInstr) {

  CodeFixture fixture = GetParam();
  auto json = fixture.get_test_data("cfg");

  if (!json.isMember("num_instrs")) {
    return;
  }

  stoke::Cfg cfg(fixture.get_code(),
                 x64asm::RegSet::empty(),
                 x64asm::RegSet::empty());


  const Json::Value& num_instrs_array = json["num_instrs"];
  ASSERT_EQ(num_instrs_array.size(), cfg.num_blocks());

  size_t total = 0;
  for (size_t i = 0; i < num_instrs_array.size(); ++i) {
    size_t expected_instrs = num_instrs_array.get(i, Json::Value(1)).asInt();
    total += expected_instrs;
    EXPECT_EQ(expected_instrs, cfg.num_instrs(i)) << " when i=" << i;
  }

  EXPECT_EQ(total, fixture.get_code().size());
}


TEST_P(CodeFixtureTest, CFGNestingDepth) {

  CodeFixture fixture = GetParam();
  auto json = fixture.get_test_data("cfg");

  if (!json.isMember("nesting_depth")) {
    return;
  }

  stoke::Cfg cfg(fixture.get_code(),
                 x64asm::RegSet::empty(),
                 x64asm::RegSet::empty());


  const Json::Value& nesting_depth_array = json["nesting_depth"];
  ASSERT_EQ(nesting_depth_array.size(), cfg.num_blocks());

  for (size_t i = 0; i < nesting_depth_array.size(); ++i) {
    uint64_t expected_depth = nesting_depth_array.get(i, Json::Value(1)).asInt();
    EXPECT_EQ(expected_depth, cfg.nesting_depth(i)) << " for block " << i;
  }
}


TEST_P(CodeFixtureTest, CFGReachable) {

  CodeFixture fixture = GetParam();
  auto json = fixture.get_test_data("cfg");

  if (!json.isMember("reachable")) {
    return;
  }

  auto json_reachable = json["reachable"];

  stoke::Cfg cfg(fixture.get_code(),
                 x64asm::RegSet::empty(),
                 x64asm::RegSet::empty());


  std::set<int> expected_reachable_set;
  for (size_t i = 0; i < json_reachable.size(); ++i) {
    expected_reachable_set.insert(json_reachable.get(i, Json::Value(0)).asInt());
  }

  for (size_t i = 0; i < cfg.num_blocks(); ++i) {
    if (expected_reachable_set.find(i) != expected_reachable_set.end()) {
      EXPECT_TRUE(cfg.is_reachable(i))
          << "block " << i << " is not reachable but should be.";
    } else {
      EXPECT_FALSE(cfg.is_reachable(i))
          << "block " << i << " is reachable but shouldn't be.";
    }
  }



}
#endif
