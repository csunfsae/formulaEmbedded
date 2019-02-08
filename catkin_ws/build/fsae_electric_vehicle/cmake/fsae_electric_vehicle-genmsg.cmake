# generated from genmsg/cmake/pkg-genmsg.cmake.em

message(STATUS "fsae_electric_vehicle: 10 messages, 0 services")

set(MSG_I_FLAGS "-Ifsae_electric_vehicle:/home/nvidia/Desktop/jetsonTx2/catkin_ws/src/fsae_electric_vehicle/msg;-Istd_msgs:/opt/ros/kinetic/share/std_msgs/cmake/../msg")

# Find all generators
find_package(gencpp REQUIRED)
find_package(geneus REQUIRED)
find_package(genlisp REQUIRED)
find_package(gennodejs REQUIRED)
find_package(genpy REQUIRED)

add_custom_target(fsae_electric_vehicle_generate_messages ALL)

# verify that message/service dependencies have not changed since configure



get_filename_component(_filename "/home/nvidia/Desktop/jetsonTx2/catkin_ws/src/fsae_electric_vehicle/msg/steering_wheel.msg" NAME_WE)
add_custom_target(_fsae_electric_vehicle_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "fsae_electric_vehicle" "/home/nvidia/Desktop/jetsonTx2/catkin_ws/src/fsae_electric_vehicle/msg/steering_wheel.msg" ""
)

get_filename_component(_filename "/home/nvidia/Desktop/jetsonTx2/catkin_ws/src/fsae_electric_vehicle/msg/temp_and_pressure.msg" NAME_WE)
add_custom_target(_fsae_electric_vehicle_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "fsae_electric_vehicle" "/home/nvidia/Desktop/jetsonTx2/catkin_ws/src/fsae_electric_vehicle/msg/temp_and_pressure.msg" ""
)

get_filename_component(_filename "/home/nvidia/Desktop/jetsonTx2/catkin_ws/src/fsae_electric_vehicle/msg/wheel_velocity.msg" NAME_WE)
add_custom_target(_fsae_electric_vehicle_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "fsae_electric_vehicle" "/home/nvidia/Desktop/jetsonTx2/catkin_ws/src/fsae_electric_vehicle/msg/wheel_velocity.msg" ""
)

get_filename_component(_filename "/home/nvidia/Desktop/jetsonTx2/catkin_ws/src/fsae_electric_vehicle/msg/gps.msg" NAME_WE)
add_custom_target(_fsae_electric_vehicle_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "fsae_electric_vehicle" "/home/nvidia/Desktop/jetsonTx2/catkin_ws/src/fsae_electric_vehicle/msg/gps.msg" ""
)

get_filename_component(_filename "/home/nvidia/Desktop/jetsonTx2/catkin_ws/src/fsae_electric_vehicle/msg/pedals.msg" NAME_WE)
add_custom_target(_fsae_electric_vehicle_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "fsae_electric_vehicle" "/home/nvidia/Desktop/jetsonTx2/catkin_ws/src/fsae_electric_vehicle/msg/pedals.msg" ""
)

get_filename_component(_filename "/home/nvidia/Desktop/jetsonTx2/catkin_ws/src/fsae_electric_vehicle/msg/gyroscope.msg" NAME_WE)
add_custom_target(_fsae_electric_vehicle_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "fsae_electric_vehicle" "/home/nvidia/Desktop/jetsonTx2/catkin_ws/src/fsae_electric_vehicle/msg/gyroscope.msg" ""
)

get_filename_component(_filename "/home/nvidia/Desktop/jetsonTx2/catkin_ws/src/fsae_electric_vehicle/msg/suspension.msg" NAME_WE)
add_custom_target(_fsae_electric_vehicle_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "fsae_electric_vehicle" "/home/nvidia/Desktop/jetsonTx2/catkin_ws/src/fsae_electric_vehicle/msg/suspension.msg" ""
)

get_filename_component(_filename "/home/nvidia/Desktop/jetsonTx2/catkin_ws/src/fsae_electric_vehicle/msg/suspension_offset.msg" NAME_WE)
add_custom_target(_fsae_electric_vehicle_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "fsae_electric_vehicle" "/home/nvidia/Desktop/jetsonTx2/catkin_ws/src/fsae_electric_vehicle/msg/suspension_offset.msg" ""
)

get_filename_component(_filename "/home/nvidia/Desktop/jetsonTx2/catkin_ws/src/fsae_electric_vehicle/msg/accelerometer.msg" NAME_WE)
add_custom_target(_fsae_electric_vehicle_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "fsae_electric_vehicle" "/home/nvidia/Desktop/jetsonTx2/catkin_ws/src/fsae_electric_vehicle/msg/accelerometer.msg" ""
)

get_filename_component(_filename "/home/nvidia/Desktop/jetsonTx2/catkin_ws/src/fsae_electric_vehicle/msg/compass.msg" NAME_WE)
add_custom_target(_fsae_electric_vehicle_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "fsae_electric_vehicle" "/home/nvidia/Desktop/jetsonTx2/catkin_ws/src/fsae_electric_vehicle/msg/compass.msg" ""
)

#
#  langs = gencpp;geneus;genlisp;gennodejs;genpy
#

### Section generating for lang: gencpp
### Generating Messages
_generate_msg_cpp(fsae_electric_vehicle
  "/home/nvidia/Desktop/jetsonTx2/catkin_ws/src/fsae_electric_vehicle/msg/steering_wheel.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/fsae_electric_vehicle
)
_generate_msg_cpp(fsae_electric_vehicle
  "/home/nvidia/Desktop/jetsonTx2/catkin_ws/src/fsae_electric_vehicle/msg/temp_and_pressure.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/fsae_electric_vehicle
)
_generate_msg_cpp(fsae_electric_vehicle
  "/home/nvidia/Desktop/jetsonTx2/catkin_ws/src/fsae_electric_vehicle/msg/wheel_velocity.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/fsae_electric_vehicle
)
_generate_msg_cpp(fsae_electric_vehicle
  "/home/nvidia/Desktop/jetsonTx2/catkin_ws/src/fsae_electric_vehicle/msg/pedals.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/fsae_electric_vehicle
)
_generate_msg_cpp(fsae_electric_vehicle
  "/home/nvidia/Desktop/jetsonTx2/catkin_ws/src/fsae_electric_vehicle/msg/gps.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/fsae_electric_vehicle
)
_generate_msg_cpp(fsae_electric_vehicle
  "/home/nvidia/Desktop/jetsonTx2/catkin_ws/src/fsae_electric_vehicle/msg/gyroscope.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/fsae_electric_vehicle
)
_generate_msg_cpp(fsae_electric_vehicle
  "/home/nvidia/Desktop/jetsonTx2/catkin_ws/src/fsae_electric_vehicle/msg/suspension.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/fsae_electric_vehicle
)
_generate_msg_cpp(fsae_electric_vehicle
  "/home/nvidia/Desktop/jetsonTx2/catkin_ws/src/fsae_electric_vehicle/msg/suspension_offset.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/fsae_electric_vehicle
)
_generate_msg_cpp(fsae_electric_vehicle
  "/home/nvidia/Desktop/jetsonTx2/catkin_ws/src/fsae_electric_vehicle/msg/accelerometer.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/fsae_electric_vehicle
)
_generate_msg_cpp(fsae_electric_vehicle
  "/home/nvidia/Desktop/jetsonTx2/catkin_ws/src/fsae_electric_vehicle/msg/compass.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/fsae_electric_vehicle
)

### Generating Services

### Generating Module File
_generate_module_cpp(fsae_electric_vehicle
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/fsae_electric_vehicle
  "${ALL_GEN_OUTPUT_FILES_cpp}"
)

add_custom_target(fsae_electric_vehicle_generate_messages_cpp
  DEPENDS ${ALL_GEN_OUTPUT_FILES_cpp}
)
add_dependencies(fsae_electric_vehicle_generate_messages fsae_electric_vehicle_generate_messages_cpp)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/nvidia/Desktop/jetsonTx2/catkin_ws/src/fsae_electric_vehicle/msg/steering_wheel.msg" NAME_WE)
add_dependencies(fsae_electric_vehicle_generate_messages_cpp _fsae_electric_vehicle_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/nvidia/Desktop/jetsonTx2/catkin_ws/src/fsae_electric_vehicle/msg/temp_and_pressure.msg" NAME_WE)
add_dependencies(fsae_electric_vehicle_generate_messages_cpp _fsae_electric_vehicle_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/nvidia/Desktop/jetsonTx2/catkin_ws/src/fsae_electric_vehicle/msg/wheel_velocity.msg" NAME_WE)
add_dependencies(fsae_electric_vehicle_generate_messages_cpp _fsae_electric_vehicle_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/nvidia/Desktop/jetsonTx2/catkin_ws/src/fsae_electric_vehicle/msg/gps.msg" NAME_WE)
add_dependencies(fsae_electric_vehicle_generate_messages_cpp _fsae_electric_vehicle_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/nvidia/Desktop/jetsonTx2/catkin_ws/src/fsae_electric_vehicle/msg/pedals.msg" NAME_WE)
add_dependencies(fsae_electric_vehicle_generate_messages_cpp _fsae_electric_vehicle_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/nvidia/Desktop/jetsonTx2/catkin_ws/src/fsae_electric_vehicle/msg/gyroscope.msg" NAME_WE)
add_dependencies(fsae_electric_vehicle_generate_messages_cpp _fsae_electric_vehicle_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/nvidia/Desktop/jetsonTx2/catkin_ws/src/fsae_electric_vehicle/msg/suspension.msg" NAME_WE)
add_dependencies(fsae_electric_vehicle_generate_messages_cpp _fsae_electric_vehicle_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/nvidia/Desktop/jetsonTx2/catkin_ws/src/fsae_electric_vehicle/msg/suspension_offset.msg" NAME_WE)
add_dependencies(fsae_electric_vehicle_generate_messages_cpp _fsae_electric_vehicle_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/nvidia/Desktop/jetsonTx2/catkin_ws/src/fsae_electric_vehicle/msg/accelerometer.msg" NAME_WE)
add_dependencies(fsae_electric_vehicle_generate_messages_cpp _fsae_electric_vehicle_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/nvidia/Desktop/jetsonTx2/catkin_ws/src/fsae_electric_vehicle/msg/compass.msg" NAME_WE)
add_dependencies(fsae_electric_vehicle_generate_messages_cpp _fsae_electric_vehicle_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(fsae_electric_vehicle_gencpp)
add_dependencies(fsae_electric_vehicle_gencpp fsae_electric_vehicle_generate_messages_cpp)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS fsae_electric_vehicle_generate_messages_cpp)

### Section generating for lang: geneus
### Generating Messages
_generate_msg_eus(fsae_electric_vehicle
  "/home/nvidia/Desktop/jetsonTx2/catkin_ws/src/fsae_electric_vehicle/msg/steering_wheel.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/fsae_electric_vehicle
)
_generate_msg_eus(fsae_electric_vehicle
  "/home/nvidia/Desktop/jetsonTx2/catkin_ws/src/fsae_electric_vehicle/msg/temp_and_pressure.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/fsae_electric_vehicle
)
_generate_msg_eus(fsae_electric_vehicle
  "/home/nvidia/Desktop/jetsonTx2/catkin_ws/src/fsae_electric_vehicle/msg/wheel_velocity.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/fsae_electric_vehicle
)
_generate_msg_eus(fsae_electric_vehicle
  "/home/nvidia/Desktop/jetsonTx2/catkin_ws/src/fsae_electric_vehicle/msg/pedals.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/fsae_electric_vehicle
)
_generate_msg_eus(fsae_electric_vehicle
  "/home/nvidia/Desktop/jetsonTx2/catkin_ws/src/fsae_electric_vehicle/msg/gps.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/fsae_electric_vehicle
)
_generate_msg_eus(fsae_electric_vehicle
  "/home/nvidia/Desktop/jetsonTx2/catkin_ws/src/fsae_electric_vehicle/msg/gyroscope.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/fsae_electric_vehicle
)
_generate_msg_eus(fsae_electric_vehicle
  "/home/nvidia/Desktop/jetsonTx2/catkin_ws/src/fsae_electric_vehicle/msg/suspension.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/fsae_electric_vehicle
)
_generate_msg_eus(fsae_electric_vehicle
  "/home/nvidia/Desktop/jetsonTx2/catkin_ws/src/fsae_electric_vehicle/msg/suspension_offset.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/fsae_electric_vehicle
)
_generate_msg_eus(fsae_electric_vehicle
  "/home/nvidia/Desktop/jetsonTx2/catkin_ws/src/fsae_electric_vehicle/msg/accelerometer.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/fsae_electric_vehicle
)
_generate_msg_eus(fsae_electric_vehicle
  "/home/nvidia/Desktop/jetsonTx2/catkin_ws/src/fsae_electric_vehicle/msg/compass.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/fsae_electric_vehicle
)

### Generating Services

### Generating Module File
_generate_module_eus(fsae_electric_vehicle
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/fsae_electric_vehicle
  "${ALL_GEN_OUTPUT_FILES_eus}"
)

add_custom_target(fsae_electric_vehicle_generate_messages_eus
  DEPENDS ${ALL_GEN_OUTPUT_FILES_eus}
)
add_dependencies(fsae_electric_vehicle_generate_messages fsae_electric_vehicle_generate_messages_eus)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/nvidia/Desktop/jetsonTx2/catkin_ws/src/fsae_electric_vehicle/msg/steering_wheel.msg" NAME_WE)
add_dependencies(fsae_electric_vehicle_generate_messages_eus _fsae_electric_vehicle_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/nvidia/Desktop/jetsonTx2/catkin_ws/src/fsae_electric_vehicle/msg/temp_and_pressure.msg" NAME_WE)
add_dependencies(fsae_electric_vehicle_generate_messages_eus _fsae_electric_vehicle_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/nvidia/Desktop/jetsonTx2/catkin_ws/src/fsae_electric_vehicle/msg/wheel_velocity.msg" NAME_WE)
add_dependencies(fsae_electric_vehicle_generate_messages_eus _fsae_electric_vehicle_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/nvidia/Desktop/jetsonTx2/catkin_ws/src/fsae_electric_vehicle/msg/gps.msg" NAME_WE)
add_dependencies(fsae_electric_vehicle_generate_messages_eus _fsae_electric_vehicle_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/nvidia/Desktop/jetsonTx2/catkin_ws/src/fsae_electric_vehicle/msg/pedals.msg" NAME_WE)
add_dependencies(fsae_electric_vehicle_generate_messages_eus _fsae_electric_vehicle_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/nvidia/Desktop/jetsonTx2/catkin_ws/src/fsae_electric_vehicle/msg/gyroscope.msg" NAME_WE)
add_dependencies(fsae_electric_vehicle_generate_messages_eus _fsae_electric_vehicle_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/nvidia/Desktop/jetsonTx2/catkin_ws/src/fsae_electric_vehicle/msg/suspension.msg" NAME_WE)
add_dependencies(fsae_electric_vehicle_generate_messages_eus _fsae_electric_vehicle_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/nvidia/Desktop/jetsonTx2/catkin_ws/src/fsae_electric_vehicle/msg/suspension_offset.msg" NAME_WE)
add_dependencies(fsae_electric_vehicle_generate_messages_eus _fsae_electric_vehicle_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/nvidia/Desktop/jetsonTx2/catkin_ws/src/fsae_electric_vehicle/msg/accelerometer.msg" NAME_WE)
add_dependencies(fsae_electric_vehicle_generate_messages_eus _fsae_electric_vehicle_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/nvidia/Desktop/jetsonTx2/catkin_ws/src/fsae_electric_vehicle/msg/compass.msg" NAME_WE)
add_dependencies(fsae_electric_vehicle_generate_messages_eus _fsae_electric_vehicle_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(fsae_electric_vehicle_geneus)
add_dependencies(fsae_electric_vehicle_geneus fsae_electric_vehicle_generate_messages_eus)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS fsae_electric_vehicle_generate_messages_eus)

### Section generating for lang: genlisp
### Generating Messages
_generate_msg_lisp(fsae_electric_vehicle
  "/home/nvidia/Desktop/jetsonTx2/catkin_ws/src/fsae_electric_vehicle/msg/steering_wheel.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/fsae_electric_vehicle
)
_generate_msg_lisp(fsae_electric_vehicle
  "/home/nvidia/Desktop/jetsonTx2/catkin_ws/src/fsae_electric_vehicle/msg/temp_and_pressure.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/fsae_electric_vehicle
)
_generate_msg_lisp(fsae_electric_vehicle
  "/home/nvidia/Desktop/jetsonTx2/catkin_ws/src/fsae_electric_vehicle/msg/wheel_velocity.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/fsae_electric_vehicle
)
_generate_msg_lisp(fsae_electric_vehicle
  "/home/nvidia/Desktop/jetsonTx2/catkin_ws/src/fsae_electric_vehicle/msg/pedals.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/fsae_electric_vehicle
)
_generate_msg_lisp(fsae_electric_vehicle
  "/home/nvidia/Desktop/jetsonTx2/catkin_ws/src/fsae_electric_vehicle/msg/gps.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/fsae_electric_vehicle
)
_generate_msg_lisp(fsae_electric_vehicle
  "/home/nvidia/Desktop/jetsonTx2/catkin_ws/src/fsae_electric_vehicle/msg/gyroscope.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/fsae_electric_vehicle
)
_generate_msg_lisp(fsae_electric_vehicle
  "/home/nvidia/Desktop/jetsonTx2/catkin_ws/src/fsae_electric_vehicle/msg/suspension.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/fsae_electric_vehicle
)
_generate_msg_lisp(fsae_electric_vehicle
  "/home/nvidia/Desktop/jetsonTx2/catkin_ws/src/fsae_electric_vehicle/msg/suspension_offset.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/fsae_electric_vehicle
)
_generate_msg_lisp(fsae_electric_vehicle
  "/home/nvidia/Desktop/jetsonTx2/catkin_ws/src/fsae_electric_vehicle/msg/accelerometer.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/fsae_electric_vehicle
)
_generate_msg_lisp(fsae_electric_vehicle
  "/home/nvidia/Desktop/jetsonTx2/catkin_ws/src/fsae_electric_vehicle/msg/compass.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/fsae_electric_vehicle
)

### Generating Services

### Generating Module File
_generate_module_lisp(fsae_electric_vehicle
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/fsae_electric_vehicle
  "${ALL_GEN_OUTPUT_FILES_lisp}"
)

add_custom_target(fsae_electric_vehicle_generate_messages_lisp
  DEPENDS ${ALL_GEN_OUTPUT_FILES_lisp}
)
add_dependencies(fsae_electric_vehicle_generate_messages fsae_electric_vehicle_generate_messages_lisp)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/nvidia/Desktop/jetsonTx2/catkin_ws/src/fsae_electric_vehicle/msg/steering_wheel.msg" NAME_WE)
add_dependencies(fsae_electric_vehicle_generate_messages_lisp _fsae_electric_vehicle_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/nvidia/Desktop/jetsonTx2/catkin_ws/src/fsae_electric_vehicle/msg/temp_and_pressure.msg" NAME_WE)
add_dependencies(fsae_electric_vehicle_generate_messages_lisp _fsae_electric_vehicle_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/nvidia/Desktop/jetsonTx2/catkin_ws/src/fsae_electric_vehicle/msg/wheel_velocity.msg" NAME_WE)
add_dependencies(fsae_electric_vehicle_generate_messages_lisp _fsae_electric_vehicle_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/nvidia/Desktop/jetsonTx2/catkin_ws/src/fsae_electric_vehicle/msg/gps.msg" NAME_WE)
add_dependencies(fsae_electric_vehicle_generate_messages_lisp _fsae_electric_vehicle_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/nvidia/Desktop/jetsonTx2/catkin_ws/src/fsae_electric_vehicle/msg/pedals.msg" NAME_WE)
add_dependencies(fsae_electric_vehicle_generate_messages_lisp _fsae_electric_vehicle_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/nvidia/Desktop/jetsonTx2/catkin_ws/src/fsae_electric_vehicle/msg/gyroscope.msg" NAME_WE)
add_dependencies(fsae_electric_vehicle_generate_messages_lisp _fsae_electric_vehicle_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/nvidia/Desktop/jetsonTx2/catkin_ws/src/fsae_electric_vehicle/msg/suspension.msg" NAME_WE)
add_dependencies(fsae_electric_vehicle_generate_messages_lisp _fsae_electric_vehicle_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/nvidia/Desktop/jetsonTx2/catkin_ws/src/fsae_electric_vehicle/msg/suspension_offset.msg" NAME_WE)
add_dependencies(fsae_electric_vehicle_generate_messages_lisp _fsae_electric_vehicle_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/nvidia/Desktop/jetsonTx2/catkin_ws/src/fsae_electric_vehicle/msg/accelerometer.msg" NAME_WE)
add_dependencies(fsae_electric_vehicle_generate_messages_lisp _fsae_electric_vehicle_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/nvidia/Desktop/jetsonTx2/catkin_ws/src/fsae_electric_vehicle/msg/compass.msg" NAME_WE)
add_dependencies(fsae_electric_vehicle_generate_messages_lisp _fsae_electric_vehicle_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(fsae_electric_vehicle_genlisp)
add_dependencies(fsae_electric_vehicle_genlisp fsae_electric_vehicle_generate_messages_lisp)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS fsae_electric_vehicle_generate_messages_lisp)

### Section generating for lang: gennodejs
### Generating Messages
_generate_msg_nodejs(fsae_electric_vehicle
  "/home/nvidia/Desktop/jetsonTx2/catkin_ws/src/fsae_electric_vehicle/msg/steering_wheel.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/fsae_electric_vehicle
)
_generate_msg_nodejs(fsae_electric_vehicle
  "/home/nvidia/Desktop/jetsonTx2/catkin_ws/src/fsae_electric_vehicle/msg/temp_and_pressure.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/fsae_electric_vehicle
)
_generate_msg_nodejs(fsae_electric_vehicle
  "/home/nvidia/Desktop/jetsonTx2/catkin_ws/src/fsae_electric_vehicle/msg/wheel_velocity.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/fsae_electric_vehicle
)
_generate_msg_nodejs(fsae_electric_vehicle
  "/home/nvidia/Desktop/jetsonTx2/catkin_ws/src/fsae_electric_vehicle/msg/pedals.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/fsae_electric_vehicle
)
_generate_msg_nodejs(fsae_electric_vehicle
  "/home/nvidia/Desktop/jetsonTx2/catkin_ws/src/fsae_electric_vehicle/msg/gps.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/fsae_electric_vehicle
)
_generate_msg_nodejs(fsae_electric_vehicle
  "/home/nvidia/Desktop/jetsonTx2/catkin_ws/src/fsae_electric_vehicle/msg/gyroscope.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/fsae_electric_vehicle
)
_generate_msg_nodejs(fsae_electric_vehicle
  "/home/nvidia/Desktop/jetsonTx2/catkin_ws/src/fsae_electric_vehicle/msg/suspension.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/fsae_electric_vehicle
)
_generate_msg_nodejs(fsae_electric_vehicle
  "/home/nvidia/Desktop/jetsonTx2/catkin_ws/src/fsae_electric_vehicle/msg/suspension_offset.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/fsae_electric_vehicle
)
_generate_msg_nodejs(fsae_electric_vehicle
  "/home/nvidia/Desktop/jetsonTx2/catkin_ws/src/fsae_electric_vehicle/msg/accelerometer.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/fsae_electric_vehicle
)
_generate_msg_nodejs(fsae_electric_vehicle
  "/home/nvidia/Desktop/jetsonTx2/catkin_ws/src/fsae_electric_vehicle/msg/compass.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/fsae_electric_vehicle
)

### Generating Services

### Generating Module File
_generate_module_nodejs(fsae_electric_vehicle
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/fsae_electric_vehicle
  "${ALL_GEN_OUTPUT_FILES_nodejs}"
)

add_custom_target(fsae_electric_vehicle_generate_messages_nodejs
  DEPENDS ${ALL_GEN_OUTPUT_FILES_nodejs}
)
add_dependencies(fsae_electric_vehicle_generate_messages fsae_electric_vehicle_generate_messages_nodejs)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/nvidia/Desktop/jetsonTx2/catkin_ws/src/fsae_electric_vehicle/msg/steering_wheel.msg" NAME_WE)
add_dependencies(fsae_electric_vehicle_generate_messages_nodejs _fsae_electric_vehicle_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/nvidia/Desktop/jetsonTx2/catkin_ws/src/fsae_electric_vehicle/msg/temp_and_pressure.msg" NAME_WE)
add_dependencies(fsae_electric_vehicle_generate_messages_nodejs _fsae_electric_vehicle_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/nvidia/Desktop/jetsonTx2/catkin_ws/src/fsae_electric_vehicle/msg/wheel_velocity.msg" NAME_WE)
add_dependencies(fsae_electric_vehicle_generate_messages_nodejs _fsae_electric_vehicle_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/nvidia/Desktop/jetsonTx2/catkin_ws/src/fsae_electric_vehicle/msg/gps.msg" NAME_WE)
add_dependencies(fsae_electric_vehicle_generate_messages_nodejs _fsae_electric_vehicle_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/nvidia/Desktop/jetsonTx2/catkin_ws/src/fsae_electric_vehicle/msg/pedals.msg" NAME_WE)
add_dependencies(fsae_electric_vehicle_generate_messages_nodejs _fsae_electric_vehicle_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/nvidia/Desktop/jetsonTx2/catkin_ws/src/fsae_electric_vehicle/msg/gyroscope.msg" NAME_WE)
add_dependencies(fsae_electric_vehicle_generate_messages_nodejs _fsae_electric_vehicle_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/nvidia/Desktop/jetsonTx2/catkin_ws/src/fsae_electric_vehicle/msg/suspension.msg" NAME_WE)
add_dependencies(fsae_electric_vehicle_generate_messages_nodejs _fsae_electric_vehicle_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/nvidia/Desktop/jetsonTx2/catkin_ws/src/fsae_electric_vehicle/msg/suspension_offset.msg" NAME_WE)
add_dependencies(fsae_electric_vehicle_generate_messages_nodejs _fsae_electric_vehicle_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/nvidia/Desktop/jetsonTx2/catkin_ws/src/fsae_electric_vehicle/msg/accelerometer.msg" NAME_WE)
add_dependencies(fsae_electric_vehicle_generate_messages_nodejs _fsae_electric_vehicle_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/nvidia/Desktop/jetsonTx2/catkin_ws/src/fsae_electric_vehicle/msg/compass.msg" NAME_WE)
add_dependencies(fsae_electric_vehicle_generate_messages_nodejs _fsae_electric_vehicle_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(fsae_electric_vehicle_gennodejs)
add_dependencies(fsae_electric_vehicle_gennodejs fsae_electric_vehicle_generate_messages_nodejs)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS fsae_electric_vehicle_generate_messages_nodejs)

### Section generating for lang: genpy
### Generating Messages
_generate_msg_py(fsae_electric_vehicle
  "/home/nvidia/Desktop/jetsonTx2/catkin_ws/src/fsae_electric_vehicle/msg/steering_wheel.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/fsae_electric_vehicle
)
_generate_msg_py(fsae_electric_vehicle
  "/home/nvidia/Desktop/jetsonTx2/catkin_ws/src/fsae_electric_vehicle/msg/temp_and_pressure.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/fsae_electric_vehicle
)
_generate_msg_py(fsae_electric_vehicle
  "/home/nvidia/Desktop/jetsonTx2/catkin_ws/src/fsae_electric_vehicle/msg/wheel_velocity.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/fsae_electric_vehicle
)
_generate_msg_py(fsae_electric_vehicle
  "/home/nvidia/Desktop/jetsonTx2/catkin_ws/src/fsae_electric_vehicle/msg/pedals.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/fsae_electric_vehicle
)
_generate_msg_py(fsae_electric_vehicle
  "/home/nvidia/Desktop/jetsonTx2/catkin_ws/src/fsae_electric_vehicle/msg/gps.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/fsae_electric_vehicle
)
_generate_msg_py(fsae_electric_vehicle
  "/home/nvidia/Desktop/jetsonTx2/catkin_ws/src/fsae_electric_vehicle/msg/gyroscope.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/fsae_electric_vehicle
)
_generate_msg_py(fsae_electric_vehicle
  "/home/nvidia/Desktop/jetsonTx2/catkin_ws/src/fsae_electric_vehicle/msg/suspension.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/fsae_electric_vehicle
)
_generate_msg_py(fsae_electric_vehicle
  "/home/nvidia/Desktop/jetsonTx2/catkin_ws/src/fsae_electric_vehicle/msg/suspension_offset.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/fsae_electric_vehicle
)
_generate_msg_py(fsae_electric_vehicle
  "/home/nvidia/Desktop/jetsonTx2/catkin_ws/src/fsae_electric_vehicle/msg/accelerometer.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/fsae_electric_vehicle
)
_generate_msg_py(fsae_electric_vehicle
  "/home/nvidia/Desktop/jetsonTx2/catkin_ws/src/fsae_electric_vehicle/msg/compass.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/fsae_electric_vehicle
)

### Generating Services

### Generating Module File
_generate_module_py(fsae_electric_vehicle
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/fsae_electric_vehicle
  "${ALL_GEN_OUTPUT_FILES_py}"
)

add_custom_target(fsae_electric_vehicle_generate_messages_py
  DEPENDS ${ALL_GEN_OUTPUT_FILES_py}
)
add_dependencies(fsae_electric_vehicle_generate_messages fsae_electric_vehicle_generate_messages_py)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/nvidia/Desktop/jetsonTx2/catkin_ws/src/fsae_electric_vehicle/msg/steering_wheel.msg" NAME_WE)
add_dependencies(fsae_electric_vehicle_generate_messages_py _fsae_electric_vehicle_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/nvidia/Desktop/jetsonTx2/catkin_ws/src/fsae_electric_vehicle/msg/temp_and_pressure.msg" NAME_WE)
add_dependencies(fsae_electric_vehicle_generate_messages_py _fsae_electric_vehicle_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/nvidia/Desktop/jetsonTx2/catkin_ws/src/fsae_electric_vehicle/msg/wheel_velocity.msg" NAME_WE)
add_dependencies(fsae_electric_vehicle_generate_messages_py _fsae_electric_vehicle_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/nvidia/Desktop/jetsonTx2/catkin_ws/src/fsae_electric_vehicle/msg/gps.msg" NAME_WE)
add_dependencies(fsae_electric_vehicle_generate_messages_py _fsae_electric_vehicle_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/nvidia/Desktop/jetsonTx2/catkin_ws/src/fsae_electric_vehicle/msg/pedals.msg" NAME_WE)
add_dependencies(fsae_electric_vehicle_generate_messages_py _fsae_electric_vehicle_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/nvidia/Desktop/jetsonTx2/catkin_ws/src/fsae_electric_vehicle/msg/gyroscope.msg" NAME_WE)
add_dependencies(fsae_electric_vehicle_generate_messages_py _fsae_electric_vehicle_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/nvidia/Desktop/jetsonTx2/catkin_ws/src/fsae_electric_vehicle/msg/suspension.msg" NAME_WE)
add_dependencies(fsae_electric_vehicle_generate_messages_py _fsae_electric_vehicle_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/nvidia/Desktop/jetsonTx2/catkin_ws/src/fsae_electric_vehicle/msg/suspension_offset.msg" NAME_WE)
add_dependencies(fsae_electric_vehicle_generate_messages_py _fsae_electric_vehicle_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/nvidia/Desktop/jetsonTx2/catkin_ws/src/fsae_electric_vehicle/msg/accelerometer.msg" NAME_WE)
add_dependencies(fsae_electric_vehicle_generate_messages_py _fsae_electric_vehicle_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/nvidia/Desktop/jetsonTx2/catkin_ws/src/fsae_electric_vehicle/msg/compass.msg" NAME_WE)
add_dependencies(fsae_electric_vehicle_generate_messages_py _fsae_electric_vehicle_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(fsae_electric_vehicle_genpy)
add_dependencies(fsae_electric_vehicle_genpy fsae_electric_vehicle_generate_messages_py)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS fsae_electric_vehicle_generate_messages_py)



if(gencpp_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/fsae_electric_vehicle)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/fsae_electric_vehicle
    DESTINATION ${gencpp_INSTALL_DIR}
  )
endif()
if(TARGET std_msgs_generate_messages_cpp)
  add_dependencies(fsae_electric_vehicle_generate_messages_cpp std_msgs_generate_messages_cpp)
endif()

if(geneus_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/fsae_electric_vehicle)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/fsae_electric_vehicle
    DESTINATION ${geneus_INSTALL_DIR}
  )
endif()
if(TARGET std_msgs_generate_messages_eus)
  add_dependencies(fsae_electric_vehicle_generate_messages_eus std_msgs_generate_messages_eus)
endif()

if(genlisp_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/fsae_electric_vehicle)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/fsae_electric_vehicle
    DESTINATION ${genlisp_INSTALL_DIR}
  )
endif()
if(TARGET std_msgs_generate_messages_lisp)
  add_dependencies(fsae_electric_vehicle_generate_messages_lisp std_msgs_generate_messages_lisp)
endif()

if(gennodejs_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/fsae_electric_vehicle)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/fsae_electric_vehicle
    DESTINATION ${gennodejs_INSTALL_DIR}
  )
endif()
if(TARGET std_msgs_generate_messages_nodejs)
  add_dependencies(fsae_electric_vehicle_generate_messages_nodejs std_msgs_generate_messages_nodejs)
endif()

if(genpy_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/fsae_electric_vehicle)
  install(CODE "execute_process(COMMAND \"/usr/bin/python\" -m compileall \"${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/fsae_electric_vehicle\")")
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/fsae_electric_vehicle
    DESTINATION ${genpy_INSTALL_DIR}
  )
endif()
if(TARGET std_msgs_generate_messages_py)
  add_dependencies(fsae_electric_vehicle_generate_messages_py std_msgs_generate_messages_py)
endif()
