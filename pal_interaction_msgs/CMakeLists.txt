cmake_minimum_required(VERSION 3.5)
project(pal_interaction_msgs)

set(MSG_FILES
    AudioDeviceDescription.msg
    AudioPlayerState.msg
    DirectionOfArrival.msg
    EnablingSoundLocalisation.msg
    I18nText.msg
    I18nArgument.msg
    Input.msg
    InputArgument.msg
    TtsText.msg
    TtsMark.msg
    WebGuiEvent.msg)

set(ACTION_FILES
    AudioPlay.action)

# http://answers.ros.org/question/230877/optionally-build-a-package-with-catkin/
if( CATKIN_DEVEL_PREFIX OR catkin_FOUND OR CATKIN_BUILD_BINARY_PACKAGE)
  find_package(catkin REQUIRED
    COMPONENTS
      message_generation
      std_msgs
      actionlib_msgs
  )

  add_message_files(
    DIRECTORY msg
    FILES
      ${MSG_FILES}
      # Messages below are deprecated in ROS2
      actiontag.msg 
      asrresult.msg
      asrupdate.msg
      ASRActivation.msg
      ASREvent.msg
      ASRLangModelMngmt.msg
      ASRLanguage.msg
      ASRSrvRequest.msg
      ASRSrvResponse.msg
      ASRStatus.msg
      audiosignal.msg
      TTSstate.msg
      VoiceActivity.msg)

  add_action_files(
    DIRECTORY action
    FILES
    ${ACTION_FILES}
    Tts.action # speakerName must be changed to speaker_name or provide mappings rules
    # Files below are deprecated in ROS2
    ASRFile.action
    Sound.action
  )

  # All these services are deprecated in ROS2
  add_service_files(
    DIRECTORY srv
    FILES
      recognizerService.srv
  )

  generate_messages(DEPENDENCIES std_msgs actionlib_msgs)

  catkin_package(CATKIN_DEPENDS message_runtime)
else()
  cmake_minimum_required(VERSION 3.12)
  find_package(ament_cmake_auto REQUIRED)
  ament_auto_find_build_dependencies()
  
  find_package(rosidl_default_generators REQUIRED)

  # Prepend path to files
  list(TRANSFORM MSG_FILES PREPEND "msg/")
  list(TRANSFORM ACTION_FILES PREPEND "action/")

  rosidl_generate_interfaces(${PROJECT_NAME}
	  ${MSG_FILES}
	  ${ACTION_FILES})

endif()
