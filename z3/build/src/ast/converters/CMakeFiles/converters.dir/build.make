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
include src/ast/converters/CMakeFiles/converters.dir/depend.make
# Include any dependencies generated by the compiler for this target.
include src/ast/converters/CMakeFiles/converters.dir/compiler_depend.make

# Include the progress variables for this target.
include src/ast/converters/CMakeFiles/converters.dir/progress.make

# Include the compile flags for this target's objects.
include src/ast/converters/CMakeFiles/converters.dir/flags.make

src/ast/converters/CMakeFiles/converters.dir/expr_inverter.cpp.o: src/ast/converters/CMakeFiles/converters.dir/flags.make
src/ast/converters/CMakeFiles/converters.dir/expr_inverter.cpp.o: /Users/wwq/z3/src/ast/converters/expr_inverter.cpp
src/ast/converters/CMakeFiles/converters.dir/expr_inverter.cpp.o: src/ast/converters/CMakeFiles/converters.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green --progress-dir=/Users/wwq/z3/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building CXX object src/ast/converters/CMakeFiles/converters.dir/expr_inverter.cpp.o"
	cd /Users/wwq/z3/build/src/ast/converters && /usr/bin/clang++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -MD -MT src/ast/converters/CMakeFiles/converters.dir/expr_inverter.cpp.o -MF CMakeFiles/converters.dir/expr_inverter.cpp.o.d -o CMakeFiles/converters.dir/expr_inverter.cpp.o -c /Users/wwq/z3/src/ast/converters/expr_inverter.cpp

src/ast/converters/CMakeFiles/converters.dir/expr_inverter.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green "Preprocessing CXX source to CMakeFiles/converters.dir/expr_inverter.cpp.i"
	cd /Users/wwq/z3/build/src/ast/converters && /usr/bin/clang++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /Users/wwq/z3/src/ast/converters/expr_inverter.cpp > CMakeFiles/converters.dir/expr_inverter.cpp.i

src/ast/converters/CMakeFiles/converters.dir/expr_inverter.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green "Compiling CXX source to assembly CMakeFiles/converters.dir/expr_inverter.cpp.s"
	cd /Users/wwq/z3/build/src/ast/converters && /usr/bin/clang++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /Users/wwq/z3/src/ast/converters/expr_inverter.cpp -o CMakeFiles/converters.dir/expr_inverter.cpp.s

src/ast/converters/CMakeFiles/converters.dir/equiv_proof_converter.cpp.o: src/ast/converters/CMakeFiles/converters.dir/flags.make
src/ast/converters/CMakeFiles/converters.dir/equiv_proof_converter.cpp.o: /Users/wwq/z3/src/ast/converters/equiv_proof_converter.cpp
src/ast/converters/CMakeFiles/converters.dir/equiv_proof_converter.cpp.o: src/ast/converters/CMakeFiles/converters.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green --progress-dir=/Users/wwq/z3/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Building CXX object src/ast/converters/CMakeFiles/converters.dir/equiv_proof_converter.cpp.o"
	cd /Users/wwq/z3/build/src/ast/converters && /usr/bin/clang++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -MD -MT src/ast/converters/CMakeFiles/converters.dir/equiv_proof_converter.cpp.o -MF CMakeFiles/converters.dir/equiv_proof_converter.cpp.o.d -o CMakeFiles/converters.dir/equiv_proof_converter.cpp.o -c /Users/wwq/z3/src/ast/converters/equiv_proof_converter.cpp

src/ast/converters/CMakeFiles/converters.dir/equiv_proof_converter.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green "Preprocessing CXX source to CMakeFiles/converters.dir/equiv_proof_converter.cpp.i"
	cd /Users/wwq/z3/build/src/ast/converters && /usr/bin/clang++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /Users/wwq/z3/src/ast/converters/equiv_proof_converter.cpp > CMakeFiles/converters.dir/equiv_proof_converter.cpp.i

src/ast/converters/CMakeFiles/converters.dir/equiv_proof_converter.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green "Compiling CXX source to assembly CMakeFiles/converters.dir/equiv_proof_converter.cpp.s"
	cd /Users/wwq/z3/build/src/ast/converters && /usr/bin/clang++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /Users/wwq/z3/src/ast/converters/equiv_proof_converter.cpp -o CMakeFiles/converters.dir/equiv_proof_converter.cpp.s

src/ast/converters/CMakeFiles/converters.dir/generic_model_converter.cpp.o: src/ast/converters/CMakeFiles/converters.dir/flags.make
src/ast/converters/CMakeFiles/converters.dir/generic_model_converter.cpp.o: /Users/wwq/z3/src/ast/converters/generic_model_converter.cpp
src/ast/converters/CMakeFiles/converters.dir/generic_model_converter.cpp.o: src/ast/converters/CMakeFiles/converters.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green --progress-dir=/Users/wwq/z3/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_3) "Building CXX object src/ast/converters/CMakeFiles/converters.dir/generic_model_converter.cpp.o"
	cd /Users/wwq/z3/build/src/ast/converters && /usr/bin/clang++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -MD -MT src/ast/converters/CMakeFiles/converters.dir/generic_model_converter.cpp.o -MF CMakeFiles/converters.dir/generic_model_converter.cpp.o.d -o CMakeFiles/converters.dir/generic_model_converter.cpp.o -c /Users/wwq/z3/src/ast/converters/generic_model_converter.cpp

src/ast/converters/CMakeFiles/converters.dir/generic_model_converter.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green "Preprocessing CXX source to CMakeFiles/converters.dir/generic_model_converter.cpp.i"
	cd /Users/wwq/z3/build/src/ast/converters && /usr/bin/clang++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /Users/wwq/z3/src/ast/converters/generic_model_converter.cpp > CMakeFiles/converters.dir/generic_model_converter.cpp.i

src/ast/converters/CMakeFiles/converters.dir/generic_model_converter.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green "Compiling CXX source to assembly CMakeFiles/converters.dir/generic_model_converter.cpp.s"
	cd /Users/wwq/z3/build/src/ast/converters && /usr/bin/clang++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /Users/wwq/z3/src/ast/converters/generic_model_converter.cpp -o CMakeFiles/converters.dir/generic_model_converter.cpp.s

src/ast/converters/CMakeFiles/converters.dir/horn_subsume_model_converter.cpp.o: src/ast/converters/CMakeFiles/converters.dir/flags.make
src/ast/converters/CMakeFiles/converters.dir/horn_subsume_model_converter.cpp.o: /Users/wwq/z3/src/ast/converters/horn_subsume_model_converter.cpp
src/ast/converters/CMakeFiles/converters.dir/horn_subsume_model_converter.cpp.o: src/ast/converters/CMakeFiles/converters.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green --progress-dir=/Users/wwq/z3/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_4) "Building CXX object src/ast/converters/CMakeFiles/converters.dir/horn_subsume_model_converter.cpp.o"
	cd /Users/wwq/z3/build/src/ast/converters && /usr/bin/clang++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -MD -MT src/ast/converters/CMakeFiles/converters.dir/horn_subsume_model_converter.cpp.o -MF CMakeFiles/converters.dir/horn_subsume_model_converter.cpp.o.d -o CMakeFiles/converters.dir/horn_subsume_model_converter.cpp.o -c /Users/wwq/z3/src/ast/converters/horn_subsume_model_converter.cpp

src/ast/converters/CMakeFiles/converters.dir/horn_subsume_model_converter.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green "Preprocessing CXX source to CMakeFiles/converters.dir/horn_subsume_model_converter.cpp.i"
	cd /Users/wwq/z3/build/src/ast/converters && /usr/bin/clang++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /Users/wwq/z3/src/ast/converters/horn_subsume_model_converter.cpp > CMakeFiles/converters.dir/horn_subsume_model_converter.cpp.i

src/ast/converters/CMakeFiles/converters.dir/horn_subsume_model_converter.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green "Compiling CXX source to assembly CMakeFiles/converters.dir/horn_subsume_model_converter.cpp.s"
	cd /Users/wwq/z3/build/src/ast/converters && /usr/bin/clang++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /Users/wwq/z3/src/ast/converters/horn_subsume_model_converter.cpp -o CMakeFiles/converters.dir/horn_subsume_model_converter.cpp.s

src/ast/converters/CMakeFiles/converters.dir/model_converter.cpp.o: src/ast/converters/CMakeFiles/converters.dir/flags.make
src/ast/converters/CMakeFiles/converters.dir/model_converter.cpp.o: /Users/wwq/z3/src/ast/converters/model_converter.cpp
src/ast/converters/CMakeFiles/converters.dir/model_converter.cpp.o: src/ast/converters/CMakeFiles/converters.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green --progress-dir=/Users/wwq/z3/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_5) "Building CXX object src/ast/converters/CMakeFiles/converters.dir/model_converter.cpp.o"
	cd /Users/wwq/z3/build/src/ast/converters && /usr/bin/clang++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -MD -MT src/ast/converters/CMakeFiles/converters.dir/model_converter.cpp.o -MF CMakeFiles/converters.dir/model_converter.cpp.o.d -o CMakeFiles/converters.dir/model_converter.cpp.o -c /Users/wwq/z3/src/ast/converters/model_converter.cpp

src/ast/converters/CMakeFiles/converters.dir/model_converter.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green "Preprocessing CXX source to CMakeFiles/converters.dir/model_converter.cpp.i"
	cd /Users/wwq/z3/build/src/ast/converters && /usr/bin/clang++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /Users/wwq/z3/src/ast/converters/model_converter.cpp > CMakeFiles/converters.dir/model_converter.cpp.i

src/ast/converters/CMakeFiles/converters.dir/model_converter.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green "Compiling CXX source to assembly CMakeFiles/converters.dir/model_converter.cpp.s"
	cd /Users/wwq/z3/build/src/ast/converters && /usr/bin/clang++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /Users/wwq/z3/src/ast/converters/model_converter.cpp -o CMakeFiles/converters.dir/model_converter.cpp.s

src/ast/converters/CMakeFiles/converters.dir/proof_converter.cpp.o: src/ast/converters/CMakeFiles/converters.dir/flags.make
src/ast/converters/CMakeFiles/converters.dir/proof_converter.cpp.o: /Users/wwq/z3/src/ast/converters/proof_converter.cpp
src/ast/converters/CMakeFiles/converters.dir/proof_converter.cpp.o: src/ast/converters/CMakeFiles/converters.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green --progress-dir=/Users/wwq/z3/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_6) "Building CXX object src/ast/converters/CMakeFiles/converters.dir/proof_converter.cpp.o"
	cd /Users/wwq/z3/build/src/ast/converters && /usr/bin/clang++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -MD -MT src/ast/converters/CMakeFiles/converters.dir/proof_converter.cpp.o -MF CMakeFiles/converters.dir/proof_converter.cpp.o.d -o CMakeFiles/converters.dir/proof_converter.cpp.o -c /Users/wwq/z3/src/ast/converters/proof_converter.cpp

src/ast/converters/CMakeFiles/converters.dir/proof_converter.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green "Preprocessing CXX source to CMakeFiles/converters.dir/proof_converter.cpp.i"
	cd /Users/wwq/z3/build/src/ast/converters && /usr/bin/clang++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /Users/wwq/z3/src/ast/converters/proof_converter.cpp > CMakeFiles/converters.dir/proof_converter.cpp.i

src/ast/converters/CMakeFiles/converters.dir/proof_converter.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green "Compiling CXX source to assembly CMakeFiles/converters.dir/proof_converter.cpp.s"
	cd /Users/wwq/z3/build/src/ast/converters && /usr/bin/clang++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /Users/wwq/z3/src/ast/converters/proof_converter.cpp -o CMakeFiles/converters.dir/proof_converter.cpp.s

src/ast/converters/CMakeFiles/converters.dir/replace_proof_converter.cpp.o: src/ast/converters/CMakeFiles/converters.dir/flags.make
src/ast/converters/CMakeFiles/converters.dir/replace_proof_converter.cpp.o: /Users/wwq/z3/src/ast/converters/replace_proof_converter.cpp
src/ast/converters/CMakeFiles/converters.dir/replace_proof_converter.cpp.o: src/ast/converters/CMakeFiles/converters.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green --progress-dir=/Users/wwq/z3/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_7) "Building CXX object src/ast/converters/CMakeFiles/converters.dir/replace_proof_converter.cpp.o"
	cd /Users/wwq/z3/build/src/ast/converters && /usr/bin/clang++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -MD -MT src/ast/converters/CMakeFiles/converters.dir/replace_proof_converter.cpp.o -MF CMakeFiles/converters.dir/replace_proof_converter.cpp.o.d -o CMakeFiles/converters.dir/replace_proof_converter.cpp.o -c /Users/wwq/z3/src/ast/converters/replace_proof_converter.cpp

src/ast/converters/CMakeFiles/converters.dir/replace_proof_converter.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green "Preprocessing CXX source to CMakeFiles/converters.dir/replace_proof_converter.cpp.i"
	cd /Users/wwq/z3/build/src/ast/converters && /usr/bin/clang++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /Users/wwq/z3/src/ast/converters/replace_proof_converter.cpp > CMakeFiles/converters.dir/replace_proof_converter.cpp.i

src/ast/converters/CMakeFiles/converters.dir/replace_proof_converter.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green "Compiling CXX source to assembly CMakeFiles/converters.dir/replace_proof_converter.cpp.s"
	cd /Users/wwq/z3/build/src/ast/converters && /usr/bin/clang++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /Users/wwq/z3/src/ast/converters/replace_proof_converter.cpp -o CMakeFiles/converters.dir/replace_proof_converter.cpp.s

converters: src/ast/converters/CMakeFiles/converters.dir/expr_inverter.cpp.o
converters: src/ast/converters/CMakeFiles/converters.dir/equiv_proof_converter.cpp.o
converters: src/ast/converters/CMakeFiles/converters.dir/generic_model_converter.cpp.o
converters: src/ast/converters/CMakeFiles/converters.dir/horn_subsume_model_converter.cpp.o
converters: src/ast/converters/CMakeFiles/converters.dir/model_converter.cpp.o
converters: src/ast/converters/CMakeFiles/converters.dir/proof_converter.cpp.o
converters: src/ast/converters/CMakeFiles/converters.dir/replace_proof_converter.cpp.o
converters: src/ast/converters/CMakeFiles/converters.dir/build.make
.PHONY : converters

# Rule to build all files generated by this target.
src/ast/converters/CMakeFiles/converters.dir/build: converters
.PHONY : src/ast/converters/CMakeFiles/converters.dir/build

src/ast/converters/CMakeFiles/converters.dir/clean:
	cd /Users/wwq/z3/build/src/ast/converters && $(CMAKE_COMMAND) -P CMakeFiles/converters.dir/cmake_clean.cmake
.PHONY : src/ast/converters/CMakeFiles/converters.dir/clean

src/ast/converters/CMakeFiles/converters.dir/depend:
	cd /Users/wwq/z3/build && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /Users/wwq/z3 /Users/wwq/z3/src/ast/converters /Users/wwq/z3/build /Users/wwq/z3/build/src/ast/converters /Users/wwq/z3/build/src/ast/converters/CMakeFiles/converters.dir/DependInfo.cmake "--color=$(COLOR)"
.PHONY : src/ast/converters/CMakeFiles/converters.dir/depend
