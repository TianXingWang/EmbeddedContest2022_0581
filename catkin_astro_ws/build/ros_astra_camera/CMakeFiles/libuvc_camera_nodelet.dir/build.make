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
CMAKE_SOURCE_DIR = /home/z/catkin_astro_ws/src

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = /home/z/catkin_astro_ws/build

# Include any dependencies generated for this target.
include ros_astra_camera/CMakeFiles/libuvc_camera_nodelet.dir/depend.make

# Include the progress variables for this target.
include ros_astra_camera/CMakeFiles/libuvc_camera_nodelet.dir/progress.make

# Include the compile flags for this target's objects.
include ros_astra_camera/CMakeFiles/libuvc_camera_nodelet.dir/flags.make

ros_astra_camera/CMakeFiles/libuvc_camera_nodelet.dir/src/libuvc_camera/nodelet.cpp.o: ros_astra_camera/CMakeFiles/libuvc_camera_nodelet.dir/flags.make
ros_astra_camera/CMakeFiles/libuvc_camera_nodelet.dir/src/libuvc_camera/nodelet.cpp.o: /home/z/catkin_astro_ws/src/ros_astra_camera/src/libuvc_camera/nodelet.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/z/catkin_astro_ws/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building CXX object ros_astra_camera/CMakeFiles/libuvc_camera_nodelet.dir/src/libuvc_camera/nodelet.cpp.o"
	cd /home/z/catkin_astro_ws/build/ros_astra_camera && /usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/libuvc_camera_nodelet.dir/src/libuvc_camera/nodelet.cpp.o -c /home/z/catkin_astro_ws/src/ros_astra_camera/src/libuvc_camera/nodelet.cpp

ros_astra_camera/CMakeFiles/libuvc_camera_nodelet.dir/src/libuvc_camera/nodelet.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/libuvc_camera_nodelet.dir/src/libuvc_camera/nodelet.cpp.i"
	cd /home/z/catkin_astro_ws/build/ros_astra_camera && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/z/catkin_astro_ws/src/ros_astra_camera/src/libuvc_camera/nodelet.cpp > CMakeFiles/libuvc_camera_nodelet.dir/src/libuvc_camera/nodelet.cpp.i

ros_astra_camera/CMakeFiles/libuvc_camera_nodelet.dir/src/libuvc_camera/nodelet.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/libuvc_camera_nodelet.dir/src/libuvc_camera/nodelet.cpp.s"
	cd /home/z/catkin_astro_ws/build/ros_astra_camera && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/z/catkin_astro_ws/src/ros_astra_camera/src/libuvc_camera/nodelet.cpp -o CMakeFiles/libuvc_camera_nodelet.dir/src/libuvc_camera/nodelet.cpp.s

ros_astra_camera/CMakeFiles/libuvc_camera_nodelet.dir/src/libuvc_camera/camera_driver.cpp.o: ros_astra_camera/CMakeFiles/libuvc_camera_nodelet.dir/flags.make
ros_astra_camera/CMakeFiles/libuvc_camera_nodelet.dir/src/libuvc_camera/camera_driver.cpp.o: /home/z/catkin_astro_ws/src/ros_astra_camera/src/libuvc_camera/camera_driver.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/z/catkin_astro_ws/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Building CXX object ros_astra_camera/CMakeFiles/libuvc_camera_nodelet.dir/src/libuvc_camera/camera_driver.cpp.o"
	cd /home/z/catkin_astro_ws/build/ros_astra_camera && /usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/libuvc_camera_nodelet.dir/src/libuvc_camera/camera_driver.cpp.o -c /home/z/catkin_astro_ws/src/ros_astra_camera/src/libuvc_camera/camera_driver.cpp

ros_astra_camera/CMakeFiles/libuvc_camera_nodelet.dir/src/libuvc_camera/camera_driver.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/libuvc_camera_nodelet.dir/src/libuvc_camera/camera_driver.cpp.i"
	cd /home/z/catkin_astro_ws/build/ros_astra_camera && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/z/catkin_astro_ws/src/ros_astra_camera/src/libuvc_camera/camera_driver.cpp > CMakeFiles/libuvc_camera_nodelet.dir/src/libuvc_camera/camera_driver.cpp.i

ros_astra_camera/CMakeFiles/libuvc_camera_nodelet.dir/src/libuvc_camera/camera_driver.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/libuvc_camera_nodelet.dir/src/libuvc_camera/camera_driver.cpp.s"
	cd /home/z/catkin_astro_ws/build/ros_astra_camera && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/z/catkin_astro_ws/src/ros_astra_camera/src/libuvc_camera/camera_driver.cpp -o CMakeFiles/libuvc_camera_nodelet.dir/src/libuvc_camera/camera_driver.cpp.s

ros_astra_camera/CMakeFiles/libuvc_camera_nodelet.dir/src/astra_device_type.cpp.o: ros_astra_camera/CMakeFiles/libuvc_camera_nodelet.dir/flags.make
ros_astra_camera/CMakeFiles/libuvc_camera_nodelet.dir/src/astra_device_type.cpp.o: /home/z/catkin_astro_ws/src/ros_astra_camera/src/astra_device_type.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/z/catkin_astro_ws/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_3) "Building CXX object ros_astra_camera/CMakeFiles/libuvc_camera_nodelet.dir/src/astra_device_type.cpp.o"
	cd /home/z/catkin_astro_ws/build/ros_astra_camera && /usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/libuvc_camera_nodelet.dir/src/astra_device_type.cpp.o -c /home/z/catkin_astro_ws/src/ros_astra_camera/src/astra_device_type.cpp

ros_astra_camera/CMakeFiles/libuvc_camera_nodelet.dir/src/astra_device_type.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/libuvc_camera_nodelet.dir/src/astra_device_type.cpp.i"
	cd /home/z/catkin_astro_ws/build/ros_astra_camera && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/z/catkin_astro_ws/src/ros_astra_camera/src/astra_device_type.cpp > CMakeFiles/libuvc_camera_nodelet.dir/src/astra_device_type.cpp.i

ros_astra_camera/CMakeFiles/libuvc_camera_nodelet.dir/src/astra_device_type.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/libuvc_camera_nodelet.dir/src/astra_device_type.cpp.s"
	cd /home/z/catkin_astro_ws/build/ros_astra_camera && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/z/catkin_astro_ws/src/ros_astra_camera/src/astra_device_type.cpp -o CMakeFiles/libuvc_camera_nodelet.dir/src/astra_device_type.cpp.s

# Object files for target libuvc_camera_nodelet
libuvc_camera_nodelet_OBJECTS = \
"CMakeFiles/libuvc_camera_nodelet.dir/src/libuvc_camera/nodelet.cpp.o" \
"CMakeFiles/libuvc_camera_nodelet.dir/src/libuvc_camera/camera_driver.cpp.o" \
"CMakeFiles/libuvc_camera_nodelet.dir/src/astra_device_type.cpp.o"

# External object files for target libuvc_camera_nodelet
libuvc_camera_nodelet_EXTERNAL_OBJECTS =

/home/z/catkin_astro_ws/devel/lib/liblibuvc_camera_nodelet.so: ros_astra_camera/CMakeFiles/libuvc_camera_nodelet.dir/src/libuvc_camera/nodelet.cpp.o
/home/z/catkin_astro_ws/devel/lib/liblibuvc_camera_nodelet.so: ros_astra_camera/CMakeFiles/libuvc_camera_nodelet.dir/src/libuvc_camera/camera_driver.cpp.o
/home/z/catkin_astro_ws/devel/lib/liblibuvc_camera_nodelet.so: ros_astra_camera/CMakeFiles/libuvc_camera_nodelet.dir/src/astra_device_type.cpp.o
/home/z/catkin_astro_ws/devel/lib/liblibuvc_camera_nodelet.so: ros_astra_camera/CMakeFiles/libuvc_camera_nodelet.dir/build.make
/home/z/catkin_astro_ws/devel/lib/liblibuvc_camera_nodelet.so: /opt/ros/kinetic/lib/x86_64-linux-gnu/libuvc.so
/home/z/catkin_astro_ws/devel/lib/liblibuvc_camera_nodelet.so: /usr/lib/x86_64-linux-gnu/libboost_system.so
/home/z/catkin_astro_ws/devel/lib/liblibuvc_camera_nodelet.so: /usr/lib/x86_64-linux-gnu/libboost_thread.so
/home/z/catkin_astro_ws/devel/lib/liblibuvc_camera_nodelet.so: /usr/lib/x86_64-linux-gnu/libboost_chrono.so
/home/z/catkin_astro_ws/devel/lib/liblibuvc_camera_nodelet.so: /usr/lib/x86_64-linux-gnu/libboost_date_time.so
/home/z/catkin_astro_ws/devel/lib/liblibuvc_camera_nodelet.so: /usr/lib/x86_64-linux-gnu/libboost_atomic.so
/home/z/catkin_astro_ws/devel/lib/liblibuvc_camera_nodelet.so: /opt/ros/kinetic/lib/libcamera_info_manager.so
/home/z/catkin_astro_ws/devel/lib/liblibuvc_camera_nodelet.so: /opt/ros/kinetic/lib/libcamera_calibration_parsers.so
/home/z/catkin_astro_ws/devel/lib/liblibuvc_camera_nodelet.so: /opt/ros/kinetic/lib/libdynamic_reconfigure_config_init_mutex.so
/home/z/catkin_astro_ws/devel/lib/liblibuvc_camera_nodelet.so: /opt/ros/kinetic/lib/libimage_transport.so
/home/z/catkin_astro_ws/devel/lib/liblibuvc_camera_nodelet.so: /opt/ros/kinetic/lib/libmessage_filters.so
/home/z/catkin_astro_ws/devel/lib/liblibuvc_camera_nodelet.so: /opt/ros/kinetic/lib/libnodeletlib.so
/home/z/catkin_astro_ws/devel/lib/liblibuvc_camera_nodelet.so: /usr/lib/x86_64-linux-gnu/libuuid.so
/home/z/catkin_astro_ws/devel/lib/liblibuvc_camera_nodelet.so: /opt/ros/kinetic/lib/libbondcpp.so
/home/z/catkin_astro_ws/devel/lib/liblibuvc_camera_nodelet.so: /usr/lib/x86_64-linux-gnu/libtinyxml2.so
/home/z/catkin_astro_ws/devel/lib/liblibuvc_camera_nodelet.so: /opt/ros/kinetic/lib/libclass_loader.so
/home/z/catkin_astro_ws/devel/lib/liblibuvc_camera_nodelet.so: /usr/lib/libPocoFoundation.so
/home/z/catkin_astro_ws/devel/lib/liblibuvc_camera_nodelet.so: /usr/lib/x86_64-linux-gnu/libdl.so
/home/z/catkin_astro_ws/devel/lib/liblibuvc_camera_nodelet.so: /opt/ros/kinetic/lib/libroslib.so
/home/z/catkin_astro_ws/devel/lib/liblibuvc_camera_nodelet.so: /opt/ros/kinetic/lib/librospack.so
/home/z/catkin_astro_ws/devel/lib/liblibuvc_camera_nodelet.so: /usr/lib/x86_64-linux-gnu/libpython2.7.so
/home/z/catkin_astro_ws/devel/lib/liblibuvc_camera_nodelet.so: /usr/lib/x86_64-linux-gnu/libboost_program_options.so
/home/z/catkin_astro_ws/devel/lib/liblibuvc_camera_nodelet.so: /usr/lib/x86_64-linux-gnu/libtinyxml.so
/home/z/catkin_astro_ws/devel/lib/liblibuvc_camera_nodelet.so: /opt/ros/kinetic/lib/libroscpp.so
/home/z/catkin_astro_ws/devel/lib/liblibuvc_camera_nodelet.so: /usr/lib/x86_64-linux-gnu/libboost_filesystem.so
/home/z/catkin_astro_ws/devel/lib/liblibuvc_camera_nodelet.so: /usr/lib/x86_64-linux-gnu/libboost_signals.so
/home/z/catkin_astro_ws/devel/lib/liblibuvc_camera_nodelet.so: /opt/ros/kinetic/lib/librosconsole.so
/home/z/catkin_astro_ws/devel/lib/liblibuvc_camera_nodelet.so: /opt/ros/kinetic/lib/librosconsole_log4cxx.so
/home/z/catkin_astro_ws/devel/lib/liblibuvc_camera_nodelet.so: /opt/ros/kinetic/lib/librosconsole_backend_interface.so
/home/z/catkin_astro_ws/devel/lib/liblibuvc_camera_nodelet.so: /usr/lib/x86_64-linux-gnu/liblog4cxx.so
/home/z/catkin_astro_ws/devel/lib/liblibuvc_camera_nodelet.so: /usr/lib/x86_64-linux-gnu/libboost_regex.so
/home/z/catkin_astro_ws/devel/lib/liblibuvc_camera_nodelet.so: /opt/ros/kinetic/lib/libroscpp_serialization.so
/home/z/catkin_astro_ws/devel/lib/liblibuvc_camera_nodelet.so: /opt/ros/kinetic/lib/libxmlrpcpp.so
/home/z/catkin_astro_ws/devel/lib/liblibuvc_camera_nodelet.so: /opt/ros/kinetic/lib/librostime.so
/home/z/catkin_astro_ws/devel/lib/liblibuvc_camera_nodelet.so: /opt/ros/kinetic/lib/libcpp_common.so
/home/z/catkin_astro_ws/devel/lib/liblibuvc_camera_nodelet.so: /usr/lib/x86_64-linux-gnu/libboost_system.so
/home/z/catkin_astro_ws/devel/lib/liblibuvc_camera_nodelet.so: /usr/lib/x86_64-linux-gnu/libboost_thread.so
/home/z/catkin_astro_ws/devel/lib/liblibuvc_camera_nodelet.so: /usr/lib/x86_64-linux-gnu/libboost_chrono.so
/home/z/catkin_astro_ws/devel/lib/liblibuvc_camera_nodelet.so: /usr/lib/x86_64-linux-gnu/libboost_date_time.so
/home/z/catkin_astro_ws/devel/lib/liblibuvc_camera_nodelet.so: /usr/lib/x86_64-linux-gnu/libboost_atomic.so
/home/z/catkin_astro_ws/devel/lib/liblibuvc_camera_nodelet.so: /usr/lib/x86_64-linux-gnu/libpthread.so
/home/z/catkin_astro_ws/devel/lib/liblibuvc_camera_nodelet.so: /usr/lib/x86_64-linux-gnu/libconsole_bridge.so
/home/z/catkin_astro_ws/devel/lib/liblibuvc_camera_nodelet.so: /opt/ros/kinetic/lib/libcamera_info_manager.so
/home/z/catkin_astro_ws/devel/lib/liblibuvc_camera_nodelet.so: /opt/ros/kinetic/lib/libcamera_calibration_parsers.so
/home/z/catkin_astro_ws/devel/lib/liblibuvc_camera_nodelet.so: /opt/ros/kinetic/lib/libdynamic_reconfigure_config_init_mutex.so
/home/z/catkin_astro_ws/devel/lib/liblibuvc_camera_nodelet.so: /opt/ros/kinetic/lib/libimage_transport.so
/home/z/catkin_astro_ws/devel/lib/liblibuvc_camera_nodelet.so: /opt/ros/kinetic/lib/libmessage_filters.so
/home/z/catkin_astro_ws/devel/lib/liblibuvc_camera_nodelet.so: /opt/ros/kinetic/lib/libnodeletlib.so
/home/z/catkin_astro_ws/devel/lib/liblibuvc_camera_nodelet.so: /usr/lib/x86_64-linux-gnu/libuuid.so
/home/z/catkin_astro_ws/devel/lib/liblibuvc_camera_nodelet.so: /opt/ros/kinetic/lib/libbondcpp.so
/home/z/catkin_astro_ws/devel/lib/liblibuvc_camera_nodelet.so: /usr/lib/x86_64-linux-gnu/libtinyxml2.so
/home/z/catkin_astro_ws/devel/lib/liblibuvc_camera_nodelet.so: /opt/ros/kinetic/lib/libclass_loader.so
/home/z/catkin_astro_ws/devel/lib/liblibuvc_camera_nodelet.so: /usr/lib/libPocoFoundation.so
/home/z/catkin_astro_ws/devel/lib/liblibuvc_camera_nodelet.so: /usr/lib/x86_64-linux-gnu/libdl.so
/home/z/catkin_astro_ws/devel/lib/liblibuvc_camera_nodelet.so: /opt/ros/kinetic/lib/libroslib.so
/home/z/catkin_astro_ws/devel/lib/liblibuvc_camera_nodelet.so: /opt/ros/kinetic/lib/librospack.so
/home/z/catkin_astro_ws/devel/lib/liblibuvc_camera_nodelet.so: /usr/lib/x86_64-linux-gnu/libpython2.7.so
/home/z/catkin_astro_ws/devel/lib/liblibuvc_camera_nodelet.so: /usr/lib/x86_64-linux-gnu/libboost_program_options.so
/home/z/catkin_astro_ws/devel/lib/liblibuvc_camera_nodelet.so: /usr/lib/x86_64-linux-gnu/libtinyxml.so
/home/z/catkin_astro_ws/devel/lib/liblibuvc_camera_nodelet.so: /opt/ros/kinetic/lib/libroscpp.so
/home/z/catkin_astro_ws/devel/lib/liblibuvc_camera_nodelet.so: /usr/lib/x86_64-linux-gnu/libboost_filesystem.so
/home/z/catkin_astro_ws/devel/lib/liblibuvc_camera_nodelet.so: /usr/lib/x86_64-linux-gnu/libboost_signals.so
/home/z/catkin_astro_ws/devel/lib/liblibuvc_camera_nodelet.so: /opt/ros/kinetic/lib/librosconsole.so
/home/z/catkin_astro_ws/devel/lib/liblibuvc_camera_nodelet.so: /opt/ros/kinetic/lib/librosconsole_log4cxx.so
/home/z/catkin_astro_ws/devel/lib/liblibuvc_camera_nodelet.so: /opt/ros/kinetic/lib/librosconsole_backend_interface.so
/home/z/catkin_astro_ws/devel/lib/liblibuvc_camera_nodelet.so: /usr/lib/x86_64-linux-gnu/liblog4cxx.so
/home/z/catkin_astro_ws/devel/lib/liblibuvc_camera_nodelet.so: /usr/lib/x86_64-linux-gnu/libboost_regex.so
/home/z/catkin_astro_ws/devel/lib/liblibuvc_camera_nodelet.so: /opt/ros/kinetic/lib/libroscpp_serialization.so
/home/z/catkin_astro_ws/devel/lib/liblibuvc_camera_nodelet.so: /opt/ros/kinetic/lib/libxmlrpcpp.so
/home/z/catkin_astro_ws/devel/lib/liblibuvc_camera_nodelet.so: /opt/ros/kinetic/lib/librostime.so
/home/z/catkin_astro_ws/devel/lib/liblibuvc_camera_nodelet.so: /opt/ros/kinetic/lib/libcpp_common.so
/home/z/catkin_astro_ws/devel/lib/liblibuvc_camera_nodelet.so: /usr/lib/x86_64-linux-gnu/libpthread.so
/home/z/catkin_astro_ws/devel/lib/liblibuvc_camera_nodelet.so: /usr/lib/x86_64-linux-gnu/libconsole_bridge.so
/home/z/catkin_astro_ws/devel/lib/liblibuvc_camera_nodelet.so: ros_astra_camera/CMakeFiles/libuvc_camera_nodelet.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir=/home/z/catkin_astro_ws/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_4) "Linking CXX shared library /home/z/catkin_astro_ws/devel/lib/liblibuvc_camera_nodelet.so"
	cd /home/z/catkin_astro_ws/build/ros_astra_camera && $(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/libuvc_camera_nodelet.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
ros_astra_camera/CMakeFiles/libuvc_camera_nodelet.dir/build: /home/z/catkin_astro_ws/devel/lib/liblibuvc_camera_nodelet.so

.PHONY : ros_astra_camera/CMakeFiles/libuvc_camera_nodelet.dir/build

ros_astra_camera/CMakeFiles/libuvc_camera_nodelet.dir/clean:
	cd /home/z/catkin_astro_ws/build/ros_astra_camera && $(CMAKE_COMMAND) -P CMakeFiles/libuvc_camera_nodelet.dir/cmake_clean.cmake
.PHONY : ros_astra_camera/CMakeFiles/libuvc_camera_nodelet.dir/clean

ros_astra_camera/CMakeFiles/libuvc_camera_nodelet.dir/depend:
	cd /home/z/catkin_astro_ws/build && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /home/z/catkin_astro_ws/src /home/z/catkin_astro_ws/src/ros_astra_camera /home/z/catkin_astro_ws/build /home/z/catkin_astro_ws/build/ros_astra_camera /home/z/catkin_astro_ws/build/ros_astra_camera/CMakeFiles/libuvc_camera_nodelet.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : ros_astra_camera/CMakeFiles/libuvc_camera_nodelet.dir/depend

