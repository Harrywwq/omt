# Distributed under the OSI-approved BSD 3-Clause License.  See accompanying
# file Copyright.txt or https://cmake.org/licensing for details.

cmake_minimum_required(VERSION 3.5)

# If CMAKE_DISABLE_SOURCE_CHANGES is set to true and the source directory is an
# existing directory in our source tree, calling file(MAKE_DIRECTORY) on it
# would cause a fatal error, even though it would be a no-op.
if(NOT EXISTS "/Users/wwq/z3/examples/userPropagator")
  file(MAKE_DIRECTORY "/Users/wwq/z3/examples/userPropagator")
endif()
file(MAKE_DIRECTORY
  "/Users/wwq/z3/build/examples/userPropagator_build_dir"
  "/Users/wwq/z3/build/examples/userPropagator-prefix"
  "/Users/wwq/z3/build/examples/userPropagator-prefix/tmp"
  "/Users/wwq/z3/build/examples/userPropagator-prefix/src/userPropagator-stamp"
  "/Users/wwq/z3/build/examples/userPropagator-prefix/src"
  "/Users/wwq/z3/build/examples/userPropagator-prefix/src/userPropagator-stamp"
)

set(configSubDirs )
foreach(subDir IN LISTS configSubDirs)
    file(MAKE_DIRECTORY "/Users/wwq/z3/build/examples/userPropagator-prefix/src/userPropagator-stamp/${subDir}")
endforeach()
if(cfgdir)
  file(MAKE_DIRECTORY "/Users/wwq/z3/build/examples/userPropagator-prefix/src/userPropagator-stamp${cfgdir}") # cfgdir has leading slash
endif()
