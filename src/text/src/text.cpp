module;

#include <algorithm>
#include <string>
#include <vector>

module aux.text;

namespace aux::text {

auto get_hello_world() -> std::string {
	return "Hello world!";
};

auto join(std::string const& separator, std::vector<std::string> const& texts) -> std::string {
	auto binary_fold_op = [separator](std::string fold_result, std::string const& next) { //NOLINT(*value-param)
		return fold_result += separator + next;
	};

	return std::ranges::fold_left_first(texts, binary_fold_op).value_or("");
}

}  // namespace aux::text
