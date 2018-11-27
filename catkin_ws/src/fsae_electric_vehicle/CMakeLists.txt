cmake_minimum_required(VERSION 2.8.3)
project(fsae_electric_vehicle)

## Find catkin and any catkin packages
find_package(catkin REQUIRED COMPONENTS roscpp rospy std_msgs genmsg message_generation)

## Declare ROS messages and services
add_message_files(FILES wheel_velocity.msg gravitational_forces.msg steering_input.msg suspension_offset.msg tire_pressure.msg)
#add_service_files(FILES AddTwoInts.srv)

## Generate added messages and services
generate_messages(DEPENDENCIES std_msgs )

## Declare a catkin package
catkin_package( CATKIN_DEPENDS message_runtime)

## Build sinWave and database_interface
include_directories(include ${catkin_INCLUDE_DIRS})

add_executable(sinWave src/sinWave.cpp)
target_link_libraries(sinWave ${catkin_LIBRARIES})
add_dependencies(sinWave fsae_electric_vehicle_generate_messages_cpp)

add_executable(database_interface src/database_interface.cpp)
target_link_libraries(database_interface ${catkin_LIBRARIES} sqlite3)
add_dependencies(database_interface fsae_electric_vehicle_generate_messages_cpp)

##ALL ROS NODEJS CONFIGURATION
install(PROGRAMS
   fsae_electric_vehicle/talker.js
   fsae_electric_vehicle/listener.js
   DESTINATION ${CATKIN_PACKAGE_BIN_DESTINATION}
)
