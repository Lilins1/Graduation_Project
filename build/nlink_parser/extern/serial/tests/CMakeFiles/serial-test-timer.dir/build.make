# CMAKE generated file: DO NOT EDIT!
# Generated by "Unix Makefiles" Generator, CMake Version 3.16

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
CMAKE_SOURCE_DIR = /home/orangepi/shufly/src

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = /home/orangepi/shufly/build

# Include any dependencies generated for this target.
include nlink_parser/extern/serial/tests/CMakeFiles/serial-test-timer.dir/depend.make

# Include the progress variables for this target.
include nlink_parser/extern/serial/tests/CMakeFiles/serial-test-timer.dir/progress.make

# Include the compile flags for this target's objects.
include nlink_parser/extern/serial/tests/CMakeFiles/serial-test-timer.dir/flags.make

nlink_parser/extern/serial/tests/CMakeFiles/serial-test-timer.dir/unit/unix_timer_tests.cc.o: nlink_parser/extern/serial/tests/CMakeFiles/serial-test-timer.dir/flags.make
nlink_parser/extern/serial/tests/CMakeFiles/serial-test-timer.dir/unit/unix_timer_tests.cc.o: /home/orangepi/shufly/src/nlink_parser/extern/serial/tests/unit/unix_timer_tests.cc
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/orangepi/shufly/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building CXX object nlink_parser/extern/serial/tests/CMakeFiles/serial-test-timer.dir/unit/unix_timer_tests.cc.o"
	cd /home/orangepi/shufly/build/nlink_parser/extern/serial/tests && /usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/serial-test-timer.dir/unit/unix_timer_tests.cc.o -c /home/orangepi/shufly/src/nlink_parser/extern/serial/tests/unit/unix_timer_tests.cc

nlink_parser/extern/serial/tests/CMakeFiles/serial-test-timer.dir/unit/unix_timer_tests.cc.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/serial-test-timer.dir/unit/unix_timer_tests.cc.i"
	cd /home/orangepi/shufly/build/nlink_parser/extern/serial/tests && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/orangepi/shufly/src/nlink_parser/extern/serial/tests/unit/unix_timer_tests.cc > CMakeFiles/serial-test-timer.dir/unit/unix_timer_tests.cc.i

nlink_parser/extern/serial/tests/CMakeFiles/serial-test-timer.dir/unit/unix_timer_tests.cc.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/serial-test-timer.dir/unit/unix_timer_tests.cc.s"
	cd /home/orangepi/shufly/build/nlink_parser/extern/serial/tests && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/orangepi/shufly/src/nlink_parser/extern/serial/tests/unit/unix_timer_tests.cc -o CMakeFiles/serial-test-timer.dir/unit/unix_timer_tests.cc.s

# Object files for target serial-test-timer
serial__test__timer_OBJECTS = \
"CMakeFiles/serial-test-timer.dir/unit/unix_timer_tests.cc.o"

# External object files for target serial-test-timer
serial__test__timer_EXTERNAL_OBJECTS =

/home/orangepi/shufly/devel/lib/serial/serial-test-timer: nlink_parser/extern/serial/tests/CMakeFiles/serial-test-timer.dir/unit/unix_timer_tests.cc.o
/home/orangepi/shufly/devel/lib/serial/serial-test-timer: nlink_parser/extern/serial/tests/CMakeFiles/serial-test-timer.dir/build.make
/home/orangepi/shufly/devel/lib/serial/serial-test-timer: gtest/lib/libgtest.so
/home/orangepi/shufly/devel/lib/serial/serial-test-timer: /home/orangepi/shufly/devel/lib/libserial.so
/home/orangepi/shufly/devel/lib/serial/serial-test-timer: nlink_parser/extern/serial/tests/CMakeFiles/serial-test-timer.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir=/home/orangepi/shufly/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Linking CXX executable /home/orangepi/shufly/devel/lib/serial/serial-test-timer"
	cd /home/orangepi/shufly/build/nlink_parser/extern/serial/tests && $(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/serial-test-timer.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
nlink_parser/extern/serial/tests/CMakeFiles/serial-test-timer.dir/build: /home/orangepi/shufly/devel/lib/serial/serial-test-timer

.PHONY : nlink_parser/extern/serial/tests/CMakeFiles/serial-test-timer.dir/build

nlink_parser/extern/serial/tests/CMakeFiles/serial-test-timer.dir/clean:
	cd /home/orangepi/shufly/build/nlink_parser/extern/serial/tests && $(CMAKE_COMMAND) -P CMakeFiles/serial-test-timer.dir/cmake_clean.cmake
.PHONY : nlink_parser/extern/serial/tests/CMakeFiles/serial-test-timer.dir/clean

nlink_parser/extern/serial/tests/CMakeFiles/serial-test-timer.dir/depend:
	cd /home/orangepi/shufly/build && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /home/orangepi/shufly/src /home/orangepi/shufly/src/nlink_parser/extern/serial/tests /home/orangepi/shufly/build /home/orangepi/shufly/build/nlink_parser/extern/serial/tests /home/orangepi/shufly/build/nlink_parser/extern/serial/tests/CMakeFiles/serial-test-timer.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : nlink_parser/extern/serial/tests/CMakeFiles/serial-test-timer.dir/depend

