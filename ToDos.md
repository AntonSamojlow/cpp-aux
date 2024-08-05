# ToDos

## Find out how to distribute a module-based library via vcpkg

Modules are orthogonal to producing static/dynamic libraries.
So how to we distribute them via vcpkg?

Thoughts:
For a large module with many partitions and implentations:
A) Compiling the module library to a static one and shipping it.
B) Compiling the module library to a shared one, wrapping all exports with dllexport-platform specific macros and shipping it. Is this actually worth the trouble??

For a "small" module consisting of one of few files, similar to a header-only library:
C) No precompilation, just shiping the files ./include/**.cxxm and appropriate usage instructions for cmake?

## General

1. setup github ci (no sonar, just raw clang-based toolings check... ps needed?)
2. confgure clangd, clang-tidy, clang-format

- clang-tidy cmake builds are not working properly anymore with modules: <https://discourse.llvm.org/t/clang-tidy-doesnt-find-standard-c-modules-despite-providing-compilation-database-and-prebuilt-modules-path/71326/19>

3. add vcpkg port tests?
4. string join/concat: test performance, measure ctor calls, copies and moves?
