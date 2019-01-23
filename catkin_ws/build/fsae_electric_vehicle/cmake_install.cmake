# Install script for directory: /home/nvidia/Desktop/jetsonTx2/catkin_ws/src/fsae_electric_vehicle

# Set the install prefix
if(NOT DEFINED CMAKE_INSTALL_PREFIX)
  set(CMAKE_INSTALL_PREFIX "/home/nvidia/Desktop/jetsonTx2/catkin_ws/install")
endif()
string(REGEX REPLACE "/$" "" CMAKE_INSTALL_PREFIX "${CMAKE_INSTALL_PREFIX}")

# Set the install configuration name.
if(NOT DEFINED CMAKE_INSTALL_CONFIG_NAME)
  if(BUILD_TYPE)
    string(REGEX REPLACE "^[^A-Za-z0-9_]+" ""
           CMAKE_INSTALL_CONFIG_NAME "${BUILD_TYPE}")
  else()
    set(CMAKE_INSTALL_CONFIG_NAME "")
  endif()
  message(STATUS "Install configuration: \"${CMAKE_INSTALL_CONFIG_NAME}\"")
endif()

# Set the component getting installed.
if(NOT CMAKE_INSTALL_COMPONENT)
  if(COMPONENT)
    message(STATUS "Install component: \"${COMPONENT}\"")
    set(CMAKE_INSTALL_COMPONENT "${COMPONENT}")
  else()
    set(CMAKE_INSTALL_COMPONENT)
  endif()
endif()

# Install shared libraries without execute permission?
if(NOT DEFINED CMAKE_INSTALL_SO_NO_EXE)
  set(CMAKE_INSTALL_SO_NO_EXE "1")
endif()

if(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  foreach(file
      "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/libRTIMULib.so.8.0.0"
      "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/libRTIMULib.so.8"
      "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/libRTIMULib.so"
      )
    if(EXISTS "${file}" AND
       NOT IS_SYMLINK "${file}")
      file(RPATH_CHECK
           FILE "${file}"
           RPATH "")
    endif()
  endforeach()
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib" TYPE SHARED_LIBRARY FILES
    "/home/nvidia/Desktop/jetsonTx2/catkin_ws/devel/lib/libRTIMULib.so.8.0.0"
    "/home/nvidia/Desktop/jetsonTx2/catkin_ws/devel/lib/libRTIMULib.so.8"
    "/home/nvidia/Desktop/jetsonTx2/catkin_ws/devel/lib/libRTIMULib.so"
    )
  foreach(file
      "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/libRTIMULib.so.8.0.0"
      "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/libRTIMULib.so.8"
      "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/libRTIMULib.so"
      )
    if(EXISTS "${file}" AND
       NOT IS_SYMLINK "${file}")
      if(CMAKE_INSTALL_DO_STRIP)
        execute_process(COMMAND "/usr/bin/strip" "${file}")
      endif()
    endif()
  endforeach()
endif()

if(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include" TYPE DIRECTORY FILES "/home/nvidia/Desktop/jetsonTx2/catkin_ws/src/fsae_electric_vehicle/." FILES_MATCHING REGEX "/[^/]*\\.h$")
endif()

if(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/fsae_electric_vehicle/msg" TYPE FILE FILES
    "/home/nvidia/Desktop/jetsonTx2/catkin_ws/src/fsae_electric_vehicle/msg/wheel_velocity.msg"
    "/home/nvidia/Desktop/jetsonTx2/catkin_ws/src/fsae_electric_vehicle/msg/imu_data.msg"
    "/home/nvidia/Desktop/jetsonTx2/catkin_ws/src/fsae_electric_vehicle/msg/steering_input.msg"
    "/home/nvidia/Desktop/jetsonTx2/catkin_ws/src/fsae_electric_vehicle/msg/suspension_offset.msg"
    "/home/nvidia/Desktop/jetsonTx2/catkin_ws/src/fsae_electric_vehicle/msg/tire_pressure.msg"
    "/home/nvidia/Desktop/jetsonTx2/catkin_ws/src/fsae_electric_vehicle/msg/temp_and_pressure.msg"
    )
endif()

if(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/fsae_electric_vehicle/cmake" TYPE FILE FILES "/home/nvidia/Desktop/jetsonTx2/catkin_ws/build/fsae_electric_vehicle/catkin_generated/installspace/fsae_electric_vehicle-msg-paths.cmake")
endif()

if(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include" TYPE DIRECTORY FILES "/home/nvidia/Desktop/jetsonTx2/catkin_ws/devel/include/fsae_electric_vehicle")
endif()

if(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/roseus/ros" TYPE DIRECTORY FILES "/home/nvidia/Desktop/jetsonTx2/catkin_ws/devel/share/roseus/ros/fsae_electric_vehicle")
endif()

if(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/common-lisp/ros" TYPE DIRECTORY FILES "/home/nvidia/Desktop/jetsonTx2/catkin_ws/devel/share/common-lisp/ros/fsae_electric_vehicle")
endif()

if(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/gennodejs/ros" TYPE DIRECTORY FILES "/home/nvidia/Desktop/jetsonTx2/catkin_ws/devel/share/gennodejs/ros/fsae_electric_vehicle")
endif()

if(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  execute_process(COMMAND "/usr/bin/python" -m compileall "/home/nvidia/Desktop/jetsonTx2/catkin_ws/devel/lib/python2.7/dist-packages/fsae_electric_vehicle")
endif()

if(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/python2.7/dist-packages" TYPE DIRECTORY FILES "/home/nvidia/Desktop/jetsonTx2/catkin_ws/devel/lib/python2.7/dist-packages/fsae_electric_vehicle")
endif()

if(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/pkgconfig" TYPE FILE FILES "/home/nvidia/Desktop/jetsonTx2/catkin_ws/build/fsae_electric_vehicle/catkin_generated/installspace/fsae_electric_vehicle.pc")
endif()

if(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/fsae_electric_vehicle/cmake" TYPE FILE FILES "/home/nvidia/Desktop/jetsonTx2/catkin_ws/build/fsae_electric_vehicle/catkin_generated/installspace/fsae_electric_vehicle-msg-extras.cmake")
endif()

if(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/fsae_electric_vehicle/cmake" TYPE FILE FILES
    "/home/nvidia/Desktop/jetsonTx2/catkin_ws/build/fsae_electric_vehicle/catkin_generated/installspace/fsae_electric_vehicleConfig.cmake"
    "/home/nvidia/Desktop/jetsonTx2/catkin_ws/build/fsae_electric_vehicle/catkin_generated/installspace/fsae_electric_vehicleConfig-version.cmake"
    )
endif()

if(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/fsae_electric_vehicle" TYPE FILE FILES "/home/nvidia/Desktop/jetsonTx2/catkin_ws/src/fsae_electric_vehicle/package.xml")
endif()

if(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/fsae_electric_vehicle" TYPE PROGRAM FILES
    "/home/nvidia/Desktop/jetsonTx2/catkin_ws/src/fsae_electric_vehicle/fsae_electric_vehicle/talker.js"
    "/home/nvidia/Desktop/jetsonTx2/catkin_ws/src/fsae_electric_vehicle/fsae_electric_vehicle/listener.js"
    )
endif()

