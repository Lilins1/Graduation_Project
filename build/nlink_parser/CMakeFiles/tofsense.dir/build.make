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
include nlink_parser/CMakeFiles/tofsense.dir/depend.make

# Include the progress variables for this target.
include nlink_parser/CMakeFiles/tofsense.dir/progress.make

# Include the compile flags for this target's objects.
include nlink_parser/CMakeFiles/tofsense.dir/flags.make

nlink_parser/CMakeFiles/tofsense.dir/src/tofsense/init.cpp.o: nlink_parser/CMakeFiles/tofsense.dir/flags.make
nlink_parser/CMakeFiles/tofsense.dir/src/tofsense/init.cpp.o: /home/orangepi/shufly/src/nlink_parser/src/tofsense/init.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/orangepi/shufly/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building CXX object nlink_parser/CMakeFiles/tofsense.dir/src/tofsense/init.cpp.o"
	cd /home/orangepi/shufly/build/nlink_parser && /usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/tofsense.dir/src/tofsense/init.cpp.o -c /home/orangepi/shufly/src/nlink_parser/src/tofsense/init.cpp

nlink_parser/CMakeFiles/tofsense.dir/src/tofsense/init.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/tofsense.dir/src/tofsense/init.cpp.i"
	cd /home/orangepi/shufly/build/nlink_parser && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/orangepi/shufly/src/nlink_parser/src/tofsense/init.cpp > CMakeFiles/tofsense.dir/src/tofsense/init.cpp.i

nlink_parser/CMakeFiles/tofsense.dir/src/tofsense/init.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/tofsense.dir/src/tofsense/init.cpp.s"
	cd /home/orangepi/shufly/build/nlink_parser && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/orangepi/shufly/src/nlink_parser/src/tofsense/init.cpp -o CMakeFiles/tofsense.dir/src/tofsense/init.cpp.s

nlink_parser/CMakeFiles/tofsense.dir/src/tofsense/main.cpp.o: nlink_parser/CMakeFiles/tofsense.dir/flags.make
nlink_parser/CMakeFiles/tofsense.dir/src/tofsense/main.cpp.o: /home/orangepi/shufly/src/nlink_parser/src/tofsense/main.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/orangepi/shufly/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Building CXX object nlink_parser/CMakeFiles/tofsense.dir/src/tofsense/main.cpp.o"
	cd /home/orangepi/shufly/build/nlink_parser && /usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/tofsense.dir/src/tofsense/main.cpp.o -c /home/orangepi/shufly/src/nlink_parser/src/tofsense/main.cpp

nlink_parser/CMakeFiles/tofsense.dir/src/tofsense/main.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/tofsense.dir/src/tofsense/main.cpp.i"
	cd /home/orangepi/shufly/build/nlink_parser && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/orangepi/shufly/src/nlink_parser/src/tofsense/main.cpp > CMakeFiles/tofsense.dir/src/tofsense/main.cpp.i

nlink_parser/CMakeFiles/tofsense.dir/src/tofsense/main.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/tofsense.dir/src/tofsense/main.cpp.s"
	cd /home/orangepi/shufly/build/nlink_parser && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/orangepi/shufly/src/nlink_parser/src/tofsense/main.cpp -o CMakeFiles/tofsense.dir/src/tofsense/main.cpp.s

# Object files for target tofsense
tofsense_OBJECTS = \
"CMakeFiles/tofsense.dir/src/tofsense/init.cpp.o" \
"CMakeFiles/tofsense.dir/src/tofsense/main.cpp.o"

# External object files for target tofsense
tofsense_EXTERNAL_OBJECTS =

/home/orangepi/shufly/devel/lib/nlink_parser/tofsense: nlink_parser/CMakeFiles/tofsense.dir/src/tofsense/init.cpp.o
/home/orangepi/shufly/devel/lib/nlink_parser/tofsense: nlink_parser/CMakeFiles/tofsense.dir/src/tofsense/main.cpp.o
/home/orangepi/shufly/devel/lib/nlink_parser/tofsense: nlink_parser/CMakeFiles/tofsense.dir/build.make
/home/orangepi/shufly/devel/lib/nlink_parser/tofsense: /home/orangepi/shufly/devel/lib/libnutils.so
/home/orangepi/shufly/devel/lib/nlink_parser/tofsense: /opt/ros/noetic/lib/libroscpp.so
/home/orangepi/shufly/devel/lib/nlink_parser/tofsense: /usr/lib/aarch64-linux-gnu/libpthread.so
/home/orangepi/shufly/devel/lib/nlink_parser/tofsense: /usr/lib/aarch64-linux-gnu/libboost_chrono.so.1.71.0
/home/orangepi/shufly/devel/lib/nlink_parser/tofsense: /usr/lib/aarch64-linux-gnu/libboost_filesystem.so.1.71.0
/home/orangepi/shufly/devel/lib/nlink_parser/tofsense: /opt/ros/noetic/lib/librosconsole.so
/home/orangepi/shufly/devel/lib/nlink_parser/tofsense: /opt/ros/noetic/lib/librosconsole_log4cxx.so
/home/orangepi/shufly/devel/lib/nlink_parser/tofsense: /opt/ros/noetic/lib/librosconsole_backend_interface.so
/home/orangepi/shufly/devel/lib/nlink_parser/tofsense: /usr/lib/aarch64-linux-gnu/liblog4cxx.so
/home/orangepi/shufly/devel/lib/nlink_parser/tofsense: /usr/lib/aarch64-linux-gnu/libboost_regex.so.1.71.0
/home/orangepi/shufly/devel/lib/nlink_parser/tofsense: /opt/ros/noetic/lib/libxmlrpcpp.so
/home/orangepi/shufly/devel/lib/nlink_parser/tofsense: /opt/ros/noetic/lib/libroscpp_serialization.so
/home/orangepi/shufly/devel/lib/nlink_parser/tofsense: /opt/ros/noetic/lib/librostime.so
/home/orangepi/shufly/devel/lib/nlink_parser/tofsense: /usr/lib/aarch64-linux-gnu/libboost_date_time.so.1.71.0
/home/orangepi/shufly/devel/lib/nlink_parser/tofsense: /opt/ros/noetic/lib/libcpp_common.so
/home/orangepi/shufly/devel/lib/nlink_parser/tofsense: /usr/lib/aarch64-linux-gnu/libboost_system.so.1.71.0
/home/orangepi/shufly/devel/lib/nlink_parser/tofsense: /usr/lib/aarch64-linux-gnu/libboost_thread.so.1.71.0
/home/orangepi/shufly/devel/lib/nlink_parser/tofsense: /usr/lib/aarch64-linux-gnu/libconsole_bridge.so.0.4
/home/orangepi/shufly/devel/lib/nlink_parser/tofsense: /home/orangepi/shufly/devel/lib/libserial.so
/home/orangepi/shufly/devel/lib/nlink_parser/tofsense: nlink_parser/CMakeFiles/tofsense.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir=/home/orangepi/shufly/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_3) "Linking CXX executable /home/orangepi/shufly/devel/lib/nlink_parser/tofsense"
	cd /home/orangepi/shufly/build/nlink_parser && $(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/tofsense.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
nlink_parser/CMakeFiles/tofsense.dir/build: /home/orangepi/shufly/devel/lib/nlink_parser/tofsense

.PHONY : nlink_parser/CMakeFiles/tofsense.dir/build

nlink_parser/CMakeFiles/tofsense.dir/clean:
	cd /home/orangepi/shufly/build/nlink_parser && $(CMAKE_COMMAND) -P CMakeFiles/tofsense.dir/cmake_clean.cmake
.PHONY : nlink_parser/CMakeFiles/tofsense.dir/clean

nlink_parser/CMakeFiles/tofsense.dir/depend:
	cd /home/orangepi/shufly/build && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /home/orangepi/shufly/src /home/orangepi/shufly/src/nlink_parser /home/orangepi/shufly/build /home/orangepi/shufly/build/nlink_parser /home/orangepi/shufly/build/nlink_parser/CMakeFiles/tofsense.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : nlink_parser/CMakeFiles/tofsense.dir/depend

