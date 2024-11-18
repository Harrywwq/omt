# Distributed under the OSI-approved BSD 3-Clause License.  See accompanying
# file Copyright.txt or https://cmake.org/licensing for details.

cmake_minimum_required(VERSION 3.5)

# If CMAKE_DISABLE_SOURCE_CHANGES is set to true and the source directory is an
# existing directory in our source tree, calling file(MAKE_DIRECTORY) on it
# would cause a fatal error, even though it would be a no-op.
if(NOT EXISTS "/Users/wwq/z3/examples/tptp")
  file(MAKE_DIRECTORY "/Users/wwq/z3/examples/tptp")
endif()
file(MAKE_DIRECTORY
  "/Users/wwq/z3/build/examples/tptp_build_dir"
  "/Users/wwq/z3/build/examples/z3_tptp5-prefix"
  "/Users/wwq/z3/build/examples/z3_tptp5-prefix/tmp"
  "/Users/wwq/z3/build/examples/z3_tptp5-prefix/src/z3_tptp5-stamp"
  "/Users/wwq/z3/build/examples/z3_tptp5-prefix/src"
  "/Users/wwq/z3/build/examples/z3_tptp5-prefix/src/z3_tptp5-stamp"
)

set(configSubDirs )
foreach(subDir IN LISTS configSubDirs)
    file(MAKE_DIRECTORY "/Users/wwq/z3/build/examples/z3_tptp5-prefix/src/z3_tptp5-stamp/${subDir}")
endforeach()
if(cfgdir)
  file(MAKE_DIRECTORY "/Users/wwq/z3/build/examples/z3_tptp5-prefix/src/z3_tptp5-stamp${cfgdir}") # cfgdir has leading slash
endif()
