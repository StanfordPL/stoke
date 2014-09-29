
/*
 * Author: Berkeley Churchill <berkeleychurchill@gmail.com>
 * September 22, 2014
 *
 * This is to illustrate the basic way to test stuff
 */

TEST(TrivialTest, Addition) {
  ASSERT_EQ(1+1, 2);
}

TEST(TrivialTest, Subtraction) {
  ASSERT_EQ(1-1, 0);
}

TEST(TrivialTest, BooleanTrue) {
  ASSERT_TRUE((true || false) && true);
}

TEST(TrivialTest, BooleanFalse) {
  ASSERT_FALSE((true && false) || false);
}

TEST(TrivialTest, StringCaseInsensitiveEquality) {
  ASSERT_STRCASEEQ("Hello, World", "hello, world");
}
