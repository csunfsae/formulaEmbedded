cmake_minimum_required(VERSION 2.8.3)
set(CMAKE_CXX_STANDARD 11)
########################################################################
IF(${CMAKE_SOURCE_DIR} STREQUAL ${CMAKE_BINARY_DIR})
    MESSAGE(FATAL_ERROR "Prevented in-tree built. This is bad practice.")
ENDIF(${CMAKE_SOURCE_DIR} STREQUAL ${CMAKE_BINARY_DIR})

########################################################################
# Project setup
########################################################################
ENABLE_TESTING()
INCLUDE_DIRECTORIES(${CMAKE_CURRENT_SOURCE_DIR}/src/RTIMULib2)
INCLUDE(${CMAKE_CURRENT_SOURCE_DIR}/src/RTIMULib2/RTIMULibVersion.txt)
SET(LIBRTIMU_SRCS
    src/RTIMULib2/RTIMULib/RTFusion.cpp
    src/RTIMULib2/RTIMULib/RTFusionRTQF.cpp
    src/RTIMULib2/RTIMULib/RTMath.cpp
    src/RTIMULib2/RTIMULib/RTFusionKalman4.cpp
    src/RTIMULib2/RTIMULib/RTIMUAccelCal.cpp
    src/RTIMULib2/RTIMULib/RTIMUHal.cpp
    src/RTIMULib2/RTIMULib/RTIMUMagCal.cpp
    src/RTIMULib2/RTIMULib/RTIMUSettings.cpp
    src/RTIMULib2/RTIMULib/IMUDrivers/RTIMU.cpp
    src/RTIMULib2/RTIMULib/IMUDrivers/RTIMUGD20M303DLHC.cpp
    src/RTIMULib2/RTIMULib/IMUDrivers/RTIMUGD20HM303DLHC.cpp
    src/RTIMULib2/RTIMULib/IMUDrivers/RTIMUGD20HM303D.cpp
    src/RTIMULib2/RTIMULib/IMUDrivers/RTIMULSM9DS0.cpp
    src/RTIMULib2/RTIMULib/IMUDrivers/RTIMULSM9DS1.cpp
    src/RTIMULib2/RTIMULib/IMUDrivers/RTIMUMPU9150.cpp
    src/RTIMULib2/RTIMULib/IMUDrivers/RTIMUMPU9250.cpp
    src/RTIMULib2/RTIMULib/IMUDrivers/RTIMUBMX055.cpp
    src/RTIMULib2/RTIMULib/IMUDrivers/RTIMUBNO055.cpp
    src/RTIMULib2/RTIMULib/IMUDrivers/RTIMUNull.cpp
    src/RTIMULib2/RTIMULib/IMUDrivers/RTPressure.cpp
    src/RTIMULib2/RTIMULib/IMUDrivers/RTPressureBMP180.cpp
    src/RTIMULib2/RTIMULib/IMUDrivers/RTPressureLPS25H.cpp
    src/RTIMULib2/RTIMULib/IMUDrivers/RTPressureMS5611.cpp
    src/RTIMULib2/RTIMULib/IMUDrivers/RTPressureMS5637.cpp
    src/RTIMULib2/RTIMULib/IMUDrivers/RTHumidity.cpp
    src/RTIMULib2/RTIMULib/IMUDrivers/RTHumidityHTS221.cpp
    src/RTIMULib2/RTIMULib/IMUDrivers/RTHumidityHTU21D.cpp
)

IF(UNIX)
    ADD_LIBRARY(RTIMULib SHARED ${LIBRTIMU_SRCS})
    SET_PROPERTY(TARGET RTIMULib PROPERTY VERSION ${RTIMULIB_VERSION})
    SET_PROPERTY(TARGET RTIMULib PROPERTY SOVERSION ${RTIMULIB_VERSION_MAJOR})
    INSTALL(TARGETS RTIMULib DESTINATION lib)
    INSTALL(DIRECTORY . DESTINATION include FILES_MATCHING PATTERN "*.h")
ENDIF(UNIX)



project(fsae_electric_vehicle)
## Find catkin and any catkin packages
find_package(catkin REQUIRED COMPONENTS roscpp rospy std_msgs genmsg message_generation)

## Declare ROS messages and services
add_message_files(FILES wheel_velocity.msg steering_wheel.msg suspension_offset.msg temp_and_pressure.msg accelerometer.msg compass.msg gyroscope.msg suspension.msg pedals.msg)
#add_service_files(FILES AddTwoInts.srv)

## Generate added messages and services
generate_messages(DEPENDENCIES std_msgs)

## Declare a catkin package
catkin_package(CATKIN_DEPENDS message_runtime)

## Build sinWave and database_interface
include_directories(include ${catkin_INCLUDE_DIRS})

add_executable(dummyReader src/dummyReader.cpp)
target_link_libraries(dummyReader ${catkin_LIBRARIES})
add_dependencies(dummyReader fsae_electric_vehicle_generate_messages_cpp)

add_executable(sinWave src/sinWave.cpp)
target_link_libraries(sinWave ${catkin_LIBRARIES})
add_dependencies(sinWave fsae_electric_vehicle_generate_messages_cpp)

add_executable(database_interface src/database_interface.cpp)
target_link_libraries(database_interface ${catkin_LIBRARIES} sqlite3)
add_dependencies(database_interface fsae_electric_vehicle_generate_messages_cpp)

add_executable(INERTIAL_MEASUREMENT_UNIT src/INERTIAL_MEASUREMENT_UNIT.cpp)
target_link_libraries(INERTIAL_MEASUREMENT_UNIT ${catkin_LIBRARIES} RTIMULib)
add_dependencies(INERTIAL_MEASUREMENT_UNIT fsae_electric_vehicle_generate_messages_cpp)

add_executable(BAROMETRIC_PRESSURE_SENSOR src/BAROMETRIC_PRESSURE_SENSOR.cpp)
target_link_libraries(BAROMETRIC_PRESSURE_SENSOR ${catkin_LIBRARIES})
add_dependencies(BAROMETRIC_PRESSURE_SENSOR fsae_electric_vehicle_generate_messages_cpp)

add_executable(VISHAY_POTENTIOMETER_PE30_LONG src/VISHAY_POTENTIOMETER_PE30_LONG.cpp)
target_link_libraries(VISHAY_POTENTIOMETER_PE30_LONG ${catkin_LIBRARIES})
add_dependencies(VISHAY_POTENTIOMETER_PE30_LONG fsae_electric_vehicle_generate_messages_cpp)
##ALL ROS NODEJS CONFIGURATION
install(PROGRAMS
   fsae_electric_vehicle/talker.js
   fsae_electric_vehicle/WEB_TRANSMIT.js
   DESTINATION ${CATKIN_PACKAGE_BIN_DESTINATION}
)
