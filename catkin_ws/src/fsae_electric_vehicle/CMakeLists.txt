cmake_minimum_required(VERSION 2.8.3)
project(fsae_electric_vehicle)

## Find catkin and any catkin packages
find_package(catkin REQUIRED COMPONENTS roscpp rospy std_msgs genmsg message_generation )

## Declare ROS messages and services
add_message_files(FILES wheel_velocity.msg)
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

add_executable(traction_control_talker src/traction_control/traction_control_talker.cpp)
target_link_libraries(traction_control_talker ${catkin_LIBRARIES})
add_dependencies(traction_control_talker fsae_electric_vehicle_generate_messages_cpp)

add_executable(mcu_settings_talker src/mcu_settings/mcu_settings_talker.cpp)
target_link_libraries(mcu_settings_talker ${catkin_LIBRARIES})
add_dependencies(mcu_settings_talker fsae_electric_vehicle_generate_messages_cpp)

add_executable(filtered_signals_talker src/filtered_signals/filtered_signals_talker.cpp)
target_link_libraries(filtered_signals_talker ${catkin_LIBRARIES})
add_dependencies(filtered_signals_talker fsae_electric_vehicle_generate_messages_cpp)

#ALL ROS NODEJS CONFIGURATION
install(PROGRAMS
   fsae_electric_vehicle/filtered_signals/signals_listener.js
   fsae_electric_vehicle/mcu_settings/mcu_listener.js
   fsae_electric_vehicle/traction_control/tc_listener.js
   fsae_electric_vehicle/listener.js
   DESTINATION ${CATKIN_PACKAGE_BIN_DESTINATION}
)
