cmake_minimum_required(VERSION 2.8.3)
project(text_to_speech)

find_package(catkin REQUIRED COMPONENTS message_generation actionlib_msgs)

include_directories(include)

add_action_files(DIRECTORY action FILES Sound.action)


generate_messages(DEPENDENCIES actionlib_msgs)

catkin_package(CATKIN_DEPENDS message_runtime actionlib_msgs)
