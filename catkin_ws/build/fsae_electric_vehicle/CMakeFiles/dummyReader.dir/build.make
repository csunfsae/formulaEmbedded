# CMAKE generated file: DO NOT EDIT!
# Generated by "Unix Makefiles" Generator, CMake Version 3.5

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
CMAKE_SOURCE_DIR = /home/nvidia/Github/jetsonTx2/catkin_ws/src

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = /home/nvidia/Github/jetsonTx2/catkin_ws/build

# Include any dependencies generated for this target.
include fsae_electric_vehicle/CMakeFiles/dummyReader.dir/depend.make

# Include the progress variables for this target.
include fsae_electric_vehicle/CMakeFiles/dummyReader.dir/progress.make

# Include the compile flags for this target's objects.
include fsae_electric_vehicle/CMakeFiles/dummyReader.dir/flags.make

fsae_electric_vehicle/CMakeFiles/dummyReader.dir/src/dummyReader.cpp.o: fsae_electric_vehicle/CMakeFiles/dummyReader.dir/flags.make
fsae_electric_vehicle/CMakeFiles/dummyReader.dir/src/dummyReader.cpp.o: /home/nvidia/Github/jetsonTx2/catkin_ws/src/fsae_electric_vehicle/src/dummyReader.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/nvidia/Github/jetsonTx2/catkin_ws/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building CXX object fsae_electric_vehicle/CMakeFiles/dummyReader.dir/src/dummyReader.cpp.o"
	cd /home/nvidia/Github/jetsonTx2/catkin_ws/build/fsae_electric_vehicle && /usr/bin/c++   $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/dummyReader.dir/src/dummyReader.cpp.o -c /home/nvidia/Github/jetsonTx2/catkin_ws/src/fsae_electric_vehicle/src/dummyReader.cpp

fsae_electric_vehicle/CMakeFiles/dummyReader.dir/src/dummyReader.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/dummyReader.dir/src/dummyReader.cpp.i"
	cd /home/nvidia/Github/jetsonTx2/catkin_ws/build/fsae_electric_vehicle && /usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/nvidia/Github/jetsonTx2/catkin_ws/src/fsae_electric_vehicle/src/dummyReader.cpp > CMakeFiles/dummyReader.dir/src/dummyReader.cpp.i

fsae_electric_vehicle/CMakeFiles/dummyReader.dir/src/dummyReader.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/dummyReader.dir/src/dummyReader.cpp.s"
	cd /home/nvidia/Github/jetsonTx2/catkin_ws/build/fsae_electric_vehicle && /usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/nvidia/Github/jetsonTx2/catkin_ws/src/fsae_electric_vehicle/src/dummyReader.cpp -o CMakeFiles/dummyReader.dir/src/dummyReader.cpp.s

fsae_electric_vehicle/CMakeFiles/dummyReader.dir/src/dummyReader.cpp.o.requires:

.PHONY : fsae_electric_vehicle/CMakeFiles/dummyReader.dir/src/dummyReader.cpp.o.requires

fsae_electric_vehicle/CMakeFiles/dummyReader.dir/src/dummyReader.cpp.o.provides: fsae_electric_vehicle/CMakeFiles/dummyReader.dir/src/dummyReader.cpp.o.requires
	$(MAKE) -f fsae_electric_vehicle/CMakeFiles/dummyReader.dir/build.make fsae_electric_vehicle/CMakeFiles/dummyReader.dir/src/dummyReader.cpp.o.provides.build
.PHONY : fsae_electric_vehicle/CMakeFiles/dummyReader.dir/src/dummyReader.cpp.o.provides

fsae_electric_vehicle/CMakeFiles/dummyReader.dir/src/dummyReader.cpp.o.provides.build: fsae_electric_vehicle/CMakeFiles/dummyReader.dir/src/dummyReader.cpp.o


# Object files for target dummyReader
dummyReader_OBJECTS = \
"CMakeFiles/dummyReader.dir/src/dummyReader.cpp.o"

# External object files for target dummyReader
dummyReader_EXTERNAL_OBJECTS =

/home/nvidia/Github/jetsonTx2/catkin_ws/devel/lib/fsae_electric_vehicle/dummyReader: fsae_electric_vehicle/CMakeFiles/dummyReader.dir/src/dummyReader.cpp.o
/home/nvidia/Github/jetsonTx2/catkin_ws/devel/lib/fsae_electric_vehicle/dummyReader: fsae_electric_vehicle/CMakeFiles/dummyReader.dir/build.make
/home/nvidia/Github/jetsonTx2/catkin_ws/devel/lib/fsae_electric_vehicle/dummyReader: /opt/ros/kinetic/lib/libroscpp.so
/home/nvidia/Github/jetsonTx2/catkin_ws/devel/lib/fsae_electric_vehicle/dummyReader: /usr/lib/aarch64-linux-gnu/libboost_filesystem.so
/home/nvidia/Github/jetsonTx2/catkin_ws/devel/lib/fsae_electric_vehicle/dummyReader: /usr/lib/aarch64-linux-gnu/libboost_signals.so
/home/nvidia/Github/jetsonTx2/catkin_ws/devel/lib/fsae_electric_vehicle/dummyReader: /opt/ros/kinetic/lib/librosconsole.so
/home/nvidia/Github/jetsonTx2/catkin_ws/devel/lib/fsae_electric_vehicle/dummyReader: /opt/ros/kinetic/lib/librosconsole_log4cxx.so
/home/nvidia/Github/jetsonTx2/catkin_ws/devel/lib/fsae_electric_vehicle/dummyReader: /opt/ros/kinetic/lib/librosconsole_backend_interface.so
/home/nvidia/Github/jetsonTx2/catkin_ws/devel/lib/fsae_electric_vehicle/dummyReader: /usr/lib/aarch64-linux-gnu/liblog4cxx.so
/home/nvidia/Github/jetsonTx2/catkin_ws/devel/lib/fsae_electric_vehicle/dummyReader: /usr/lib/aarch64-linux-gnu/libboost_regex.so
/home/nvidia/Github/jetsonTx2/catkin_ws/devel/lib/fsae_electric_vehicle/dummyReader: /opt/ros/kinetic/lib/libxmlrpcpp.so
/home/nvidia/Github/jetsonTx2/catkin_ws/devel/lib/fsae_electric_vehicle/dummyReader: /opt/ros/kinetic/lib/libroscpp_serialization.so
/home/nvidia/Github/jetsonTx2/catkin_ws/devel/lib/fsae_electric_vehicle/dummyReader: /opt/ros/kinetic/lib/librostime.so
/home/nvidia/Github/jetsonTx2/catkin_ws/devel/lib/fsae_electric_vehicle/dummyReader: /opt/ros/kinetic/lib/libcpp_common.so
/home/nvidia/Github/jetsonTx2/catkin_ws/devel/lib/fsae_electric_vehicle/dummyReader: /usr/lib/aarch64-linux-gnu/libboost_system.so
/home/nvidia/Github/jetsonTx2/catkin_ws/devel/lib/fsae_electric_vehicle/dummyReader: /usr/lib/aarch64-linux-gnu/libboost_thread.so
/home/nvidia/Github/jetsonTx2/catkin_ws/devel/lib/fsae_electric_vehicle/dummyReader: /usr/lib/aarch64-linux-gnu/libboost_chrono.so
/home/nvidia/Github/jetsonTx2/catkin_ws/devel/lib/fsae_electric_vehicle/dummyReader: /usr/lib/aarch64-linux-gnu/libboost_date_time.so
/home/nvidia/Github/jetsonTx2/catkin_ws/devel/lib/fsae_electric_vehicle/dummyReader: /usr/lib/aarch64-linux-gnu/libboost_atomic.so
/home/nvidia/Github/jetsonTx2/catkin_ws/devel/lib/fsae_electric_vehicle/dummyReader: /usr/lib/aarch64-linux-gnu/libpthread.so
/home/nvidia/Github/jetsonTx2/catkin_ws/devel/lib/fsae_electric_vehicle/dummyReader: /usr/lib/aarch64-linux-gnu/libconsole_bridge.so
/home/nvidia/Github/jetsonTx2/catkin_ws/devel/lib/fsae_electric_vehicle/dummyReader: fsae_electric_vehicle/CMakeFiles/dummyReader.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir=/home/nvidia/Github/jetsonTx2/catkin_ws/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Linking CXX executable /home/nvidia/Github/jetsonTx2/catkin_ws/devel/lib/fsae_electric_vehicle/dummyReader"
	cd /home/nvidia/Github/jetsonTx2/catkin_ws/build/fsae_electric_vehicle && $(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/dummyReader.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
fsae_electric_vehicle/CMakeFiles/dummyReader.dir/build: /home/nvidia/Github/jetsonTx2/catkin_ws/devel/lib/fsae_electric_vehicle/dummyReader

.PHONY : fsae_electric_vehicle/CMakeFiles/dummyReader.dir/build

fsae_electric_vehicle/CMakeFiles/dummyReader.dir/requires: fsae_electric_vehicle/CMakeFiles/dummyReader.dir/src/dummyReader.cpp.o.requires

.PHONY : fsae_electric_vehicle/CMakeFiles/dummyReader.dir/requires

fsae_electric_vehicle/CMakeFiles/dummyReader.dir/clean:
	cd /home/nvidia/Github/jetsonTx2/catkin_ws/build/fsae_electric_vehicle && $(CMAKE_COMMAND) -P CMakeFiles/dummyReader.dir/cmake_clean.cmake
.PHONY : fsae_electric_vehicle/CMakeFiles/dummyReader.dir/clean

fsae_electric_vehicle/CMakeFiles/dummyReader.dir/depend:
	cd /home/nvidia/Github/jetsonTx2/catkin_ws/build && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /home/nvidia/Github/jetsonTx2/catkin_ws/src /home/nvidia/Github/jetsonTx2/catkin_ws/src/fsae_electric_vehicle /home/nvidia/Github/jetsonTx2/catkin_ws/build /home/nvidia/Github/jetsonTx2/catkin_ws/build/fsae_electric_vehicle /home/nvidia/Github/jetsonTx2/catkin_ws/build/fsae_electric_vehicle/CMakeFiles/dummyReader.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : fsae_electric_vehicle/CMakeFiles/dummyReader.dir/depend

