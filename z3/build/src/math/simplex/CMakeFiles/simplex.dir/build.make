# CMAKE generated file: DO NOT EDIT!
# Generated by "Unix Makefiles" Generator, CMake Version 3.30

# Delete rule output on recipe failure.
.DELETE_ON_ERROR:

#=============================================================================
# Special targets provided by cmake.

# Disable implicit rules so canonical targets will work.
.SUFFIXES:

# Disable VCS-based implicit rules.
% : %,v

# Disable VCS-based implicit rules.
% : RCS/%

# Disable VCS-based implicit rules.
% : RCS/%,v

# Disable VCS-based implicit rules.
% : SCCS/s.%

# Disable VCS-based implicit rules.
% : s.%

.SUFFIXES: .hpux_make_needs_suffix_list

# Command-line flag to silence nested $(MAKE).
$(VERBOSE)MAKESILENT = -s

#Suppress display of executed commands.
$(VERBOSE).SILENT:

# A target that is always out of date.
cmake_force:
.PHONY : cmake_force

#=============================================================================
# Set environment variables for the build.

# The shell in which to execute make rules.
SHELL = /bin/sh

# The CMake executable.
CMAKE_COMMAND = /opt/homebrew/Cellar/cmake/3.30.2/bin/cmake

# The command to remove a file.
RM = /opt/homebrew/Cellar/cmake/3.30.2/bin/cmake -E rm -f

# Escaping for special characters.
EQUALS = =

# The top-level source directory on which CMake was run.
CMAKE_SOURCE_DIR = /Users/wwq/z3

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = /Users/wwq/z3/build

# Include any dependencies generated for this target.
include src/math/simplex/CMakeFiles/simplex.dir/depend.make
# Include any dependencies generated by the compiler for this target.
include src/math/simplex/CMakeFiles/simplex.dir/compiler_depend.make

# Include the progress variables for this target.
include src/math/simplex/CMakeFiles/simplex.dir/progress.make

# Include the compile flags for this target's objects.
include src/math/simplex/CMakeFiles/simplex.dir/flags.make

src/math/simplex/CMakeFiles/simplex.dir/simplex.cpp.o: src/math/simplex/CMakeFiles/simplex.dir/flags.make
src/math/simplex/CMakeFiles/simplex.dir/simplex.cpp.o: /Users/wwq/z3/src/math/simplex/simplex.cpp
src/math/simplex/CMakeFiles/simplex.dir/simplex.cpp.o: src/math/simplex/CMakeFiles/simplex.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green --progress-dir=/Users/wwq/z3/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building CXX object src/math/simplex/CMakeFiles/simplex.dir/simplex.cpp.o"
	cd /Users/wwq/z3/build/src/math/simplex && /usr/bin/clang++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -MD -MT src/math/simplex/CMakeFiles/simplex.dir/simplex.cpp.o -MF CMakeFiles/simplex.dir/simplex.cpp.o.d -o CMakeFiles/simplex.dir/simplex.cpp.o -c /Users/wwq/z3/src/math/simplex/simplex.cpp

src/math/simplex/CMakeFiles/simplex.dir/simplex.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green "Preprocessing CXX source to CMakeFiles/simplex.dir/simplex.cpp.i"
	cd /Users/wwq/z3/build/src/math/simplex && /usr/bin/clang++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /Users/wwq/z3/src/math/simplex/simplex.cpp > CMakeFiles/simplex.dir/simplex.cpp.i

src/math/simplex/CMakeFiles/simplex.dir/simplex.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green "Compiling CXX source to assembly CMakeFiles/simplex.dir/simplex.cpp.s"
	cd /Users/wwq/z3/build/src/math/simplex && /usr/bin/clang++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /Users/wwq/z3/src/math/simplex/simplex.cpp -o CMakeFiles/simplex.dir/simplex.cpp.s

src/math/simplex/CMakeFiles/simplex.dir/model_based_opt.cpp.o: src/math/simplex/CMakeFiles/simplex.dir/flags.make
src/math/simplex/CMakeFiles/simplex.dir/model_based_opt.cpp.o: /Users/wwq/z3/src/math/simplex/model_based_opt.cpp
src/math/simplex/CMakeFiles/simplex.dir/model_based_opt.cpp.o: src/math/simplex/CMakeFiles/simplex.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green --progress-dir=/Users/wwq/z3/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Building CXX object src/math/simplex/CMakeFiles/simplex.dir/model_based_opt.cpp.o"
	cd /Users/wwq/z3/build/src/math/simplex && /usr/bin/clang++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -MD -MT src/math/simplex/CMakeFiles/simplex.dir/model_based_opt.cpp.o -MF CMakeFiles/simplex.dir/model_based_opt.cpp.o.d -o CMakeFiles/simplex.dir/model_based_opt.cpp.o -c /Users/wwq/z3/src/math/simplex/model_based_opt.cpp

src/math/simplex/CMakeFiles/simplex.dir/model_based_opt.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green "Preprocessing CXX source to CMakeFiles/simplex.dir/model_based_opt.cpp.i"
	cd /Users/wwq/z3/build/src/math/simplex && /usr/bin/clang++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /Users/wwq/z3/src/math/simplex/model_based_opt.cpp > CMakeFiles/simplex.dir/model_based_opt.cpp.i

src/math/simplex/CMakeFiles/simplex.dir/model_based_opt.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green "Compiling CXX source to assembly CMakeFiles/simplex.dir/model_based_opt.cpp.s"
	cd /Users/wwq/z3/build/src/math/simplex && /usr/bin/clang++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /Users/wwq/z3/src/math/simplex/model_based_opt.cpp -o CMakeFiles/simplex.dir/model_based_opt.cpp.s

src/math/simplex/CMakeFiles/simplex.dir/bit_matrix.cpp.o: src/math/simplex/CMakeFiles/simplex.dir/flags.make
src/math/simplex/CMakeFiles/simplex.dir/bit_matrix.cpp.o: /Users/wwq/z3/src/math/simplex/bit_matrix.cpp
src/math/simplex/CMakeFiles/simplex.dir/bit_matrix.cpp.o: src/math/simplex/CMakeFiles/simplex.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green --progress-dir=/Users/wwq/z3/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_3) "Building CXX object src/math/simplex/CMakeFiles/simplex.dir/bit_matrix.cpp.o"
	cd /Users/wwq/z3/build/src/math/simplex && /usr/bin/clang++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -MD -MT src/math/simplex/CMakeFiles/simplex.dir/bit_matrix.cpp.o -MF CMakeFiles/simplex.dir/bit_matrix.cpp.o.d -o CMakeFiles/simplex.dir/bit_matrix.cpp.o -c /Users/wwq/z3/src/math/simplex/bit_matrix.cpp

src/math/simplex/CMakeFiles/simplex.dir/bit_matrix.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green "Preprocessing CXX source to CMakeFiles/simplex.dir/bit_matrix.cpp.i"
	cd /Users/wwq/z3/build/src/math/simplex && /usr/bin/clang++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /Users/wwq/z3/src/math/simplex/bit_matrix.cpp > CMakeFiles/simplex.dir/bit_matrix.cpp.i

src/math/simplex/CMakeFiles/simplex.dir/bit_matrix.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green "Compiling CXX source to assembly CMakeFiles/simplex.dir/bit_matrix.cpp.s"
	cd /Users/wwq/z3/build/src/math/simplex && /usr/bin/clang++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /Users/wwq/z3/src/math/simplex/bit_matrix.cpp -o CMakeFiles/simplex.dir/bit_matrix.cpp.s

simplex: src/math/simplex/CMakeFiles/simplex.dir/simplex.cpp.o
simplex: src/math/simplex/CMakeFiles/simplex.dir/model_based_opt.cpp.o
simplex: src/math/simplex/CMakeFiles/simplex.dir/bit_matrix.cpp.o
simplex: src/math/simplex/CMakeFiles/simplex.dir/build.make
.PHONY : simplex

# Rule to build all files generated by this target.
src/math/simplex/CMakeFiles/simplex.dir/build: simplex
.PHONY : src/math/simplex/CMakeFiles/simplex.dir/build

src/math/simplex/CMakeFiles/simplex.dir/clean:
	cd /Users/wwq/z3/build/src/math/simplex && $(CMAKE_COMMAND) -P CMakeFiles/simplex.dir/cmake_clean.cmake
.PHONY : src/math/simplex/CMakeFiles/simplex.dir/clean

src/math/simplex/CMakeFiles/simplex.dir/depend:
	cd /Users/wwq/z3/build && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /Users/wwq/z3 /Users/wwq/z3/src/math/simplex /Users/wwq/z3/build /Users/wwq/z3/build/src/math/simplex /Users/wwq/z3/build/src/math/simplex/CMakeFiles/simplex.dir/DependInfo.cmake "--color=$(COLOR)"
.PHONY : src/math/simplex/CMakeFiles/simplex.dir/depend
