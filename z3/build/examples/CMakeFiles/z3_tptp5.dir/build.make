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

# Utility rule file for z3_tptp5.

# Include any custom commands dependencies for this target.
include examples/CMakeFiles/z3_tptp5.dir/compiler_depend.make

# Include the progress variables for this target.
include examples/CMakeFiles/z3_tptp5.dir/progress.make

examples/CMakeFiles/z3_tptp5: examples/CMakeFiles/z3_tptp5-complete

examples/CMakeFiles/z3_tptp5-complete: examples/z3_tptp5-prefix/src/z3_tptp5-stamp/z3_tptp5-install
examples/CMakeFiles/z3_tptp5-complete: examples/z3_tptp5-prefix/src/z3_tptp5-stamp/z3_tptp5-mkdir
examples/CMakeFiles/z3_tptp5-complete: examples/z3_tptp5-prefix/src/z3_tptp5-stamp/z3_tptp5-download
examples/CMakeFiles/z3_tptp5-complete: examples/z3_tptp5-prefix/src/z3_tptp5-stamp/z3_tptp5-update
examples/CMakeFiles/z3_tptp5-complete: examples/z3_tptp5-prefix/src/z3_tptp5-stamp/z3_tptp5-patch
examples/CMakeFiles/z3_tptp5-complete: examples/z3_tptp5-prefix/src/z3_tptp5-stamp/z3_tptp5-configure
examples/CMakeFiles/z3_tptp5-complete: examples/z3_tptp5-prefix/src/z3_tptp5-stamp/z3_tptp5-build
examples/CMakeFiles/z3_tptp5-complete: examples/z3_tptp5-prefix/src/z3_tptp5-stamp/z3_tptp5-install
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --blue --bold --progress-dir=/Users/wwq/z3/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Completed 'z3_tptp5'"
	cd /Users/wwq/z3/build/examples && /opt/homebrew/Cellar/cmake/3.30.2/bin/cmake -E make_directory /Users/wwq/z3/build/examples/CMakeFiles
	cd /Users/wwq/z3/build/examples && /opt/homebrew/Cellar/cmake/3.30.2/bin/cmake -E touch /Users/wwq/z3/build/examples/CMakeFiles/z3_tptp5-complete
	cd /Users/wwq/z3/build/examples && /opt/homebrew/Cellar/cmake/3.30.2/bin/cmake -E touch /Users/wwq/z3/build/examples/z3_tptp5-prefix/src/z3_tptp5-stamp/z3_tptp5-done

examples/z3_tptp5-prefix/src/z3_tptp5-stamp/z3_tptp5-build: examples/z3_tptp5-prefix/src/z3_tptp5-stamp/z3_tptp5-configure
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --blue --bold --progress-dir=/Users/wwq/z3/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Performing build step for 'z3_tptp5'"
	cd /Users/wwq/z3/build/examples/tptp_build_dir && $(MAKE)

examples/z3_tptp5-prefix/src/z3_tptp5-stamp/z3_tptp5-configure: examples/z3_tptp5-prefix/tmp/z3_tptp5-cfgcmd.txt
examples/z3_tptp5-prefix/src/z3_tptp5-stamp/z3_tptp5-configure: examples/z3_tptp5-prefix/src/z3_tptp5-stamp/z3_tptp5-patch
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --blue --bold --progress-dir=/Users/wwq/z3/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_3) "Performing configure step for 'z3_tptp5'"
	cd /Users/wwq/z3/build/examples/tptp_build_dir && /opt/homebrew/Cellar/cmake/3.30.2/bin/cmake -DZ3_DIR=/Users/wwq/z3/build -DCMAKE_BUILD_TYPE:STRING=Debug "-GUnix Makefiles" -S /Users/wwq/z3/examples/tptp -B /Users/wwq/z3/build/examples/tptp_build_dir
	cd /Users/wwq/z3/build/examples/tptp_build_dir && /opt/homebrew/Cellar/cmake/3.30.2/bin/cmake -E touch /Users/wwq/z3/build/examples/z3_tptp5-prefix/src/z3_tptp5-stamp/z3_tptp5-configure

examples/z3_tptp5-prefix/src/z3_tptp5-stamp/z3_tptp5-download: examples/z3_tptp5-prefix/src/z3_tptp5-stamp/z3_tptp5-source_dirinfo.txt
examples/z3_tptp5-prefix/src/z3_tptp5-stamp/z3_tptp5-download: examples/z3_tptp5-prefix/src/z3_tptp5-stamp/z3_tptp5-mkdir
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --blue --bold --progress-dir=/Users/wwq/z3/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_4) "No download step for 'z3_tptp5'"
	cd /Users/wwq/z3/build/examples && /opt/homebrew/Cellar/cmake/3.30.2/bin/cmake -E echo_append
	cd /Users/wwq/z3/build/examples && /opt/homebrew/Cellar/cmake/3.30.2/bin/cmake -E touch /Users/wwq/z3/build/examples/z3_tptp5-prefix/src/z3_tptp5-stamp/z3_tptp5-download

examples/z3_tptp5-prefix/src/z3_tptp5-stamp/z3_tptp5-install: examples/z3_tptp5-prefix/src/z3_tptp5-stamp/z3_tptp5-build
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --blue --bold --progress-dir=/Users/wwq/z3/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_5) "Performing install step for 'z3_tptp5'"
	cd /Users/wwq/z3/build/examples/tptp_build_dir && /opt/homebrew/Cellar/cmake/3.30.2/bin/cmake -E echo ""

examples/z3_tptp5-prefix/src/z3_tptp5-stamp/z3_tptp5-mkdir:
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --blue --bold --progress-dir=/Users/wwq/z3/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_6) "Creating directories for 'z3_tptp5'"
	cd /Users/wwq/z3/build/examples && /opt/homebrew/Cellar/cmake/3.30.2/bin/cmake -Dcfgdir= -P /Users/wwq/z3/build/examples/z3_tptp5-prefix/tmp/z3_tptp5-mkdirs.cmake
	cd /Users/wwq/z3/build/examples && /opt/homebrew/Cellar/cmake/3.30.2/bin/cmake -E touch /Users/wwq/z3/build/examples/z3_tptp5-prefix/src/z3_tptp5-stamp/z3_tptp5-mkdir

examples/z3_tptp5-prefix/src/z3_tptp5-stamp/z3_tptp5-patch: examples/z3_tptp5-prefix/src/z3_tptp5-stamp/z3_tptp5-patch-info.txt
examples/z3_tptp5-prefix/src/z3_tptp5-stamp/z3_tptp5-patch: examples/z3_tptp5-prefix/src/z3_tptp5-stamp/z3_tptp5-update
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --blue --bold --progress-dir=/Users/wwq/z3/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_7) "No patch step for 'z3_tptp5'"
	cd /Users/wwq/z3/build/examples && /opt/homebrew/Cellar/cmake/3.30.2/bin/cmake -E echo_append
	cd /Users/wwq/z3/build/examples && /opt/homebrew/Cellar/cmake/3.30.2/bin/cmake -E touch /Users/wwq/z3/build/examples/z3_tptp5-prefix/src/z3_tptp5-stamp/z3_tptp5-patch

examples/z3_tptp5-prefix/src/z3_tptp5-stamp/z3_tptp5-update: examples/z3_tptp5-prefix/src/z3_tptp5-stamp/z3_tptp5-update-info.txt
examples/z3_tptp5-prefix/src/z3_tptp5-stamp/z3_tptp5-update: examples/z3_tptp5-prefix/src/z3_tptp5-stamp/z3_tptp5-download
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --blue --bold --progress-dir=/Users/wwq/z3/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_8) "No update step for 'z3_tptp5'"
	cd /Users/wwq/z3/build/examples && /opt/homebrew/Cellar/cmake/3.30.2/bin/cmake -E echo_append
	cd /Users/wwq/z3/build/examples && /opt/homebrew/Cellar/cmake/3.30.2/bin/cmake -E touch /Users/wwq/z3/build/examples/z3_tptp5-prefix/src/z3_tptp5-stamp/z3_tptp5-update

z3_tptp5: examples/CMakeFiles/z3_tptp5
z3_tptp5: examples/CMakeFiles/z3_tptp5-complete
z3_tptp5: examples/z3_tptp5-prefix/src/z3_tptp5-stamp/z3_tptp5-build
z3_tptp5: examples/z3_tptp5-prefix/src/z3_tptp5-stamp/z3_tptp5-configure
z3_tptp5: examples/z3_tptp5-prefix/src/z3_tptp5-stamp/z3_tptp5-download
z3_tptp5: examples/z3_tptp5-prefix/src/z3_tptp5-stamp/z3_tptp5-install
z3_tptp5: examples/z3_tptp5-prefix/src/z3_tptp5-stamp/z3_tptp5-mkdir
z3_tptp5: examples/z3_tptp5-prefix/src/z3_tptp5-stamp/z3_tptp5-patch
z3_tptp5: examples/z3_tptp5-prefix/src/z3_tptp5-stamp/z3_tptp5-update
z3_tptp5: examples/CMakeFiles/z3_tptp5.dir/build.make
.PHONY : z3_tptp5

# Rule to build all files generated by this target.
examples/CMakeFiles/z3_tptp5.dir/build: z3_tptp5
.PHONY : examples/CMakeFiles/z3_tptp5.dir/build

examples/CMakeFiles/z3_tptp5.dir/clean:
	cd /Users/wwq/z3/build/examples && $(CMAKE_COMMAND) -P CMakeFiles/z3_tptp5.dir/cmake_clean.cmake
.PHONY : examples/CMakeFiles/z3_tptp5.dir/clean

examples/CMakeFiles/z3_tptp5.dir/depend:
	cd /Users/wwq/z3/build && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /Users/wwq/z3 /Users/wwq/z3/examples /Users/wwq/z3/build /Users/wwq/z3/build/examples /Users/wwq/z3/build/examples/CMakeFiles/z3_tptp5.dir/DependInfo.cmake "--color=$(COLOR)"
.PHONY : examples/CMakeFiles/z3_tptp5.dir/depend
