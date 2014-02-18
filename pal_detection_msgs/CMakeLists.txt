cmake_minimum_required(VERSION 2.8.3)
project(pal_detection_msgs)

find_package(catkin REQUIRED COMPONENTS message_generation)

include_directories(include)


add_message_files(
  DIRECTORY msg
  FILES
    Detection2d.msg
    Detections2d.msg
    FaceDetection.msg
    FaceDetections.msg
    LegDetections.msg
    PersonDetection.msg
    PersonDetections.msg
    RotatedDetection2d.msg
    TexturedObjectDetection.msg
)

add_service_files(
  DIRECTORY srv
  FILES
    Recognizer.srv
    SetDatabase.srv
    StartEnrollment.srv
    StopEnrollment.srv
)

catkin_package(CATKIN_DEPENDS message_runtime)
