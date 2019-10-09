cmake_minimum_required(VERSION 2.8.3)
project(fsae_electric_vehicle)

## Compile as C++11, supported in ROS Kinetic and newer
# add_compile_options(-std=c++11)

## Find catkin macros and libraries
## if COMPONENTS list like find_package(catkin REQUIRED COMPONENTS xyz)
## is used, also find other catkin packages
find_package(catkin REQUIRED COMPONENTS
  roscpp
  rospy
  roslaunch
  std_msgs
  genmsg
  message_generation
)

roslaunch_add_file_check(src/launch)

add_message_files(FILES gps.msg serial.msg)

generate_messages(DEPENDENCIES std_msgs)

catkin_package(CATKIN_DEPENDS message_runtime)

include_directories(
  ${catkin_INCLUDE_DIRS}
)

add_executable(GPS src/cpp/gps/main.cpp)
target_link_libraries(GPS ${catkin_LIBRARIES})
target_compile_features(GPS PUBLIC cxx_std_17)
add_dependencies(GPS fsae_electric_vehicle_generate_messages_cpp)

add_executable(SocketSender src/cpp/socketsender/main.cpp)
target_link_libraries(SocketSender ${catkin_LIBRARIES})
target_compile_features(SocketSender PUBLIC cxx_std_17)
add_dependencies(SocketSender fsae_electric_vehicle_generate_messages_cpp)

catkin_install_python(
  PROGRAMS
  src/python/serial/serial.py
  DESTINATION ${CATKIN_PACKAGE_BIN_DESTINATION}
)

install(TARGETS GPS
  RUNTIME DESTINATION ${CATKIN_PACKAGE_BIN_DESTINATION}
)

install(TARGETS SocketSender
  RUNTIME DESTINATION ${CATKIN_PACKAGE_BIN_DESTINATION}
)

message("Bin Dir is ${CATKIN_PACKAGE_BIN_DESTINATION}")

install(PROGRAMS
   src/js/reader.js
   DESTINATION ${CATKIN_PACKAGE_BIN_DESTINATION}
)

install (FILES
  src/launch/main.launch
  DESTINATION ${CATKIN_PACKAGE_BIN_DESTINATION}
)
