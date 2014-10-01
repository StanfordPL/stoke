
#ifndef __STOKE_TEST_DATABASE_NORMALIZER
#define __STOKE_TEST_DATABASE_NORMALIZER

#include "tests/database/test_database.h"

#include "src/database/normalizer.h"

namespace stoke {
namespace test {
namespace database {

/* This tests the normalization procedure that takes chunks from
 * the source code and then does something with them. */
TEST_F(DatabaseTest, ExtractChunks) {

  for (auto fixture : fixtures_) {
    //check that this fixture has data
    Json::Value json = fixture.get_test_data("normalization");
    if (!json.isObject() || !json.isMember("chunks"))
      continue;

    x64asm::Code code = fixture.get_code();
    int expected = json["chunks"].asInt();

    //count the number of normalized chunks
    int chunk_count = 0;

    auto upload_fun = [&chunk_count] (Chunk* c) {
      chunk_count++;
    };

    Normalizer n;
    n.reset_pipeline(upload_fun);
    n << n.extract_chunks_of_depth(0);
    n.run(code);

    // Check that the database has the right stuff
    ASSERT_EQ(expected, chunk_count);
  }

}




}}}

#endif

