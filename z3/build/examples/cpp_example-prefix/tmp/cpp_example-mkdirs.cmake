# Distributed under the OSI-approved BSD 3-Clause License.  See accompanying
# file Copyright.txt or https://cmake.org/licensing for details.

cmake_minimum_required(VERSION 3.5)

# If CMAKE_DISABLE_SOURCE_CHANGES is set to true and the source directory is an
# existing directory in our source tree, calling file(MAKE_DIRECTORY) on it
# would cause a fatal error, even though it would be a no-op.
if(NOT EXISTS "/Users/wwq/z3/examples/c++")
  file(MAKE_DIRECTORY "/Users/wwq/z3/examples/c++")
endif()
file(MAKE_DIRECTORY
  "/Users/wwq/z3/build/examples/cpp_example_build_dir"
  "/Users/wwq/z3/build/examples/cpp_example-prefix"
  "/Users/wwq/z3/build/examples/cpp_example-prefix/tmp"
  "/Users/wwq/z3/build/examples/cpp_example-prefix/src/cpp_example-stamp"
  "/Users/wwq/z3/build/examples/cpp_example-prefix/src"
  "/Users/wwq/z3/build/examples/cpp_example-prefix/src/cpp_example-stamp"
)

set(configSubDirs )
foreach(subDir IN LISTS configSubDirs)
    file(MAKE_DIRECTORY "/Users/wwq/z3/build/examples/cpp_example-prefix/src/cpp_example-stamp/${subDir}")
endforeach()
if(cfgdir)
  file(MAKE_DIRECTORY "/Users/wwq/z3/build/examples/cpp_example-prefix/src/cpp_example-stamp${cfgdir}") # cfgdir has leading slash
endif()
