# CMAKE generated file: DO NOT EDIT!
# Generated by "Unix Makefiles" Generator, CMake Version 3.10

# Delete rule output on recipe failure.
.DELETE_ON_ERROR:


#=============================================================================
# Special targets provided by cmake.

# Disable implicit rules so canonical targets will work.
.SUFFIXES:


# Remove some rules from gmake that .SUFFIXES does not remove.
SUFFIXES =

.SUFFIXES: .hpux_make_needs_suffix_list


# Suppress display of executed commands.
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
RM = /usr/bin/cmake -E remove -f

# Escaping for special characters.
EQUALS = =

# The top-level source directory on which CMake was run.
CMAKE_SOURCE_DIR = /home/eli/Assign_4

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = /home/eli/Assign_4/include

# Include any dependencies generated for this target.
include test/CMakeFiles/my_unit_test.dir/depend.make

# Include the progress variables for this target.
include test/CMakeFiles/my_unit_test.dir/progress.make

# Include the compile flags for this target's objects.
include test/CMakeFiles/my_unit_test.dir/flags.make

test/CMakeFiles/my_unit_test.dir/test.c.o: test/CMakeFiles/my_unit_test.dir/flags.make
test/CMakeFiles/my_unit_test.dir/test.c.o: ../test/test.c
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/eli/Assign_4/include/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building C object test/CMakeFiles/my_unit_test.dir/test.c.o"
	cd /home/eli/Assign_4/include/test && /usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -o CMakeFiles/my_unit_test.dir/test.c.o   -c /home/eli/Assign_4/test/test.c

test/CMakeFiles/my_unit_test.dir/test.c.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing C source to CMakeFiles/my_unit_test.dir/test.c.i"
	cd /home/eli/Assign_4/include/test && /usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -E /home/eli/Assign_4/test/test.c > CMakeFiles/my_unit_test.dir/test.c.i

test/CMakeFiles/my_unit_test.dir/test.c.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling C source to assembly CMakeFiles/my_unit_test.dir/test.c.s"
	cd /home/eli/Assign_4/include/test && /usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -S /home/eli/Assign_4/test/test.c -o CMakeFiles/my_unit_test.dir/test.c.s

test/CMakeFiles/my_unit_test.dir/test.c.o.requires:

.PHONY : test/CMakeFiles/my_unit_test.dir/test.c.o.requires

test/CMakeFiles/my_unit_test.dir/test.c.o.provides: test/CMakeFiles/my_unit_test.dir/test.c.o.requires
	$(MAKE) -f test/CMakeFiles/my_unit_test.dir/build.make test/CMakeFiles/my_unit_test.dir/test.c.o.provides.build
.PHONY : test/CMakeFiles/my_unit_test.dir/test.c.o.provides

test/CMakeFiles/my_unit_test.dir/test.c.o.provides.build: test/CMakeFiles/my_unit_test.dir/test.c.o


test/CMakeFiles/my_unit_test.dir/test_1.c.o: test/CMakeFiles/my_unit_test.dir/flags.make
test/CMakeFiles/my_unit_test.dir/test_1.c.o: ../test/test_1.c
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/eli/Assign_4/include/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Building C object test/CMakeFiles/my_unit_test.dir/test_1.c.o"
	cd /home/eli/Assign_4/include/test && /usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -o CMakeFiles/my_unit_test.dir/test_1.c.o   -c /home/eli/Assign_4/test/test_1.c

test/CMakeFiles/my_unit_test.dir/test_1.c.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing C source to CMakeFiles/my_unit_test.dir/test_1.c.i"
	cd /home/eli/Assign_4/include/test && /usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -E /home/eli/Assign_4/test/test_1.c > CMakeFiles/my_unit_test.dir/test_1.c.i

test/CMakeFiles/my_unit_test.dir/test_1.c.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling C source to assembly CMakeFiles/my_unit_test.dir/test_1.c.s"
	cd /home/eli/Assign_4/include/test && /usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -S /home/eli/Assign_4/test/test_1.c -o CMakeFiles/my_unit_test.dir/test_1.c.s

test/CMakeFiles/my_unit_test.dir/test_1.c.o.requires:

.PHONY : test/CMakeFiles/my_unit_test.dir/test_1.c.o.requires

test/CMakeFiles/my_unit_test.dir/test_1.c.o.provides: test/CMakeFiles/my_unit_test.dir/test_1.c.o.requires
	$(MAKE) -f test/CMakeFiles/my_unit_test.dir/build.make test/CMakeFiles/my_unit_test.dir/test_1.c.o.provides.build
.PHONY : test/CMakeFiles/my_unit_test.dir/test_1.c.o.provides

test/CMakeFiles/my_unit_test.dir/test_1.c.o.provides.build: test/CMakeFiles/my_unit_test.dir/test_1.c.o


test/CMakeFiles/my_unit_test.dir/test_2.c.o: test/CMakeFiles/my_unit_test.dir/flags.make
test/CMakeFiles/my_unit_test.dir/test_2.c.o: ../test/test_2.c
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/eli/Assign_4/include/CMakeFiles --progress-num=$(CMAKE_PROGRESS_3) "Building C object test/CMakeFiles/my_unit_test.dir/test_2.c.o"
	cd /home/eli/Assign_4/include/test && /usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -o CMakeFiles/my_unit_test.dir/test_2.c.o   -c /home/eli/Assign_4/test/test_2.c

test/CMakeFiles/my_unit_test.dir/test_2.c.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing C source to CMakeFiles/my_unit_test.dir/test_2.c.i"
	cd /home/eli/Assign_4/include/test && /usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -E /home/eli/Assign_4/test/test_2.c > CMakeFiles/my_unit_test.dir/test_2.c.i

test/CMakeFiles/my_unit_test.dir/test_2.c.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling C source to assembly CMakeFiles/my_unit_test.dir/test_2.c.s"
	cd /home/eli/Assign_4/include/test && /usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -S /home/eli/Assign_4/test/test_2.c -o CMakeFiles/my_unit_test.dir/test_2.c.s

test/CMakeFiles/my_unit_test.dir/test_2.c.o.requires:

.PHONY : test/CMakeFiles/my_unit_test.dir/test_2.c.o.requires

test/CMakeFiles/my_unit_test.dir/test_2.c.o.provides: test/CMakeFiles/my_unit_test.dir/test_2.c.o.requires
	$(MAKE) -f test/CMakeFiles/my_unit_test.dir/build.make test/CMakeFiles/my_unit_test.dir/test_2.c.o.provides.build
.PHONY : test/CMakeFiles/my_unit_test.dir/test_2.c.o.provides

test/CMakeFiles/my_unit_test.dir/test_2.c.o.provides.build: test/CMakeFiles/my_unit_test.dir/test_2.c.o


test/CMakeFiles/my_unit_test.dir/__/src/io.c.o: test/CMakeFiles/my_unit_test.dir/flags.make
test/CMakeFiles/my_unit_test.dir/__/src/io.c.o: ../src/io.c
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/eli/Assign_4/include/CMakeFiles --progress-num=$(CMAKE_PROGRESS_4) "Building C object test/CMakeFiles/my_unit_test.dir/__/src/io.c.o"
	cd /home/eli/Assign_4/include/test && /usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -o CMakeFiles/my_unit_test.dir/__/src/io.c.o   -c /home/eli/Assign_4/src/io.c

test/CMakeFiles/my_unit_test.dir/__/src/io.c.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing C source to CMakeFiles/my_unit_test.dir/__/src/io.c.i"
	cd /home/eli/Assign_4/include/test && /usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -E /home/eli/Assign_4/src/io.c > CMakeFiles/my_unit_test.dir/__/src/io.c.i

test/CMakeFiles/my_unit_test.dir/__/src/io.c.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling C source to assembly CMakeFiles/my_unit_test.dir/__/src/io.c.s"
	cd /home/eli/Assign_4/include/test && /usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -S /home/eli/Assign_4/src/io.c -o CMakeFiles/my_unit_test.dir/__/src/io.c.s

test/CMakeFiles/my_unit_test.dir/__/src/io.c.o.requires:

.PHONY : test/CMakeFiles/my_unit_test.dir/__/src/io.c.o.requires

test/CMakeFiles/my_unit_test.dir/__/src/io.c.o.provides: test/CMakeFiles/my_unit_test.dir/__/src/io.c.o.requires
	$(MAKE) -f test/CMakeFiles/my_unit_test.dir/build.make test/CMakeFiles/my_unit_test.dir/__/src/io.c.o.provides.build
.PHONY : test/CMakeFiles/my_unit_test.dir/__/src/io.c.o.provides

test/CMakeFiles/my_unit_test.dir/__/src/io.c.o.provides.build: test/CMakeFiles/my_unit_test.dir/__/src/io.c.o


test/CMakeFiles/my_unit_test.dir/__/src/util.c.o: test/CMakeFiles/my_unit_test.dir/flags.make
test/CMakeFiles/my_unit_test.dir/__/src/util.c.o: ../src/util.c
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/eli/Assign_4/include/CMakeFiles --progress-num=$(CMAKE_PROGRESS_5) "Building C object test/CMakeFiles/my_unit_test.dir/__/src/util.c.o"
	cd /home/eli/Assign_4/include/test && /usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -o CMakeFiles/my_unit_test.dir/__/src/util.c.o   -c /home/eli/Assign_4/src/util.c

test/CMakeFiles/my_unit_test.dir/__/src/util.c.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing C source to CMakeFiles/my_unit_test.dir/__/src/util.c.i"
	cd /home/eli/Assign_4/include/test && /usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -E /home/eli/Assign_4/src/util.c > CMakeFiles/my_unit_test.dir/__/src/util.c.i

test/CMakeFiles/my_unit_test.dir/__/src/util.c.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling C source to assembly CMakeFiles/my_unit_test.dir/__/src/util.c.s"
	cd /home/eli/Assign_4/include/test && /usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -S /home/eli/Assign_4/src/util.c -o CMakeFiles/my_unit_test.dir/__/src/util.c.s

test/CMakeFiles/my_unit_test.dir/__/src/util.c.o.requires:

.PHONY : test/CMakeFiles/my_unit_test.dir/__/src/util.c.o.requires

test/CMakeFiles/my_unit_test.dir/__/src/util.c.o.provides: test/CMakeFiles/my_unit_test.dir/__/src/util.c.o.requires
	$(MAKE) -f test/CMakeFiles/my_unit_test.dir/build.make test/CMakeFiles/my_unit_test.dir/__/src/util.c.o.provides.build
.PHONY : test/CMakeFiles/my_unit_test.dir/__/src/util.c.o.provides

test/CMakeFiles/my_unit_test.dir/__/src/util.c.o.provides.build: test/CMakeFiles/my_unit_test.dir/__/src/util.c.o


# Object files for target my_unit_test
my_unit_test_OBJECTS = \
"CMakeFiles/my_unit_test.dir/test.c.o" \
"CMakeFiles/my_unit_test.dir/test_1.c.o" \
"CMakeFiles/my_unit_test.dir/test_2.c.o" \
"CMakeFiles/my_unit_test.dir/__/src/io.c.o" \
"CMakeFiles/my_unit_test.dir/__/src/util.c.o"

# External object files for target my_unit_test
my_unit_test_EXTERNAL_OBJECTS =

../build/bin/my_unit_test: test/CMakeFiles/my_unit_test.dir/test.c.o
../build/bin/my_unit_test: test/CMakeFiles/my_unit_test.dir/test_1.c.o
../build/bin/my_unit_test: test/CMakeFiles/my_unit_test.dir/test_2.c.o
../build/bin/my_unit_test: test/CMakeFiles/my_unit_test.dir/__/src/io.c.o
../build/bin/my_unit_test: test/CMakeFiles/my_unit_test.dir/__/src/util.c.o
../build/bin/my_unit_test: test/CMakeFiles/my_unit_test.dir/build.make
../build/bin/my_unit_test: /usr/lib/x86_64-linux-gnu/libcunit.so
../build/bin/my_unit_test: test/CMakeFiles/my_unit_test.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir=/home/eli/Assign_4/include/CMakeFiles --progress-num=$(CMAKE_PROGRESS_6) "Linking C executable ../../build/bin/my_unit_test"
	cd /home/eli/Assign_4/include/test && $(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/my_unit_test.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
test/CMakeFiles/my_unit_test.dir/build: ../build/bin/my_unit_test

.PHONY : test/CMakeFiles/my_unit_test.dir/build

test/CMakeFiles/my_unit_test.dir/requires: test/CMakeFiles/my_unit_test.dir/test.c.o.requires
test/CMakeFiles/my_unit_test.dir/requires: test/CMakeFiles/my_unit_test.dir/test_1.c.o.requires
test/CMakeFiles/my_unit_test.dir/requires: test/CMakeFiles/my_unit_test.dir/test_2.c.o.requires
test/CMakeFiles/my_unit_test.dir/requires: test/CMakeFiles/my_unit_test.dir/__/src/io.c.o.requires
test/CMakeFiles/my_unit_test.dir/requires: test/CMakeFiles/my_unit_test.dir/__/src/util.c.o.requires

.PHONY : test/CMakeFiles/my_unit_test.dir/requires

test/CMakeFiles/my_unit_test.dir/clean:
	cd /home/eli/Assign_4/include/test && $(CMAKE_COMMAND) -P CMakeFiles/my_unit_test.dir/cmake_clean.cmake
.PHONY : test/CMakeFiles/my_unit_test.dir/clean

test/CMakeFiles/my_unit_test.dir/depend:
	cd /home/eli/Assign_4/include && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /home/eli/Assign_4 /home/eli/Assign_4/test /home/eli/Assign_4/include /home/eli/Assign_4/include/test /home/eli/Assign_4/include/test/CMakeFiles/my_unit_test.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : test/CMakeFiles/my_unit_test.dir/depend

