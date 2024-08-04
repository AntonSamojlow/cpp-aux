# CMake project file

# dependencies
find_package(GTest CONFIG REQUIRED VERSION 1.14)

# main library
add_library(text src/text.cpp)
target_sources(text
  PUBLIC
    FILE_SET CXX_MODULES FILES
      include/text.cxxm
)

target_link_libraries(text)
log_target_properties(text MODE STATUS)

# tests
enable_testing()

add_executable(text.test test/text.test.cpp)
target_link_libraries(text.test PRIVATE text GTest::gtest GTest::gtest_main)
log_target_properties(text.test MODE STATUS)


# install
install(TARGETS text LIBRARY DESTINATION lib)
