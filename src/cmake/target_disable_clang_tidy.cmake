include_guard()

# Disable clang-tidy for target
function(target_disable_clang_tidy target_name)
  message(TRACE "[${target_name}] - function 'target_disable_clang_tidy'")

  find_program(CLANGTIDY clang-tidy)
  if(NOT CLANGTIDY)
    message(WARNING "[${target_name}] clang tidy was not found - skipping disabling clang tidy for '${target_name}'")
  else()
    set_target_properties(${target_name} PROPERTIES C_CLANG_TIDY "")
    set_target_properties(${target_name} PROPERTIES CXX_CLANG_TIDY "")
  endif()
endfunction()