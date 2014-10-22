

#include "src/state/cpu_state.h"
#include "src/stategen/stategen.h"
#include "src/database/serialize.h"

TEST(BSONSerializer, RegSetCarryFlag) {

  x64asm::RegSet rs = x64asm::RegSet::empty() + x64asm::eflags_cf;

  /* Serialize to string */
  std::string cf = TO_BSON(RegSet, rs);
  mongo::BSONObj obj = BSON("rs" << cf);
  EXPECT_EQ("{ %cf }", cf );

  /* Deserialize */
  x64asm::RegSet rs_;
  rs_ = FROM_BSON(RegSet, obj["rs"]);
  EXPECT_EQ(rs, rs_);

}


TEST(BSONSerializer, CpuStatesInvertible) {

  stoke::CpuState cs;

  stoke::Sandbox sb;
  stoke::StateGen sg(&sb);

  sg.get(cs);

  mongo::BSONObj obj = BSON( "tc" << TO_BSON( CpuState, cs ) );
  stoke::CpuState deserialized = FROM_BSON( CpuState, obj["tc"]);

  // These can help isolate a problem.
  EXPECT_EQ(cs.code,  deserialized.code);
  EXPECT_EQ(cs.gp,    deserialized.gp);
  EXPECT_EQ(cs.sse,   deserialized.sse);
  EXPECT_EQ(cs.rf,    deserialized.rf);
  EXPECT_EQ(cs.stack, deserialized.stack);
  EXPECT_EQ(cs.heap,  deserialized.heap);

  // This is the real test.
  EXPECT_EQ(cs,       deserialized);

}
