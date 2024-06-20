#include <string>
#include <vector>

namespace aux::text {

/// Returns the string "Hello world!"
[[nodiscard]] auto get_hello_world() -> std::string;

/// Returns a new string:  the `texts`, concatenated byt the `separator`.
[[nodiscard]] auto concat(std::string const& separator, std::vector<std::string> const& texts) -> std::string;

}  // namespace aux::text
