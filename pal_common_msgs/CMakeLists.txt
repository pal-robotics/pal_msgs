cmake_minimum_required(VERSION 2.8.3)
project(pal_common_msgs)

find_package(catkin REQUIRED COMPONENTS actionlib_msgs message_generation)

add_action_files(
  DIRECTORY action
  FILES
    Disable.action
    Empty.action
)

catkin_package(CATKIN_DEPENDS actionlib_msgs message_runtime)
