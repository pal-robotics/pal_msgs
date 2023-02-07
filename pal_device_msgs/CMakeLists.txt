cmake_minimum_required(VERSION 3.5)
project(pal_device_msgs)

find_package(action_msgs REQUIRED)
find_package(ament_cmake REQUIRED)
find_package(builtin_interfaces REQUIRED)
find_package(rosidl_default_generators REQUIRED)
find_package(std_msgs REQUIRED)

rosidl_generate_interfaces(${PROJECT_NAME}
  "action/DoTimedLedEffect.action"
  "msg/BatteryState.msg"
  "msg/Bumper.msg"
  "msg/LedGroup.msg"
  "msg/LedEffectParams.msg"
  "msg/LedFixedColorParams.msg"
  "msg/LedRainbowParams.msg"
  "msg/LedFadeParams.msg"
  "msg/LedBlinkParams.msg"
  "msg/LedProgressParams.msg"
  "msg/LedFlowParams.msg"
  "msg/LedDataArrayParams.msg"
  "msg/LedEffectViaTopicParams.msg"
  "msg/LedPreProgrammedParams.msg"
  "srv/CancelEffect.srv"
  "srv/ShutdownAndWakeUpRobot.srv"
  "srv/TimedBlinkEffect.srv"
  "srv/TimedColourEffect.srv"
  "srv/TimedFadeEffect.srv"
  DEPENDENCIES builtin_interfaces std_msgs
  ADD_LINTER_TESTS
)

ament_export_dependencies(rosidl_default_runtime)

ament_package()
