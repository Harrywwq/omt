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
include src/ast/normal_forms/CMakeFiles/normal_forms.dir/depend.make
# Include any dependencies generated by the compiler for this target.
include src/ast/normal_forms/CMakeFiles/normal_forms.dir/compiler_depend.make

# Include the progress variables for this target.
include src/ast/normal_forms/CMakeFiles/normal_forms.dir/progress.make

# Include the compile flags for this target's objects.
include src/ast/normal_forms/CMakeFiles/normal_forms.dir/flags.make

src/ast/normal_forms/nnf_params.hpp: /Users/wwq/z3/src/ast/normal_forms/nnf_params.pyg
src/ast/normal_forms/nnf_params.hpp: /Users/wwq/z3/scripts/pyg2hpp.py
src/ast/normal_forms/nnf_params.hpp: /Users/wwq/z3/scripts/mk_genfile_common.py
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --blue --bold --progress-dir=/Users/wwq/z3/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Generating \"/Users/wwq/z3/build/src/ast/normal_forms/nnf_params.hpp\" from \"nnf_params.pyg\""
	cd /Users/wwq/z3/build/src/ast/normal_forms && /opt/homebrew/bin/python3 /Users/wwq/z3/scripts/pyg2hpp.py /Users/wwq/z3/src/ast/normal_forms/nnf_params.pyg /Users/wwq/z3/build/src/ast/normal_forms

src/ast/normal_forms/CMakeFiles/normal_forms.dir/defined_names.cpp.o: src/ast/normal_forms/CMakeFiles/normal_forms.dir/flags.make
src/ast/normal_forms/CMakeFiles/normal_forms.dir/defined_names.cpp.o: /Users/wwq/z3/src/ast/normal_forms/defined_names.cpp
src/ast/normal_forms/CMakeFiles/normal_forms.dir/defined_names.cpp.o: src/ast/normal_forms/CMakeFiles/normal_forms.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green --progress-dir=/Users/wwq/z3/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Building CXX object src/ast/normal_forms/CMakeFiles/normal_forms.dir/defined_names.cpp.o"
	cd /Users/wwq/z3/build/src/ast/normal_forms && /usr/bin/clang++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -MD -MT src/ast/normal_forms/CMakeFiles/normal_forms.dir/defined_names.cpp.o -MF CMakeFiles/normal_forms.dir/defined_names.cpp.o.d -o CMakeFiles/normal_forms.dir/defined_names.cpp.o -c /Users/wwq/z3/src/ast/normal_forms/defined_names.cpp

src/ast/normal_forms/CMakeFiles/normal_forms.dir/defined_names.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green "Preprocessing CXX source to CMakeFiles/normal_forms.dir/defined_names.cpp.i"
	cd /Users/wwq/z3/build/src/ast/normal_forms && /usr/bin/clang++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /Users/wwq/z3/src/ast/normal_forms/defined_names.cpp > CMakeFiles/normal_forms.dir/defined_names.cpp.i

src/ast/normal_forms/CMakeFiles/normal_forms.dir/defined_names.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green "Compiling CXX source to assembly CMakeFiles/normal_forms.dir/defined_names.cpp.s"
	cd /Users/wwq/z3/build/src/ast/normal_forms && /usr/bin/clang++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /Users/wwq/z3/src/ast/normal_forms/defined_names.cpp -o CMakeFiles/normal_forms.dir/defined_names.cpp.s

src/ast/normal_forms/CMakeFiles/normal_forms.dir/elim_term_ite.cpp.o: src/ast/normal_forms/CMakeFiles/normal_forms.dir/flags.make
src/ast/normal_forms/CMakeFiles/normal_forms.dir/elim_term_ite.cpp.o: /Users/wwq/z3/src/ast/normal_forms/elim_term_ite.cpp
src/ast/normal_forms/CMakeFiles/normal_forms.dir/elim_term_ite.cpp.o: src/ast/normal_forms/CMakeFiles/normal_forms.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green --progress-dir=/Users/wwq/z3/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_3) "Building CXX object src/ast/normal_forms/CMakeFiles/normal_forms.dir/elim_term_ite.cpp.o"
	cd /Users/wwq/z3/build/src/ast/normal_forms && /usr/bin/clang++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -MD -MT src/ast/normal_forms/CMakeFiles/normal_forms.dir/elim_term_ite.cpp.o -MF CMakeFiles/normal_forms.dir/elim_term_ite.cpp.o.d -o CMakeFiles/normal_forms.dir/elim_term_ite.cpp.o -c /Users/wwq/z3/src/ast/normal_forms/elim_term_ite.cpp

src/ast/normal_forms/CMakeFiles/normal_forms.dir/elim_term_ite.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green "Preprocessing CXX source to CMakeFiles/normal_forms.dir/elim_term_ite.cpp.i"
	cd /Users/wwq/z3/build/src/ast/normal_forms && /usr/bin/clang++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /Users/wwq/z3/src/ast/normal_forms/elim_term_ite.cpp > CMakeFiles/normal_forms.dir/elim_term_ite.cpp.i

src/ast/normal_forms/CMakeFiles/normal_forms.dir/elim_term_ite.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green "Compiling CXX source to assembly CMakeFiles/normal_forms.dir/elim_term_ite.cpp.s"
	cd /Users/wwq/z3/build/src/ast/normal_forms && /usr/bin/clang++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /Users/wwq/z3/src/ast/normal_forms/elim_term_ite.cpp -o CMakeFiles/normal_forms.dir/elim_term_ite.cpp.s

src/ast/normal_forms/CMakeFiles/normal_forms.dir/name_exprs.cpp.o: src/ast/normal_forms/CMakeFiles/normal_forms.dir/flags.make
src/ast/normal_forms/CMakeFiles/normal_forms.dir/name_exprs.cpp.o: /Users/wwq/z3/src/ast/normal_forms/name_exprs.cpp
src/ast/normal_forms/CMakeFiles/normal_forms.dir/name_exprs.cpp.o: src/ast/normal_forms/CMakeFiles/normal_forms.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green --progress-dir=/Users/wwq/z3/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_4) "Building CXX object src/ast/normal_forms/CMakeFiles/normal_forms.dir/name_exprs.cpp.o"
	cd /Users/wwq/z3/build/src/ast/normal_forms && /usr/bin/clang++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -MD -MT src/ast/normal_forms/CMakeFiles/normal_forms.dir/name_exprs.cpp.o -MF CMakeFiles/normal_forms.dir/name_exprs.cpp.o.d -o CMakeFiles/normal_forms.dir/name_exprs.cpp.o -c /Users/wwq/z3/src/ast/normal_forms/name_exprs.cpp

src/ast/normal_forms/CMakeFiles/normal_forms.dir/name_exprs.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green "Preprocessing CXX source to CMakeFiles/normal_forms.dir/name_exprs.cpp.i"
	cd /Users/wwq/z3/build/src/ast/normal_forms && /usr/bin/clang++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /Users/wwq/z3/src/ast/normal_forms/name_exprs.cpp > CMakeFiles/normal_forms.dir/name_exprs.cpp.i

src/ast/normal_forms/CMakeFiles/normal_forms.dir/name_exprs.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green "Compiling CXX source to assembly CMakeFiles/normal_forms.dir/name_exprs.cpp.s"
	cd /Users/wwq/z3/build/src/ast/normal_forms && /usr/bin/clang++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /Users/wwq/z3/src/ast/normal_forms/name_exprs.cpp -o CMakeFiles/normal_forms.dir/name_exprs.cpp.s

src/ast/normal_forms/CMakeFiles/normal_forms.dir/nnf.cpp.o: src/ast/normal_forms/CMakeFiles/normal_forms.dir/flags.make
src/ast/normal_forms/CMakeFiles/normal_forms.dir/nnf.cpp.o: /Users/wwq/z3/src/ast/normal_forms/nnf.cpp
src/ast/normal_forms/CMakeFiles/normal_forms.dir/nnf.cpp.o: src/ast/normal_forms/CMakeFiles/normal_forms.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green --progress-dir=/Users/wwq/z3/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_5) "Building CXX object src/ast/normal_forms/CMakeFiles/normal_forms.dir/nnf.cpp.o"
	cd /Users/wwq/z3/build/src/ast/normal_forms && /usr/bin/clang++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -MD -MT src/ast/normal_forms/CMakeFiles/normal_forms.dir/nnf.cpp.o -MF CMakeFiles/normal_forms.dir/nnf.cpp.o.d -o CMakeFiles/normal_forms.dir/nnf.cpp.o -c /Users/wwq/z3/src/ast/normal_forms/nnf.cpp

src/ast/normal_forms/CMakeFiles/normal_forms.dir/nnf.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green "Preprocessing CXX source to CMakeFiles/normal_forms.dir/nnf.cpp.i"
	cd /Users/wwq/z3/build/src/ast/normal_forms && /usr/bin/clang++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /Users/wwq/z3/src/ast/normal_forms/nnf.cpp > CMakeFiles/normal_forms.dir/nnf.cpp.i

src/ast/normal_forms/CMakeFiles/normal_forms.dir/nnf.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green "Compiling CXX source to assembly CMakeFiles/normal_forms.dir/nnf.cpp.s"
	cd /Users/wwq/z3/build/src/ast/normal_forms && /usr/bin/clang++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /Users/wwq/z3/src/ast/normal_forms/nnf.cpp -o CMakeFiles/normal_forms.dir/nnf.cpp.s

src/ast/normal_forms/CMakeFiles/normal_forms.dir/pull_quant.cpp.o: src/ast/normal_forms/CMakeFiles/normal_forms.dir/flags.make
src/ast/normal_forms/CMakeFiles/normal_forms.dir/pull_quant.cpp.o: /Users/wwq/z3/src/ast/normal_forms/pull_quant.cpp
src/ast/normal_forms/CMakeFiles/normal_forms.dir/pull_quant.cpp.o: src/ast/normal_forms/CMakeFiles/normal_forms.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green --progress-dir=/Users/wwq/z3/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_6) "Building CXX object src/ast/normal_forms/CMakeFiles/normal_forms.dir/pull_quant.cpp.o"
	cd /Users/wwq/z3/build/src/ast/normal_forms && /usr/bin/clang++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -MD -MT src/ast/normal_forms/CMakeFiles/normal_forms.dir/pull_quant.cpp.o -MF CMakeFiles/normal_forms.dir/pull_quant.cpp.o.d -o CMakeFiles/normal_forms.dir/pull_quant.cpp.o -c /Users/wwq/z3/src/ast/normal_forms/pull_quant.cpp

src/ast/normal_forms/CMakeFiles/normal_forms.dir/pull_quant.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green "Preprocessing CXX source to CMakeFiles/normal_forms.dir/pull_quant.cpp.i"
	cd /Users/wwq/z3/build/src/ast/normal_forms && /usr/bin/clang++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /Users/wwq/z3/src/ast/normal_forms/pull_quant.cpp > CMakeFiles/normal_forms.dir/pull_quant.cpp.i

src/ast/normal_forms/CMakeFiles/normal_forms.dir/pull_quant.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green "Compiling CXX source to assembly CMakeFiles/normal_forms.dir/pull_quant.cpp.s"
	cd /Users/wwq/z3/build/src/ast/normal_forms && /usr/bin/clang++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /Users/wwq/z3/src/ast/normal_forms/pull_quant.cpp -o CMakeFiles/normal_forms.dir/pull_quant.cpp.s

normal_forms: src/ast/normal_forms/CMakeFiles/normal_forms.dir/defined_names.cpp.o
normal_forms: src/ast/normal_forms/CMakeFiles/normal_forms.dir/elim_term_ite.cpp.o
normal_forms: src/ast/normal_forms/CMakeFiles/normal_forms.dir/name_exprs.cpp.o
normal_forms: src/ast/normal_forms/CMakeFiles/normal_forms.dir/nnf.cpp.o
normal_forms: src/ast/normal_forms/CMakeFiles/normal_forms.dir/pull_quant.cpp.o
normal_forms: src/ast/normal_forms/CMakeFiles/normal_forms.dir/build.make
.PHONY : normal_forms

# Rule to build all files generated by this target.
src/ast/normal_forms/CMakeFiles/normal_forms.dir/build: normal_forms
.PHONY : src/ast/normal_forms/CMakeFiles/normal_forms.dir/build

src/ast/normal_forms/CMakeFiles/normal_forms.dir/clean:
	cd /Users/wwq/z3/build/src/ast/normal_forms && $(CMAKE_COMMAND) -P CMakeFiles/normal_forms.dir/cmake_clean.cmake
.PHONY : src/ast/normal_forms/CMakeFiles/normal_forms.dir/clean

src/ast/normal_forms/CMakeFiles/normal_forms.dir/depend: src/ast/normal_forms/nnf_params.hpp
	cd /Users/wwq/z3/build && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /Users/wwq/z3 /Users/wwq/z3/src/ast/normal_forms /Users/wwq/z3/build /Users/wwq/z3/build/src/ast/normal_forms /Users/wwq/z3/build/src/ast/normal_forms/CMakeFiles/normal_forms.dir/DependInfo.cmake "--color=$(COLOR)"
.PHONY : src/ast/normal_forms/CMakeFiles/normal_forms.dir/depend

