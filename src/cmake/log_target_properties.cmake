# custom cmake function to help debug targets

include_guard()

# logs target properties, mainly for debugging - hence the MODE (message level) defaults to DEBUG
function(log_target_properties TARGET)
  set(options PRINT_MISSING)
  set(oneValueArgs MODE)

  cmake_parse_arguments(
    arg
    "${options}"
    "${oneValueArgs}"
    "no-multi-value-args"
    "${ARGN}"
  )

  if(NOT TARGET)
    message(SEND_ERROR "custom function 'log_target_properties': required first arg 'target' missing")
  endif()

  if(NOT arg_MODE)
    set(arg_MODE DEBUG)
  endif()

  set(QUERYPROPERTIES
      SOURCES
      BUILD_RPATH
      BUILD_RPATH_USE_ORIGIN
      BUILD_WITH_INSTALL_NAME_DIR
      BUILD_WITH_INSTALL_RPATH

      COMPILE_DEFINITIONS
      COMPILE_FEATURES
      COMPILE_FLAGS
      COMPILE_OPTIONS

      CXX_MODULE_DIRS
      CXX_MODULE_SET
      CXX_MODULE_STD

      CXX_STANDARD

      IMPORTED_CXX_MODULES_COMPILE_DEFINITIONS
      IMPORTED_CXX_MODULES_COMPILE_FEATURES
      IMPORTED_CXX_MODULES_COMPILE_OPTIONS
      IMPORTED_CXX_MODULES_INCLUDE_DIRECTORIES
      IMPORTED_CXX_MODULES_LINK_LIBRARIES

      INCLUDE_DIRECTORIES
      INTERFACE_COMPILE_DEFINITIONS
      INTERFACE_COMPILE_FEATURES
      INTERFACE_COMPILE_OPTIONS
      INTERFACE_INCLUDE_DIRECTORIES
      INTERFACE_LINK_DIRECTORIES
      INTERFACE_LINK_LIBRARIES
      INTERFACE_LINK_OPTIONS
      INTERPROCEDURAL_OPTIMIZATION
      INSTALL_NAME_DIR
      INSTALL_REMOVE_ENVIRONMENT_RPATH
      INSTALL_RPATH
      INSTALL_RPATH_USE_LINK_PATH

      LINK_DIRECTORIES
      LINK_LIBRARIES
      LINK_OPTIONS

      POSITION_INDEPENDENT_CODE

      SKIP_BUILD_RPATH
  )

  foreach(property IN LISTS QUERYPROPERTIES)
    get_target_property(value ${TARGET} ${property})
    if(value)
      message("${arg_MODE}" "[${TARGET}] ${property}: ${value}")
    elseif(arg_PRINT_MISSING)
      message("${arg_MODE}" "[${TARGET}] ${property}: -NA-")
    endif()
  endforeach()

endfunction()
