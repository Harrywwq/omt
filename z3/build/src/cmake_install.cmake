# Install script for directory: /Users/wwq/z3/src

# Set the install prefix
if(NOT DEFINED CMAKE_INSTALL_PREFIX)
  set(CMAKE_INSTALL_PREFIX "/usr/local")
endif()
string(REGEX REPLACE "/$" "" CMAKE_INSTALL_PREFIX "${CMAKE_INSTALL_PREFIX}")

# Set the install configuration name.
if(NOT DEFINED CMAKE_INSTALL_CONFIG_NAME)
  if(BUILD_TYPE)
    string(REGEX REPLACE "^[^A-Za-z0-9_]+" ""
           CMAKE_INSTALL_CONFIG_NAME "${BUILD_TYPE}")
  else()
    set(CMAKE_INSTALL_CONFIG_NAME "Debug")
  endif()
  message(STATUS "Install configuration: \"${CMAKE_INSTALL_CONFIG_NAME}\"")
endif()

# Set the component getting installed.
if(NOT CMAKE_INSTALL_COMPONENT)
  if(COMPONENT)
    message(STATUS "Install component: \"${COMPONENT}\"")
    set(CMAKE_INSTALL_COMPONENT "${COMPONENT}")
  else()
    set(CMAKE_INSTALL_COMPONENT)
  endif()
endif()

# Is this installation the result of a crosscompile?
if(NOT DEFINED CMAKE_CROSSCOMPILING)
  set(CMAKE_CROSSCOMPILING "FALSE")
endif()

# Set path to fallback-tool for dependency-resolution.
if(NOT DEFINED CMAKE_OBJDUMP)
  set(CMAKE_OBJDUMP "/usr/bin/objdump")
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "Unspecified" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib" TYPE SHARED_LIBRARY FILES
    "/Users/wwq/z3/build/libz3.4.12.3.0.dylib"
    "/Users/wwq/z3/build/libz3.4.12.dylib"
    )
  foreach(file
      "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/libz3.4.12.3.0.dylib"
      "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/libz3.4.12.dylib"
      )
    if(EXISTS "${file}" AND
       NOT IS_SYMLINK "${file}")
      if(CMAKE_INSTALL_DO_STRIP)
        execute_process(COMMAND "/usr/bin/strip" -x "${file}")
      endif()
    endif()
  endforeach()
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "Unspecified" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib" TYPE SHARED_LIBRARY FILES "/Users/wwq/z3/build/libz3.dylib")
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "Unspecified" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include" TYPE FILE FILES
    "/Users/wwq/z3/src/api/z3_algebraic.h"
    "/Users/wwq/z3/src/api/z3_api.h"
    "/Users/wwq/z3/src/api/z3_ast_containers.h"
    "/Users/wwq/z3/src/api/z3_fixedpoint.h"
    "/Users/wwq/z3/src/api/z3_fpa.h"
    "/Users/wwq/z3/src/api/z3.h"
    "/Users/wwq/z3/src/api/c++/z3++.h"
    "/Users/wwq/z3/src/api/z3_macros.h"
    "/Users/wwq/z3/src/api/z3_optimization.h"
    "/Users/wwq/z3/src/api/z3_polynomial.h"
    "/Users/wwq/z3/src/api/z3_rcf.h"
    "/Users/wwq/z3/src/api/z3_v1.h"
    "/Users/wwq/z3/src/api/z3_spacer.h"
    "/Users/wwq/z3/build/src/util/z3_version.h"
    )
endif()

if(NOT CMAKE_INSTALL_LOCAL_ONLY)
  # Include the install script for each subdirectory.
  include("/Users/wwq/z3/build/src/util/cmake_install.cmake")
  include("/Users/wwq/z3/build/src/math/polynomial/cmake_install.cmake")
  include("/Users/wwq/z3/build/src/math/dd/cmake_install.cmake")
  include("/Users/wwq/z3/build/src/math/hilbert/cmake_install.cmake")
  include("/Users/wwq/z3/build/src/math/simplex/cmake_install.cmake")
  include("/Users/wwq/z3/build/src/math/automata/cmake_install.cmake")
  include("/Users/wwq/z3/build/src/math/interval/cmake_install.cmake")
  include("/Users/wwq/z3/build/src/math/realclosure/cmake_install.cmake")
  include("/Users/wwq/z3/build/src/math/subpaving/cmake_install.cmake")
  include("/Users/wwq/z3/build/src/ast/cmake_install.cmake")
  include("/Users/wwq/z3/build/src/params/cmake_install.cmake")
  include("/Users/wwq/z3/build/src/ast/rewriter/cmake_install.cmake")
  include("/Users/wwq/z3/build/src/ast/rewriter/bit_blaster/cmake_install.cmake")
  include("/Users/wwq/z3/build/src/ast/normal_forms/cmake_install.cmake")
  include("/Users/wwq/z3/build/src/ast/macros/cmake_install.cmake")
  include("/Users/wwq/z3/build/src/model/cmake_install.cmake")
  include("/Users/wwq/z3/build/src/ast/euf/cmake_install.cmake")
  include("/Users/wwq/z3/build/src/ast/converters/cmake_install.cmake")
  include("/Users/wwq/z3/build/src/ast/substitution/cmake_install.cmake")
  include("/Users/wwq/z3/build/src/ast/simplifiers/cmake_install.cmake")
  include("/Users/wwq/z3/build/src/tactic/cmake_install.cmake")
  include("/Users/wwq/z3/build/src/qe/mbp/cmake_install.cmake")
  include("/Users/wwq/z3/build/src/qe/lite/cmake_install.cmake")
  include("/Users/wwq/z3/build/src/smt/params/cmake_install.cmake")
  include("/Users/wwq/z3/build/src/parsers/util/cmake_install.cmake")
  include("/Users/wwq/z3/build/src/math/grobner/cmake_install.cmake")
  include("/Users/wwq/z3/build/src/sat/cmake_install.cmake")
  include("/Users/wwq/z3/build/src/nlsat/cmake_install.cmake")
  include("/Users/wwq/z3/build/src/tactic/core/cmake_install.cmake")
  include("/Users/wwq/z3/build/src/math/subpaving/tactic/cmake_install.cmake")
  include("/Users/wwq/z3/build/src/tactic/aig/cmake_install.cmake")
  include("/Users/wwq/z3/build/src/tactic/arith/cmake_install.cmake")
  include("/Users/wwq/z3/build/src/solver/cmake_install.cmake")
  include("/Users/wwq/z3/build/src/cmd_context/cmake_install.cmake")
  include("/Users/wwq/z3/build/src/cmd_context/extra_cmds/cmake_install.cmake")
  include("/Users/wwq/z3/build/src/parsers/smt2/cmake_install.cmake")
  include("/Users/wwq/z3/build/src/solver/assertions/cmake_install.cmake")
  include("/Users/wwq/z3/build/src/ast/pattern/cmake_install.cmake")
  include("/Users/wwq/z3/build/src/math/lp/cmake_install.cmake")
  include("/Users/wwq/z3/build/src/sat/smt/cmake_install.cmake")
  include("/Users/wwq/z3/build/src/sat/tactic/cmake_install.cmake")
  include("/Users/wwq/z3/build/src/nlsat/tactic/cmake_install.cmake")
  include("/Users/wwq/z3/build/src/ackermannization/cmake_install.cmake")
  include("/Users/wwq/z3/build/src/ast/proofs/cmake_install.cmake")
  include("/Users/wwq/z3/build/src/ast/fpa/cmake_install.cmake")
  include("/Users/wwq/z3/build/src/smt/proto_model/cmake_install.cmake")
  include("/Users/wwq/z3/build/src/smt/cmake_install.cmake")
  include("/Users/wwq/z3/build/src/tactic/bv/cmake_install.cmake")
  include("/Users/wwq/z3/build/src/smt/tactic/cmake_install.cmake")
  include("/Users/wwq/z3/build/src/tactic/sls/cmake_install.cmake")
  include("/Users/wwq/z3/build/src/qe/cmake_install.cmake")
  include("/Users/wwq/z3/build/src/muz/base/cmake_install.cmake")
  include("/Users/wwq/z3/build/src/muz/dataflow/cmake_install.cmake")
  include("/Users/wwq/z3/build/src/muz/transforms/cmake_install.cmake")
  include("/Users/wwq/z3/build/src/muz/rel/cmake_install.cmake")
  include("/Users/wwq/z3/build/src/muz/clp/cmake_install.cmake")
  include("/Users/wwq/z3/build/src/muz/tab/cmake_install.cmake")
  include("/Users/wwq/z3/build/src/muz/bmc/cmake_install.cmake")
  include("/Users/wwq/z3/build/src/muz/ddnf/cmake_install.cmake")
  include("/Users/wwq/z3/build/src/muz/spacer/cmake_install.cmake")
  include("/Users/wwq/z3/build/src/muz/fp/cmake_install.cmake")
  include("/Users/wwq/z3/build/src/tactic/ufbv/cmake_install.cmake")
  include("/Users/wwq/z3/build/src/sat/sat_solver/cmake_install.cmake")
  include("/Users/wwq/z3/build/src/tactic/smtlogics/cmake_install.cmake")
  include("/Users/wwq/z3/build/src/tactic/fpa/cmake_install.cmake")
  include("/Users/wwq/z3/build/src/tactic/fd_solver/cmake_install.cmake")
  include("/Users/wwq/z3/build/src/tactic/portfolio/cmake_install.cmake")
  include("/Users/wwq/z3/build/src/opt/cmake_install.cmake")
  include("/Users/wwq/z3/build/src/api/cmake_install.cmake")
  include("/Users/wwq/z3/build/src/api/dll/cmake_install.cmake")
  include("/Users/wwq/z3/build/src/shell/cmake_install.cmake")
  include("/Users/wwq/z3/build/src/test/cmake_install.cmake")

endif()

