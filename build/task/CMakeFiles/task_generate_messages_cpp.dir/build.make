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

# Utility rule file for task_generate_messages_cpp.

# Include the progress variables for this target.
include task/CMakeFiles/task_generate_messages_cpp.dir/progress.make

task/CMakeFiles/task_generate_messages_cpp: /home/orangepi/shufly/devel/include/task/Io.h
task/CMakeFiles/task_generate_messages_cpp: /home/orangepi/shufly/devel/include/task/Pwm.h
task/CMakeFiles/task_generate_messages_cpp: /home/orangepi/shufly/devel/include/task/Uart.h


/home/orangepi/shufly/devel/include/task/Io.h: /opt/ros/noetic/lib/gencpp/gen_cpp.py
/home/orangepi/shufly/devel/include/task/Io.h: /home/orangepi/shufly/src/task/srv/Io.srv
/home/orangepi/shufly/devel/include/task/Io.h: /opt/ros/noetic/share/gencpp/msg.h.template
/home/orangepi/shufly/devel/include/task/Io.h: /opt/ros/noetic/share/gencpp/srv.h.template
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --blue --bold --progress-dir=/home/orangepi/shufly/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Generating C++ code from task/Io.srv"
	cd /home/orangepi/shufly/src/task && /home/orangepi/shufly/build/catkin_generated/env_cached.sh /usr/bin/python3 /opt/ros/noetic/share/gencpp/cmake/../../../lib/gencpp/gen_cpp.py /home/orangepi/shufly/src/task/srv/Io.srv -Istd_msgs:/opt/ros/noetic/share/std_msgs/cmake/../msg -p task -o /home/orangepi/shufly/devel/include/task -e /opt/ros/noetic/share/gencpp/cmake/..

/home/orangepi/shufly/devel/include/task/Pwm.h: /opt/ros/noetic/lib/gencpp/gen_cpp.py
/home/orangepi/shufly/devel/include/task/Pwm.h: /home/orangepi/shufly/src/task/srv/Pwm.srv
/home/orangepi/shufly/devel/include/task/Pwm.h: /opt/ros/noetic/share/gencpp/msg.h.template
/home/orangepi/shufly/devel/include/task/Pwm.h: /opt/ros/noetic/share/gencpp/srv.h.template
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --blue --bold --progress-dir=/home/orangepi/shufly/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Generating C++ code from task/Pwm.srv"
	cd /home/orangepi/shufly/src/task && /home/orangepi/shufly/build/catkin_generated/env_cached.sh /usr/bin/python3 /opt/ros/noetic/share/gencpp/cmake/../../../lib/gencpp/gen_cpp.py /home/orangepi/shufly/src/task/srv/Pwm.srv -Istd_msgs:/opt/ros/noetic/share/std_msgs/cmake/../msg -p task -o /home/orangepi/shufly/devel/include/task -e /opt/ros/noetic/share/gencpp/cmake/..

/home/orangepi/shufly/devel/include/task/Uart.h: /opt/ros/noetic/lib/gencpp/gen_cpp.py
/home/orangepi/shufly/devel/include/task/Uart.h: /home/orangepi/shufly/src/task/srv/Uart.srv
/home/orangepi/shufly/devel/include/task/Uart.h: /opt/ros/noetic/share/gencpp/msg.h.template
/home/orangepi/shufly/devel/include/task/Uart.h: /opt/ros/noetic/share/gencpp/srv.h.template
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --blue --bold --progress-dir=/home/orangepi/shufly/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_3) "Generating C++ code from task/Uart.srv"
	cd /home/orangepi/shufly/src/task && /home/orangepi/shufly/build/catkin_generated/env_cached.sh /usr/bin/python3 /opt/ros/noetic/share/gencpp/cmake/../../../lib/gencpp/gen_cpp.py /home/orangepi/shufly/src/task/srv/Uart.srv -Istd_msgs:/opt/ros/noetic/share/std_msgs/cmake/../msg -p task -o /home/orangepi/shufly/devel/include/task -e /opt/ros/noetic/share/gencpp/cmake/..

task_generate_messages_cpp: task/CMakeFiles/task_generate_messages_cpp
task_generate_messages_cpp: /home/orangepi/shufly/devel/include/task/Io.h
task_generate_messages_cpp: /home/orangepi/shufly/devel/include/task/Pwm.h
task_generate_messages_cpp: /home/orangepi/shufly/devel/include/task/Uart.h
task_generate_messages_cpp: task/CMakeFiles/task_generate_messages_cpp.dir/build.make

.PHONY : task_generate_messages_cpp

# Rule to build all files generated by this target.
task/CMakeFiles/task_generate_messages_cpp.dir/build: task_generate_messages_cpp

.PHONY : task/CMakeFiles/task_generate_messages_cpp.dir/build

task/CMakeFiles/task_generate_messages_cpp.dir/clean:
	cd /home/orangepi/shufly/build/task && $(CMAKE_COMMAND) -P CMakeFiles/task_generate_messages_cpp.dir/cmake_clean.cmake
.PHONY : task/CMakeFiles/task_generate_messages_cpp.dir/clean

task/CMakeFiles/task_generate_messages_cpp.dir/depend:
	cd /home/orangepi/shufly/build && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /home/orangepi/shufly/src /home/orangepi/shufly/src/task /home/orangepi/shufly/build /home/orangepi/shufly/build/task /home/orangepi/shufly/build/task/CMakeFiles/task_generate_messages_cpp.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : task/CMakeFiles/task_generate_messages_cpp.dir/depend

