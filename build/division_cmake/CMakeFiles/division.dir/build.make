# CMAKE generated file: DO NOT EDIT!
# Generated by "Unix Makefiles" Generator, CMake Version 3.22

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
CMAKE_COMMAND = /usr/bin/cmake

# The command to remove a file.
RM = /usr/bin/cmake -E rm -f

# Escaping for special characters.
EQUALS = =

# The top-level source directory on which CMake was run.
CMAKE_SOURCE_DIR = /home/adham/iti_intake_45_/cmake_proj/calculator

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = /home/adham/iti_intake_45_/cmake_proj/calculator/build

# Include any dependencies generated for this target.
include division_cmake/CMakeFiles/division.dir/depend.make
# Include any dependencies generated by the compiler for this target.
include division_cmake/CMakeFiles/division.dir/compiler_depend.make

# Include the progress variables for this target.
include division_cmake/CMakeFiles/division.dir/progress.make

# Include the compile flags for this target's objects.
include division_cmake/CMakeFiles/division.dir/flags.make

division_cmake/CMakeFiles/division.dir/src/division.c.o: division_cmake/CMakeFiles/division.dir/flags.make
division_cmake/CMakeFiles/division.dir/src/division.c.o: ../division_cmake/src/division.c
division_cmake/CMakeFiles/division.dir/src/division.c.o: division_cmake/CMakeFiles/division.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/adham/iti_intake_45_/cmake_proj/calculator/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building C object division_cmake/CMakeFiles/division.dir/src/division.c.o"
	cd /home/adham/iti_intake_45_/cmake_proj/calculator/build/division_cmake && /usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -MD -MT division_cmake/CMakeFiles/division.dir/src/division.c.o -MF CMakeFiles/division.dir/src/division.c.o.d -o CMakeFiles/division.dir/src/division.c.o -c /home/adham/iti_intake_45_/cmake_proj/calculator/division_cmake/src/division.c

division_cmake/CMakeFiles/division.dir/src/division.c.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing C source to CMakeFiles/division.dir/src/division.c.i"
	cd /home/adham/iti_intake_45_/cmake_proj/calculator/build/division_cmake && /usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -E /home/adham/iti_intake_45_/cmake_proj/calculator/division_cmake/src/division.c > CMakeFiles/division.dir/src/division.c.i

division_cmake/CMakeFiles/division.dir/src/division.c.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling C source to assembly CMakeFiles/division.dir/src/division.c.s"
	cd /home/adham/iti_intake_45_/cmake_proj/calculator/build/division_cmake && /usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -S /home/adham/iti_intake_45_/cmake_proj/calculator/division_cmake/src/division.c -o CMakeFiles/division.dir/src/division.c.s

# Object files for target division
division_OBJECTS = \
"CMakeFiles/division.dir/src/division.c.o"

# External object files for target division
division_EXTERNAL_OBJECTS =

division_cmake/libdivision.a: division_cmake/CMakeFiles/division.dir/src/division.c.o
division_cmake/libdivision.a: division_cmake/CMakeFiles/division.dir/build.make
division_cmake/libdivision.a: division_cmake/CMakeFiles/division.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir=/home/adham/iti_intake_45_/cmake_proj/calculator/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Linking C static library libdivision.a"
	cd /home/adham/iti_intake_45_/cmake_proj/calculator/build/division_cmake && $(CMAKE_COMMAND) -P CMakeFiles/division.dir/cmake_clean_target.cmake
	cd /home/adham/iti_intake_45_/cmake_proj/calculator/build/division_cmake && $(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/division.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
division_cmake/CMakeFiles/division.dir/build: division_cmake/libdivision.a
.PHONY : division_cmake/CMakeFiles/division.dir/build

division_cmake/CMakeFiles/division.dir/clean:
	cd /home/adham/iti_intake_45_/cmake_proj/calculator/build/division_cmake && $(CMAKE_COMMAND) -P CMakeFiles/division.dir/cmake_clean.cmake
.PHONY : division_cmake/CMakeFiles/division.dir/clean

division_cmake/CMakeFiles/division.dir/depend:
	cd /home/adham/iti_intake_45_/cmake_proj/calculator/build && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /home/adham/iti_intake_45_/cmake_proj/calculator /home/adham/iti_intake_45_/cmake_proj/calculator/division_cmake /home/adham/iti_intake_45_/cmake_proj/calculator/build /home/adham/iti_intake_45_/cmake_proj/calculator/build/division_cmake /home/adham/iti_intake_45_/cmake_proj/calculator/build/division_cmake/CMakeFiles/division.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : division_cmake/CMakeFiles/division.dir/depend

