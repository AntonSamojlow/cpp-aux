#include <gtest/gtest.h>
#include <text.h>

TEST(BaseInterfaceTests, HelloWorldTest) {
	EXPECT_EQ(aux::text::get_hello_world(), "Hello world!");
}

TEST(BaseInterfaceTests, ConcatTest) {
	const std::vector<std::string> texts =
	{
		"This",
		"is",
		"a",
		"sentence",
	};

	EXPECT_EQ(aux::text::concat(" ", texts), "This is a sentence");
	EXPECT_EQ(aux::text::concat("***", texts), "This***is***a***sentence");
	EXPECT_EQ(aux::text::concat(",", {"one-word"}), "one-word");
	EXPECT_EQ(aux::text::concat(",", {}), "");

}
