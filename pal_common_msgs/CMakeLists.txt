cmake_minimum_required(VERSION 3.5)
project(pal_common_msgs)

set(MSG_FILES
    JointCurrent.msg)

set(ACTION_FILES
    Disable.action
    Empty.action)

set(SRV_FILES
    SetString.srv
    GetString.srv)

# http://answers.ros.org/question/230877/optionally-build-a-package-with-catkin/
if( CATKIN_DEVEL_PREFIX OR catkin_FOUND OR CATKIN_BUILD_BINARY_PACKAGE)
  find_package(catkin REQUIRED
    COMPONENTS
      message_generation
      std_msgs
      actionlib_msgs
  )
  add_action_files(
    DIRECTORY action
    FILES
      Disable.action
      Empty.action
  )


  add_message_files(
    DIRECTORY msg
    FILES
      ${MSG_FILES}
      )

  add_service_files(
    DIRECTORY srv
    FILES
      ${SRV_FILES}
  )

  generate_messages(DEPENDENCIES actionlib_msgs std_msgs)

  catkin_package(CATKIN_DEPENDS actionlib_msgs std_msgs message_runtime)
else()
  cmake_minimum_required(VERSION 3.12)
  find_package(ament_cmake_auto REQUIRED)
  ament_auto_find_build_dependencies()
  
  find_package(rosidl_default_generators REQUIRED)

  # Prepend path to files
  list(TRANSFORM MSG_FILES PREPEND "msg/")
  list(TRANSFORM ACTION_FILES PREPEND "action/")
  list(TRANSFORM SRV_FILES PREPEND "srv/")

  rosidl_generate_interfaces(${PROJECT_NAME}
	  ${MSG_FILES}
	  ${ACTION_FILES}
	  ${SRV_FILES})
  ament_auto_package()
endif()
