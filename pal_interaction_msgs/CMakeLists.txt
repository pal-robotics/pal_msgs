cmake_minimum_required(VERSION 2.8.3)
project(pal_interaction_msgs)

find_package(catkin REQUIRED COMPONENTS message_generation)

include_directories(include)


add_message_files(
  DIRECTORY msg
  FILES
    actiontag.msg
    asrresult.msg
    asrupdate.msg
    AudioPlayerState.msg
    audiosignal.msg
    DirectionOfArrival.msg
    EnablingSoundLocalisation.msg
    VoiceActivity.msg
    WebGuiEvent.msg
)

add_service_files(
  DIRECTORY srv
  FILES
    recognizerService.srv
    SoundLocalisationService.srv
)

catkin_package(CATKIN_DEPENDS message_runtime)
