# generated from genmsg/cmake/pkg-genmsg.cmake.em

message(STATUS "tracer_msgs: 6 messages, 0 services")

set(MSG_I_FLAGS "-Itracer_msgs:/home/z/catkin_ws/src/tracer_ros/tracer_msgs/msg;-Istd_msgs:/opt/ros/kinetic/share/std_msgs/cmake/../msg")

# Find all generators
find_package(gencpp REQUIRED)
find_package(geneus REQUIRED)
find_package(genlisp REQUIRED)
find_package(gennodejs REQUIRED)
find_package(genpy REQUIRED)

add_custom_target(tracer_msgs_generate_messages ALL)

# verify that message/service dependencies have not changed since configure



get_filename_component(_filename "/home/z/catkin_ws/src/tracer_ros/tracer_msgs/msg/TracerLightCmd.msg" NAME_WE)
add_custom_target(_tracer_msgs_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "tracer_msgs" "/home/z/catkin_ws/src/tracer_ros/tracer_msgs/msg/TracerLightCmd.msg" ""
)

get_filename_component(_filename "/home/z/catkin_ws/src/tracer_ros/tracer_msgs/msg/UartTracerStatus.msg" NAME_WE)
add_custom_target(_tracer_msgs_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "tracer_msgs" "/home/z/catkin_ws/src/tracer_ros/tracer_msgs/msg/UartTracerStatus.msg" "tracer_msgs/UartTracerMotorState:tracer_msgs/TracerLightState:std_msgs/Header"
)

get_filename_component(_filename "/home/z/catkin_ws/src/tracer_ros/tracer_msgs/msg/TracerMotorState.msg" NAME_WE)
add_custom_target(_tracer_msgs_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "tracer_msgs" "/home/z/catkin_ws/src/tracer_ros/tracer_msgs/msg/TracerMotorState.msg" ""
)

get_filename_component(_filename "/home/z/catkin_ws/src/tracer_ros/tracer_msgs/msg/UartTracerMotorState.msg" NAME_WE)
add_custom_target(_tracer_msgs_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "tracer_msgs" "/home/z/catkin_ws/src/tracer_ros/tracer_msgs/msg/UartTracerMotorState.msg" ""
)

get_filename_component(_filename "/home/z/catkin_ws/src/tracer_ros/tracer_msgs/msg/TracerStatus.msg" NAME_WE)
add_custom_target(_tracer_msgs_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "tracer_msgs" "/home/z/catkin_ws/src/tracer_ros/tracer_msgs/msg/TracerStatus.msg" "tracer_msgs/TracerLightState:std_msgs/Header:tracer_msgs/TracerMotorState"
)

get_filename_component(_filename "/home/z/catkin_ws/src/tracer_ros/tracer_msgs/msg/TracerLightState.msg" NAME_WE)
add_custom_target(_tracer_msgs_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "tracer_msgs" "/home/z/catkin_ws/src/tracer_ros/tracer_msgs/msg/TracerLightState.msg" ""
)

#
#  langs = gencpp;geneus;genlisp;gennodejs;genpy
#

### Section generating for lang: gencpp
### Generating Messages
_generate_msg_cpp(tracer_msgs
  "/home/z/catkin_ws/src/tracer_ros/tracer_msgs/msg/TracerLightCmd.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/tracer_msgs
)
_generate_msg_cpp(tracer_msgs
  "/home/z/catkin_ws/src/tracer_ros/tracer_msgs/msg/UartTracerStatus.msg"
  "${MSG_I_FLAGS}"
  "/home/z/catkin_ws/src/tracer_ros/tracer_msgs/msg/UartTracerMotorState.msg;/home/z/catkin_ws/src/tracer_ros/tracer_msgs/msg/TracerLightState.msg;/opt/ros/kinetic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/tracer_msgs
)
_generate_msg_cpp(tracer_msgs
  "/home/z/catkin_ws/src/tracer_ros/tracer_msgs/msg/TracerMotorState.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/tracer_msgs
)
_generate_msg_cpp(tracer_msgs
  "/home/z/catkin_ws/src/tracer_ros/tracer_msgs/msg/UartTracerMotorState.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/tracer_msgs
)
_generate_msg_cpp(tracer_msgs
  "/home/z/catkin_ws/src/tracer_ros/tracer_msgs/msg/TracerStatus.msg"
  "${MSG_I_FLAGS}"
  "/home/z/catkin_ws/src/tracer_ros/tracer_msgs/msg/TracerLightState.msg;/opt/ros/kinetic/share/std_msgs/cmake/../msg/Header.msg;/home/z/catkin_ws/src/tracer_ros/tracer_msgs/msg/TracerMotorState.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/tracer_msgs
)
_generate_msg_cpp(tracer_msgs
  "/home/z/catkin_ws/src/tracer_ros/tracer_msgs/msg/TracerLightState.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/tracer_msgs
)

### Generating Services

### Generating Module File
_generate_module_cpp(tracer_msgs
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/tracer_msgs
  "${ALL_GEN_OUTPUT_FILES_cpp}"
)

add_custom_target(tracer_msgs_generate_messages_cpp
  DEPENDS ${ALL_GEN_OUTPUT_FILES_cpp}
)
add_dependencies(tracer_msgs_generate_messages tracer_msgs_generate_messages_cpp)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/z/catkin_ws/src/tracer_ros/tracer_msgs/msg/TracerLightCmd.msg" NAME_WE)
add_dependencies(tracer_msgs_generate_messages_cpp _tracer_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/z/catkin_ws/src/tracer_ros/tracer_msgs/msg/UartTracerStatus.msg" NAME_WE)
add_dependencies(tracer_msgs_generate_messages_cpp _tracer_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/z/catkin_ws/src/tracer_ros/tracer_msgs/msg/TracerMotorState.msg" NAME_WE)
add_dependencies(tracer_msgs_generate_messages_cpp _tracer_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/z/catkin_ws/src/tracer_ros/tracer_msgs/msg/UartTracerMotorState.msg" NAME_WE)
add_dependencies(tracer_msgs_generate_messages_cpp _tracer_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/z/catkin_ws/src/tracer_ros/tracer_msgs/msg/TracerStatus.msg" NAME_WE)
add_dependencies(tracer_msgs_generate_messages_cpp _tracer_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/z/catkin_ws/src/tracer_ros/tracer_msgs/msg/TracerLightState.msg" NAME_WE)
add_dependencies(tracer_msgs_generate_messages_cpp _tracer_msgs_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(tracer_msgs_gencpp)
add_dependencies(tracer_msgs_gencpp tracer_msgs_generate_messages_cpp)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS tracer_msgs_generate_messages_cpp)

### Section generating for lang: geneus
### Generating Messages
_generate_msg_eus(tracer_msgs
  "/home/z/catkin_ws/src/tracer_ros/tracer_msgs/msg/TracerLightCmd.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/tracer_msgs
)
_generate_msg_eus(tracer_msgs
  "/home/z/catkin_ws/src/tracer_ros/tracer_msgs/msg/UartTracerStatus.msg"
  "${MSG_I_FLAGS}"
  "/home/z/catkin_ws/src/tracer_ros/tracer_msgs/msg/UartTracerMotorState.msg;/home/z/catkin_ws/src/tracer_ros/tracer_msgs/msg/TracerLightState.msg;/opt/ros/kinetic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/tracer_msgs
)
_generate_msg_eus(tracer_msgs
  "/home/z/catkin_ws/src/tracer_ros/tracer_msgs/msg/TracerMotorState.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/tracer_msgs
)
_generate_msg_eus(tracer_msgs
  "/home/z/catkin_ws/src/tracer_ros/tracer_msgs/msg/UartTracerMotorState.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/tracer_msgs
)
_generate_msg_eus(tracer_msgs
  "/home/z/catkin_ws/src/tracer_ros/tracer_msgs/msg/TracerStatus.msg"
  "${MSG_I_FLAGS}"
  "/home/z/catkin_ws/src/tracer_ros/tracer_msgs/msg/TracerLightState.msg;/opt/ros/kinetic/share/std_msgs/cmake/../msg/Header.msg;/home/z/catkin_ws/src/tracer_ros/tracer_msgs/msg/TracerMotorState.msg"
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/tracer_msgs
)
_generate_msg_eus(tracer_msgs
  "/home/z/catkin_ws/src/tracer_ros/tracer_msgs/msg/TracerLightState.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/tracer_msgs
)

### Generating Services

### Generating Module File
_generate_module_eus(tracer_msgs
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/tracer_msgs
  "${ALL_GEN_OUTPUT_FILES_eus}"
)

add_custom_target(tracer_msgs_generate_messages_eus
  DEPENDS ${ALL_GEN_OUTPUT_FILES_eus}
)
add_dependencies(tracer_msgs_generate_messages tracer_msgs_generate_messages_eus)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/z/catkin_ws/src/tracer_ros/tracer_msgs/msg/TracerLightCmd.msg" NAME_WE)
add_dependencies(tracer_msgs_generate_messages_eus _tracer_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/z/catkin_ws/src/tracer_ros/tracer_msgs/msg/UartTracerStatus.msg" NAME_WE)
add_dependencies(tracer_msgs_generate_messages_eus _tracer_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/z/catkin_ws/src/tracer_ros/tracer_msgs/msg/TracerMotorState.msg" NAME_WE)
add_dependencies(tracer_msgs_generate_messages_eus _tracer_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/z/catkin_ws/src/tracer_ros/tracer_msgs/msg/UartTracerMotorState.msg" NAME_WE)
add_dependencies(tracer_msgs_generate_messages_eus _tracer_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/z/catkin_ws/src/tracer_ros/tracer_msgs/msg/TracerStatus.msg" NAME_WE)
add_dependencies(tracer_msgs_generate_messages_eus _tracer_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/z/catkin_ws/src/tracer_ros/tracer_msgs/msg/TracerLightState.msg" NAME_WE)
add_dependencies(tracer_msgs_generate_messages_eus _tracer_msgs_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(tracer_msgs_geneus)
add_dependencies(tracer_msgs_geneus tracer_msgs_generate_messages_eus)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS tracer_msgs_generate_messages_eus)

### Section generating for lang: genlisp
### Generating Messages
_generate_msg_lisp(tracer_msgs
  "/home/z/catkin_ws/src/tracer_ros/tracer_msgs/msg/TracerLightCmd.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/tracer_msgs
)
_generate_msg_lisp(tracer_msgs
  "/home/z/catkin_ws/src/tracer_ros/tracer_msgs/msg/UartTracerStatus.msg"
  "${MSG_I_FLAGS}"
  "/home/z/catkin_ws/src/tracer_ros/tracer_msgs/msg/UartTracerMotorState.msg;/home/z/catkin_ws/src/tracer_ros/tracer_msgs/msg/TracerLightState.msg;/opt/ros/kinetic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/tracer_msgs
)
_generate_msg_lisp(tracer_msgs
  "/home/z/catkin_ws/src/tracer_ros/tracer_msgs/msg/TracerMotorState.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/tracer_msgs
)
_generate_msg_lisp(tracer_msgs
  "/home/z/catkin_ws/src/tracer_ros/tracer_msgs/msg/UartTracerMotorState.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/tracer_msgs
)
_generate_msg_lisp(tracer_msgs
  "/home/z/catkin_ws/src/tracer_ros/tracer_msgs/msg/TracerStatus.msg"
  "${MSG_I_FLAGS}"
  "/home/z/catkin_ws/src/tracer_ros/tracer_msgs/msg/TracerLightState.msg;/opt/ros/kinetic/share/std_msgs/cmake/../msg/Header.msg;/home/z/catkin_ws/src/tracer_ros/tracer_msgs/msg/TracerMotorState.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/tracer_msgs
)
_generate_msg_lisp(tracer_msgs
  "/home/z/catkin_ws/src/tracer_ros/tracer_msgs/msg/TracerLightState.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/tracer_msgs
)

### Generating Services

### Generating Module File
_generate_module_lisp(tracer_msgs
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/tracer_msgs
  "${ALL_GEN_OUTPUT_FILES_lisp}"
)

add_custom_target(tracer_msgs_generate_messages_lisp
  DEPENDS ${ALL_GEN_OUTPUT_FILES_lisp}
)
add_dependencies(tracer_msgs_generate_messages tracer_msgs_generate_messages_lisp)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/z/catkin_ws/src/tracer_ros/tracer_msgs/msg/TracerLightCmd.msg" NAME_WE)
add_dependencies(tracer_msgs_generate_messages_lisp _tracer_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/z/catkin_ws/src/tracer_ros/tracer_msgs/msg/UartTracerStatus.msg" NAME_WE)
add_dependencies(tracer_msgs_generate_messages_lisp _tracer_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/z/catkin_ws/src/tracer_ros/tracer_msgs/msg/TracerMotorState.msg" NAME_WE)
add_dependencies(tracer_msgs_generate_messages_lisp _tracer_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/z/catkin_ws/src/tracer_ros/tracer_msgs/msg/UartTracerMotorState.msg" NAME_WE)
add_dependencies(tracer_msgs_generate_messages_lisp _tracer_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/z/catkin_ws/src/tracer_ros/tracer_msgs/msg/TracerStatus.msg" NAME_WE)
add_dependencies(tracer_msgs_generate_messages_lisp _tracer_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/z/catkin_ws/src/tracer_ros/tracer_msgs/msg/TracerLightState.msg" NAME_WE)
add_dependencies(tracer_msgs_generate_messages_lisp _tracer_msgs_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(tracer_msgs_genlisp)
add_dependencies(tracer_msgs_genlisp tracer_msgs_generate_messages_lisp)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS tracer_msgs_generate_messages_lisp)

### Section generating for lang: gennodejs
### Generating Messages
_generate_msg_nodejs(tracer_msgs
  "/home/z/catkin_ws/src/tracer_ros/tracer_msgs/msg/TracerLightCmd.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/tracer_msgs
)
_generate_msg_nodejs(tracer_msgs
  "/home/z/catkin_ws/src/tracer_ros/tracer_msgs/msg/UartTracerStatus.msg"
  "${MSG_I_FLAGS}"
  "/home/z/catkin_ws/src/tracer_ros/tracer_msgs/msg/UartTracerMotorState.msg;/home/z/catkin_ws/src/tracer_ros/tracer_msgs/msg/TracerLightState.msg;/opt/ros/kinetic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/tracer_msgs
)
_generate_msg_nodejs(tracer_msgs
  "/home/z/catkin_ws/src/tracer_ros/tracer_msgs/msg/TracerMotorState.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/tracer_msgs
)
_generate_msg_nodejs(tracer_msgs
  "/home/z/catkin_ws/src/tracer_ros/tracer_msgs/msg/UartTracerMotorState.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/tracer_msgs
)
_generate_msg_nodejs(tracer_msgs
  "/home/z/catkin_ws/src/tracer_ros/tracer_msgs/msg/TracerStatus.msg"
  "${MSG_I_FLAGS}"
  "/home/z/catkin_ws/src/tracer_ros/tracer_msgs/msg/TracerLightState.msg;/opt/ros/kinetic/share/std_msgs/cmake/../msg/Header.msg;/home/z/catkin_ws/src/tracer_ros/tracer_msgs/msg/TracerMotorState.msg"
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/tracer_msgs
)
_generate_msg_nodejs(tracer_msgs
  "/home/z/catkin_ws/src/tracer_ros/tracer_msgs/msg/TracerLightState.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/tracer_msgs
)

### Generating Services

### Generating Module File
_generate_module_nodejs(tracer_msgs
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/tracer_msgs
  "${ALL_GEN_OUTPUT_FILES_nodejs}"
)

add_custom_target(tracer_msgs_generate_messages_nodejs
  DEPENDS ${ALL_GEN_OUTPUT_FILES_nodejs}
)
add_dependencies(tracer_msgs_generate_messages tracer_msgs_generate_messages_nodejs)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/z/catkin_ws/src/tracer_ros/tracer_msgs/msg/TracerLightCmd.msg" NAME_WE)
add_dependencies(tracer_msgs_generate_messages_nodejs _tracer_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/z/catkin_ws/src/tracer_ros/tracer_msgs/msg/UartTracerStatus.msg" NAME_WE)
add_dependencies(tracer_msgs_generate_messages_nodejs _tracer_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/z/catkin_ws/src/tracer_ros/tracer_msgs/msg/TracerMotorState.msg" NAME_WE)
add_dependencies(tracer_msgs_generate_messages_nodejs _tracer_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/z/catkin_ws/src/tracer_ros/tracer_msgs/msg/UartTracerMotorState.msg" NAME_WE)
add_dependencies(tracer_msgs_generate_messages_nodejs _tracer_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/z/catkin_ws/src/tracer_ros/tracer_msgs/msg/TracerStatus.msg" NAME_WE)
add_dependencies(tracer_msgs_generate_messages_nodejs _tracer_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/z/catkin_ws/src/tracer_ros/tracer_msgs/msg/TracerLightState.msg" NAME_WE)
add_dependencies(tracer_msgs_generate_messages_nodejs _tracer_msgs_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(tracer_msgs_gennodejs)
add_dependencies(tracer_msgs_gennodejs tracer_msgs_generate_messages_nodejs)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS tracer_msgs_generate_messages_nodejs)

### Section generating for lang: genpy
### Generating Messages
_generate_msg_py(tracer_msgs
  "/home/z/catkin_ws/src/tracer_ros/tracer_msgs/msg/TracerLightCmd.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/tracer_msgs
)
_generate_msg_py(tracer_msgs
  "/home/z/catkin_ws/src/tracer_ros/tracer_msgs/msg/UartTracerStatus.msg"
  "${MSG_I_FLAGS}"
  "/home/z/catkin_ws/src/tracer_ros/tracer_msgs/msg/UartTracerMotorState.msg;/home/z/catkin_ws/src/tracer_ros/tracer_msgs/msg/TracerLightState.msg;/opt/ros/kinetic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/tracer_msgs
)
_generate_msg_py(tracer_msgs
  "/home/z/catkin_ws/src/tracer_ros/tracer_msgs/msg/TracerMotorState.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/tracer_msgs
)
_generate_msg_py(tracer_msgs
  "/home/z/catkin_ws/src/tracer_ros/tracer_msgs/msg/UartTracerMotorState.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/tracer_msgs
)
_generate_msg_py(tracer_msgs
  "/home/z/catkin_ws/src/tracer_ros/tracer_msgs/msg/TracerStatus.msg"
  "${MSG_I_FLAGS}"
  "/home/z/catkin_ws/src/tracer_ros/tracer_msgs/msg/TracerLightState.msg;/opt/ros/kinetic/share/std_msgs/cmake/../msg/Header.msg;/home/z/catkin_ws/src/tracer_ros/tracer_msgs/msg/TracerMotorState.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/tracer_msgs
)
_generate_msg_py(tracer_msgs
  "/home/z/catkin_ws/src/tracer_ros/tracer_msgs/msg/TracerLightState.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/tracer_msgs
)

### Generating Services

### Generating Module File
_generate_module_py(tracer_msgs
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/tracer_msgs
  "${ALL_GEN_OUTPUT_FILES_py}"
)

add_custom_target(tracer_msgs_generate_messages_py
  DEPENDS ${ALL_GEN_OUTPUT_FILES_py}
)
add_dependencies(tracer_msgs_generate_messages tracer_msgs_generate_messages_py)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/z/catkin_ws/src/tracer_ros/tracer_msgs/msg/TracerLightCmd.msg" NAME_WE)
add_dependencies(tracer_msgs_generate_messages_py _tracer_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/z/catkin_ws/src/tracer_ros/tracer_msgs/msg/UartTracerStatus.msg" NAME_WE)
add_dependencies(tracer_msgs_generate_messages_py _tracer_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/z/catkin_ws/src/tracer_ros/tracer_msgs/msg/TracerMotorState.msg" NAME_WE)
add_dependencies(tracer_msgs_generate_messages_py _tracer_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/z/catkin_ws/src/tracer_ros/tracer_msgs/msg/UartTracerMotorState.msg" NAME_WE)
add_dependencies(tracer_msgs_generate_messages_py _tracer_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/z/catkin_ws/src/tracer_ros/tracer_msgs/msg/TracerStatus.msg" NAME_WE)
add_dependencies(tracer_msgs_generate_messages_py _tracer_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/z/catkin_ws/src/tracer_ros/tracer_msgs/msg/TracerLightState.msg" NAME_WE)
add_dependencies(tracer_msgs_generate_messages_py _tracer_msgs_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(tracer_msgs_genpy)
add_dependencies(tracer_msgs_genpy tracer_msgs_generate_messages_py)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS tracer_msgs_generate_messages_py)



if(gencpp_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/tracer_msgs)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/tracer_msgs
    DESTINATION ${gencpp_INSTALL_DIR}
  )
endif()
if(TARGET std_msgs_generate_messages_cpp)
  add_dependencies(tracer_msgs_generate_messages_cpp std_msgs_generate_messages_cpp)
endif()

if(geneus_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/tracer_msgs)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/tracer_msgs
    DESTINATION ${geneus_INSTALL_DIR}
  )
endif()
if(TARGET std_msgs_generate_messages_eus)
  add_dependencies(tracer_msgs_generate_messages_eus std_msgs_generate_messages_eus)
endif()

if(genlisp_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/tracer_msgs)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/tracer_msgs
    DESTINATION ${genlisp_INSTALL_DIR}
  )
endif()
if(TARGET std_msgs_generate_messages_lisp)
  add_dependencies(tracer_msgs_generate_messages_lisp std_msgs_generate_messages_lisp)
endif()

if(gennodejs_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/tracer_msgs)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/tracer_msgs
    DESTINATION ${gennodejs_INSTALL_DIR}
  )
endif()
if(TARGET std_msgs_generate_messages_nodejs)
  add_dependencies(tracer_msgs_generate_messages_nodejs std_msgs_generate_messages_nodejs)
endif()

if(genpy_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/tracer_msgs)
  install(CODE "execute_process(COMMAND \"/usr/bin/python2\" -m compileall \"${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/tracer_msgs\")")
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/tracer_msgs
    DESTINATION ${genpy_INSTALL_DIR}
  )
endif()
if(TARGET std_msgs_generate_messages_py)
  add_dependencies(tracer_msgs_generate_messages_py std_msgs_generate_messages_py)
endif()
