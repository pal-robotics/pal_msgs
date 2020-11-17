cmake_minimum_required(VERSION 3.5)
project(pal_control_msgs)

set(MSG_FILES
      ActuatorCurrentLimit.msg
      OperationalSpaceGoal.msg
      RigidBodyTrajectoryPoint.msg
      )

set(ACTION_FILES
      RigidBodyTrajectory.action)

# http://answers.ros.org/question/230877/optionally-build-a-package-with-catkin/
if( CATKIN_DEVEL_PREFIX OR catkin_FOUND OR CATKIN_BUILD_BINARY_PACKAGE)

  # Diferent definition in ros1 and ros2
  execute_process(COMMAND cp msg/OperationalSpaceGoal.msg.ros1 msg/OperationalSpaceGoal.msg
	WORKING_DIRECTORY ${CMAKE_CURRENT_SOURCE_DIR})
  execute_process(COMMAND cp msg/RigidBodyTrajectoryPoint.msg.ros1 msg/RigidBodyTrajectoryPoint.msg
	WORKING_DIRECTORY ${CMAKE_CURRENT_SOURCE_DIR})
  find_package(catkin REQUIRED 
    COMPONENTS
      message_generation
      std_msgs
      geometry_msgs
      actionlib_msgs)

  add_message_files(
      DIRECTORY msg
      FILES
        ${MSG_FILES}
  )

  add_action_files(
    DIRECTORY action
    FILES
    ${ACTION_FILES}
    # Pending remap from checkSafety to check_safety
    MotionManager.action
  )

  generate_messages(DEPENDENCIES actionlib_msgs geometry_msgs)

  catkin_package(CATKIN_DEPENDS
      message_runtime
      geometry_msgs
      std_msgs
      actionlib_msgs)
else()
  cmake_minimum_required(VERSION 3.12)
  find_package(ament_cmake_auto REQUIRED)
  ament_auto_find_build_dependencies()
  
  find_package(rosidl_default_generators REQUIRED)

  # Diferent definition in ros1 and ros2
  execute_process(COMMAND cp msg/OperationalSpaceGoal.msg.ros2 msg/OperationalSpaceGoal.msg
	WORKING_DIRECTORY ${CMAKE_CURRENT_SOURCE_DIR})
  execute_process(COMMAND cp msg/RigidBodyTrajectoryPoint.msg.ros2 msg/RigidBodyTrajectoryPoint.msg
	WORKING_DIRECTORY ${CMAKE_CURRENT_SOURCE_DIR})

  # Prepend path to files
  list(TRANSFORM MSG_FILES PREPEND "msg/")
  list(TRANSFORM ACTION_FILES PREPEND "action/")

  rosidl_generate_interfaces(${PROJECT_NAME}
	  ${MSG_FILES}
	  ${ACTION_FILES})

  ament_auto_package()
endif()
