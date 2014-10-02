
#ifndef _STOKE_TEST_CFG_CFG_H
#define _STOKE_TEST_CFG_CFG_H

#include <sstream>
#include <exception>
#include <stdexcept>
#include <set>

#include "src/args/reg_set.h"
#include "src/cfg/cfg.h"
#include "src/ext/x64asm/src/reg_set.h"
#include "src/ext/cpputil/include/serialize/text_reader.h"

namespace stoke_test {

x64asm::RegSet parse_regset_from_json(Json::Value json) {
  x64asm::RegSet rs;
  stoke::RegSetReader rsr;

  if (json.isArray()) {
    std::stringstream ss;
    ss << "{ ";
    for(size_t i = 0; i < json.size(); ++i) {
      ss << json.get(i,"").asString() << " ";
    }
    ss << "}";
    rsr(ss, rs);
    return rs;


  } else if (json.isString()) {
    std::stringstream ss;
    ss << json.asString();
    rsr(ss, rs);
    return rs;
  }

  throw std::runtime_error("expected array of registers for liveness");
}

TEST_P(FixtureTest, LivenessAnalysis) {

  //Read the data from the fixture
  Fixture fixture = GetParam();
  auto json = fixture.get_test_data("liveness");

  if (!json.isMember("given liveout") ||
      !json.isMember("expected livein"))
    return;

  x64asm::RegSet given_liveout = 
      parse_regset_from_json(json["given liveout"]);

  x64asm::RegSet expected_livein = 
      parse_regset_from_json(json["expected livein"]);

  // Construct the CFG

  stoke::Cfg cfg(
      fixture.get_code(), 
      x64asm::RegSet::empty(), 
      given_liveout);

  // Run the liveness analysis
  cfg.recompute();
  auto actual_livein = cfg.live_ins(cfg.get_loc(0));

  ASSERT_EQ(expected_livein, actual_livein);


}

TEST_P(FixtureTest, CFGNumBlocks) {

  Fixture fixture = GetParam();
  auto json = fixture.get_test_data("cfg");

  if (!json.isMember("num_blocks"))
    return;

  stoke::Cfg cfg(fixture.get_code(), 
                 x64asm::RegSet::empty(),
                 x64asm::RegSet::empty());

  cfg.recompute();
  
  ASSERT_EQ(json["num_blocks"].asInt(), cfg.num_blocks());
}

TEST_P(FixtureTest, CFGGetExit) {

  Fixture fixture = GetParam();
  auto json = fixture.get_test_data("cfg");

  if (!json.isMember("get_exit"))
    return;

  stoke::Cfg cfg(fixture.get_code(), 
                 x64asm::RegSet::empty(),
                 x64asm::RegSet::empty());

  cfg.recompute();
  
  ASSERT_EQ(json["get_exit"].asInt(), cfg.get_exit());
}


TEST_P(FixtureTest, CFGNumInstr) {

  Fixture fixture = GetParam();
  auto json = fixture.get_test_data("cfg");

  if (!json.isMember("num_instrs"))
    return;

  stoke::Cfg cfg(fixture.get_code(), 
                 x64asm::RegSet::empty(),
                 x64asm::RegSet::empty());

  cfg.recompute();
 

  const Json::Value& num_instrs_array = json["num_instrs"];
  ASSERT_EQ(num_instrs_array.size(), cfg.num_blocks());

  size_t total = 0;
  for(size_t i = 0; i < num_instrs_array.size(); ++i) {
    auto expected_instrs = num_instrs_array.get(i, Json::Value(1)).asInt();
    total += expected_instrs;
    ASSERT_EQ(expected_instrs, cfg.num_instrs(i)) << " when i=" << i;
  }

  ASSERT_EQ(total, fixture.get_code().size());
}


TEST_P(FixtureTest, CFGNestingDepth) {

  Fixture fixture = GetParam();
  auto json = fixture.get_test_data("cfg");

  if (!json.isMember("nesting_depth"))
    return;

  stoke::Cfg cfg(fixture.get_code(), 
                 x64asm::RegSet::empty(),
                 x64asm::RegSet::empty());

  cfg.recompute();
 

  const Json::Value& nesting_depth_array = json["nesting_depth"];
  ASSERT_EQ(nesting_depth_array.size(), cfg.num_blocks());

  for(size_t i = 0; i < nesting_depth_array.size(); ++i) {
    auto expected_depth = nesting_depth_array.get(i, Json::Value(1)).asInt();
    ASSERT_EQ(expected_depth, cfg.nesting_depth(i)) << " for block " << i;
  }
}


TEST_P(FixtureTest, CFGReachable) {
  
  Fixture fixture = GetParam();
  auto json = fixture.get_test_data("cfg");

  if (!json.isMember("reachable"))
    return;

  auto json_reachable = json["reachable"];

  stoke::Cfg cfg(fixture.get_code(), 
                 x64asm::RegSet::empty(),
                 x64asm::RegSet::empty());

  cfg.recompute();
 

  std::set<int> expected_reachable_set;
  for(size_t i = 0; i < json_reachable.size(); ++i) {
    expected_reachable_set.insert(json_reachable.get(i, Json::Value(0)).asInt());
  }

  for(size_t i = 0; i < cfg.num_blocks(); ++i) {
    if (expected_reachable_set.find(i) != expected_reachable_set.end()) {
      ASSERT_TRUE(cfg.is_reachable(i)) 
        << "block " << i << " is not reachable but should be.";
    } else {
      ASSERT_FALSE(cfg.is_reachable(i)) 
        << "block " << i << " is reachable but shouldn't be.";
    }
  }


}

}
#endif
