
#ifndef _STOKE_TEST_CFG_CFG_H
#define _STOKE_TEST_CFG_CFG_H

#include <sstream>
#include <exception>
#include <stdexcept>

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
  auto actual_livein = cfg.live_outs(cfg.get_loc(0));

  ASSERT_EQ(expected_livein, actual_livein);


}


}


#endif
