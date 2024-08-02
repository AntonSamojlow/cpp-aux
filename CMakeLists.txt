cmake_minimum_required (VERSION 3.28)

project ("cpp-aux"
  VERSION 0.0.1
  DESCRIPTION ""
  HOMEPAGE_URL "https://github.com/AntonSamojlow/arena/cpp-aux"
  LANGUAGES CXX
)

set(CMAKE_CXX_STANDARD 23)

option(BUILD_SHARED_LIBS "Build using shared libraries" ON)

if(BUILD_SHARED_LIBS)
  set(CMAKE_POSITION_INDEPENDENT_CODE ON)
endif()

# log selected cmake vars
set(LOGVARS
    CMAKE_CXX_COMPILER
    CMAKE_CXX_COMPILER_ID
    CMAKE_CXX_COMPILER_VERSION
    CMAKE_COMPILER_IS_GNUCXX
    CMAKE_BUILD_TYPE
    CMAKE_INSTALL_PREFIX
    CMAKE_PREFIX_PATH
    CMAKE_INSTALL_RPATH
    CMAKE_MODULE_PATH
    BUILD_SHARED_LIBS
    CMAKE_POSITION_INDEPENDENT_CODE
)
foreach(property IN LISTS LOGVARS)
  message(STATUS "${property}=${${property}}")
endforeach()

include(src/cmake/log_target_properties.cmake)
include(src/cmake/enable_clang_tidy.cmake)
include(src/cmake/target_disable_clang_tidy.cmake)

if(ENABLE_CLANG_TIDY)
  enable_clang_tidy()
endif()


# include sub-projects
add_subdirectory (src/text)
