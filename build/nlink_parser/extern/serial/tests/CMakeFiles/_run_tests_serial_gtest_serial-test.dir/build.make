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

# Utility rule file for _run_tests_serial_gtest_serial-test.

# Include the progress variables for this target.
include nlink_parser/extern/serial/tests/CMakeFiles/_run_tests_serial_gtest_serial-test.dir/progress.make

nlink_parser/extern/serial/tests/CMakeFiles/_run_tests_serial_gtest_serial-test:
	cd /home/orangepi/shufly/build/nlink_parser/extern/serial/tests && ../../../../catkin_generated/env_cached.sh /usr/bin/python3 /opt/ros/noetic/share/catkin/cmake/test/run_tests.py /home/orangepi/shufly/build/test_results/serial/gtest-serial-test.xml "/home/orangepi/shufly/devel/lib/serial/serial-test --gtest_output=xml:/home/orangepi/shufly/build/test_results/serial/gtest-serial-test.xml"

_run_tests_serial_gtest_serial-test: nlink_parser/extern/serial/tests/CMakeFiles/_run_tests_serial_gtest_serial-test
_run_tests_serial_gtest_serial-test: nlink_parser/extern/serial/tests/CMakeFiles/_run_tests_serial_gtest_serial-test.dir/build.make

.PHONY : _run_tests_serial_gtest_serial-test

# Rule to build all files generated by this target.
nlink_parser/extern/serial/tests/CMakeFiles/_run_tests_serial_gtest_serial-test.dir/build: _run_tests_serial_gtest_serial-test

.PHONY : nlink_parser/extern/serial/tests/CMakeFiles/_run_tests_serial_gtest_serial-test.dir/build

nlink_parser/extern/serial/tests/CMakeFiles/_run_tests_serial_gtest_serial-test.dir/clean:
	cd /home/orangepi/shufly/build/nlink_parser/extern/serial/tests && $(CMAKE_COMMAND) -P CMakeFiles/_run_tests_serial_gtest_serial-test.dir/cmake_clean.cmake
.PHONY : nlink_parser/extern/serial/tests/CMakeFiles/_run_tests_serial_gtest_serial-test.dir/clean

nlink_parser/extern/serial/tests/CMakeFiles/_run_tests_serial_gtest_serial-test.dir/depend:
	cd /home/orangepi/shufly/build && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /home/orangepi/shufly/src /home/orangepi/shufly/src/nlink_parser/extern/serial/tests /home/orangepi/shufly/build /home/orangepi/shufly/build/nlink_parser/extern/serial/tests /home/orangepi/shufly/build/nlink_parser/extern/serial/tests/CMakeFiles/_run_tests_serial_gtest_serial-test.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : nlink_parser/extern/serial/tests/CMakeFiles/_run_tests_serial_gtest_serial-test.dir/depend
