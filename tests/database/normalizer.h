
#ifndef __STOKE_TEST_DATABASE_NORMALIZER
#define __STOKE_TEST_DATABASE_NORMALIZER

#include "tests/database/test_database.h"

#include "src/database/normalizer.h"

namespace stoke_test {

/* This tests the normalization procedure that takes chunks from
 * the source code and then does something with them. */
TEST_P(FixtureTest, ExtractChunks) {

  //check that this fixture has data
  Fixture fixture = GetParam();
  Json::Value json = fixture.get_test_data("normalization");
  if (!json.isObject() || !json.isMember("chunks"))
    return;

  x64asm::Code code = fixture.get_code();
  int expected = json["chunks"].asInt();

  //count the number of normalized chunks
  int chunk_count = 0;

  auto upload_fun = [&chunk_count] (stoke::Chunk* c) {
    chunk_count++;
  };

  stoke::Normalizer n;
  n.reset_pipeline(upload_fun);
  n << n.extract_chunks_of_depth(0);
  n.run(code);

  // Check that the database has the right stuff
  ASSERT_EQ(expected, chunk_count);
}


TEST_P(FixtureTest, NormalizeRegisters) {

  //check that this fixture has data
  Fixture fixture = GetParam();
  Json::Value json = fixture.get_test_data("normalization");
  if (!json.isObject() || !json.isMember("chunks"))
    return;

  x64asm::Code code = fixture.get_code();
  int expected = json["chunks"].asInt();

  //count the number of normalized chunks
  int chunk_count = 0;

  auto upload_fun = [&chunk_count] (stoke::Chunk* c) {
    chunk_count++;
  };

  stoke::Normalizer n;
  n.reset_pipeline(upload_fun);
  n << n.normalize_registers();
  n << n.extract_chunks_of_depth(0);
  n.run(code);

  // Check that the database has the right stuff
  ASSERT_EQ(expected, chunk_count);
}


TEST_P(FixtureTest, NormalizeConstants) {

  //check that this fixture has data
  Fixture fixture = GetParam();
  Json::Value json = fixture.get_test_data("normalization");
  if (!json.isObject() || !json.isMember("chunks"))
    return;

  x64asm::Code code = fixture.get_code();
  int expected = json["chunks"].asInt();

  //count the number of normalized chunks
  int chunk_count = 0;

  auto upload_fun = [&chunk_count] (stoke::Chunk* c) {
    chunk_count++;
  };

  stoke::Normalizer n;
  n.normalize_constants();
  n.reset_pipeline(upload_fun);
  n << n.extract_chunks_of_depth(0);
  n.run(code);

  // Check that the database has the right stuff
  ASSERT_EQ(expected, chunk_count);
}





}

#endif

