
#ifndef __STOKE_TEST_DATABASE_NORMALIZER
#define __STOKE_TEST_DATABASE_NORMALIZER

#include "src/database/normalizer.h"
#include "tests/database/test_database.h"

namespace stoke {
namespace test {
namespace database {

/* This primarily tests the normalization procedure
   that takes chunks from the source code and then
   puts them into a database. */
TEST_F(DatabaseTest, ExtractChunks) {

  x64asm::Code code = fix_4chunks;

  // Setup the database and normalization procedure //
  TestDatabase d;

  auto upload_fun = [&d] (Chunk* c) {
    d.insert(*c, (std::string)"test"); 
  };

  Normalizer n;
  n.reset_pipeline(upload_fun);
  n << n.extract_chunks_of_depth(0);
  n.run(code);

  // Check that the database has the right stuff
  ASSERT_EQ(4, d.count());

}


TEST_F(DatabaseTest, NormalizeRegisters) {

  x64asm::Code code = fix_4chunks;

  // Setup the database and normalization procedure //
  TestDatabase d;

  auto upload_fun = [&d] (Chunk* c) {
    d.insert(*c, (std::string)"test"); 
  };

  Normalizer n;
  n.reset_pipeline(upload_fun);
  n << n.normalize_registers();
  n << n.extract_chunks_of_depth(0);
  n.run(code);

  // Check that the database has the right stuff
  ASSERT_EQ(4, d.count());

}


TEST_F(DatabaseTest, NormalizeConstants) {

  x64asm::Code code = fix_4chunks;

  // Setup the database and normalization procedure //
  TestDatabase d;

  auto upload_fun = [&d] (Chunk* c) {
    d.insert(*c, (std::string)"test"); 
  };

  Normalizer n;
  n.reset_pipeline(upload_fun);
  n << n.normalize_constants();
  n << n.extract_chunks_of_depth(0);
  n.run(code);

  // Check that the database has the right stuff
  ASSERT_EQ(4, d.count());

}


}}}

#endif

