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


# Command-line flag to silence nested $(MAKE).
$(VERBOSE)MAKESILENT = -s

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
CMAKE_COMMAND = /usr/local/bin/cmake

# The command to remove a file.
RM = /usr/local/bin/cmake -E remove -f

# Escaping for special characters.
EQUALS = =

# The top-level source directory on which CMake was run.
CMAKE_SOURCE_DIR = /home/z/catkin_ws/src

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = /home/z/catkin_ws/build

# Include any dependencies generated for this target.
include navigation-kinetic-devel/voxel_grid/CMakeFiles/voxel_grid_tests.dir/depend.make

# Include the progress variables for this target.
include navigation-kinetic-devel/voxel_grid/CMakeFiles/voxel_grid_tests.dir/progress.make

# Include the compile flags for this target's objects.
include navigation-kinetic-devel/voxel_grid/CMakeFiles/voxel_grid_tests.dir/flags.make

navigation-kinetic-devel/voxel_grid/CMakeFiles/voxel_grid_tests.dir/test/voxel_grid_tests.cpp.o: navigation-kinetic-devel/voxel_grid/CMakeFiles/voxel_grid_tests.dir/flags.make
navigation-kinetic-devel/voxel_grid/CMakeFiles/voxel_grid_tests.dir/test/voxel_grid_tests.cpp.o: /home/z/catkin_ws/src/navigation-kinetic-devel/voxel_grid/test/voxel_grid_tests.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/z/catkin_ws/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building CXX object navigation-kinetic-devel/voxel_grid/CMakeFiles/voxel_grid_tests.dir/test/voxel_grid_tests.cpp.o"
	cd /home/z/catkin_ws/build/navigation-kinetic-devel/voxel_grid && /usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/voxel_grid_tests.dir/test/voxel_grid_tests.cpp.o -c /home/z/catkin_ws/src/navigation-kinetic-devel/voxel_grid/test/voxel_grid_tests.cpp

navigation-kinetic-devel/voxel_grid/CMakeFiles/voxel_grid_tests.dir/test/voxel_grid_tests.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/voxel_grid_tests.dir/test/voxel_grid_tests.cpp.i"
	cd /home/z/catkin_ws/build/navigation-kinetic-devel/voxel_grid && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/z/catkin_ws/src/navigation-kinetic-devel/voxel_grid/test/voxel_grid_tests.cpp > CMakeFiles/voxel_grid_tests.dir/test/voxel_grid_tests.cpp.i

navigation-kinetic-devel/voxel_grid/CMakeFiles/voxel_grid_tests.dir/test/voxel_grid_tests.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/voxel_grid_tests.dir/test/voxel_grid_tests.cpp.s"
	cd /home/z/catkin_ws/build/navigation-kinetic-devel/voxel_grid && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/z/catkin_ws/src/navigation-kinetic-devel/voxel_grid/test/voxel_grid_tests.cpp -o CMakeFiles/voxel_grid_tests.dir/test/voxel_grid_tests.cpp.s

# Object files for target voxel_grid_tests
voxel_grid_tests_OBJECTS = \
"CMakeFiles/voxel_grid_tests.dir/test/voxel_grid_tests.cpp.o"

# External object files for target voxel_grid_tests
voxel_grid_tests_EXTERNAL_OBJECTS =

/home/z/catkin_ws/devel/lib/voxel_grid/voxel_grid_tests: navigation-kinetic-devel/voxel_grid/CMakeFiles/voxel_grid_tests.dir/test/voxel_grid_tests.cpp.o
/home/z/catkin_ws/devel/lib/voxel_grid/voxel_grid_tests: navigation-kinetic-devel/voxel_grid/CMakeFiles/voxel_grid_tests.dir/build.make
/home/z/catkin_ws/devel/lib/voxel_grid/voxel_grid_tests: gtest/gtest/libgtest.so
/home/z/catkin_ws/devel/lib/voxel_grid/voxel_grid_tests: /home/z/catkin_ws/devel/lib/libvoxel_grid.so
/home/z/catkin_ws/devel/lib/voxel_grid/voxel_grid_tests: /opt/ros/kinetic/lib/libroscpp.so
/home/z/catkin_ws/devel/lib/voxel_grid/voxel_grid_tests: /usr/lib/x86_64-linux-gnu/libboost_filesystem.so
/home/z/catkin_ws/devel/lib/voxel_grid/voxel_grid_tests: /usr/lib/x86_64-linux-gnu/libboost_signals.so
/home/z/catkin_ws/devel/lib/voxel_grid/voxel_grid_tests: /opt/ros/kinetic/lib/librosconsole.so
/home/z/catkin_ws/devel/lib/voxel_grid/voxel_grid_tests: /opt/ros/kinetic/lib/librosconsole_log4cxx.so
/home/z/catkin_ws/devel/lib/voxel_grid/voxel_grid_tests: /opt/ros/kinetic/lib/librosconsole_backend_interface.so
/home/z/catkin_ws/devel/lib/voxel_grid/voxel_grid_tests: /usr/lib/x86_64-linux-gnu/liblog4cxx.so
/home/z/catkin_ws/devel/lib/voxel_grid/voxel_grid_tests: /usr/lib/x86_64-linux-gnu/libboost_regex.so
/home/z/catkin_ws/devel/lib/voxel_grid/voxel_grid_tests: /opt/ros/kinetic/lib/libroscpp_serialization.so
/home/z/catkin_ws/devel/lib/voxel_grid/voxel_grid_tests: /opt/ros/kinetic/lib/libxmlrpcpp.so
/home/z/catkin_ws/devel/lib/voxel_grid/voxel_grid_tests: /opt/ros/kinetic/lib/librostime.so
/home/z/catkin_ws/devel/lib/voxel_grid/voxel_grid_tests: /opt/ros/kinetic/lib/libcpp_common.so
/home/z/catkin_ws/devel/lib/voxel_grid/voxel_grid_tests: /usr/lib/x86_64-linux-gnu/libboost_system.so
/home/z/catkin_ws/devel/lib/voxel_grid/voxel_grid_tests: /usr/lib/x86_64-linux-gnu/libboost_thread.so
/home/z/catkin_ws/devel/lib/voxel_grid/voxel_grid_tests: /usr/lib/x86_64-linux-gnu/libboost_chrono.so
/home/z/catkin_ws/devel/lib/voxel_grid/voxel_grid_tests: /usr/lib/x86_64-linux-gnu/libboost_date_time.so
/home/z/catkin_ws/devel/lib/voxel_grid/voxel_grid_tests: /usr/lib/x86_64-linux-gnu/libboost_atomic.so
/home/z/catkin_ws/devel/lib/voxel_grid/voxel_grid_tests: /usr/lib/x86_64-linux-gnu/libpthread.so
/home/z/catkin_ws/devel/lib/voxel_grid/voxel_grid_tests: /usr/lib/x86_64-linux-gnu/libconsole_bridge.so
/home/z/catkin_ws/devel/lib/voxel_grid/voxel_grid_tests: navigation-kinetic-devel/voxel_grid/CMakeFiles/voxel_grid_tests.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir=/home/z/catkin_ws/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Linking CXX executable /home/z/catkin_ws/devel/lib/voxel_grid/voxel_grid_tests"
	cd /home/z/catkin_ws/build/navigation-kinetic-devel/voxel_grid && $(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/voxel_grid_tests.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
navigation-kinetic-devel/voxel_grid/CMakeFiles/voxel_grid_tests.dir/build: /home/z/catkin_ws/devel/lib/voxel_grid/voxel_grid_tests

.PHONY : navigation-kinetic-devel/voxel_grid/CMakeFiles/voxel_grid_tests.dir/build

navigation-kinetic-devel/voxel_grid/CMakeFiles/voxel_grid_tests.dir/clean:
	cd /home/z/catkin_ws/build/navigation-kinetic-devel/voxel_grid && $(CMAKE_COMMAND) -P CMakeFiles/voxel_grid_tests.dir/cmake_clean.cmake
.PHONY : navigation-kinetic-devel/voxel_grid/CMakeFiles/voxel_grid_tests.dir/clean

navigation-kinetic-devel/voxel_grid/CMakeFiles/voxel_grid_tests.dir/depend:
	cd /home/z/catkin_ws/build && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /home/z/catkin_ws/src /home/z/catkin_ws/src/navigation-kinetic-devel/voxel_grid /home/z/catkin_ws/build /home/z/catkin_ws/build/navigation-kinetic-devel/voxel_grid /home/z/catkin_ws/build/navigation-kinetic-devel/voxel_grid/CMakeFiles/voxel_grid_tests.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : navigation-kinetic-devel/voxel_grid/CMakeFiles/voxel_grid_tests.dir/depend

