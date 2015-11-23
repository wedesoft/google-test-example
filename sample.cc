#include <gtest/gtest.h>


int Factorial(int n)
{
  return 1;
}

TEST(FactorialTest, HandlesZeroInput) {
  EXPECT_EQ(1, Factorial(0));
}

TEST(FactorialTest, HandlesPositiveInput) {
  EXPECT_EQ(1, Factorial(1));
  EXPECT_EQ(2, Factorial(2));
  EXPECT_EQ(6, Factorial(3));
  EXPECT_EQ(40320, Factorial(8));
}

#include <gmock/gmock.h>

class Database
{
public:
  virtual void connect(const char *, const char *) = 0;
};

void read_entries(Database &db, const char *user, const char *password)
{
}

class MockDatabase: public Database
{
public:
  MOCK_METHOD2(connect, void(const char *, const char *));
};

TEST(ReadEntriesTest, ConnectsToDatabase) {
  MockDatabase db;
  EXPECT_CALL(db, connect("user", "password")).Times(1);
  read_entries(db, "user", "password");
}

int main(int argc, char **argv) {
  ::testing::InitGoogleTest(&argc, argv);
  return RUN_ALL_TESTS();
}
