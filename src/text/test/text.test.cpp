#include <gtest/gtest.h>
import aux.text;

TEST(BaseInterfaceTests, HelloWorldTest) {
	EXPECT_EQ(aux::text::get_hello_world(), "Hello world!");
}

TEST(BaseInterfaceTests, JoinTest) {
	const std::vector<std::string> texts = {
		"This",
		"is",
		"a",
		"sentence",
	};

	EXPECT_EQ(aux::text::join(" ", texts), "This is a sentence");
	EXPECT_EQ(aux::text::join("***", texts), "This***is***a***sentence");
	EXPECT_EQ(aux::text::join(",", {"one-word"}), "one-word");
	EXPECT_EQ(aux::text::join(",", {}), "");
}
