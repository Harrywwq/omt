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
include src/opt/CMakeFiles/opt.dir/depend.make
# Include any dependencies generated by the compiler for this target.
include src/opt/CMakeFiles/opt.dir/compiler_depend.make

# Include the progress variables for this target.
include src/opt/CMakeFiles/opt.dir/progress.make

# Include the compile flags for this target's objects.
include src/opt/CMakeFiles/opt.dir/flags.make

src/opt/opt_params.hpp: /Users/wwq/z3/src/opt/opt_params.pyg
src/opt/opt_params.hpp: /Users/wwq/z3/scripts/pyg2hpp.py
src/opt/opt_params.hpp: /Users/wwq/z3/scripts/mk_genfile_common.py
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --blue --bold --progress-dir=/Users/wwq/z3/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Generating \"/Users/wwq/z3/build/src/opt/opt_params.hpp\" from \"opt_params.pyg\""
	cd /Users/wwq/z3/build/src/opt && /opt/homebrew/bin/python3 /Users/wwq/z3/scripts/pyg2hpp.py /Users/wwq/z3/src/opt/opt_params.pyg /Users/wwq/z3/build/src/opt

src/opt/CMakeFiles/opt.dir/maxcore.cpp.o: src/opt/CMakeFiles/opt.dir/flags.make
src/opt/CMakeFiles/opt.dir/maxcore.cpp.o: /Users/wwq/z3/src/opt/maxcore.cpp
src/opt/CMakeFiles/opt.dir/maxcore.cpp.o: src/opt/CMakeFiles/opt.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green --progress-dir=/Users/wwq/z3/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Building CXX object src/opt/CMakeFiles/opt.dir/maxcore.cpp.o"
	cd /Users/wwq/z3/build/src/opt && /usr/bin/clang++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -MD -MT src/opt/CMakeFiles/opt.dir/maxcore.cpp.o -MF CMakeFiles/opt.dir/maxcore.cpp.o.d -o CMakeFiles/opt.dir/maxcore.cpp.o -c /Users/wwq/z3/src/opt/maxcore.cpp

src/opt/CMakeFiles/opt.dir/maxcore.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green "Preprocessing CXX source to CMakeFiles/opt.dir/maxcore.cpp.i"
	cd /Users/wwq/z3/build/src/opt && /usr/bin/clang++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /Users/wwq/z3/src/opt/maxcore.cpp > CMakeFiles/opt.dir/maxcore.cpp.i

src/opt/CMakeFiles/opt.dir/maxcore.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green "Compiling CXX source to assembly CMakeFiles/opt.dir/maxcore.cpp.s"
	cd /Users/wwq/z3/build/src/opt && /usr/bin/clang++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /Users/wwq/z3/src/opt/maxcore.cpp -o CMakeFiles/opt.dir/maxcore.cpp.s

src/opt/CMakeFiles/opt.dir/maxlex.cpp.o: src/opt/CMakeFiles/opt.dir/flags.make
src/opt/CMakeFiles/opt.dir/maxlex.cpp.o: /Users/wwq/z3/src/opt/maxlex.cpp
src/opt/CMakeFiles/opt.dir/maxlex.cpp.o: src/opt/CMakeFiles/opt.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green --progress-dir=/Users/wwq/z3/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_3) "Building CXX object src/opt/CMakeFiles/opt.dir/maxlex.cpp.o"
	cd /Users/wwq/z3/build/src/opt && /usr/bin/clang++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -MD -MT src/opt/CMakeFiles/opt.dir/maxlex.cpp.o -MF CMakeFiles/opt.dir/maxlex.cpp.o.d -o CMakeFiles/opt.dir/maxlex.cpp.o -c /Users/wwq/z3/src/opt/maxlex.cpp

src/opt/CMakeFiles/opt.dir/maxlex.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green "Preprocessing CXX source to CMakeFiles/opt.dir/maxlex.cpp.i"
	cd /Users/wwq/z3/build/src/opt && /usr/bin/clang++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /Users/wwq/z3/src/opt/maxlex.cpp > CMakeFiles/opt.dir/maxlex.cpp.i

src/opt/CMakeFiles/opt.dir/maxlex.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green "Compiling CXX source to assembly CMakeFiles/opt.dir/maxlex.cpp.s"
	cd /Users/wwq/z3/build/src/opt && /usr/bin/clang++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /Users/wwq/z3/src/opt/maxlex.cpp -o CMakeFiles/opt.dir/maxlex.cpp.s

src/opt/CMakeFiles/opt.dir/maxsmt.cpp.o: src/opt/CMakeFiles/opt.dir/flags.make
src/opt/CMakeFiles/opt.dir/maxsmt.cpp.o: /Users/wwq/z3/src/opt/maxsmt.cpp
src/opt/CMakeFiles/opt.dir/maxsmt.cpp.o: src/opt/CMakeFiles/opt.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green --progress-dir=/Users/wwq/z3/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_4) "Building CXX object src/opt/CMakeFiles/opt.dir/maxsmt.cpp.o"
	cd /Users/wwq/z3/build/src/opt && /usr/bin/clang++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -MD -MT src/opt/CMakeFiles/opt.dir/maxsmt.cpp.o -MF CMakeFiles/opt.dir/maxsmt.cpp.o.d -o CMakeFiles/opt.dir/maxsmt.cpp.o -c /Users/wwq/z3/src/opt/maxsmt.cpp

src/opt/CMakeFiles/opt.dir/maxsmt.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green "Preprocessing CXX source to CMakeFiles/opt.dir/maxsmt.cpp.i"
	cd /Users/wwq/z3/build/src/opt && /usr/bin/clang++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /Users/wwq/z3/src/opt/maxsmt.cpp > CMakeFiles/opt.dir/maxsmt.cpp.i

src/opt/CMakeFiles/opt.dir/maxsmt.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green "Compiling CXX source to assembly CMakeFiles/opt.dir/maxsmt.cpp.s"
	cd /Users/wwq/z3/build/src/opt && /usr/bin/clang++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /Users/wwq/z3/src/opt/maxsmt.cpp -o CMakeFiles/opt.dir/maxsmt.cpp.s

src/opt/CMakeFiles/opt.dir/opt_cmds.cpp.o: src/opt/CMakeFiles/opt.dir/flags.make
src/opt/CMakeFiles/opt.dir/opt_cmds.cpp.o: /Users/wwq/z3/src/opt/opt_cmds.cpp
src/opt/CMakeFiles/opt.dir/opt_cmds.cpp.o: src/opt/CMakeFiles/opt.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green --progress-dir=/Users/wwq/z3/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_5) "Building CXX object src/opt/CMakeFiles/opt.dir/opt_cmds.cpp.o"
	cd /Users/wwq/z3/build/src/opt && /usr/bin/clang++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -MD -MT src/opt/CMakeFiles/opt.dir/opt_cmds.cpp.o -MF CMakeFiles/opt.dir/opt_cmds.cpp.o.d -o CMakeFiles/opt.dir/opt_cmds.cpp.o -c /Users/wwq/z3/src/opt/opt_cmds.cpp

src/opt/CMakeFiles/opt.dir/opt_cmds.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green "Preprocessing CXX source to CMakeFiles/opt.dir/opt_cmds.cpp.i"
	cd /Users/wwq/z3/build/src/opt && /usr/bin/clang++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /Users/wwq/z3/src/opt/opt_cmds.cpp > CMakeFiles/opt.dir/opt_cmds.cpp.i

src/opt/CMakeFiles/opt.dir/opt_cmds.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green "Compiling CXX source to assembly CMakeFiles/opt.dir/opt_cmds.cpp.s"
	cd /Users/wwq/z3/build/src/opt && /usr/bin/clang++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /Users/wwq/z3/src/opt/opt_cmds.cpp -o CMakeFiles/opt.dir/opt_cmds.cpp.s

src/opt/CMakeFiles/opt.dir/opt_context.cpp.o: src/opt/CMakeFiles/opt.dir/flags.make
src/opt/CMakeFiles/opt.dir/opt_context.cpp.o: /Users/wwq/z3/src/opt/opt_context.cpp
src/opt/CMakeFiles/opt.dir/opt_context.cpp.o: src/opt/CMakeFiles/opt.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green --progress-dir=/Users/wwq/z3/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_6) "Building CXX object src/opt/CMakeFiles/opt.dir/opt_context.cpp.o"
	cd /Users/wwq/z3/build/src/opt && /usr/bin/clang++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -MD -MT src/opt/CMakeFiles/opt.dir/opt_context.cpp.o -MF CMakeFiles/opt.dir/opt_context.cpp.o.d -o CMakeFiles/opt.dir/opt_context.cpp.o -c /Users/wwq/z3/src/opt/opt_context.cpp

src/opt/CMakeFiles/opt.dir/opt_context.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green "Preprocessing CXX source to CMakeFiles/opt.dir/opt_context.cpp.i"
	cd /Users/wwq/z3/build/src/opt && /usr/bin/clang++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /Users/wwq/z3/src/opt/opt_context.cpp > CMakeFiles/opt.dir/opt_context.cpp.i

src/opt/CMakeFiles/opt.dir/opt_context.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green "Compiling CXX source to assembly CMakeFiles/opt.dir/opt_context.cpp.s"
	cd /Users/wwq/z3/build/src/opt && /usr/bin/clang++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /Users/wwq/z3/src/opt/opt_context.cpp -o CMakeFiles/opt.dir/opt_context.cpp.s

src/opt/CMakeFiles/opt.dir/opt_cores.cpp.o: src/opt/CMakeFiles/opt.dir/flags.make
src/opt/CMakeFiles/opt.dir/opt_cores.cpp.o: /Users/wwq/z3/src/opt/opt_cores.cpp
src/opt/CMakeFiles/opt.dir/opt_cores.cpp.o: src/opt/CMakeFiles/opt.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green --progress-dir=/Users/wwq/z3/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_7) "Building CXX object src/opt/CMakeFiles/opt.dir/opt_cores.cpp.o"
	cd /Users/wwq/z3/build/src/opt && /usr/bin/clang++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -MD -MT src/opt/CMakeFiles/opt.dir/opt_cores.cpp.o -MF CMakeFiles/opt.dir/opt_cores.cpp.o.d -o CMakeFiles/opt.dir/opt_cores.cpp.o -c /Users/wwq/z3/src/opt/opt_cores.cpp

src/opt/CMakeFiles/opt.dir/opt_cores.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green "Preprocessing CXX source to CMakeFiles/opt.dir/opt_cores.cpp.i"
	cd /Users/wwq/z3/build/src/opt && /usr/bin/clang++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /Users/wwq/z3/src/opt/opt_cores.cpp > CMakeFiles/opt.dir/opt_cores.cpp.i

src/opt/CMakeFiles/opt.dir/opt_cores.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green "Compiling CXX source to assembly CMakeFiles/opt.dir/opt_cores.cpp.s"
	cd /Users/wwq/z3/build/src/opt && /usr/bin/clang++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /Users/wwq/z3/src/opt/opt_cores.cpp -o CMakeFiles/opt.dir/opt_cores.cpp.s

src/opt/CMakeFiles/opt.dir/opt_lns.cpp.o: src/opt/CMakeFiles/opt.dir/flags.make
src/opt/CMakeFiles/opt.dir/opt_lns.cpp.o: /Users/wwq/z3/src/opt/opt_lns.cpp
src/opt/CMakeFiles/opt.dir/opt_lns.cpp.o: src/opt/CMakeFiles/opt.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green --progress-dir=/Users/wwq/z3/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_8) "Building CXX object src/opt/CMakeFiles/opt.dir/opt_lns.cpp.o"
	cd /Users/wwq/z3/build/src/opt && /usr/bin/clang++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -MD -MT src/opt/CMakeFiles/opt.dir/opt_lns.cpp.o -MF CMakeFiles/opt.dir/opt_lns.cpp.o.d -o CMakeFiles/opt.dir/opt_lns.cpp.o -c /Users/wwq/z3/src/opt/opt_lns.cpp

src/opt/CMakeFiles/opt.dir/opt_lns.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green "Preprocessing CXX source to CMakeFiles/opt.dir/opt_lns.cpp.i"
	cd /Users/wwq/z3/build/src/opt && /usr/bin/clang++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /Users/wwq/z3/src/opt/opt_lns.cpp > CMakeFiles/opt.dir/opt_lns.cpp.i

src/opt/CMakeFiles/opt.dir/opt_lns.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green "Compiling CXX source to assembly CMakeFiles/opt.dir/opt_lns.cpp.s"
	cd /Users/wwq/z3/build/src/opt && /usr/bin/clang++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /Users/wwq/z3/src/opt/opt_lns.cpp -o CMakeFiles/opt.dir/opt_lns.cpp.s

src/opt/CMakeFiles/opt.dir/opt_pareto.cpp.o: src/opt/CMakeFiles/opt.dir/flags.make
src/opt/CMakeFiles/opt.dir/opt_pareto.cpp.o: /Users/wwq/z3/src/opt/opt_pareto.cpp
src/opt/CMakeFiles/opt.dir/opt_pareto.cpp.o: src/opt/CMakeFiles/opt.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green --progress-dir=/Users/wwq/z3/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_9) "Building CXX object src/opt/CMakeFiles/opt.dir/opt_pareto.cpp.o"
	cd /Users/wwq/z3/build/src/opt && /usr/bin/clang++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -MD -MT src/opt/CMakeFiles/opt.dir/opt_pareto.cpp.o -MF CMakeFiles/opt.dir/opt_pareto.cpp.o.d -o CMakeFiles/opt.dir/opt_pareto.cpp.o -c /Users/wwq/z3/src/opt/opt_pareto.cpp

src/opt/CMakeFiles/opt.dir/opt_pareto.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green "Preprocessing CXX source to CMakeFiles/opt.dir/opt_pareto.cpp.i"
	cd /Users/wwq/z3/build/src/opt && /usr/bin/clang++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /Users/wwq/z3/src/opt/opt_pareto.cpp > CMakeFiles/opt.dir/opt_pareto.cpp.i

src/opt/CMakeFiles/opt.dir/opt_pareto.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green "Compiling CXX source to assembly CMakeFiles/opt.dir/opt_pareto.cpp.s"
	cd /Users/wwq/z3/build/src/opt && /usr/bin/clang++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /Users/wwq/z3/src/opt/opt_pareto.cpp -o CMakeFiles/opt.dir/opt_pareto.cpp.s

src/opt/CMakeFiles/opt.dir/opt_parse.cpp.o: src/opt/CMakeFiles/opt.dir/flags.make
src/opt/CMakeFiles/opt.dir/opt_parse.cpp.o: /Users/wwq/z3/src/opt/opt_parse.cpp
src/opt/CMakeFiles/opt.dir/opt_parse.cpp.o: src/opt/CMakeFiles/opt.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green --progress-dir=/Users/wwq/z3/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_10) "Building CXX object src/opt/CMakeFiles/opt.dir/opt_parse.cpp.o"
	cd /Users/wwq/z3/build/src/opt && /usr/bin/clang++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -MD -MT src/opt/CMakeFiles/opt.dir/opt_parse.cpp.o -MF CMakeFiles/opt.dir/opt_parse.cpp.o.d -o CMakeFiles/opt.dir/opt_parse.cpp.o -c /Users/wwq/z3/src/opt/opt_parse.cpp

src/opt/CMakeFiles/opt.dir/opt_parse.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green "Preprocessing CXX source to CMakeFiles/opt.dir/opt_parse.cpp.i"
	cd /Users/wwq/z3/build/src/opt && /usr/bin/clang++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /Users/wwq/z3/src/opt/opt_parse.cpp > CMakeFiles/opt.dir/opt_parse.cpp.i

src/opt/CMakeFiles/opt.dir/opt_parse.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green "Compiling CXX source to assembly CMakeFiles/opt.dir/opt_parse.cpp.s"
	cd /Users/wwq/z3/build/src/opt && /usr/bin/clang++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /Users/wwq/z3/src/opt/opt_parse.cpp -o CMakeFiles/opt.dir/opt_parse.cpp.s

src/opt/CMakeFiles/opt.dir/opt_preprocess.cpp.o: src/opt/CMakeFiles/opt.dir/flags.make
src/opt/CMakeFiles/opt.dir/opt_preprocess.cpp.o: /Users/wwq/z3/src/opt/opt_preprocess.cpp
src/opt/CMakeFiles/opt.dir/opt_preprocess.cpp.o: src/opt/CMakeFiles/opt.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green --progress-dir=/Users/wwq/z3/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_11) "Building CXX object src/opt/CMakeFiles/opt.dir/opt_preprocess.cpp.o"
	cd /Users/wwq/z3/build/src/opt && /usr/bin/clang++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -MD -MT src/opt/CMakeFiles/opt.dir/opt_preprocess.cpp.o -MF CMakeFiles/opt.dir/opt_preprocess.cpp.o.d -o CMakeFiles/opt.dir/opt_preprocess.cpp.o -c /Users/wwq/z3/src/opt/opt_preprocess.cpp

src/opt/CMakeFiles/opt.dir/opt_preprocess.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green "Preprocessing CXX source to CMakeFiles/opt.dir/opt_preprocess.cpp.i"
	cd /Users/wwq/z3/build/src/opt && /usr/bin/clang++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /Users/wwq/z3/src/opt/opt_preprocess.cpp > CMakeFiles/opt.dir/opt_preprocess.cpp.i

src/opt/CMakeFiles/opt.dir/opt_preprocess.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green "Compiling CXX source to assembly CMakeFiles/opt.dir/opt_preprocess.cpp.s"
	cd /Users/wwq/z3/build/src/opt && /usr/bin/clang++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /Users/wwq/z3/src/opt/opt_preprocess.cpp -o CMakeFiles/opt.dir/opt_preprocess.cpp.s

src/opt/CMakeFiles/opt.dir/optsmt.cpp.o: src/opt/CMakeFiles/opt.dir/flags.make
src/opt/CMakeFiles/opt.dir/optsmt.cpp.o: /Users/wwq/z3/src/opt/optsmt.cpp
src/opt/CMakeFiles/opt.dir/optsmt.cpp.o: src/opt/CMakeFiles/opt.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green --progress-dir=/Users/wwq/z3/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_12) "Building CXX object src/opt/CMakeFiles/opt.dir/optsmt.cpp.o"
	cd /Users/wwq/z3/build/src/opt && /usr/bin/clang++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -MD -MT src/opt/CMakeFiles/opt.dir/optsmt.cpp.o -MF CMakeFiles/opt.dir/optsmt.cpp.o.d -o CMakeFiles/opt.dir/optsmt.cpp.o -c /Users/wwq/z3/src/opt/optsmt.cpp

src/opt/CMakeFiles/opt.dir/optsmt.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green "Preprocessing CXX source to CMakeFiles/opt.dir/optsmt.cpp.i"
	cd /Users/wwq/z3/build/src/opt && /usr/bin/clang++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /Users/wwq/z3/src/opt/optsmt.cpp > CMakeFiles/opt.dir/optsmt.cpp.i

src/opt/CMakeFiles/opt.dir/optsmt.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green "Compiling CXX source to assembly CMakeFiles/opt.dir/optsmt.cpp.s"
	cd /Users/wwq/z3/build/src/opt && /usr/bin/clang++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /Users/wwq/z3/src/opt/optsmt.cpp -o CMakeFiles/opt.dir/optsmt.cpp.s

src/opt/CMakeFiles/opt.dir/opt_solver.cpp.o: src/opt/CMakeFiles/opt.dir/flags.make
src/opt/CMakeFiles/opt.dir/opt_solver.cpp.o: /Users/wwq/z3/src/opt/opt_solver.cpp
src/opt/CMakeFiles/opt.dir/opt_solver.cpp.o: src/opt/CMakeFiles/opt.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green --progress-dir=/Users/wwq/z3/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_13) "Building CXX object src/opt/CMakeFiles/opt.dir/opt_solver.cpp.o"
	cd /Users/wwq/z3/build/src/opt && /usr/bin/clang++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -MD -MT src/opt/CMakeFiles/opt.dir/opt_solver.cpp.o -MF CMakeFiles/opt.dir/opt_solver.cpp.o.d -o CMakeFiles/opt.dir/opt_solver.cpp.o -c /Users/wwq/z3/src/opt/opt_solver.cpp

src/opt/CMakeFiles/opt.dir/opt_solver.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green "Preprocessing CXX source to CMakeFiles/opt.dir/opt_solver.cpp.i"
	cd /Users/wwq/z3/build/src/opt && /usr/bin/clang++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /Users/wwq/z3/src/opt/opt_solver.cpp > CMakeFiles/opt.dir/opt_solver.cpp.i

src/opt/CMakeFiles/opt.dir/opt_solver.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green "Compiling CXX source to assembly CMakeFiles/opt.dir/opt_solver.cpp.s"
	cd /Users/wwq/z3/build/src/opt && /usr/bin/clang++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /Users/wwq/z3/src/opt/opt_solver.cpp -o CMakeFiles/opt.dir/opt_solver.cpp.s

src/opt/CMakeFiles/opt.dir/pb_sls.cpp.o: src/opt/CMakeFiles/opt.dir/flags.make
src/opt/CMakeFiles/opt.dir/pb_sls.cpp.o: /Users/wwq/z3/src/opt/pb_sls.cpp
src/opt/CMakeFiles/opt.dir/pb_sls.cpp.o: src/opt/CMakeFiles/opt.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green --progress-dir=/Users/wwq/z3/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_14) "Building CXX object src/opt/CMakeFiles/opt.dir/pb_sls.cpp.o"
	cd /Users/wwq/z3/build/src/opt && /usr/bin/clang++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -MD -MT src/opt/CMakeFiles/opt.dir/pb_sls.cpp.o -MF CMakeFiles/opt.dir/pb_sls.cpp.o.d -o CMakeFiles/opt.dir/pb_sls.cpp.o -c /Users/wwq/z3/src/opt/pb_sls.cpp

src/opt/CMakeFiles/opt.dir/pb_sls.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green "Preprocessing CXX source to CMakeFiles/opt.dir/pb_sls.cpp.i"
	cd /Users/wwq/z3/build/src/opt && /usr/bin/clang++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /Users/wwq/z3/src/opt/pb_sls.cpp > CMakeFiles/opt.dir/pb_sls.cpp.i

src/opt/CMakeFiles/opt.dir/pb_sls.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green "Compiling CXX source to assembly CMakeFiles/opt.dir/pb_sls.cpp.s"
	cd /Users/wwq/z3/build/src/opt && /usr/bin/clang++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /Users/wwq/z3/src/opt/pb_sls.cpp -o CMakeFiles/opt.dir/pb_sls.cpp.s

src/opt/CMakeFiles/opt.dir/sortmax.cpp.o: src/opt/CMakeFiles/opt.dir/flags.make
src/opt/CMakeFiles/opt.dir/sortmax.cpp.o: /Users/wwq/z3/src/opt/sortmax.cpp
src/opt/CMakeFiles/opt.dir/sortmax.cpp.o: src/opt/CMakeFiles/opt.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green --progress-dir=/Users/wwq/z3/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_15) "Building CXX object src/opt/CMakeFiles/opt.dir/sortmax.cpp.o"
	cd /Users/wwq/z3/build/src/opt && /usr/bin/clang++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -MD -MT src/opt/CMakeFiles/opt.dir/sortmax.cpp.o -MF CMakeFiles/opt.dir/sortmax.cpp.o.d -o CMakeFiles/opt.dir/sortmax.cpp.o -c /Users/wwq/z3/src/opt/sortmax.cpp

src/opt/CMakeFiles/opt.dir/sortmax.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green "Preprocessing CXX source to CMakeFiles/opt.dir/sortmax.cpp.i"
	cd /Users/wwq/z3/build/src/opt && /usr/bin/clang++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /Users/wwq/z3/src/opt/sortmax.cpp > CMakeFiles/opt.dir/sortmax.cpp.i

src/opt/CMakeFiles/opt.dir/sortmax.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green "Compiling CXX source to assembly CMakeFiles/opt.dir/sortmax.cpp.s"
	cd /Users/wwq/z3/build/src/opt && /usr/bin/clang++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /Users/wwq/z3/src/opt/sortmax.cpp -o CMakeFiles/opt.dir/sortmax.cpp.s

src/opt/CMakeFiles/opt.dir/totalizer.cpp.o: src/opt/CMakeFiles/opt.dir/flags.make
src/opt/CMakeFiles/opt.dir/totalizer.cpp.o: /Users/wwq/z3/src/opt/totalizer.cpp
src/opt/CMakeFiles/opt.dir/totalizer.cpp.o: src/opt/CMakeFiles/opt.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green --progress-dir=/Users/wwq/z3/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_16) "Building CXX object src/opt/CMakeFiles/opt.dir/totalizer.cpp.o"
	cd /Users/wwq/z3/build/src/opt && /usr/bin/clang++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -MD -MT src/opt/CMakeFiles/opt.dir/totalizer.cpp.o -MF CMakeFiles/opt.dir/totalizer.cpp.o.d -o CMakeFiles/opt.dir/totalizer.cpp.o -c /Users/wwq/z3/src/opt/totalizer.cpp

src/opt/CMakeFiles/opt.dir/totalizer.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green "Preprocessing CXX source to CMakeFiles/opt.dir/totalizer.cpp.i"
	cd /Users/wwq/z3/build/src/opt && /usr/bin/clang++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /Users/wwq/z3/src/opt/totalizer.cpp > CMakeFiles/opt.dir/totalizer.cpp.i

src/opt/CMakeFiles/opt.dir/totalizer.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green "Compiling CXX source to assembly CMakeFiles/opt.dir/totalizer.cpp.s"
	cd /Users/wwq/z3/build/src/opt && /usr/bin/clang++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /Users/wwq/z3/src/opt/totalizer.cpp -o CMakeFiles/opt.dir/totalizer.cpp.s

src/opt/CMakeFiles/opt.dir/wmax.cpp.o: src/opt/CMakeFiles/opt.dir/flags.make
src/opt/CMakeFiles/opt.dir/wmax.cpp.o: /Users/wwq/z3/src/opt/wmax.cpp
src/opt/CMakeFiles/opt.dir/wmax.cpp.o: src/opt/CMakeFiles/opt.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green --progress-dir=/Users/wwq/z3/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_17) "Building CXX object src/opt/CMakeFiles/opt.dir/wmax.cpp.o"
	cd /Users/wwq/z3/build/src/opt && /usr/bin/clang++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -MD -MT src/opt/CMakeFiles/opt.dir/wmax.cpp.o -MF CMakeFiles/opt.dir/wmax.cpp.o.d -o CMakeFiles/opt.dir/wmax.cpp.o -c /Users/wwq/z3/src/opt/wmax.cpp

src/opt/CMakeFiles/opt.dir/wmax.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green "Preprocessing CXX source to CMakeFiles/opt.dir/wmax.cpp.i"
	cd /Users/wwq/z3/build/src/opt && /usr/bin/clang++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /Users/wwq/z3/src/opt/wmax.cpp > CMakeFiles/opt.dir/wmax.cpp.i

src/opt/CMakeFiles/opt.dir/wmax.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green "Compiling CXX source to assembly CMakeFiles/opt.dir/wmax.cpp.s"
	cd /Users/wwq/z3/build/src/opt && /usr/bin/clang++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /Users/wwq/z3/src/opt/wmax.cpp -o CMakeFiles/opt.dir/wmax.cpp.s

opt: src/opt/CMakeFiles/opt.dir/maxcore.cpp.o
opt: src/opt/CMakeFiles/opt.dir/maxlex.cpp.o
opt: src/opt/CMakeFiles/opt.dir/maxsmt.cpp.o
opt: src/opt/CMakeFiles/opt.dir/opt_cmds.cpp.o
opt: src/opt/CMakeFiles/opt.dir/opt_context.cpp.o
opt: src/opt/CMakeFiles/opt.dir/opt_cores.cpp.o
opt: src/opt/CMakeFiles/opt.dir/opt_lns.cpp.o
opt: src/opt/CMakeFiles/opt.dir/opt_pareto.cpp.o
opt: src/opt/CMakeFiles/opt.dir/opt_parse.cpp.o
opt: src/opt/CMakeFiles/opt.dir/opt_preprocess.cpp.o
opt: src/opt/CMakeFiles/opt.dir/optsmt.cpp.o
opt: src/opt/CMakeFiles/opt.dir/opt_solver.cpp.o
opt: src/opt/CMakeFiles/opt.dir/pb_sls.cpp.o
opt: src/opt/CMakeFiles/opt.dir/sortmax.cpp.o
opt: src/opt/CMakeFiles/opt.dir/totalizer.cpp.o
opt: src/opt/CMakeFiles/opt.dir/wmax.cpp.o
opt: src/opt/CMakeFiles/opt.dir/build.make
.PHONY : opt

# Rule to build all files generated by this target.
src/opt/CMakeFiles/opt.dir/build: opt
.PHONY : src/opt/CMakeFiles/opt.dir/build

src/opt/CMakeFiles/opt.dir/clean:
	cd /Users/wwq/z3/build/src/opt && $(CMAKE_COMMAND) -P CMakeFiles/opt.dir/cmake_clean.cmake
.PHONY : src/opt/CMakeFiles/opt.dir/clean

src/opt/CMakeFiles/opt.dir/depend: src/opt/opt_params.hpp
	cd /Users/wwq/z3/build && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /Users/wwq/z3 /Users/wwq/z3/src/opt /Users/wwq/z3/build /Users/wwq/z3/build/src/opt /Users/wwq/z3/build/src/opt/CMakeFiles/opt.dir/DependInfo.cmake "--color=$(COLOR)"
.PHONY : src/opt/CMakeFiles/opt.dir/depend
